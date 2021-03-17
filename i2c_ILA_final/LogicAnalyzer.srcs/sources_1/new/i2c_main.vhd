----------------------------------------------------------------------------------
-- Company:     FH JOANNEUM GRAZ
-- Engineer:    TIMOTEI MURESAN
-- 
-- Create Date: 01/04/2021 12:03:05 PM
-- Design Name: EXTENSION OF ILA TO DECODE SERIAL COMMUNICATIONS PROTOCOLS
-- Module Name: i2c_main - Behavioral
-- Project Name: 
-- Target Devices: Basys3 by Xilinx
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 3.1 - Active Edge Detection works (13.02.2021)
--              - A second Flip-Flop added, creating a two-stage input pipe line
--              for the external singals SCL and SDA
--              - Added the "dont_touch" attribute for the output signals prevent their logic optimization
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity i2c_main is
PORT( sda_in, scl_in, clk, reset_btn   : in STD_LOGIC;
      led             : out std_logic_vector(15 downto 0)
      );  
end i2c_main;


architecture Behavioral of i2c_main is

    -- State Machine
    type type_state is(WAIT_NEXT_PCK, IDLE, START, READ, WAIT_NEXT_BIT, CNT_BIT, READ_ACK_BIT, STOP);
    signal state : type_state := WAIT_NEXT_PCK; --initial state
    
    -- Main Signals
    signal sda, scl : std_logic := '0'; -- the main signals converted as 1 or 0
    
    -- Counters
    signal bit_cnt, byte_cnt: natural range 0 to 255  := 0;
    signal pack_cnt    : std_logic_vector(15 downto 0) := "0000000000000000";
--    signal temp_sig_3  : std_logic_vector(7 downto 0)  := "00000000";
    
    -- Flags for the active edge detection
    signal pos_edge_sda, neg_edge_sda, pos_edge_scl, neg_edge_scl, read_now : std_logic := '0';
    
    -- Temporary Flags
    signal reset, start_cond, stop_cond, display_address, display_data : std_logic := '0';
    signal addr_en      : std_logic := '0'; -- if enabled, the transmited bits are saved as an address, otherwise they are interpreted as data
    signal q1, q11, q0, q00, sda0, scl0 : std_logic := '1'; -- they have to be 1 for the simulation (otherwise it goes wrong by the firs re of the CLK)
    signal trigger_flag, t0, t1,t2 : std_logic := '0';-- a flag to confirm that the algorithm is ready to recieve new byte
    signal block_flag : std_logic := '0';-- blocks the condition (neg_edge_scl = '1') and (sda = temp_sda).. between stop and start conditions (this condition
                                         -- should only work when a second databyte will be sendet, not when the next transmision is an address)     
    
    -- Registers to store the information while decoding
    signal s_address : std_logic_vector(6 downto 0) := "0000000";
    signal rw		 : std_logic 					:= '0';
    signal ack_addr	 : std_logic 					:= '0'; 		-- Low = ACK,  High = NACK
    signal data		 : std_logic_vector(7 downto 0) := "00000000";
    signal ack_data  : std_logic 					:= '0';
    
    -- Registers to store the information after decoding is complete
    signal scl_scope, sda_scope : std_logic                    := '0';
    signal s_address_scope      : std_logic_vector(6 downto 0) := "0000000";
    signal data_scope	        : std_logic_vector(7 downto 0) := "00000000";
    signal ack_data_scope       : std_logic                    := '0';
    signal ack_addr_scope       : std_logic	                   := '0';
    signal rw_scope		        : std_logic                    := '0';
    
    -- Prevent the signals to be optimized (abdorbed) by Vivado
    attribute dont_touch : string;
    attribute dont_touch of byte_cnt        : signal is "true";
    attribute dont_touch of pack_cnt        : signal is "true";
    attribute dont_touch of scl_scope       : signal is "true";
    attribute dont_touch of sda_scope       : signal is "true";
    attribute dont_touch of s_address_scope : signal is "true";
    attribute dont_touch of data_scope	    : signal is "true";
    attribute dont_touch of ack_data_scope  : signal is "true";
    attribute dont_touch of ack_addr_scope  : signal is "true";
    attribute dont_touch of rw_scope	    : signal is "true";
    attribute dont_touch of trigger_flag    : signal is "true";

    -- Debouncer for the reset button
    component debouncer
    port( clk       : in std_logic; -- system clock, 100MHz
          button    : in std_logic;
          button_stb: out std_logic );
    end component;

begin --architecture

RST_BTN: debouncer PORT MAP(clk        => clk,
                            button     => reset_btn,
                            button_stb => reset );


STATE_MACHINE: process(clk, reset, pos_edge_sda, neg_edge_sda, pos_edge_scl, neg_edge_scl)
    variable temp_sda : std_logic := '0';
begin

    if reset = '1' then
        state <= WAIT_NEXT_PCK;
        
    elsif rising_edge(clk) then

        case state is
            when WAIT_NEXT_PCK =>
            -- waits for a stop condition in order to start decoding the next whole package/byte
            -- prevents the algorothm from starting to decode in the middle of a sesion
                if pos_edge_sda = '1' and scl = '1' then       --SDA goes High while SCL is High
                    state <= STOP;
                else
                    -- set all initial values
                    block_flag <= '0';
                    pack_cnt   <= (others => '0');
                    start_cond <= '0';
                    stop_cond  <= '0';
                    addr_en    <= '1';
                    read_now   <= '0';
                    bit_cnt    <= 8; -- 8 down to 0, for 1 Byte + ACK
                    byte_cnt   <= 0;
                    display_address <= '0';
                    display_data <= '0'; 
                    ack_data_scope <= '0';           
                    bit_cnt <= 8;
                end if;          
        
            when IDLE =>    --=======================================================================

                if pos_edge_scl ='1' then
                    temp_sda := sda;
                elsif neg_edge_sda = '1' and scl = '1' then  --SDA goes Low while SCL is High
                    state <= START;
                elsif pos_edge_sda = '1' and scl = '1' then  --SDA goes High while SCL is High
                    state <= STOP;
                elsif (neg_edge_scl = '1') and (sda = temp_sda) and (block_flag = '0') then  --if the value of sda has not changed during the high period of scl
                    display_data <= '0';
                    ack_data_scope <= '0';
                    read_now   <= '1';
                    state <= READ;
                else 
                    addr_en <= '0';  -- the next Bytes will be data
                    bit_cnt <= 8;
                    stop_cond  <= '0';
                    ack_data <= '0';
                    state <= IDLE;   
                end if;
                
            when START =>   --=======================================================================
              
                if pos_edge_scl = '1' then
                    pack_cnt <= pack_cnt + 1;
                    addr_en <= '1';  -- the next transmision will begin with an address
                    state <= READ;
                else
                    block_flag <= '0';
                    stop_cond  <= '0';
                    start_cond <= '1';
                    bit_cnt    <= 8;
                    byte_cnt   <= 0;
                    display_data <= '0'; 
                    ack_data_scope <= '0';
                    ack_addr_scope <= '0'; 
                    rw_scope <= '0';
                    s_address <= (others => '0');   -- empty the address register
                    data      <= (others => '0');   -- empty the data register
                    state <= START;   
                end if;
                
            when READ =>    --=======================================================================

                start_cond <= '0';
                
                if addr_en = '1' then               -- master sends an address + RW to the slave:
                    if bit_cnt > 1 then             -- the address bits 
                        s_address(bit_cnt-2) <= sda;
                    elsif bit_cnt = 1 then          -- the RW bit
                        rw <= sda;
                        rw_scope <= sda;
                    end if;                  
                elsif  addr_en = '0' then           -- master sends data bits 
                    data(bit_cnt-1) <= sda;    
                end if;
                
                if (neg_edge_scl = '1') OR (read_now ='1') then  
                        read_now <= '0'; 
                        state <= CNT_BIT;
                else 
                    state <= READ;                                         
                end if; 

            when CNT_BIT =>
            
                 if bit_cnt > 0 then
                    bit_cnt <= bit_cnt - 1;
                    state <= WAIT_NEXT_BIT;
                 else  
                    state <= CNT_BIT;   
                 end if;
                 
            when WAIT_NEXT_BIT =>  --================================================================ 
      
                if (pos_edge_scl = '1') then -- OR (scl = '1') then
                    if bit_cnt > 0 then
                        state <= READ;
                    elsif bit_cnt = 0 then
                        state <= READ_ACK_BIT;
                    end if;    
                else  
                    state <= WAIT_NEXT_BIT;    
                end if; 
                
            when READ_ACK_BIT =>   --================================================================

                if (neg_edge_scl = '1') then 
                    if addr_en = '0' then byte_cnt <= byte_cnt + 1; end if;
                    display_data <= '1';
                    state <= IDLE;
                    display_address <= '1';
                else
                    if addr_en = '1' then
                        ack_addr <= sda;
                        ack_addr_scope <= sda;
                    elsif addr_en = '0' then                  
                        ack_data <= sda;
                        ack_data_scope <= sda;
                    end if; 
                    state <= READ_ACK_BIT;
                end if;    
            
            when STOP =>    --======================================================================= 

                display_address <= '0';
                display_data <= '0';  
                stop_cond  <= '1';
                state <= IDLE;
                block_flag <= '1';
                addr_en <= '1';

            end case;            
        end if; -- if reset = '1'
    end process STATE_MACHINE;
    --===============================================================================================
    --===============================================================================================
    --===============================================================================================
    
    -- Convert signals from H and L to 1 and 0
    with sda_in select sda0 <= '1' when 'H' | '1', '0' when others; --
    with scl_in select scl0 <= '1' when 'H' | '1', '0' when others; --, '0' when 'L' | '0'
    
    -- Active Edge Detection of the sda 
    EDGE_DET_SDA: process(clk) ----------------------------------------------------------------------
    begin
        if rising_edge(clk) then
            q1 <= q0;
            q0 <= sda0;
        end if;
    end process EDGE_DET_SDA;
    -- Concurrent Conditional
    pos_edge_sda <= not q1 and q0; -- active high pulse on rising edge of sda
    neg_edge_sda <= q1 and not q0; -- active high pulse on falling edge of sda
    sda <= q1;
    
    -- Active Edge Detection of the sda 
    EDGE_DET_SCL: process(clk) ----------------------------------------------------------------------
    begin
        if rising_edge(clk) then
            q11 <= q00;
            q00 <= scl0;
        end if;
    end process EDGE_DET_SCL;
    -- Concurrent Conditional
    pos_edge_scl <= not q11 and q00; -- active high pulse on rising edge of sda
    neg_edge_scl <= q11 and not q00; -- active high pulse on falling edge of sda
    scl <= q11;
    
    
    -- hide all signal while they are not completly decoded 
    with display_address select s_address_scope <= s_address when '1', "0000000" when others; 
    with display_data select data_scope <= data when '1', "00000000" when others;
    
    -- Trigger flag is delayed from display_data with three clk cycles
    -- The rising edge of this flag will be used as a trigger or capture condition
    -- at that moment both, the address and the data are decoded and visible
    TRIGGER_COND_DELAY: process(clk)
    begin
        if rising_edge(clk) then
            if display_data = '1' and addr_en = '0' then
                t0 <= display_data;
                t1 <= t0;
                t2 <= t1;
                trigger_flag <= t2;
            else
                t2 <= '0';
                t1 <= '0';
                t0 <= '0';
                trigger_flag <= '0';
            end if;    
        end if;
    end process TRIGGER_COND_DELAY;
    
    scl_scope <= scl;
    sda_scope <= sda;
    led <= pack_cnt; -- The led of the Basys3 board are showing the number of decoded packages (binary)
    
end Behavioral;
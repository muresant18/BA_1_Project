----------------------------------------------------------------------------------
-- Company:         FH JOANNEUM GRAZ
-- Engineer:        TIMOTEI MURESAN
-- 
-- Create Date:     January 2021 
-- Design Name:     Extension of the Xilinx Logic Analyzer for Decoding of Common Serial Protocols
-- Module Name:     Decoder for SPI communication protocol: SPI Mode 0, LSB first
-- Project Name:    Bachelor Thesis 1, Electronics and Computer Engineering (ECE18)
-- Target Devices:  Basys3 by Xilinx
-- Tool Versions: 
-- Description:     this algorithm only allows the decoding of SPI Mode 0, with LSB first !
-- Dependencies:    The Probes should be connected to the SPI lines as follows:
-- 
--                  SPI SIGNAL  |   PMOD PORT ON BASYS3
--                  ------------|----------------------
--                        SCK   => N1 (JXADC pmod)
--                        MISO  => M1 (JXADC pmod)
--                        MOSI  => M3 (JXADC pmod)
--                        SS    => K3 (JXADC pmod)
--                  -----------------------------------
--   !!! Logic Level Convertere should be used in order to reduce the voltage of the SPI lines from 5V to 3V3 !!!                
-- 
-- Revision:
-- Revision  0.2 - active edge detection for all 4 signal lines
--               - dont_touch attribute added
--               - reset parallel to state machine 
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity spi_main is
  Port ( clk, mosi_in, miso_in, ss_in, sck_in, reset_btn : in std_logic;
         led : out std_logic_vector(15 downto 0)
  );
end spi_main;

architecture Behavioral of spi_main is

    type type_state is (STANDBY, IDLE, READ, UPD_INDEX);
    signal state : type_state := STANDBY;
    
    -- Register to store and display decoded data
    signal mosi_reg, miso_reg, mosi_data, miso_data: std_logic_vector(7 downto 0) := (others => '0');
    
    -- Counters
    signal bit_cnt, byte_cnt: natural range 0 to 255 := 0; --for SPI mode 0 with LSB first
    signal pck_cnt           : std_logic_vector(14 downto 0) := (others => '0');
    signal led_out           : std_logic_vector(15 downto 0) := (others => '0');

    -- Signals for the Active Edge Detection
    signal pos_edge_sck, neg_edge_sck   : std_logic := '0';
    signal pos_edge_ss, neg_edge_ss     : std_logic := '0';
    signal pos_edge_mosi, neg_edge_mosi : std_logic := '0';
    signal pos_edge_miso, neg_edge_miso : std_logic := '0';
    
    -- Synchronized main signals of the SPI bus
    signal mosi, miso, ss, sck : std_logic := '0';
    
    -- Flags for hidding decoded data until whole bytes are completly decoded
    signal data_ready, display_data     : std_logic := '0';
    
    -- Signal for the debounced signal from reset button
    signal reset :std_logic := '0';
    
    -- Prevent the signals to be optimized (abdorbed) by Vivado
    attribute dont_touch : string;
    attribute dont_touch of byte_cnt     : signal is "true";
    attribute dont_touch of pck_cnt      : signal is "true";
    attribute dont_touch of display_data : signal is "true";    -- trigger flag
    attribute dont_touch of mosi_data    : signal is "true";    -- one completly decoded byte
    attribute dont_touch of miso_data    : signal is "true";    -- one completly decoded byte
    attribute dont_touch of ss           : signal is "true";
    attribute dont_touch of sck          : signal is "true";
    attribute dont_touch of mosi         : signal is "true";
    attribute dont_touch of miso         : signal is "true";
    
    component debouncer
    port( clk       : in std_logic; -- system clock, 100MHz
          button    : in std_logic;
          button_stb: out std_logic );
    end component;
    
    component sig_synch
    port( clk        : in std_logic;
          input_sig  : in std_logic;
          synch_sig  : out std_logic;  
          neg_edge   : out std_logic;
          pos_edge   : out std_logic  );
    end component;
    
begin

    RST_BTN: debouncer
    PORT MAP(clk        => clk,
             button     => reset_btn,
             button_stb => reset );
    
    -- SYNCHRONIZE ALL SIGNALS OF THE SPI BUS --         
    MISO_SYNCH: sig_synch
    PORT MAP(clk       => clk,
             input_sig => miso_in,
             synch_sig => miso,
             neg_edge  => neg_edge_miso, -- not used in this design
             pos_edge  => pos_edge_miso  -- not used in this design     
             );
 
    MOSI_SYNCH: sig_synch
    PORT MAP(clk       => clk,
             input_sig => mosi_in,
             synch_sig => mosi,
             neg_edge  => neg_edge_mosi, -- not used in this design
             pos_edge  => pos_edge_mosi  -- not used in this design      
             );

    SCK_SYNCH: sig_synch
    PORT MAP(clk       => clk,
             input_sig => sck_in,
             synch_sig => sck,
             neg_edge  => neg_edge_sck,
             pos_edge  => pos_edge_sck      
             );
             
    SS_SYNCH: sig_synch
    PORT MAP(clk       => clk,
             input_sig => ss_in,
             synch_sig => ss,
             neg_edge  => neg_edge_ss,
             pos_edge  => pos_edge_ss  -- not used in this design      
             );                                      
    
    STATE_MACHINE: process(clk, reset) -- + all edges & co!!
    begin

        if reset = '1' then
            mosi_reg <= (others => '0');
            miso_reg <= (others => '0');
            bit_cnt  <= 0;
            byte_cnt <= 0;
            pck_cnt <= (others => '0');
            data_ready <= '0';
            state    <= STANDBY;
 
        elsif rising_edge(clk) then
            
            case state is
        
                when STANDBY =>
                    data_ready <= '0';
                    if neg_edge_ss = '1' then    -- or when ss = '0'
                        if pck_cnt = "111111111111111"  then
                            pck_cnt <= (others => '0');
                        else
                            pck_cnt <= pck_cnt + 1;    
                            state <= IDLE;
                        end if;
                    end if;
                    
                when IDLE =>
                    if ss = '1' then
                        byte_cnt <= 0;
                        state <= STANDBY;
                    elsif pos_edge_sck = '1' then
                        state <= READ;    
                    end if;
                    
                when READ =>
                    data_ready <= '0';
                    mosi_reg(bit_cnt) <= mosi;
                    miso_reg(bit_cnt) <= miso;
                    if neg_edge_sck = '1' then
                        state <= UPD_INDEX;
                    end if;
                    
                when UPD_INDEX =>
                    if bit_cnt < 7 then
                        bit_cnt <= bit_cnt + 1;
                    else
                        data_ready <= '1';
                        bit_cnt <= 0;
                        byte_cnt <= byte_cnt + 1;    
                    end if;
                    state <= IDLE;

            end case;
        end if; --re clk or reset
    end process;

--=========================================================================================================================
--=========================================================================================================================
--=========================================================================================================================
        
    -- Delay the trigger condition for ILA interface with one clk cycle
    TRIGGER_COND_DELAY: process(clk)
    begin
        if rising_edge(clk) then
            if data_ready = '1' then
                display_data <= data_ready;
            else
                display_data <= '0';
            end if;    
        end if;
    end process TRIGGER_COND_DELAY;

    -- Hide data register until whole bytes are decoded
    mosi_data <= mosi_reg when data_ready = '1' else "00000000";
    miso_data <= miso_reg when data_ready = '1' else "00000000";
    
    led_out(14 downto 0) <= pck_cnt;
    led_out(15) <= not ss;
    led <= led_out;
    
end Behavioral;

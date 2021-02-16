----------------------------------------------------------------------------------
-- Company:     FH JOANNEUM GRAZ
-- Engineer:    TIMOTEI MURESAN
-- 
-- Create Date: 01/04/2021 12:03:05 PM
-- Design Name: EXTENSION OF ILA TO DECODE SERIAL COMMUNICATIONS PROTOCOLS
-- Module Name: TEST BENCH for the module <i2c_main.vhd>
-- Project Name: 
-- Target Devices: Basys3 by Xilinx
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity tb_i2c_main is
--  Port ( );
end tb_i2c_main;

architecture Behavioral of tb_i2c_main is
    signal sda_in : STD_LOGIC := '1';
    signal scl_in : STD_LOGIC := '1';
    signal clk    : STD_LOGIC := '0';
    signal i      : natural := 0;
    signal led    : std_logic_vector(15 downto 0);
    signal reset_btn: STD_LOGIC := '0';
    
    component i2c_main is
    PORT(  sda_in, scl_in, clk, reset_btn  : in STD_LOGIC;
           led : out std_logic_vector(15 downto 0) );
    end component;
    
begin

    UUT: i2c_main PORT MAP ( sda_in      => sda_in         ,   
                             scl_in      => scl_in         ,
                             clk         => clk            ,
                             reset_btn   => reset_btn      ,
                             led         => led             );
    
    clk <= not clk after 5ns;          -- toggle the clk       

    test_bench_1: process
        --======================================================================================== ADDRESS
        procedure auto_stream_address( ack_addr_stream   : in std_logic;
                                       rw_stream         : in std_logic;
                                       s_address_stream  : in std_logic_vector(6 downto 0)) is
        -- inverted bits order, because I2C sends the MSB first
        variable s_address_rev : std_logic_vector(6 downto 0);
        variable to_stream	   : std_logic_vector(8 downto 0);                         
        begin
            for j in 0 to s_address_stream'left loop  -- invert bits order, because I2C sends the MSB first
                s_address_rev(j) := s_address_stream(s_address_stream'left - j);
            end loop;
            wait for 1 us;
            to_stream := ack_addr_stream & rw_stream & s_address_rev; -- concatenate 
            wait for 1 us;
            
            loop   -- stream all 9 bits 
                sda_in <= to_stream(i);
                i <= i+1;
                wait for 5 us;
                scl_in <= '1';
                wait for 4600 ns;
                scl_in <= '0';
                wait for 400 ns;
   
                if i = 9 then
                    i <= 0;
                    exit;
                end if; 
             end loop;
        end auto_stream_address;
        --======================================================================================== DATA
        procedure auto_stream_data(  ack_data_stream  : in std_logic;
                                     data_stream      : in std_logic_vector(7 downto 0) ) is
        -- inverted bits order, because I2C sends the MSB first
        variable data_rev	: std_logic_vector(7 downto 0);
        variable to_stream	: std_logic_vector(8 downto 0);                        
        begin
            for x in 0 to data_stream'left loop   -- invert bits order, because I2C sends the MSB first
                data_rev(x) := data_stream(data_stream'left - x);
            end loop;
            wait for 1 us;
            to_stream := ack_data_stream & data_rev ; -- concatenate 
            wait for 1 us;
            
            loop   -- stream all 9 bits 
                sda_in <= to_stream(i);
                i <= i+1;
                wait for 5 us;
                scl_in <= '1';
                wait for 4600 ns;
                scl_in <= '0';
                wait for 400 ns;
        
                if i = 9 then
                    i <= 0;
                    exit;
                end if; 
             end loop;
        end auto_stream_data;        
        --========================================================================================
    
    begin --process

        -- START condition
        wait for 47 us;
        sda_in <= '0';
        wait for 6 us;
        scl_in <= '0';
        wait for 10 us;
         -- STOP condition
        sda_in <= '0';
        wait for 5 us;
        scl_in <= '1';
        wait for 5 us;
        sda_in <= '1';
        wait for 30 us;
        
        -- START condition
        wait for 37 us;
        sda_in <= '0';
        wait for 4 us;
        scl_in <= '0';
        wait for 12 us;

        auto_stream_address(ack_addr_stream => '0', rw_stream => '1', s_address_stream => "0000001");
        wait for 1 us;
        
        auto_stream_data(ack_data_stream => '0', data_stream => "10101010");
        wait for 23 us;
        auto_stream_data(ack_data_stream => '0', data_stream => "10101010");
        wait for 23 us;
        
        -- STOP condition
        sda_in <= '0';
        wait for 5 us;
        scl_in <= '1';
        wait for 5 us;
        sda_in <= '1';
        wait for 30 us;

        -- START condition
        wait for 3 us;
        sda_in <= '0';
        wait for 6 us;
        scl_in <= '0';
        wait for 10 us;

        auto_stream_address(ack_addr_stream => '0', rw_stream => '0', s_address_stream => "1111110");
        wait for 1 us;
        
        auto_stream_data(ack_data_stream => '0', data_stream => "10101010");
        wait for 23 us;
        auto_stream_data(ack_data_stream => '0', data_stream => "10101010");
        wait for 23 us;
        
        -- STOP condition
        sda_in <= '0';
        wait for 5 us;
        scl_in <= '1';
        wait for 5 us;
        sda_in <= '1';
-- =====================================================================================       

-- ======================== TEST 2 =====================================================
---- START condition
--wait for 47 us;
--sda_in <= '0';
--wait for 6 us;
--scl_in <= '0';
--wait for 10 us;

--auto_stream_address(ack_addr_stream => '0', rw_stream => '0', s_address_stream => "1000000");
--wait for 10 us;
--        -- STOP condition
--        sda_in <= '0';
--        wait for 5 us;
--        scl_in <= '1';
--        wait for 5 us;
--        sda_in <= '1';
--        wait for 90 us;
--        --start condition
--        sda_in <= '0';
--        wait for 6 us;
--        scl_in <= '0';
--        wait for 10 us;
--auto_stream_address(ack_addr_stream => '0', rw_stream => '0', s_address_stream => "0100000");
--wait for 10 us;
--auto_stream_data(ack_data_stream => '0', data_stream => "00000001");
--wait for 10 us;
--        -- STOP condition
--        sda_in <= '0';
--        wait for 5 us;
--        scl_in <= '1';
--        wait for 5 us;
--        sda_in <= '1';
--        wait for 90 us;
--        --start condition
--        sda_in <= '0';
--        wait for 6 us;
--        scl_in <= '0';
--        wait for 10 us;


--auto_stream_address(ack_addr_stream => '1', rw_stream => '1', s_address_stream => "0111111");
--wait for 10 us;
--auto_stream_data(ack_data_stream => '1', data_stream => "00000010");
--                            sda_in <= '1';
--                            wait for 100 ns; -- ******************* PULSE               
--                            sda_in <= '0';
--wait for 10 us;
--auto_stream_data(ack_data_stream => '0', data_stream => "00000011");
--wait for 10 us;
--        -- STOP condition
--        sda_in <= '0';
--        wait for 5 us;
--        scl_in <= '1';
--        wait for 5 us;
--        sda_in <= '1';
--        wait for 90 us;
--        --start condition
--        sda_in <= '0';
--        wait for 6 us;
--        scl_in <= '0';
--        wait for 10 us;
  
--auto_stream_address(ack_addr_stream => '0', rw_stream => '0', s_address_stream => "0000011");
--wait for 10 us;
--auto_stream_data(ack_data_stream => '0', data_stream => "00000011");
--wait for 10 us;
--        -- STOP condition
--        sda_in <= '0';
--        wait for 5 us;
--        scl_in <= '1';
--        wait for 5 us;
--        sda_in <= '1';
--        wait for 90 us;
--        --start condition
--        sda_in <= '0';
--        wait for 6 us;
--        scl_in <= '0';
--        wait for 10 us;        
              
                
--        -- STOP condition
--        sda_in <= '0';
--        wait for 5 us;
--        scl_in <= '1';
--        wait for 5 us;
--        sda_in <= '1';
--        wait;
----============================================================

    end process; 
end Behavioral;

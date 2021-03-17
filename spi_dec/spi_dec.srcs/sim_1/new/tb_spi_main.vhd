----------------------------------------------------------------------------------
-- Company:         FH JOANNEUM GRAZ
-- Engineer:        TIMOTEI MURESAN
-- 
-- Create Date:     January 2021
-- Design Name:     Extension of the Xilinx Logic Analyzer for Decoding of Common Serial Protocols
-- Module Name:     Test bench for the main module spi_main.vhd
-- Project Name:    Bachelor Thesis 1, Electronics and Computer Engineering (ECE18)

-- Target Devices:  Basys3 by Xilinx
-- Tool Versions: 
-- Description:     Streams data bytes for MOSI and MISO signals 
--                  Simulates an SPI signal mode 0, with LSB first and an serial clock with f = 2 Mhz

-- Dependencies:    IMPORTANT: the decoded SPI signal should be: SPI Mode 0, LSB first  !!!
-- 
-- Revision:
-- Revision         0.2 - using procedures
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_spi_main is
--  Port ( );
end tb_spi_main;

architecture Behavioral of tb_spi_main is

    signal clk      : std_logic := '0';
    signal mosi_in  : std_logic := '0';
    signal miso_in  : std_logic := '0';
    signal ss_in    : std_logic := '1'; -- in mode 0, ss is High while not selected
    signal sck_in   : std_logic := '0'; -- in mode 0, sck is Low while IDLE
    signal reset_btn: std_logic := '0';
    signal led      : std_logic_vector(15 downto 0) := (others => '0');
    signal i        : natural := 0;
    
    component spi_main is
    PORT( clk, mosi_in, miso_in, ss_in, sck_in, reset_btn : in std_logic;
      led : out std_logic_vector(15 downto 0)    );
    end component;

begin

    UUT: spi_main PORT MAP( clk       => clk      ,
                            mosi_in   => mosi_in  ,
                            miso_in   => miso_in  ,
                            ss_in     => ss_in    ,
                            sck_in    => sck_in   ,
                            reset_btn => reset_btn,
                            led       => led      );
                            
    clk <= NOT clk after 5 ns;          
    
    test_bench1: process
    
        procedure auto_stream_data ( mosi_to_stream : in std_logic_vector(7 downto 0);
                                     miso_to_stream : in std_logic_vector(7 downto 0)  ) is
        begin
            loop  -- a period of 500ns will be simulated, which covers the whole T for f = 2Mhz (sck will be 250ns High + 250ns Low) 
                if i = 8 then
                    i <= 0;
                    exit;
                else
                    mosi_in <= mosi_to_stream(i);
                    miso_in <= miso_to_stream(i);   
                    
                    -- interferences (this short pulses shoul not be syncronized and recognized as valid signals)
                    wait for 1 ns;
                    ss_in <= '1';
                    wait for 21 ns;
                    ss_in <= '0';
                    wait for 1 ns;
                    -- ---------------------------------------------------------
                    
                    i <= i+1; 
                    wait for 250 ns;
                    sck_in <= '1';      -- sample here
                    wait for 220 ns;
                    sck_in <= '0';   
                    wait for 12 ns;
                    mosi_in <= '0';     -- go low for a short period of time to make the simulation result easy to understand
                    miso_in <= '0';
                    wait for 18 ns;                 
                end if;    
            end loop;
        end; --auto_stream_data

    begin
        wait for 399 ns;
            ss_in <= '0';   -- select this slave
        wait for 399 ns;
        
        auto_stream_data(mosi_to_stream => "00000001", miso_to_stream => "11111110"); 
        wait for 60 ns;
        auto_stream_data(mosi_to_stream => "00000010", miso_to_stream => "11111101"); 
        wait for 60 ns;
        
        ss_in <= '1';
        wait for 500 ns;
        ss_in <= '0';
        wait for 60 ns;
        
        auto_stream_data(mosi_to_stream => "00000011", miso_to_stream => "11111100"); 
        wait for 60 ns;
        auto_stream_data(mosi_to_stream => "00000100", miso_to_stream => "11111011"); 
        wait for 60 ns;
        
        auto_stream_data(mosi_to_stream => "00000101", miso_to_stream => "11111010"); 
        wait for 60 ns;
        auto_stream_data(mosi_to_stream => "00000110", miso_to_stream => "11111001"); 
        wait for 60 ns;

        auto_stream_data(mosi_to_stream => "00000111", miso_to_stream => "11111000"); 
        wait for 60 ns;
        auto_stream_data(mosi_to_stream => "00001000", miso_to_stream => "11110111"); 
        wait for 60 ns;        
        
               
        wait for 400 ns;
        ss_in <= '1';    -- unselect this slave

        wait;
    end process;        

end Behavioral;


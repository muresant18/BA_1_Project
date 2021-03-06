----------------------------------------------------------------------------------
-- Company:         FH JOANNEUM GRAZ
-- Engineer:        TIMOTEI MURESAN
-- 
-- Create Date:     January 2021
-- Design Name:     Extension of the Xilinx Logic Analyzer for Decoding of Common Serial Protocols
-- Module Name:     Test bench for the module sig_synch.vhd
-- Project Name:    Bachelor Thesis 1, Electronics and Computer Engineering (ECE18)

-- Target Devices:  Basys3 by Xilinx
-- Tool Versions: 
-- Description:     Stimulates interferece signals (short pulses) which should be cut out 
--                  and valid sigals which should be synchronized
                  
-- Dependencies:    the decoded SPI signal should be: SPI Mode 0, LSB first
-- 
-- Revision:
-- Revision         0.1 - simple input signals
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tb_sig_synch is
--  Port ( );
end tb_sig_synch;

architecture Behavioral of tb_sig_synch is
    
    signal clk       : std_logic := '0';
    signal input_sig : std_logic := '0';
    signal synch_sig : std_logic := '0';
    signal neg_edge  : std_logic := '0';
    signal pos_edge  : std_logic := '0';
    
    component sig_synch is
      Port ( clk        : in std_logic;
             input_sig  : in std_logic;
             synch_sig  : out std_logic;  
             neg_edge   : out std_logic;
             pos_edge   : out std_logic
           );
    end component;
begin

    UUT: sig_synch PORT MAP( clk       => clk      ,
                             input_sig => input_sig,
                             synch_sig => synch_sig,
                             neg_edge  => neg_edge ,
                             pos_edge  => pos_edge );
                             
    -- clk toggle simulating the system clock @ f = 100 Mhz                    
    clk <= NOT clk after 5 ns; 
    
STIMULATION_INPUT_SIGNAL: process
    begin
        
        wait for 44 ns;
            input_sig <= '1';   -- short pulse, shold not be syhcnronized
            wait for 2 ns;
        input_sig <= '0';
        wait for 11 ns;
            input_sig <= '1';   -- short pulse, shold not be syhcnronized
            wait for 7 ns;
        input_sig <= '0';
        wait for 37 ns;
        
        wait for 50 ns;
            input_sig <= '1';   -- short pulse, shold not be syhcnronized
            wait for 6 ns;
        input_sig <= '0';
        wait for 15 ns;
        
            input_sig <= '1';   -- short pulse, shold not be syhcnronized
            wait for 11 ns;
        input_sig <= '0';
        wait for 41 ns;
        
        input_sig <= '1';    -- short pulse, shold not be syhcnronized
            wait for 30 ns;
        input_sig <= '0';
        wait for 70 ns;
        
        input_sig <= '1';   -- valid signal, must be synchronized ===========================
            wait for 40 ns;
        input_sig <= '0';
        wait for 70 ns;
                
            input_sig <= '1';   -- short pulse, shold not be syhcnronized
            wait for 17 ns;
        input_sig <= '0';
        wait for 29 ns;  
        
            input_sig <= '1';   -- short pulse, shold not be syhcnronized
            wait for 21 ns;
        input_sig <= '0';
        wait for 33 ns;

        
            input_sig <= '1';   -- short pulse, shold not be syhcnronized
            wait for 4 ns;
        input_sig <= '0';
        wait for 29 ns;  
 
        wait for 2 ns;
            input_sig <= '1';   -- short pulse, shold not be syhcnronized
            wait for 7 ns;
        input_sig <= '0';
        wait for 6 ns;
            input_sig <= '1';   -- short pulse, shold not be syhcnronized
            wait for 6 ns;
        input_sig <= '0';
        wait for 5 ns;
            input_sig <= '1';   -- short pulse, shold not be syhcnronized
            wait for 4 ns;
        input_sig <= '0';
        wait for 50 ns;
  

             
            input_sig <= '1';   -- valid signal, must be synchronized ===========================
            wait for 140 ns;
        input_sig <= '0';   
        
        wait for 200 ns;
        
        -- Interferences from high to low: ----------------------------------------------
        
        input_sig <= '1';
        wait for 80 ns;
            input_sig <= '0';   
            wait for 6 ns;
        
        input_sig <= '1';
        wait for 33 ns;
            input_sig <= '0';   
            wait for 13 ns;
                    
        input_sig <= '1';
        wait for 43 ns;
            input_sig <= '0';   
            wait for 10 ns;
            
        input_sig <= '1';
        wait for 41 ns;
            input_sig <= '0';   
            wait for 11 ns;    
            
        input_sig <= '1';
        wait for 45 ns;
            input_sig <= '0';   
            wait for 15 ns;    
            
        input_sig <= '1';    
        wait;
    
    end process;
end Behavioral;
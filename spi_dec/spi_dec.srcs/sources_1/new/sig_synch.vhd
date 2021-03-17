----------------------------------------------------------------------------------
-- Company:         FH JOANNEUM GRAZ
-- Engineer:        TIMOTEI MURESAN
-- 
-- Create Date:     January 2021
-- Design Name:     Extension of the Xilinx Logic Analyzer for Decoding of Common Serial Protocols

-- Module Name:     Signal synchronization for the external input signal lines


-- Project Name:    Bachelor Thesis 1, Electronics and Computer Engineering (ECE18)
-- Target Devices:  Basys3 by Xilinx
-- Tool Versions: 
-- Description:     - This module acts as a Active edge detection. 
--                  - It also acts as a filter against interferences 
--                  - A maximum of 3 consecuvite short pulses (T_on < 20ns) at 3 consecutive
--                    rising edges of system clock will be ignored (filterd out) and not synchronized             
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


entity sig_synch is
  Port ( clk        : in std_logic;
         input_sig  : in std_logic;
         synch_sig  : out std_logic;  
         neg_edge   : out std_logic;
         pos_edge   : out std_logic
       );
end sig_synch;

architecture Behavioral of sig_synch is

    signal q0, q1, q2, q3, q4, sig_0 : std_logic := '0';

begin

     -- Convert signals from H and L to 1 and 0
     -- INFO: this code line causes a warning: "case item 1'1b is unreachnable" 
    with input_sig select sig_0 <= '1' when 'H' | '1', '0' when others; --

    
    -- Active Edge Detection
    EDGE_DET: process(clk) 
    begin
        if rising_edge(clk) then

             q0  <= sig_0;
             q1  <= q0;
             q2  <= q1 and sig_0;
             q3  <= q2 and sig_0;
             q4  <= q3;     

        end if;
    end process EDGE_DET;
    
    -- Concurrent Conditional
    pos_edge  <= not q4 and q3; -- active high pulse on rising edge of sda
    neg_edge  <= q4 and not q3 ; -- active high pulse on falling edge of sda
    synch_sig <= q4; 

end Behavioral;

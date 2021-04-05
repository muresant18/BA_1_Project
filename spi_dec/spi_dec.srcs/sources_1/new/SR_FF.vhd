----------------------------------------------------------------------------------
-- Company:         FH JOANNEUM GRAZ
-- Engineer:        TIMOTEI MURESAN
-- 
-- Create Date:     January 2021
-- Design Name:     Extension of the Xilinx Logic Analyzer for Decoding of Common Serial Protocols

-- Module Name:     SR-FlipFlop used in the module sig_synch.vhd


-- Project Name:    Bachelor Thesis 1, Electronics and Computer Engineering (ECE18)
-- Target Devices:  Basys3 by Xilinx
-- Tool Versions: 
-- Description:     In case that S and R are simultanously high, the output will be low
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 
             
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SR_FF is
    Port ( S : in STD_LOGIC;
           R : in STD_LOGIC;
           clk : in STD_LOGIC;
           Q : out STD_LOGIC);
end SR_FF;

architecture Behavioral of SR_FF is

    signal temp : std_logic := '0';
    
begin

    process (S, R, clk)
    begin
        if rising_edge(clk) then
            if (S = '0') AND (R = '1') then
                temp <= '0';
            elsif (S = '1') AND (R = '0') then
                temp <= '1';
            elsif (S = '1') AND (R = '1') then     
                temp <= '0';    
            end if; 
        end if;     
    end process;
    
    Q <= temp;
    
end Behavioral;

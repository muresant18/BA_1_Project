----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/04/2021 03:54:55 PM
-- Design Name: 
-- Module Name: tb_debouncer - Behavioral
-- Project Name: 
-- Target Devices: 
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



entity tb_debouncer is
--  Port ( );
end tb_debouncer;

architecture Behavioral of tb_debouncer is
    signal clk, button, button_stb: std_logic := '0';


    component debouncer is
    PORT( clk       : in std_logic; -- system clock, 100MHz
          button    : in std_logic;
          button_stb: out std_logic );
    end component;
    
begin

    UUT: debouncer PORT MAP ( clk                 => clk                ,   
                              button              => button             ,
                              button_stb          => button_stb          );
    
    clk <= not clk after 5ns;
    
    test_bench: process
    begin
    wait for 47 us;
    button <= '1';
    wait for 5 ns;
    button <= '0';
        wait for 11 ns;
        button <= '1';
        wait for 9 ns;
        button <= '0';
            wait for 50 ns;
            button <= '1';
            wait for 14 ns;
            button <= '0';
    wait for 1 us;
    button <= '1';
    wait for 500 ns;
    button <= '0';
    wait;
    
    end process;
    
end Behavioral;

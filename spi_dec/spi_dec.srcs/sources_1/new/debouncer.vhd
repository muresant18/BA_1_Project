----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/08/2021 08:20:37 PM
-- Design Name: 
-- Module Name: debouncer - Behavioral
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

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity debouncer is
    port( clk       : in std_logic; -- system clock, 100MHz
          button    : in std_logic;
          button_stb: out std_logic );
end debouncer;
--
architecture rtl of debouncer is
    signal cnt: std_logic_vector(19 downto 0) := (others => '0');
    signal sample_strobe, reset: std_logic := '0';
    signal button_q0,button_q1,button_q2,button_q3: std_logic := '0';
begin

--process für die 4-bit FlipFlop Kaskade
process(clk)
    begin
    if clk='1' and clk'event then
        button_q0 <= button;
        button_q1 <= button_q0;
        if sample_strobe = '1' then
               button_q2 <= button_q1;
        end if;
        button_q3 <= button_q2;
    end if;
end process;

--nebenläufige kombinatorische Logik für Flankendetektion (fallende Flanke)
button_stb <= not button_q2 and button_q3; -- Ausgangssignal !!!

--process für den Timer zur Erzeugung des 100Hz Abtastsignals
process(clk)
begin
    if rising_edge(clk) then
        if reset = '1' then
            cnt <= (others => '0'); --alle Elemente von cnt auf '0' setzen
        else
            cnt <= cnt+1; -- dafür braucht man ieee.std_logic_unsigned !!!
            if sample_strobe = '1' then -- wenn letzter Zählstand erreicht ist
                   cnt <= (others => '0'); -- restart des Zählers
            end if;
        end if;
    end if;
end process;

--nebenläufige kombinatorische Logik für den Timer
sample_strobe <= '1' when cnt = 1000000-1 else '0'; -- zählmodul=1000000 ~+ 10 ms

end architecture rtl;

----------------------------------------------------------------------------------
-- Company:     FH JOANNEUM GRAZ
-- Engineer:    TIMOTEI MURESAN
-- 
-- Create Date: 01/04/2021 12:03:05 PM
-- Design Name: EXTENSION OF ILA TO DECODE SERIAL COMMUNICATIONS PROTOCOLS
-- Module Name: Debouncer for external buttons
-- Project Name: 
-- Target Devices: Basys3 by Xilinx
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: connected to the main module "i2c_main.vhd" as a component
-- 
-- Revision:
-- Revision 1.1 
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

architecture rtl of debouncer is
    signal cnt: std_logic_vector(19 downto 0) := (others => '0');
    signal sample_strobe, reset: std_logic := '0';
    signal button_q0,button_q1,button_q2,button_q3: std_logic := '0';
begin

-- process for the 4-bit FlipFlop cascade
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

--concurrent combinatorial logic for edge detection (falling edge)
button_stb <= not button_q2 and button_q3; -- Ausgangssignal !!!

--process for the timer to generate the 100Hz sampling signal
process(clk)
begin
    if rising_edge(clk) then
        if reset = '1' then
            cnt <= (others => '0');         --all elements of cnt set to zero
        else
            cnt <= cnt+1;                   -- ieee.std_logic_unsigned library needed
            if sample_strobe = '1' then     -- when last counting value is reached
                   cnt <= (others => '0');  -- restart the counter
            end if;
        end if;
    end if;
end process;

--concurrent combinatorial logic for the timer
sample_strobe <= '1' when cnt = 1000000-1 else '0'; -- 1.000.000 x 10ns <=> 10ms

end architecture rtl;
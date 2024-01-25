----------------------------------------------------------------------------------
 -- Title: Lab1_Top_Level.vhd
 -- Author: Seth Konynenbelt
 -- Created: January 20, 2023
 -- Description: Top Level for Lab1 Part 1
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity rps_input_tb is
end rps_input_tb;

architecture Behavioral of rps_input_tb is

component rps_input is
  port(
    btn: in std_logic_vector(3 downto 0);
    char_out: out std_logic_vector(3 downto 0));
end component;

signal btn          :   std_logic_vector(3 downto 0) := "0000"; -- initialize inputs
signal char_out     :   std_logic_vector(3 downto 0);

begin
    T1: rps_input port map (btn => btn, char_out => char_out); -- connect ports
 
  process         -- clock process for clk
    begin
      wait for 100 ns;    -- hold reset STATE for 100 ns
      loop
        btn <= btn + 1;
        wait for 10ns;
      end loop;
    end process;

end Behavioral;
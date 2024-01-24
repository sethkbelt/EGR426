----------------------------------------------------------------------------------
 -- Title: Decoder_Two_To_Four_tb.vhd
 -- Author: Seth Konynenbelt
 -- Created: January 20, 2023
 -- Description: Deocder for 2 to 4 test bench
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Decoder_Two_To_Four_tb is
end Decoder_Two_To_Four_tb;

architecture Behavioral of Decoder_Two_To_Four_tb is

----------------------------------------------------------------------------------
component Decoder_Two_To_Four is
    port(
      sel: in std_logic_vector(1 downto 0);
      anode: out std_logic_vector(3 downto 0));
end component;
----------------------------------------------------------------------------------

signal sel : std_logic_vector(1 downto 0) := "00"; -- initialize inputs
signal anode :  std_logic_vector(3 downto 0);

begin
    T1: Decoder_Two_To_Four port map (sel => sel, anode => anode); -- connect ports
 
  process         -- clock process for clk
    begin
      wait for 100 ns;    -- hold reset STATE for 100 ns
      loop
        sel <= sel + 1;
        wait for 10ns;
      end loop;
    end process;
    
end Behavioral;
----------------------------------------------------------------------------------
 -- Title: Mux_Four_To_One_tb.vhd
 -- Author: Seth Konynenbelt
 -- Created: January 20, 2023
 -- Description: Mux for four to one test bench
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Mux_Four_To_One_tb is
end Mux_Four_To_One_tb;

architecture Behavioral of Mux_Four_To_One_tb is

----------------------------------------------------------------------------------
component Mux_Four_To_One is
    port(
      -- four bit buses for seven segment decoder
      seg1    : in STD_LOGIC_VECTOR (3 downto 0);
      seg2    : in STD_LOGIC_VECTOR (3 downto 0);
      seg3    : in STD_LOGIC_VECTOR (3 downto 0);
      seg4    : in STD_LOGIC_VECTOR (3 downto 0);
      sel     : in STD_LOGIC_VECTOR (1 downto 0);
      seg_out : out STD_LOGIC_VECTOR (3 downto 0)
  );
end component;
----------------------------------------------------------------------------------

signal seg1    : STD_LOGIC_VECTOR (3 downto 0) := "0000"; -- initialize inputs
signal seg2    : STD_LOGIC_VECTOR (3 downto 0) := "0000"; -- initialize inputs
signal seg3    : STD_LOGIC_VECTOR (3 downto 0) := "0000"; -- initialize inputs
signal seg4    : STD_LOGIC_VECTOR (3 downto 0) := "0000"; -- initialize inputs
signal sel     : STD_LOGIC_VECTOR (1 downto 0);
signal seg_out : STD_LOGIC_VECTOR (3 downto 0);

begin
    T1: Mux_Four_To_One port map (seg1 => seg1, seg2 => seg2, seg3 => seg3, seg4 => seg4, sel => sel, seg_out => seg_out); -- connect ports
 
  process         -- clock process for clk
    begin
      wait for 100 ns;    -- hold reset STATE for 100 ns
      seg1 <= "0001";
      seg2 <= "0010";
      seg3 <= "0011";
      seg4 <= "0100";
      sel <= "00";
      wait for 10 ns;
      loop
        sel <= sel + 1;
        wait for 10ns;
      end loop;
    end process;
    
end Behavioral;
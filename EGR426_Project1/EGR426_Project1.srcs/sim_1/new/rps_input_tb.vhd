----------------------------------------------------------------------------------
 -- Title: computer_rps_tb.vhd
 -- Author: Seth Konynenbelt
 -- Created: January 20, 2023
 -- Description: Rock Paper Scissors Testbench
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.NUMERIC_STD.UNSIGNED;

entity computer_rps_tb is
end computer_rps_tb;

architecture Behavioral of computer_rps_tb is

component computer_rps is
  port(
    clk, reset_main: IN STD_LOGIC;
    switch : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    rps : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
end component;

signal clk: std_logic   := '0'; -- initialize inputs
signal reset: std_logic := '0';
signal switch           :   std_logic_vector(4 downto 0) := "00001"; -- initialize inputs
signal rps              :   std_logic_vector(3 downto 0);
signal keeper_val        :   std_logic_vector(4 downto 0) := "00001"; -- initialize inputs
begin
    T1: computer_rps port map (clk => clk, reset_main => reset, switch => switch, rps => rps); -- connect ports
 
  process         
    begin
      wait for 100 ns;    -- hold reset STATE for 100 ns
      reset <= '1';
      wait for 10 ns;
      reset <= '0';
      loop
        keeper_val <= switch(3 downto 0) & switch(4); --rotate 
        wait for 15ns;
        switch <= "00000";
        wait for 15ns;
        switch <= keeper_val;
        wait for 15ns;

      end loop;
    end process;
    
      clock: process -- clock process for clk
    begin
    wait for 100 ns;    -- hold reset STATE for 100 ns
     clk <= '1';
     loop
        clk <= not clk;
        wait for 5ns;
     end loop;
  end process clock;

end Behavioral;
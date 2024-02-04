----------------------------------------------------------------------------------
 -- Title: Lab1_Top_Level_tb.vhd
 -- Author: Seth Konynenbelt
 -- Created: January 20, 2023
 -- Description: Lab 1 Top Level test bench
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.std_logic_signed.all;

entity Lab1_Top_Level_tb is
end Lab1_Top_Level_tb;

architecture Behavioral of Lab1_Top_Level_tb is

  ----------------------------------------------------------------------------------
  component Lab1_Top_Level is
      port(
    sw : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    clk_100Mhz : IN STD_LOGIC;
    reset_main : IN STD_LOGIC;
    D0_SEG : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    D1_SEG      : out std_logic_vector(7 downto 0);
    D0_AN : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    D1_AN       : out std_logic_vector(3 downto 0);
    led : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
  end component;

  signal switch        : std_logic_vector(4 downto 0) := "00001"; -- initialize inputs
  signal clk        : std_logic := '0'; -- initialize inputs
  signal reset      : std_logic := '0';
  signal D0_SEG     : std_logic_vector(7 downto 0);
  signal D0_AN      : std_logic_vector(3 downto 0);
  signal D1_SEG     : std_logic_vector(7 downto 0);
  signal D1_AN      : std_logic_vector(3 downto 0); 
  signal led        : STD_LOGIC_VECTOR(1 DOWNTO 0);
  signal keeper_val        :   std_logic_vector(4 downto 0) := "00001"; -- initialize inputs
 
begin                         -- module => testbench
  T1: Lab1_Top_Level port map (sw => switch, clk_100Mhz => clk, reset_main => reset, D0_SEG => D0_SEG, D1_SEG => D1_SEG, D0_AN => D0_AN, D1_AN => D1_AN, led => led); -- connect ports

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
        wait for 10ns;
     end loop;
  end process clock;

end Behavioral;

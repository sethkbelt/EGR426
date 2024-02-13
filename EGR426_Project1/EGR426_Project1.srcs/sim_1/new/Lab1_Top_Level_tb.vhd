----------------------------------------------------------------------------------
-- Title: Lab1_Top_Level_tb.vhd
-- Author: Seth Konynenbelt
-- Created: January 20, 2023
-- Description: Lab 1 Top Level test bench
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.std_logic_signed.ALL;

ENTITY Lab1_Top_Level_tb IS
END Lab1_Top_Level_tb;

ARCHITECTURE Behavioral OF Lab1_Top_Level_tb IS

  ----------------------------------------------------------------------------------
  COMPONENT Lab1_Top_Level IS
    PORT (
      sw : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      clk_100Mhz : IN STD_LOGIC;
      reset_main : IN STD_LOGIC;
      D0_SEG : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      D1_SEG : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      D0_AN : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      D1_AN : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      led : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
  END COMPONENT;

  SIGNAL switch : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00001"; -- initialize inputs
  SIGNAL clk : STD_LOGIC := '0'; -- initialize inputs
  SIGNAL reset : STD_LOGIC := '0';
  SIGNAL D0_SEG : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL D0_AN : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL D1_SEG : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL D1_AN : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL led : STD_LOGIC_VECTOR(1 DOWNTO 0);
  SIGNAL keeper_val : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00001"; -- initialize inputs

BEGIN -- module => testbench
  T1 : Lab1_Top_Level PORT MAP(sw => switch, clk_100Mhz => clk, reset_main => reset, D0_SEG => D0_SEG, D1_SEG => D1_SEG, D0_AN => D0_AN, D1_AN => D1_AN, led => led); -- connect ports

  PROCESS
  BEGIN
    WAIT FOR 100 ns; -- hold reset STATE for 100 ns
    reset <= '1';
    WAIT FOR 10 ns;
    reset <= '0';
    LOOP
      keeper_val <= switch(3 DOWNTO 0) & switch(4); --rotate 
      WAIT FOR 15ns;
      switch <= "00000";
      WAIT FOR 15ns;
      switch <= keeper_val;
      WAIT FOR 15ns;

    END LOOP;
  END PROCESS;

  clock : PROCESS -- clock process for clk
  BEGIN
    WAIT FOR 100 ns; -- hold reset STATE for 100 ns
    clk <= '1';
    LOOP
      clk <= NOT clk;
      WAIT FOR 10ns;
    END LOOP;
  END PROCESS clock;

END Behavioral;
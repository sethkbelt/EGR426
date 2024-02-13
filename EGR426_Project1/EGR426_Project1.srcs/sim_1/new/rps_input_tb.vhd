----------------------------------------------------------------------------------
-- Title: computer_rps_tb.vhd
-- Author: Seth Konynenbelt
-- Created: January 20, 2023
-- Description: Rock Paper Scissors Testbench
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.NUMERIC_STD.UNSIGNED;

ENTITY computer_rps_tb IS
END computer_rps_tb;

ARCHITECTURE Behavioral OF computer_rps_tb IS

  COMPONENT computer_rps IS
    PORT (
      clk, reset_main : IN STD_LOGIC;
      switch : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      rps : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
  END COMPONENT;

  SIGNAL clk : STD_LOGIC := '0'; -- initialize inputs
  SIGNAL reset : STD_LOGIC := '0';
  SIGNAL switch : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00001"; -- initialize inputs
  SIGNAL rps : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL keeper_val : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00001"; -- initialize inputs
BEGIN
  T1 : computer_rps PORT MAP(clk => clk, reset_main => reset, switch => switch, rps => rps); -- connect ports

  PROCESS
  BEGIN
    WAIT FOR 100 ns; -- hold reset STATE
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
    WAIT FOR 100 ns; -- clock continues to loop
    clk <= '1';
    LOOP
      clk <= NOT clk;
      WAIT FOR 5ns;
    END LOOP;
  END PROCESS clock;

END Behavioral;
----------------------------------------------------------------------------------
-- Title: Clock_Divider_tb.vhd
-- Author: Seth Konynenbelt
-- Created: January 20, 2023
-- Description: Clock divider test bench
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Clock_Divider_tb IS
END Clock_Divider_tb;

ARCHITECTURE Behavioral OF Clock_Divider_tb IS

  ----------------------------------------------------------------------------------
  COMPONENT Clock_Divider_1Khz
    PORT (
      clk, reset : IN STD_LOGIC;
      clk_div : OUT STD_LOGIC
    );
  END COMPONENT;
  ----------------------------------------------------------------------------------

  SIGNAL clk : STD_LOGIC := '0'; -- initialize inputs
  SIGNAL reset : STD_LOGIC := '0';
  SIGNAL count_out : STD_LOGIC := '0';

BEGIN -- module => testbench
  T1 : Clock_Divider_1Khz PORT MAP(clk => clk, reset => reset, clk_div => count_out); -- connect ports

  PROCESS -- clock process for clk
  BEGIN
    WAIT FOR 100 ns; -- hold reset STATE for 100 ns
    reset <= '1';
    WAIT FOR 10 ns;
    reset <= '0';
    LOOP
      clk <= '0';
      WAIT FOR 10ns;
      clk <= '1';
      WAIT FOR 10ns;
    END LOOP;
  END PROCESS;

END Behavioral;
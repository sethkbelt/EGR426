----------------------------------------------------------------------------------
-- Title: Clock_Divider_10Hz.vhd
-- Author: Seth Konynenbelt
-- Created: January 20, 2023
-- Description: 10Hz clock divider
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Clock_Divider_10Hz IS
  PORT (
    clk, reset : IN STD_LOGIC;
    clk_div : OUT STD_LOGIC);
END Clock_Divider_10Hz;

ARCHITECTURE Behavioral OF Clock_Divider_10Hz IS

  SIGNAL clk_temp : STD_LOGIC;
  -- 16 bit vector holds value of 2^16, greater than 50,000
  -- 100MHZ / 10,000,000 = 10Hz, divided by 2 to create clock of 5,000,000
  SIGNAL count : STD_LOGIC_VECTOR (22 DOWNTO 0);

BEGIN
  PROCESS (clk, reset)
  BEGIN
    IF (reset = '1') THEN
      count <= "00000000000000000000000";
      clk_temp <= '0';
    ELSIF (clk'event AND rising_edge(clk)) THEN
      IF (count = 5000000) THEN
        count <= "00000000000000000000000";
        clk_temp <= NOT(clk_temp);
      ELSE
        count <= count + 1;
        clk_temp <= clk_temp;
      END IF;
    END IF;
  END PROCESS;

  clk_div <= clk_temp;

END Behavioral;
----------------------------------------------------------------------------------
-- Title: Clock_Divider_380Hz.vhd
-- Author: Seth Konynenbelt
-- Created: January 20, 2023
-- Description: 380 Hz clock divider for debouncing switches
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Clock_Divider_380Hz IS
  PORT (
    clk, reset : IN STD_LOGIC;
    clk_div : OUT STD_LOGIC);
END Clock_Divider_380Hz;

ARCHITECTURE Behavioral OF Clock_Divider_380Hz IS

  SIGNAL clk_temp : STD_LOGIC;
  -- 17 bit vector holds value of 2^17, greater than 130,000
  -- 100MHZ / 260,000 =~ 380hz, divided by 2 to create clock of 130,000
  SIGNAL count : STD_LOGIC_VECTOR (16 DOWNTO 0);

BEGIN
  PROCESS (clk, reset)
  BEGIN
    IF (reset = '1') THEN
      count <= "00000000000000000";
      clk_temp <= '0';
    ELSIF (clk'event AND rising_edge(clk)) THEN
      IF (count = 130000) THEN
        count <= "00000000000000000";
        clk_temp <= NOT(clk_temp);
      ELSE
        count <= count + 1;
        clk_temp <= clk_temp;
      END IF;
    END IF;
  END PROCESS;

  clk_div <= clk_temp;

END Behavioral;
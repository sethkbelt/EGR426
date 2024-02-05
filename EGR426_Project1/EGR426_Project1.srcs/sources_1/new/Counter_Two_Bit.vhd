----------------------------------------------------------------------------------
-- Title: Counter_Two_bit.vhd
-- Author: Seth Konynenbelt
-- Created: January 20, 2023
-- Description: Two bit counter
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

----------------------------------------------------------------------------------
ENTITY Counter_Two_Bit IS
  PORT (
    clk_in : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    count_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END Counter_Two_Bit;
----------------------------------------------------------------------------------

ARCHITECTURE Behavioral OF Counter_Two_Bit IS

  SIGNAL count : STD_LOGIC_VECTOR (1 DOWNTO 0);

BEGIN
  PROCESS (clk_in, reset)
  BEGIN
    IF (reset = '1') THEN -- synchronous reset
      count <= "00";
    ELSIF (rising_edge(clk_in)) THEN
      count <= count + 1; -- roll over after 11
    ELSE
      count <= count;
    END IF;
  END PROCESS;

  count_out <= count;

END Behavioral;
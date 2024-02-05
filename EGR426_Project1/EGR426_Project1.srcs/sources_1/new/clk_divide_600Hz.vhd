----------------------------------------------------------------------------------
-- Title: Clock_Divider_OneKhz.vhd
-- Author: Seth Konynenbelt
-- Created: January 20, 2023
-- Description: One khz clock divider
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Clock_Divider_380Hz is
  port  (
    clk, reset : IN STD_LOGIC;
    clk_div : OUT STD_LOGIC);
end Clock_Divider_380Hz;

architecture Behavioral of Clock_Divider_380Hz is

  SIGNAL clk_temp : STD_LOGIC;
  -- 16 bit vector holds value of 2^16, greater than 50,000
  -- 100MHZ / 100,000 = 1Khz, divided by 2 to create clock of 50000
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
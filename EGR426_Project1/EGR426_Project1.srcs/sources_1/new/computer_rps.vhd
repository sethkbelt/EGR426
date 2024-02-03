----------------------------------------------------------------------------------
-- Title: Decoder_Two_To_Four.vhd
-- Author: Seth Konynenbelt
-- Created: January 20, 2023
-- Description: Two to four decoder
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

----------------------------------------------------------------------------------
ENTITY computer_rps IS
  PORT (
    clk, reset_main : IN STD_LOGIC;
    switch : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    rps : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END computer_rps;
----------------------------------------------------------------------------------

ARCHITECTURE Behavioral OF computer_rps IS

  SIGNAL rps_temp : STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN
  PROCESS (clk, switch, reset_main)
  BEGIN
    IF (reset_main = '1') THEN
      rps_temp <= "1110";
    ELSIF (switch = "00000") THEN -- uses switches for RPSLS input
      IF (rising_edge(clk)) THEN -- only rotate computer when no button
        IF (rps_temp = "1110") THEN
          rps_temp <= "1010";
        ELSE
          rps_temp <= rps_temp + 1;
        END IF;
      ELSE
        rps_temp <= rps_temp;
      END IF;
    END IF;
  END PROCESS;

  rps <= rps_temp;

END Behavioral;
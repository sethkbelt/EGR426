----------------------------------------------------------------------------------
-- Title: Computer_rps.vhd
-- Author: Seth Konynenbelt
-- Created: January 20, 2023
-- Description: Simulates the computer counting through r,p,s,l,s by 
-- rotating through letters when user switch is 0.
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
      rps_temp <= "1010";
    ELSIF (switch = "00000") THEN -- if switches aren't being used, turn on RPSLS roller
      IF (rising_edge(clk)) THEN --  to only rotate computer when no switch is pressed
        IF (rps_temp = "1110") THEN -- seven segment decoder r,p,s,l,c --> mapped to 10-14
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
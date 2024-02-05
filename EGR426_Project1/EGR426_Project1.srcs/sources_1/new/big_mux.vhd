----------------------------------------------------------------------------------
-- Title: big_mux.vhd
-- Author: Seth Konynenbelt
-- Created: January 20, 2023
-- Description: Mux for choosing 7 segment output on boolean board
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY big_mux IS
  PORT (
    -- 8 bit buses for seven segment decoder
    seg1 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    seg2 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    seg3 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    seg4 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
    sel : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
    seg_out : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
    anode_out : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
  );
END big_mux;

ARCHITECTURE Behavioral OF big_mux IS

BEGIN

  -- select bus segment corresponding to seven segment contol
  -- chose the anode on, and map the corresponding segment
  PROCESS (seg1, seg2, seg3, seg4, sel)
  BEGIN
    IF (sel = "00") THEN
      seg_out <= seg1;
      anode_out <= "1110";
    ELSIF (sel = "01") THEN
      seg_out <= seg2;
      anode_out <= "1101";
    ELSIF (sel = "10") THEN
      seg_out <= seg3;
      anode_out <= "1011";
    ELSIF (sel = "11") THEN
      seg_out <= seg4;
      anode_out <= "0111";
    ELSE
      seg_out <= seg4;
      anode_out <= "1000";
    END IF;
  END PROCESS;

END Behavioral;
----------------------------------------------------------------------------------
-- Title: Decoder_Seven_Segment.vhd
-- Author: Seth Konynenbelt
-- Created: January 20, 2023
-- Description: Seven Segment Decoder for 0-9, A-F. This exists to map
-- hex numbers A-F, unlike the rock, paper, scissors decoder 
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

----------------------------------------------------------------------------------
ENTITY Decoder_Seven_Segment_AF IS
  PORT (
    bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    seg_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END Decoder_Seven_Segment_AF;
----------------------------------------------------------------------------------
ARCHITECTURE Behavioral OF Decoder_Seven_Segment_AF IS

BEGIN
  PROCESS (bcd)
  BEGIN
    CASE bcd IS
        -- decoder maps 0-9, A-F up to 15 (4 bit input)
      WHEN "0000" => seg_out <= "11000000";
      WHEN "0001" => seg_out <= "11111001";
      WHEN "0010" => seg_out <= "10100100";
      WHEN "0011" => seg_out <= "10110000";
      WHEN "0100" => seg_out <= "10011001";
      WHEN "0101" => seg_out <= "10010010";
      WHEN "0110" => seg_out <= "10000010";
      WHEN "0111" => seg_out <= "11111000";
      WHEN "1000" => seg_out <= "10000000";
      WHEN "1001" => seg_out <= "10010000";

      WHEN "1010" => seg_out <= "10001000"; -- A
      WHEN "1011" => seg_out <= "10000011"; -- b
      WHEN "1100" => seg_out <= "11000110"; -- C
      WHEN "1101" => seg_out <= "10100001"; -- D
      WHEN "1110" => seg_out <= "10000110"; -- E
      WHEN "1111" => seg_out <= "10001110"; -- F
      WHEN OTHERS => seg_out <= "XXXXXXXX";

    END CASE;
  END PROCESS;

END Behavioral;
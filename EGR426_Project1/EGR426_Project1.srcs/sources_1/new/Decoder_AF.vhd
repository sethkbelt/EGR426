----------------------------------------------------------------------------------
 -- Title: Decoder_Seven_Segment.vhd
 -- Author: Seth Konynenbelt
 -- Created: January 20, 2023
 -- Description: Seven Segment Decoder
 ----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Decoder_Seven_Segment_AF is
  port(
      bcd: in std_logic_vector(3 downto 0);
      seg_out: out std_logic_vector(7 downto 0));
end Decoder_Seven_Segment_AF;

architecture Behavioral of Decoder_Seven_Segment_AF is

begin
  process(bcd)
    begin
      case bcd is
        -- corresponds to basys-3 segment control bits
        when "0000" => seg_out <= "11000000";
        when "0001" => seg_out <= "11111001";
        when "0010" => seg_out <= "10100100";
        when "0011" => seg_out <= "10110000";
        when "0100" => seg_out <= "10011001";
        when "0101" => seg_out <= "10010010";
        when "0110" => seg_out <= "10000010";
        when "0111" => seg_out <= "11111000";
        when "1000" => seg_out <= "10000000";
        when "1001" => seg_out <= "10010000";
        
        when "1010" => seg_out <= "10001000"; -- A
        when "1011" => seg_out <= "10000011"; -- b
        when "1100" => seg_out <= "11000110"; -- C
        when "1101" => seg_out <= "10100001"; -- D
        when "1110" => seg_out <= "10000110"; -- E
        when "1111" => seg_out <= "10001110"; -- F
        when others => seg_out <= "XXXXXXXX";

      end case;
    end process;

end Behavioral;

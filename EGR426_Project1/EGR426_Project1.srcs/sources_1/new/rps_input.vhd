----------------------------------------------------------------------------------
 -- Title: Decoder_Two_To_Four.vhd
 -- Author: Seth Konynenbelt
 -- Created: January 20, 2023
 -- Description: Two to four decoder
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity rps_input is
  port(
    btn: in std_logic_vector(3 downto 0);
    char_out: out std_logic_vector(3 downto 0));
end rps_input;

architecture Behavioral of rps_input is

begin

  -- select what anode is enabled. In seven segment
  -- decoder we have rock, paper, scissor output

  process(btn)
    begin
      case btn is 
        when "0001" => char_out <= x"A"; -- 10 is R
        when "0010" => char_out <= x"B"; -- 11 is P
        when "0100" => char_out <= x"C"; -- 12 is S
        when "1000" => char_out <= x"D"; -- 13 is L
        when others => char_out <= x"F";
      end case;
    end process;

end Behavioral;

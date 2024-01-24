--------------------------------------------------------------------------------------------------------------------------------------------------------------------
 -- Title: Mux_Two_To_One.vhd
 -- Author: Seth Konynenbelt
 -- Created: January 20, 2023
 -- Description: 2 to one bus mux for 7 Segment Decoder
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Mux_Two_To_One is
  port  (
    -- four bit buses for seven segment decoder
    seg1    : in STD_LOGIC_VECTOR (6 downto 0);
    seg2    : in STD_LOGIC_VECTOR (6 downto 0);
    sel     : in STD_LOGIC_VECTOR (1 downto 0);
    seg_out : out STD_LOGIC_VECTOR (6 downto 0);
    anode_out : out STD_LOGIC_VECTOR (3 downto 0)
  );
end Mux_Two_To_One;

architecture Behavioral of Mux_Two_To_One is

begin

  -- select bus segment corresponding to seven segment contol
  process(seg1, seg2,  sel)
    begin
      case sel is
        when "00" => seg_out <= seg1;
        when "01" => seg_out <= seg2;
        when "10" => seg_out <= seg3;
        when "11" => seg_out <= seg4;
        when others => seg_out <= "X";
      end case;
    end process;

end Behavioral;
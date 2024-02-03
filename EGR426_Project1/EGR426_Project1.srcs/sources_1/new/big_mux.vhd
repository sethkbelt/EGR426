--------------------------------------------------------------------------------------------------------------------------------------------------------------------
 -- Title: Mux_Four_To_One.vhd
 -- Author: Seth Konynenbelt
 -- Created: January 20, 2023
 -- Description: Four to one bus mux for 7 Segment Decoder
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity big_mux is
  port  (
    -- four bit buses for seven segment decoder
    seg1    : in STD_LOGIC_VECTOR (7 downto 0);
    seg2    : in STD_LOGIC_VECTOR (7 downto 0);
    seg3    : in STD_LOGIC_VECTOR (7 downto 0);
    seg4    : in STD_LOGIC_VECTOR (7 downto 0);
    sel     : in STD_LOGIC_VECTOR (1 downto 0);
    seg_out : out STD_LOGIC_VECTOR (7 downto 0);
    anode_out : out STD_LOGIC_VECTOR (3 downto 0)
  );
end big_mux;

architecture Behavioral of big_mux is

--signal anode : STD_LOGIC_VECTOR (3 downto 0);

begin

  -- select bus segment corresponding to seven segment contol
  process(seg1, seg2, seg3, seg4, sel)
    begin
        if (sel = "00") then
          seg_out <= seg1;
          anode_out <= "1110";
        elsif (sel = "01") then
          seg_out <= seg2;
          anode_out <= "1101";
        elsif (sel = "10") then
          seg_out <= seg3;
          anode_out <= "1011";
        elsif (sel = "11") then
          seg_out <= seg4;
          anode_out <= "0111";        
        else
          seg_out <= seg4;
          anode_out <= "1000";      
        end if;
    end process;
    
end Behavioral;
----------------------------------------------------------------------------------
 -- Title: Clock_Divider_125Hz.vhd
 -- Author: Seth Konynenbelt
 -- Created: January 20, 2023
 -- Description: 125Hz clock divider
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Clock_Divider_125Hz is
  port (
  clk,reset: in std_logic;
  clk_div: out std_logic);
end Clock_Divider_125Hz;

architecture Behavioral of Clock_Divider_125Hz is

  SIGNAL clk_temp: STD_LOGIC;
  -- 16 bit vector holds value of 2^16, greater than 50,000
  -- 100MHZ / 100,000 = 1Khz, divided by 2 to create clock of 50000
  SIGNAL count: STD_LOGIC_VECTOR (18 downto 0);

      begin
        process(clk, reset)
          begin
            if(reset = '1') then
              count <= x"00000";
              clk_temp <= '0';
            elsif(clk'event and rising_edge(clk)) then
              if(count = 400000) then
                count <= x"00000";
                clk_temp <= not(clk_temp);
              else
                count <= count + 1;
                clk_temp <= clk_temp;
              end if;
            end if;
        end process;
      
      clk_div <= clk_temp;
      
end Behavioral; 
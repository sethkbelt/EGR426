----------------------------------------------------------------------------------
 -- Title: main_rps_tb.vhd
 -- Author: Seth Konynenbelt
 -- Created: January 20, 2023
 -- Description: main_rps_tb

----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity main_rps_tb is
end main_rps_tb;

architecture Behavioral of main_rps_tb is

----------------------------------------------------------------------------------
  COMPONENT main_rps IS
    PORT (
        clk, reset_main : IN STD_LOGIC;
        switch : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        switch_flag : OUT STD_LOGIC;
        user_rps : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
----------------------------------------------------------------------------------

  SIGNAL reset_main : STD_LOGIC := '0';
  SIGNAL clk : STD_LOGIC := '0';
  SIGNAL switch : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000";
  SIGNAL switch_flag : STD_LOGIC;
  SIGNAL user_rps : STD_LOGIC_VECTOR(3 DOWNTO 0);

begin

  U11 : main_rps PORT MAP(clk => clk, reset_main => reset_main, switch => switch, switch_flag => switch_flag, user_rps => user_rps);
  
  
  
    process         -- clock process for clk
    begin
      wait for 100 ns;    -- hold reset STATE for 100 ns
      reset_main <= '1';
      wait for 10 ns;
      reset_main <= '0';
      loop
        switch <= "00000";
        wait for 30ns;
        switch <= "00010";
        wait for 30ns;

      end loop;
    end process;
  
  
  
  
  clock: process -- clock process for clk
    begin
    wait for 100 ns;    -- hold reset STATE for 100 ns
     clk <= '1';
     loop
        clk <= not clk;
        wait for 5ns;
     end loop;
  end process clock;

end Behavioral;

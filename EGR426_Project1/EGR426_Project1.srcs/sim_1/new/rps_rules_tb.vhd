----------------------------------------------------------------------------------
 -- Title: rps_rules.vhd
 -- Author: Seth Konynenbelt
 -- Created: January 20, 2023
 -- Description: RPS Rules Testbench
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity rps_rules_tb is
end rps_rules_tb;

architecture Behavioral of rps_rules_tb is

----------------------------------------------------------------------------------
  COMPONENT rps_rules IS
    PORT (
        clk, reset : IN STD_LOGIC;
        user_rps : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        comp_rps : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        --switch : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        switch_flag : IN STD_LOGIC;
        led0 : OUT STD_LOGIC;
        led1 : OUT STD_LOGIC;
        win_count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0); -- TODO if >9
        tie_count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        loss_count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
----------------------------------------------------------------------------------

  SIGNAL clk, reset, switch_flag : STD_LOGIC;
  SIGNAL comp_rps : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0001";
  SIGNAL user_rps : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0010";
  SIGNAL win_count : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL tie_count : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL loss_count : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL led0 : STD_LOGIC;
  SIGNAL led1 : STD_LOGIC;


begin
  U12 : rps_rules PORT MAP(clk => clk, reset => reset, switch_flag => switch_flag, user_rps => user_rps, comp_rps => comp_rps, led0 => led0, led1 => led1, win_count => win_count, tie_count => tie_count, loss_count => loss_count);

  process         -- clock process for clk
    begin
      loop
        user_rps <= user_rps + 1;
        switch_flag <= '0';
        wait for 15ns;
        comp_rps <= comp_rps + 1;
        switch_flag <= '1';
        wait for 15ns;
      end loop;
    end process;
     
     
   clock: process -- clock process for clk
    begin
    wait for 100 ns;    -- hold reset STATE for 100 ns
     clk <= '1';
     loop
        clk <= not clk;
        wait for 10ns;
     end loop;
  end process clock; 

end Behavioral;

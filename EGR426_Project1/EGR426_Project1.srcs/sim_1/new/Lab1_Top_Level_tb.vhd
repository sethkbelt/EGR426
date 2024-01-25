----------------------------------------------------------------------------------
 -- Title: Lab1_Top_Level_tb.vhd
 -- Author: Seth Konynenbelt
 -- Created: January 20, 2023
 -- Description: Lab 1 Top Level test bench
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.std_logic_signed.all;

entity Lab1_Top_Level_tb is
end Lab1_Top_Level_tb;

architecture Behavioral of Lab1_Top_Level_tb is

  ----------------------------------------------------------------------------------
  component Lab1_Top_Level is
      port(
    btn         : in std_logic_vector(3 downto 0);
    clk_100Mhz  : in std_logic;
    reset_main  : in std_logic;
    D0_SEG      : out std_logic_vector(7 downto 0);
    D0_AN       : out std_logic_vector(3 downto 0)
    );
  end component;

  signal btn        : std_logic_vector(3 downto 0); -- initialize inputs
  signal clk        : std_logic := '0'; -- initialize inputs
  signal reset      : std_logic := '0';
  signal D0_SEG     : std_logic_vector(7 downto 0);
  signal D0_AN      : std_logic_vector(3 downto 0);
  
begin                         -- module => testbench
  T1: Lab1_Top_Level port map (btn => btn, clk_100Mhz => clk, reset_main => reset, D0_SEG => D0_SEG, D0_AN => D0_AN); -- connect ports
  
  button: process
    begin
      wait for 100 ns;    -- hold reset STATE for 100 ns
      reset <= '1';
      btn <= "0000";
      wait for 10 ns;
      reset <= '0';
      loop
        btn <= btn + 1;
        wait for 50ns;
      end loop;
    end process button;
    
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

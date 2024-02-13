----------------------------------------------------------------------------------
-- Title: main_rps_tb.vhd
-- Author: Seth Konynenbelt
-- Created: January 20, 2023
-- Description: main_rps_tb

----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE std.textio.ALL;
USE ieee.std_logic_textio.ALL;

ENTITY main_rps_tb IS
END main_rps_tb;

ARCHITECTURE Behavioral OF main_rps_tb IS

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

  -- declare signals used in test bench
  SIGNAL reset_main : STD_LOGIC := '0';
  SIGNAL clk : STD_LOGIC := '0';
  SIGNAL switch : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000";
  SIGNAL switch_flag : STD_LOGIC;
  SIGNAL user_rps : STD_LOGIC_VECTOR(3 DOWNTO 0);

  ---------------------------------------------------------------------
  -- monitor writes to stdio to better understand testbench
  PROCEDURE Monitor(ShouldBe : IN STD_LOGIC_VECTOR (3 DOWNTO 0)) IS
    VARIABLE lout : line;
  BEGIN
    WRITE(lout, NOW, right, 10, ns); -- write current time

    WRITE(lout, STRING'(" clk -->")); -- see clk 
    WRITE(lout, clk);
    WRITE(lout, STRING'(" switch -->")); 
    WRITE(lout, switch);
    WRITE(lout, STRING'(" switch flag -->")); 
    WRITE(lout, switch_flag);

    -- make sure expected and observed count match
    WRITE(lout, STRING'(" | Observed RPS Value -->"));
    WRITE(lout, user_rps);
    WRITE(lout, STRING'(" | Expected RPS Value -->"));
    WRITE(lout, ShouldBe);

    WRITELINE(OUTPUT, lout);

    ASSERT user_rps = ShouldBe REPORT "Test Failed" SEVERITY FAILURE;
  END Monitor;
  ---------------------------------------------------------------------

BEGIN

  U11 : main_rps PORT MAP(clk => clk, reset_main => reset_main, switch => switch, switch_flag => switch_flag, user_rps => user_rps);

  PROCESS -- clock process for clk
  BEGIN
    WAIT FOR 100 ns; -- hold reset STATE 
    reset_main <= '1';
    WAIT FOR 10 ns;
    reset_main <= '0';
    WAIT FOR 10 ns;

    -- simulate different switches toggling
    LOOP
      switch <= "00000";
      WAIT FOR 50ns;
      Monitor("1111");

      switch <= "00001";
      WAIT FOR 50ns;
      Monitor("1010");

      switch <= "00010";
      WAIT FOR 50ns;
      Monitor("1011");

      switch <= "00100";
      WAIT FOR 50ns;
      Monitor("1100");
      
      switch <= "01000";
      WAIT FOR 50ns;
      Monitor("1101");

      switch <= "10000"; -- failed case
      WAIT FOR 50ns;
      Monitor("1101");

    END LOOP;
  END PROCESS;
  
  clock : PROCESS -- clock process for clk
  BEGIN
    WAIT FOR 100 ns; -- hold reset STATE for 100 ns
    clk <= '1';
    LOOP
      clk <= NOT clk;
      WAIT FOR 5ns;
    END LOOP;
  END PROCESS clock;

END Behavioral;
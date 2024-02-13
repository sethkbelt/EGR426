----------------------------------------------------------------------------------
-- Title: comp_rps_tb.vhd
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

ENTITY comp_rps_tb IS
END comp_rps_tb;

ARCHITECTURE Behavioral OF comp_rps_tb IS

  ----------------------------------------------------------------------------------
  COMPONENT computer_rps IS
    PORT (
    clk, reset_main : IN STD_LOGIC;
    switch : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    rps : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
  ----------------------------------------------------------------------------------

  -- declare signals used in test bench
  SIGNAL reset_main : STD_LOGIC := '0';
  SIGNAL clk : STD_LOGIC := '0';
  SIGNAL switch : STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000";
  SIGNAL rps : STD_LOGIC_VECTOR(3 DOWNTO 0);

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

    -- make sure expected and observed count match
    WRITE(lout, STRING'(" | Observed RPS Value -->"));
    WRITE(lout, rps);
    WRITE(lout, STRING'(" | Expected RPS Value -->"));
    WRITE(lout, ShouldBe);

    WRITELINE(OUTPUT, lout);

    ASSERT rps = ShouldBe REPORT "Test Failed" SEVERITY FAILURE;
  END Monitor;
  ---------------------------------------------------------------------

BEGIN

  U11 : computer_rps PORT MAP(clk => clk, reset_main => reset_main, switch => switch, rps => rps);

  PROCESS -- clock process for clk
  BEGIN
    WAIT FOR 10 ns; -- hold reset STATE 
    reset_main <= '1';
    WAIT FOR 10 ns;
    reset_main <= '0';
    WAIT FOR 10 ns;

    -- simulate different switches toggling
    LOOP
      WAIT FOR 6 ns;
      Monitor("1011");
      WAIT FOR 10 ns;
      Monitor("1100");      
      WAIT FOR 10 ns;
      Monitor("1101");      
      WAIT FOR 10 ns;
      Monitor("1110");
      WAIT FOR 10 ns;
      Monitor("1010");

      switch <= "10000";
      WAIT FOR 50ns;
      Monitor("1010");

      switch <= "00000";
      WAIT FOR 50ns;

      switch <= "00001"; -- failed case
      WAIT FOR 5 ns;
      Monitor("1100");

    END LOOP;
  END PROCESS;
  
  clock : PROCESS -- clock process for clk
  BEGIN
    WAIT FOR 30 ns; -- hold begin state for 30 ns
    clk <= '1';
    LOOP
      clk <= NOT clk;
      WAIT FOR 5ns;
    END LOOP;
  END PROCESS clock;

END Behavioral;
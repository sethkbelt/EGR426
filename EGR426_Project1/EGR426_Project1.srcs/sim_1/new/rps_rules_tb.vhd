----------------------------------------------------------------------------------
-- Title: rps_rules_tb.vhd
-- Author: Seth Konynenbelt
-- Created: January 20, 2023
-- Description: RPS Rules Testbench
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE std.textio.ALL;
USE ieee.std_logic_textio.ALL;
ENTITY rps_rules_tb IS
END rps_rules_tb;

ARCHITECTURE Behavioral OF rps_rules_tb IS

  ----------------------------------------------------------------------------------
  COMPONENT rps_rules IS
    PORT (
      clk, reset : IN STD_LOGIC;
      user_rps : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      comp_rps : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
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

  ---------------------------------------------------------------------
  -- monitor writes to stdio to better understand testbench
  PROCEDURE Monitor(ShouldBe : IN STD_LOGIC) IS
    VARIABLE lout : line;
  BEGIN
    WRITE(lout, NOW, right, 10, ns); -- write current time

    WRITE(lout, STRING'(" comp_rps -->")); -- see computer and user choice  
    WRITE(lout, comp_rps);
    WRITE(lout, STRING'(" user_rps -->")); 
    WRITE(lout, user_rps);

    WRITE(lout, STRING'(" win_count -->"));
    WRITE(lout, win_count);
    WRITE(lout, STRING'(" tie_count -->")); 
    WRITE(lout, tie_count);
    WRITE(lout, STRING'(" loss_count -->")); 
    WRITE(lout, loss_count);

    WRITE(lout, STRING'(" led0 -->")); 
    WRITE(lout, led0);

    -- make sure expected and observed count match
    WRITE(lout, STRING'(" | Observed LED1 Value -->"));
    WRITE(lout, led1);
    WRITE(lout, STRING'(" | Expected LED1 Value -->"));
    WRITE(lout, ShouldBe);

    WRITELINE(OUTPUT, lout);

    ASSERT led1 = ShouldBe REPORT "Test Failed" SEVERITY FAILURE;
  END Monitor;
  ---------------------------------------------------------------------

BEGIN
  U12 : rps_rules PORT MAP(clk => clk, reset => reset, switch_flag => switch_flag, user_rps => user_rps, comp_rps => comp_rps, led0 => led0, led1 => led1, win_count => win_count, tie_count => tie_count, loss_count => loss_count);

  PROCESS
  BEGIN
    WAIT FOR 2 ns;
    -- rock user paper computer
    user_rps <= "1010";
    comp_rps <= "1011";
    switch_flag <= '1';
    WAIT FOR 10 ns;
    switch_flag <= '0';
    WAIT FOR 50 ns;
    Monitor('0'); -- user loses

    -- rock user rock computer
    user_rps <= "1010";
    comp_rps <= "1010";
    switch_flag <= '1';
    WAIT FOR 10 ns;
    switch_flag <= '0';
    WAIT FOR 50 ns;
    Monitor('0'); -- user ties

    -- rock user scissors computer
    user_rps <= "1010";
    comp_rps <= "1100";
    switch_flag <= '1';
    WAIT FOR 10 ns;
    switch_flag <= '0';
    WAIT FOR 50 ns;
    Monitor('1'); -- user wins

    -- scissors user rock computer
    user_rps <= "1100";
    comp_rps <= "1010";
    switch_flag <= '1';
    WAIT FOR 10 ns;
    switch_flag <= '0';
    WAIT FOR 50 ns;
    Monitor('0'); -- user loses

    -- paper user rock computer
    user_rps <= "1011";
    comp_rps <= "1010";
    switch_flag <= '1';
    WAIT FOR 10 ns;
    switch_flag <= '0';
    WAIT FOR 50 ns;
    Monitor('1'); -- user wins

    -- failure case, apper and paper
    user_rps <= "1011";
    comp_rps <= "1011";
    switch_flag <= '1';
    WAIT FOR 10 ns;
    switch_flag <= '0';
    WAIT FOR 50 ns;
    Monitor('1'); -- user should tie

  END PROCESS;

  clock : PROCESS -- clock process for clk
  BEGIN
    WAIT FOR 10 ns; -- hold reset STATE 
    reset <= '1';
    WAIT FOR 10 ns;
    reset <= '0';
    WAIT FOR 10 ns; -- hold begin state
    clk <= '1';
    WAIT FOR 5ns;
    LOOP
      clk <= NOT clk;
      WAIT FOR 5ns;
    END LOOP;
  END PROCESS clock;

END Behavioral;
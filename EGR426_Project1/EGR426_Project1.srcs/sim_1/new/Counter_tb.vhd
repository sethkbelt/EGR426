----------------------------------------------------------------------------------
-- Title: Counter_tb.vhd
-- Author: Seth Konynenbelt
-- Created: January 20, 2023
-- Description: Two bit counter test bench
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE std.textio.ALL;
USE ieee.std_logic_textio.ALL;

ENTITY Counter_tb IS
END Counter_tb;

ARCHITECTURE Behavioral OF Counter_tb IS

  ----------------------------------------------------------------------------------
  COMPONENT Counter_Two_Bit
    PORT (
      clk_in : IN STD_LOGIC; -- instantiate counter entity
      reset : IN STD_LOGIC;
      count_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
  END COMPONENT;
  ----------------------------------------------------------------------------------

  SIGNAL clk : STD_LOGIC := '0'; -- initialize inputs
  SIGNAL reset : STD_LOGIC := '0';
  SIGNAL count_out : STD_LOGIC_VECTOR (1 DOWNTO 0);

  ---------------------------------------------------------------------
  -- monitor writes to stdio to better understand testbench
  PROCEDURE Monitor(ShouldBe : IN INTEGER) IS
    VARIABLE lout : line;
  BEGIN
    WRITE(lout, NOW, right, 10, ns); -- write current time

    WRITE(lout, STRING'(" clk -->")); -- see clk 
    WRITE(lout, clk);
    WRITE(lout, STRING'(" reset -->")); 
    WRITE(lout, reset);

    -- make sure expected and observed count match
    WRITE(lout, STRING'(" | Observed count -->"));
    WRITE(lout, count_out);
    WRITE(lout, STRING'(" | Expected count -->"));
    WRITE(lout, ShouldBe);

    WRITELINE(OUTPUT, lout);

    ASSERT count_out = ShouldBe REPORT "Test Failed" SEVERITY FAILURE;
  END Monitor;
  ---------------------------------------------------------------------

BEGIN -- module => testbench
  T1 : Counter_Two_Bit PORT MAP(clk_in => clk, reset => reset, count_out => count_out); -- connect ports

  PROCESS -- clock process for clk
  BEGIN
    WAIT FOR 100 ns; -- hold initial STATE for 100 ns
    reset <= '1';
    WAIT FOR 5 ns;
    reset <= '0';
    WAIT FOR 5 ns;
        FOR j IN 0 TO 1 LOOP
    FOR i IN 0 TO 3 LOOP
      clk <= not clk; -- increment select
      Monitor(i); -- test bench maps segments to sel bit
      WAIT FOR 5ns;
      clk <= not clk; -- increment select
       WAIT FOR 5ns;
    END LOOP;
    END LOOP;
    Monitor(2); -- test bench maps segments to sel bit
  END PROCESS;

END Behavioral;
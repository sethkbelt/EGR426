----------------------------------------------------------------------------------
-- Title: debouncer_tb.vhd
-- Author: Seth Konynenbelt
-- Created: January 20, 2023
-- Description: Debouncer Testbench
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE std.textio.ALL;
USE ieee.std_logic_textio.ALL;

ENTITY debouncer_tb IS
END debouncer_tb;

ARCHITECTURE Behavioral OF debouncer_tb IS

  ----------------------------------------------------------------------------------
  COMPONENT debouncer IS
    PORT (
      btn_in : IN STD_LOGIC;
      clk : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      btn_out : OUT STD_LOGIC
    );
  END COMPONENT;
  ----------------------------------------------------------------------------------

  SIGNAL btn_in, clk, reset : STD_LOGIC := '0'; -- declare outputs
  SIGNAL btn_out : STD_LOGIC; -- declare outputs

  -- monitor writes to stdio to better understand testbench
  PROCEDURE Monitor(ShouldBe : IN STD_LOGIC) IS
    VARIABLE lout : line;
  BEGIN
    WRITE(lout, NOW, right, 10, ns);

    WRITE(lout, STRING'(" clk -->"));
    WRITE(lout, clk);

    WRITE(lout, STRING'(" reset -->")); 
    WRITE(lout, reset);
    WRITE(lout, STRING'(" | btn_in -->"));
    WRITE(lout, btn_in);

    WRITE(lout, STRING'(" | Expected btn_out -->"));
    WRITE(lout, ShouldBe);

    WRITE(lout, STRING'(" | Observed btn_out -->"));
    WRITE(lout, btn_out);

    WRITELINE(OUTPUT, lout);

    ASSERT btn_out = ShouldBe REPORT "Test Failed" SEVERITY FAILURE;
  END Monitor;

BEGIN
  M1 : debouncer PORT MAP(btn_in => btn_in, clk => clk, reset => reset, btn_out => btn_out); -- connect ports
  stim_proc : PROCESS
  BEGIN
    WAIT FOR 20 ns; -- hold reset STATE for 20 ns
    reset <= '1';
    WAIT FOR 5 ns;
    reset <= '0';
    WAIT FOR 100ns;
    REPORT "Beginning the MUX test" SEVERITY NOTE;

    btn_in <= '0';
    Monitor('0');

    btn_in <= '1'; -- create press not 30ns
    WAIT FOR 10 ns;
    Monitor('0');

    WAIT FOR 10 ns;
    Monitor('0');

    btn_in <= '0';
    WAIT FOR 10 ns;
    Monitor('0');

    btn_in <= '0';
    WAIT FOR 10 ns;
    Monitor('0');

    btn_in <= '1'; -- want to finally hold button
    WAIT FOR 10 ns;
    Monitor('0');

    WAIT FOR 20 ns;
    Monitor('1');

    WAIT FOR 20 ns;
    Monitor('1');

    WAIT FOR 20 ns; -- bad test case 
    Monitor('0');

    WAIT FOR 20 ns;
    Monitor('1');

    WAIT;
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
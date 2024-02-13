----------------------------------------------------------------------------------
-- Title: big_mux_tb.vhd
-- Author: Seth Konynenbelt
-- Created: January 20, 2023
-- Description: Test bench for seven segment anode/cathode multiplexer
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE std.textio.ALL;
USE ieee.std_logic_textio.ALL;

ENTITY big_mux_tb IS
END big_mux_tb;

ARCHITECTURE Behavioral OF big_mux_tb IS

  ----------------------------------------------------------------------------------
  COMPONENT big_mux IS
    PORT (
      seg1 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
      seg2 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
      seg3 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
      seg4 : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
      sel : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
      seg_out : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
      anode_out : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
    );
  END COMPONENT;
  ----------------------------------------------------------------------------------

  -- declare input and output signals
  SIGNAL sel : STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
  SIGNAL seg1 : STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
  SIGNAL seg2 : STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000001";
  SIGNAL seg3 : STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000010";
  SIGNAL seg4 : STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000011";
  SIGNAL seg_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL anode_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
 
  ---------------------------------------------------------------------
  -- monitor writes to stdio to better understand testbench
  PROCEDURE Monitor(ShouldBe : IN STD_LOGIC_VECTOR(7 downto 0)) IS
    VARIABLE lout : line;
  BEGIN
    WRITE(lout, NOW, right, 10, ns); -- write current time

    WRITE(lout, STRING'(" seg1 -->")); -- see all segment
    WRITE(lout, seg1);
    WRITE(lout, STRING'(" seg2 -->")); 
    WRITE(lout, seg2);
    WRITE(lout, STRING'(" seg3 -->"));
    WRITE(lout, seg3);
    WRITE(lout, STRING'(" seg4 -->"));
    WRITE(lout, seg4);

    WRITE(lout, STRING'(" sel -->")); -- see anode and sel
    WRITE(lout, sel);
    WRITE(lout, STRING'(" anode_out -->"));
    WRITE(lout, anode_out);

    -- see if multiplexer is selecting correctly
    WRITE(lout, STRING'("| Observed seg_out -->"));
    WRITE(lout, seg_out);
    WRITE(lout, STRING'(" | Expected seg_out -->"));
    WRITE(lout, ShouldBe);

    WRITELINE(OUTPUT, lout);

    ASSERT seg_out = ShouldBe REPORT "Test Failed" SEVERITY FAILURE;
  END Monitor;
  ---------------------------------------------------------------------

BEGIN
  -- connect ports
  T1 : big_mux PORT MAP(seg1 => seg1, seg2 => seg2, seg3 => seg3, seg4 => seg4, sel => sel, seg_out => seg_out, anode_out => anode_out);

  -- clock process for clk
  PROCESS
  BEGIN
    WAIT FOR 10 ns; -- hold initial STATE for 100 ns
    for i in 1 to 9 loop
      sel <= sel + 1; -- increment select
      Monitor("000000" & sel); -- test bench maps segments to sel bit
      WAIT FOR 10ns;
    END LOOP;
    sel <= sel + 1;
    MONITOR("00000011"); -- bad test case to fail
  END PROCESS;

END Behavioral;


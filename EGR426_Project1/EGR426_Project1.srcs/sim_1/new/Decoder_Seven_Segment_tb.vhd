----------------------------------------------------------------------------------
-- Title: Deocder_Seven_Segment_tb.vhd
-- Author: Seth Konynenbelt
-- Created: January 20, 2023
-- Description: Deocder for 7 segment test bench
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE std.textio.ALL;
USE ieee.std_logic_textio.ALL;

ENTITY Decoder_Seven_Segment_tb IS
END Decoder_Seven_Segment_tb;

ARCHITECTURE Behavioral OF Decoder_Seven_Segment_tb IS

  ----------------------------------------------------------------------------------
  COMPONENT Decoder_Seven_Segment IS
    PORT (
      bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      seg_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
  END COMPONENT;
  ----------------------------------------------------------------------------------

  SIGNAL bcd : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000"; -- initialize inputs
  SIGNAL seg_out : STD_LOGIC_VECTOR(7 DOWNTO 0);
  
  PROCEDURE Monitor(ShouldBe : IN STD_LOGIC_VECTOR(7 DOWNTO 0)) IS
    VARIABLE lout : line;
  BEGIN
    WRITE(lout, NOW, right, 10, ns);
    WRITE(lout, STRING'(" | bcd -->"));
    WRITE(lout, bcd);

    WRITE(lout, STRING'(" | Expected seg_out--> "));
    WRITE(lout, ShouldBe);

    WRITE(lout, STRING'(" | Actual seg_out --> "));
    WRITE(lout, seg_out);

    WRITELINE(OUTPUT, lout);

    ASSERT seg_out = ShouldBe REPORT "Test Failed" SEVERITY FAILURE;
  END Monitor;

BEGIN
  T1 : Decoder_Seven_Segment PORT MAP(bcd => bcd, seg_out => seg_out); -- connect ports

  PROCESS
  BEGIN
    WAIT FOR 100 ns;
    -- loop
    Monitor("11000000");
    bcd <= bcd + 1;
    WAIT FOR 10ns;
    Monitor("11111001");

    bcd <= bcd + 3;
    WAIT FOR 10ns;
    Monitor("10011001");

    bcd <= bcd + 1;
    WAIT FOR 10ns;
    Monitor("10010010");

    bcd <= bcd + 4;
    WAIT FOR 10ns;
    Monitor("10010000");

    bcd <= bcd + 6;
    WAIT FOR 10ns;
    Monitor("11111111");

    bcd <= bcd + 16; -- rollover occurs
    WAIT FOR 10ns;
    Monitor("10111111");

    bcd <= bcd + 1; -- expected fail
    WAIT FOR 10ns;
    Monitor("10100100");

    -- end loop;
  END PROCESS;

END Behavioral;
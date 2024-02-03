----------------------------------------------------------------------------------
 -- Title: Deocder_Seven_Segment_tb.vhd
 -- Author: Seth Konynenbelt
 -- Created: January 20, 2023
 -- Description: Deocder for 7 segment test bench
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use std.textio.all;
use ieee.std_logic_textio.all;


entity Decoder_Seven_Segment_tb is
end Decoder_Seven_Segment_tb;

architecture Behavioral of Decoder_Seven_Segment_tb is

----------------------------------------------------------------------------------
component Decoder_Seven_Segment is
    port(
        bcd: in std_logic_vector(3 downto 0);
        seg_out: out std_logic_vector(7 downto 0));
end component;
----------------------------------------------------------------------------------

signal bcd : std_logic_vector(3 downto 0) := "0000"; -- initialize inputs
signal seg_out:  std_logic_vector(7 downto 0);


PROCEDURE Monitor(ShouldBe: in STD_LOGIC_vector(7 downto 0)) is
  VARIABLE lout : line;
  begin
    WRITE(lout, NOW, right, 10, ns);
    WRITE(lout, string'(" | bcd -->"));
    WRITE(lout, bcd);
   
    WRITE(lout, string'(" | Expected seg_out--> "));
    WRITE(lout, ShouldBe); 
    
    WRITE(lout, string'(" | Actual seg_out --> "));
    WRITE(lout, seg_out);
    
    WRITELINE(OUTPUT, lout);
    
    ASSERT seg_out = ShouldBe REPORT "Test Failed" SEVERITY FAILURE;
  end Monitor;

begin
    T1: Decoder_Seven_Segment port map (bcd => bcd, seg_out => seg_out); -- connect ports
 
  process
    begin
      wait for 100 ns; 
      -- loop
        Monitor("11000000");
        bcd <= bcd + 1;
        wait for 10ns;
        Monitor("11111001");

        bcd <= bcd + 3;
        wait for 10ns;
        Monitor("10011001");

        bcd <= bcd + 1;
        wait for 10ns;
        Monitor("10010010");

        bcd <= bcd + 4;
        wait for 10ns;
        Monitor("10010000");

        bcd <= bcd + 6;
        wait for 10ns;
        Monitor("11111111");

        bcd <= bcd + 16; -- rollover occurs
        wait for 10ns;
        Monitor("10111111");

        bcd <= bcd + 1; -- expected fail
        wait for 10ns;
        Monitor("10100100");

      -- end loop;
    end process;
    
end Behavioral;
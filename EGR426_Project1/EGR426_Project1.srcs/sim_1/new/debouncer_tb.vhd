----------------------------------------------------------------------------------
 -- Title: debouncer_tb.vhd
 -- Author: Seth Konynenbelt
 -- Created: January 20, 2023
 -- Description: Debouncer Testbench
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use std.textio.all;
use ieee.std_logic_textio.all;

entity debouncer_tb is
end debouncer_tb;

architecture Behavioral of debouncer_tb is

----------------------------------------------------------------------------------
component debouncer is
 port  (
  btn_in  : in STD_LOGIC;
  clk     : in STD_LOGIC;
  reset   : in STD_LOGIC;
  btn_out : out STD_LOGIC
  );
end component;
----------------------------------------------------------------------------------

signal btn_in, clk, reset : std_logic := '0'; -- declare outputs
signal btn_out : std_logic; -- declare outputs

PROCEDURE Monitor(ShouldBe: in STD_LOGIC) is
VARIABLE lout : line;
begin
  WRITE(lout, NOW, right, 10, ns);
  
  WRITE(lout, string'(" clk -->"));
  WRITE(lout, clk);

  WRITE(lout, string'(" reset -->")); 
  WRITE(lout, reset);
  
  
  WRITE(lout, string'("             | btn_in -->"));
  WRITE(lout, btn_in);

  WRITE(lout, string'(" | Expected btn_out -->"));
  WRITE(lout, ShouldBe);

   WRITE(lout, string'(" | Observed btn_out -->"));
  WRITE(lout, btn_out);
  
  
  
  WRITELINE(OUTPUT, lout);
  
  ASSERT btn_out = ShouldBe REPORT "Test Failed" SEVERITY FAILURE;
end Monitor;

begin
M1: debouncer port map (btn_in => btn_in, clk => clk, reset => reset, btn_out => btn_out); -- connect ports
 stim_proc: process
 begin
  wait for 20 ns;    -- hold reset STATE for 20 ns
  reset <= '1';
  wait for 5 ns;
  reset <= '0';
   wait for 100ns;
     REPORT "Beginning the MUX test" SEVERITY NOTE;
     
     btn_in <= '0';
     Monitor('0'); 
     
     btn_in <= '1';
     wait for 10 ns;
     Monitor('0');      
     
     wait for 10 ns;
     Monitor('0'); 
     
     btn_in <= '0';
     wait for 10 ns;
     Monitor('0'); 
     
     btn_in <= '0';
     wait for 10 ns;
     Monitor('0'); 

     btn_in <= '1';
     wait for 10 ns;
     Monitor('0'); 

     wait for 20 ns;
     Monitor('1'); 

     wait for 20 ns;
     Monitor('1'); 

     wait for 20 ns; -- bad test case 
     Monitor('0'); 

     wait for 20 ns;
     Monitor('1'); 

     wait;
 end process;

 clock: process -- clock process for clk
 begin
 wait for 100 ns;    -- hold reset STATE for 100 ns
  clk <= '1';
  loop
     clk <= not clk;
     wait for 5ns;
  end loop;
end process clock;

 end Behavioral;
    
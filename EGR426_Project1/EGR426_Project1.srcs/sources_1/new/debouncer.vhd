----------------------------------------------------------------------------------
 -- Title: debouncer.vhd
 -- Author: Seth Konynenbelt
 -- Created: January 20, 2023
 -- Description: Button Debouncer
 ----------------------------------------------------------------------------------

 library IEEE;
 use IEEE.STD_LOGIC_1164.ALL;
 use IEEE.STD_LOGIC_ARITH.ALL;
 use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
----------------------------------------------------------------------------------
entity debouncer is
    port (
        btn_in  : in STD_LOGIC;
        clk     : in STD_LOGIC;
        reset   : in STD_LOGIC;
        btn_out : out STD_LOGIC
    );
end debouncer;
----------------------------------------------------------------------------------

architecture Behavioral of debouncer is

  signal delay1, delay2, delay3 : STD_LOGIC;

begin

  process(clk, reset)
    begin
      if(reset = '1') then
        delay1 <= '0';
        delay2 <= '0';
        delay3 <= '0';
      elsif(rising_edge(clk)) then
        delay1 <= btn_in;
        delay2 <= delay1;
        delay3 <= delay2;
      end if;
    end process;

  btn_out <= delay1 and delay2 and delay3;

end Behavioral;

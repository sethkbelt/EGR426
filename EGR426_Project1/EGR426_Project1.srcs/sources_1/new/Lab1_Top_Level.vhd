----------------------------------------------------------------------------------
 -- Title: Lab1_Top_Level.vhd
 -- Author: Seth Konynenbelt
 -- Created: January 20, 2023
 -- Description: Top Level for Lab1 Part 1
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

----------------------------------------------------------------------------------
entity Lab1_Top_Level is
  port (
--    data_in_r   : in std_logic; 
--    data_in_p   : in std_logic;
--    data_in_s   : in std_logic;
    clk_100Mhz  : in std_logic;
    reset_main  : in std_logic;
    D0_SEG      : out std_logic_vector(7 downto 0);
    --D1_SEG      : out std_logic_vector(7 downto 0);
    D0_AN       : out std_logic_vector(3 downto 0)
    --D1_AN       : out std_logic_vector(3 downto 0)
    );   
end Lab1_Top_Level;
----------------------------------------------------------------------------------

architecture Structural of Lab1_Top_Level is

  ----------------------------------------------------------------------------------
  component Mux_Four_To_One is
      port(
        -- four bit buses for seven segment decoder
        seg1    : in STD_LOGIC_VECTOR (3 downto 0);
        seg2    : in STD_LOGIC_VECTOR (3 downto 0);
        seg3    : in STD_LOGIC_VECTOR (3 downto 0);
        seg4    : in STD_LOGIC_VECTOR (3 downto 0);
        sel     : in STD_LOGIC_VECTOR (1 downto 0);
        seg_out : out STD_LOGIC_VECTOR (3 downto 0)
    );
  end component;
  ----------------------------------------------------------------------------------
  component Clock_Divider_1Khz
    port (
      clk,reset: in std_logic;
      clk_div: out std_logic
          );
  end component;
  ----------------------------------------------------------------------------------
  component Counter_Two_Bit
    port (
        clk_in: in std_logic; -- instantiate counter entity
        reset: in std_logic;
        count_out: out std_logic_vector(1 downto 0)
          );
  end component;
  ----------------------------------------------------------------------------------
  component Decoder_Seven_Segment is
      port(
          bcd: in std_logic_vector(3 downto 0);
          seg_out: out std_logic_vector(7 downto 0));
  end component;
  ----------------------------------------------------------------------------------
  component Decoder_Two_To_Four is
      port(
        sel: in std_logic_vector(1 downto 0);
        anode: out std_logic_vector(3 downto 0));
  end component;
  ----------------------------------------------------------------------------------
  
  signal mux_out              : STD_LOGIC_VECTOR (3 downto 0);
  signal two_bit_count        : STD_LOGIC_VECTOR(1 downto 0);
  signal display_oneHz_clock  : STD_LOGIC;
--  data_in_r   : in std_logic; 
--  data_in_p   : in std_logic;
--  data_in_s   : in std_logic;

  begin --using named port mapping, -- module => signal
    U1 : Mux_Four_To_One        port map (seg1 => "0001", seg2 => "0010", seg3 => "0011", seg4 => "0100", sel => two_bit_count, seg_out => mux_out);

    U2 : Clock_Divider_1Khz     port map (clk => clk_100Mhz, reset => reset_main, clk_div => display_oneHz_clock);

    U3 : Counter_Two_Bit        port map (clk_in => display_oneHz_clock, reset => reset_main,count_out => two_bit_count); 
    
    U4 : Decoder_Seven_Segment  port map (bcd => mux_out, seg_out => D0_SEG);

    U5 : Decoder_Two_To_Four    port map (sel => two_bit_count, anode => D0_AN);
    
end Structural;
  
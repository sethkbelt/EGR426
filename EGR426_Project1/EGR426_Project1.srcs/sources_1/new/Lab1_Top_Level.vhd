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
    data_in_r   : in std_logic; 
    data_in_p   : in std_logic;
    data_in_s   : in std_logic;
    D0_SEG      : out std_logic_vector(7 downto 0);
    D1_SEG      : out std_logic_vector(7 downto 0);
    D0_AN       : out std_logic_vector(3 downto 0);
    D1_AN       : out std_logic_vector(3 downto 0)
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
  
  signal mux_out: STD_LOGIC;
  signal two_bit_count: STD_LOGIC_VECTOR(1:0);

  begin --using named port mapping
    U1 : port map  (seg1, seg2, seg3, seg4, sel, seg_out);

    U2 : port map (clk, reset, clk_div);

    U3 : port map (clk_in, reset,count_out); 
    
    U4 : port map (bcd, seg_out);

    U5 : port map(sel, anode);
end Structural;
  
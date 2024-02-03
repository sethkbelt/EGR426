----------------------------------------------------------------------------------
-- Title: Lab1_Top_Level.vhd
-- Author: Seth Konynenbelt
-- Created: January 20, 2023
-- Description: Top Level for Lab1 Part 1
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

----------------------------------------------------------------------------------
ENTITY Lab1_Top_Level IS
  PORT (
    sw : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    clk_100Mhz : IN STD_LOGIC;
    reset_main : IN STD_LOGIC;
    D0_SEG : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    D1_SEG      : out std_logic_vector(7 downto 0);
    D0_AN : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    D1_AN       : out std_logic_vector(3 downto 0);
    led : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END Lab1_Top_Level;
----------------------------------------------------------------------------------
 
  ARCHITECTURE Structural OF Lab1_Top_Level IS

  ----------------------------------------------------------------------------------
  COMPONENT Clock_Divider_1Khz
    PORT (
      clk, reset : IN STD_LOGIC;
      clk_div : OUT STD_LOGIC
    );
  END COMPONENT;
  ----------------------------------------------------------------------------------
  COMPONENT Clock_Divider_10Hz
    PORT (
      clk, reset : IN STD_LOGIC;
      clk_div : OUT STD_LOGIC
    );
  END COMPONENT;
  ----------------------------------------------------------------------------------
  COMPONENT Counter_Two_Bit
    PORT (
      clk_in : IN STD_LOGIC; -- instantiate counter entity
      reset : IN STD_LOGIC;
      count_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
  END COMPONENT;
  ----------------------------------------------------------------------------------
  COMPONENT Decoder_Seven_Segment IS
    PORT (
      bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      seg_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
  END COMPONENT;
  ----------------------------------------------------------------------------------
  COMPONENT computer_rps IS
    PORT (
      clk, reset_main : IN STD_LOGIC;
      switch : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      rps : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
  END COMPONENT;
  ----------------------------------------------------------------------------------
  COMPONENT big_mux IS
    PORT (
      -- four bit buses for seven segment decoder
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
  COMPONENT main_rps IS
    PORT ( 
        reset_main : IN STD_LOGIC;
        switch : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        user_rps : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
      );
  END COMPONENT;
  ----------------------------------------------------------------------------------
  COMPONENT rps_rules IS
    PORT (
      user_rps : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      comp_rps : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      led0 : OUT STD_LOGIC;
      led1 : OUT STD_LOGIC;
      win_count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      tie_count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      loss_count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;

  ----------------------------------------------------------------------------------

  SIGNAL mux_out : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL two_bit_count : STD_LOGIC_VECTOR(1 DOWNTO 0);
  SIGNAL one_khz_clk : STD_LOGIC;
  SIGNAL d0_segment_signal1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL d0_segment_signal2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL d0_segment_signal3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL d0_segment_signal4 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL d1_segment_signal1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL d1_segment_signal2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL d1_segment_signal3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL d1_segment_signal4 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL clk_125Hz : STD_LOGIC;
  SIGNAL in1, in2, in3 : STD_LOGIC_VECTOR(7 DOWNTO 0) := x"00";
  SIGNAL comp_rps : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL user_rps : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL win_count : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL tie_count : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL loss_count : STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN --using named port mapping, -- module => signal (top level)

  U2 : Clock_Divider_1Khz PORT MAP(clk => clk_100Mhz, reset => reset_main, clk_div => one_khz_clk);
  U3 : Clock_Divider_10Hz PORT MAP(clk => clk_100Mhz, reset => reset_main, clk_div => clk_125Hz);
  U4 : Counter_Two_Bit PORT MAP(clk_in => one_khz_clk, reset => reset_main, count_out => two_bit_count);
  U5 : computer_rps PORT MAP(clk => clk_125Hz, reset_main => reset_main, switch => sw, rps => comp_rps);
  U6 : Decoder_Seven_Segment PORT MAP(bcd => comp_rps, seg_out => d0_segment_signal1);
  U7 : Decoder_Seven_Segment PORT MAP(bcd => "1111", seg_out => d0_segment_signal2);
  U8 : Decoder_Seven_Segment PORT MAP(bcd => "1111", seg_out => d0_segment_signal3);
  U9 : Decoder_Seven_Segment PORT MAP(bcd => "1111", seg_out => d0_segment_signal4);
 
  U10 : big_mux PORT MAP(seg1 => d0_segment_signal1, seg2 => d0_segment_signal2, seg3 => d0_segment_signal3, seg4 => d0_segment_signal4, sel => two_bit_count, seg_out => D0_SEG, anode_out => D0_AN);
  U11 : main_rps PORT MAP( reset_main => reset_main, switch => sw, user_rps => user_rps);
  U12 : rps_rules PORT MAP(user_rps => user_rps, comp_rps => comp_rps, led0 => led(0), led1 => led(1), win_count => win_count, tie_count => tie_count, loss_count => loss_count);

  U13 : Decoder_Seven_Segment PORT MAP(bcd => win_count, seg_out => d1_segment_signal1);
  U14 : Decoder_Seven_Segment PORT MAP(bcd => tie_count, seg_out => d1_segment_signal2);
  U15 : Decoder_Seven_Segment PORT MAP(bcd => loss_count, seg_out => d1_segment_signal3);
  U16 : Decoder_Seven_Segment PORT MAP(bcd => user_rps, seg_out => d1_segment_signal4);
  U17 : big_mux PORT MAP(seg1 => d1_segment_signal1, seg2 => d1_segment_signal2, seg3 => d1_segment_signal3, seg4 => d1_segment_signal4, sel => two_bit_count, seg_out => D1_SEG, anode_out => D1_AN);




END Structural;
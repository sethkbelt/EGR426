----------------------------------------------------------------------------------
-- Title: Lab1_Top_Level.vhd
-- Author: Seth Konynenbelt
-- Created: January 20, 2023
-- Description: Top Level for Lab1 Part 1 for rock, paper, scissors game
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
    D1_SEG : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    D0_AN : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    D1_AN : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
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
  COMPONENT Clock_Divider_380Hz
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

  COMPONENT Decoder_Seven_Segment_AF IS
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
      clk, reset_main : IN STD_LOGIC;
      switch : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      switch_flag : OUT STD_LOGIC;
      user_rps : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
  ----------------------------------------------------------------------------------
  COMPONENT rps_rules IS
    PORT (
      clk, reset : IN STD_LOGIC;
      user_rps : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      comp_rps : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      switch_flag : IN STD_LOGIC;
      led0 : OUT STD_LOGIC;
      led1 : OUT STD_LOGIC;
      win_count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      tie_count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      loss_count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
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
  -- seven segment signals and control
  SIGNAL d0_segment_signal1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL d0_segment_signal2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL d0_segment_signal3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL d0_segment_signal4 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL d1_segment_signal1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL d1_segment_signal2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL d1_segment_signal3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL d1_segment_signal4 : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL two_bit_count : STD_LOGIC_VECTOR(1 DOWNTO 0);

  -- clock dividers
  SIGNAL clk_125Hz, clk_600Hz, one_khz_clk : STD_LOGIC;

  -- rock paper scissors logic
  SIGNAL comp_rps : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL user_rps : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL win_count : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL tie_count : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL loss_count : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL switch_flag : STD_LOGIC;
  SIGNAL switches : STD_LOGIC_VECTOR(4 DOWNTO 0);
BEGIN
  --using named port mapping, -- module => signal (top level)

  -- clock dividers
  U2 : Clock_Divider_1Khz PORT MAP(clk => clk_100Mhz, reset => reset_main, clk_div => one_khz_clk);
  U3 : Clock_Divider_10Hz PORT MAP(clk => clk_100Mhz, reset => reset_main, clk_div => clk_125Hz);
  U23 : Clock_Divider_380Hz PORT MAP(clk => clk_100Mhz, reset => reset_main, clk_div => clk_600Hz);

  -- seven segment controllers
  U4 : Counter_Two_Bit PORT MAP(clk_in => one_khz_clk, reset => reset_main, count_out => two_bit_count);
  U6 : Decoder_Seven_Segment PORT MAP(bcd => comp_rps, seg_out => d0_segment_signal1);
  U7 : Decoder_Seven_Segment PORT MAP(bcd => "1111", seg_out => d0_segment_signal2);
  U8 : Decoder_Seven_Segment PORT MAP(bcd => "1111", seg_out => d0_segment_signal3);
  U9 : Decoder_Seven_Segment PORT MAP(bcd => "1111", seg_out => d0_segment_signal4);
  U10 : big_mux PORT MAP(seg1 => d0_segment_signal1, seg2 => d0_segment_signal2, seg3 => d0_segment_signal3, seg4 => d0_segment_signal4, sel => two_bit_count, seg_out => D0_SEG, anode_out => D0_AN);

  -- rock paper scissors logic blocks
  U11 : main_rps PORT MAP(clk => clk_100Mhz, reset_main => reset_main, switch => switches, switch_flag => switch_flag, user_rps => user_rps);
  U12 : rps_rules PORT MAP(reset => reset_main, clk => clk_100Mhz, user_rps => user_rps, comp_rps => comp_rps, switch_flag => switch_flag, led0 => led(0), led1 => led(1), win_count => win_count, tie_count => tie_count, loss_count => loss_count);
  U5 : computer_rps PORT MAP(clk => clk_125Hz, reset_main => reset_main, switch => switches, rps => comp_rps);

  -- second sevent segment control
  U13 : Decoder_Seven_Segment_AF PORT MAP(bcd => loss_count, seg_out => d1_segment_signal1);
  U14 : Decoder_Seven_Segment_AF PORT MAP(bcd => tie_count, seg_out => d1_segment_signal2);
  U15 : Decoder_Seven_Segment_AF PORT MAP(bcd => win_count, seg_out => d1_segment_signal3);
  U16 : Decoder_Seven_Segment PORT MAP(bcd => user_rps, seg_out => d1_segment_signal4);
  U17 : big_mux PORT MAP(seg1 => d1_segment_signal1, seg2 => d1_segment_signal2, seg3 => d1_segment_signal3, seg4 => d1_segment_signal4, sel => two_bit_count, seg_out => D1_SEG, anode_out => D1_AN);

  -- debounce the switches
  U18 : debouncer PORT MAP(btn_in => sw(0), clk => clk_600Hz, reset => reset_main, btn_out => switches(0));
  U19 : debouncer PORT MAP(btn_in => sw(1), clk => clk_600Hz, reset => reset_main, btn_out => switches(1));
  U20 : debouncer PORT MAP(btn_in => sw(2), clk => clk_600Hz, reset => reset_main, btn_out => switches(2));
  U21 : debouncer PORT MAP(btn_in => sw(3), clk => clk_600Hz, reset => reset_main, btn_out => switches(3));
  U22 : debouncer PORT MAP(btn_in => sw(4), clk => clk_600Hz, reset => reset_main, btn_out => switches(4));

END Structural;
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Sun Feb  4 11:47:36 2024
-- Host        : ubuntu running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/sethkonynenbelt/EGR426/EGR426_Project1/EGR426_Project1.sim/sim_1/synth/func/xsim/main_rps_tb_func_synth.vhd
-- Design      : Lab1_Top_Level
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s50csga324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Clock_Divider_10Hz is
  port (
    CLK : out STD_LOGIC;
    clk_100Mhz_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Clock_Divider_10Hz;

architecture STRUCTURE of Clock_Divider_10Hz is
  signal \^clk\ : STD_LOGIC;
  signal \clk_temp_i_1__0_n_0\ : STD_LOGIC;
  signal clk_temp_i_2_n_0 : STD_LOGIC;
  signal clk_temp_i_3_n_0 : STD_LOGIC;
  signal clk_temp_i_4_n_0 : STD_LOGIC;
  signal clk_temp_i_5_n_0 : STD_LOGIC;
  signal \count[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \count[12]_i_2__0_n_0\ : STD_LOGIC;
  signal \count[12]_i_3__0_n_0\ : STD_LOGIC;
  signal \count[12]_i_4__0_n_0\ : STD_LOGIC;
  signal \count[12]_i_5__0_n_0\ : STD_LOGIC;
  signal \count[16]_i_2_n_0\ : STD_LOGIC;
  signal \count[16]_i_3_n_0\ : STD_LOGIC;
  signal \count[16]_i_4_n_0\ : STD_LOGIC;
  signal \count[16]_i_5_n_0\ : STD_LOGIC;
  signal \count[20]_i_2_n_0\ : STD_LOGIC;
  signal \count[20]_i_3_n_0\ : STD_LOGIC;
  signal \count[20]_i_4_n_0\ : STD_LOGIC;
  signal \count[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \count[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \count[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \count[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \count[8]_i_4__0_n_0\ : STD_LOGIC;
  signal \count[8]_i_5__0_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_count_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[8]_i_1\ : label is 11;
begin
  CLK <= \^clk\;
\clk_temp_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF4000"
    )
        port map (
      I0 => clk_temp_i_2_n_0,
      I1 => clk_temp_i_3_n_0,
      I2 => clk_temp_i_4_n_0,
      I3 => clk_temp_i_5_n_0,
      I4 => \^clk\,
      O => \clk_temp_i_1__0_n_0\
    );
clk_temp_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => count_reg(7),
      I1 => count_reg(4),
      I2 => count_reg(5),
      I3 => count_reg(13),
      I4 => count_reg(10),
      I5 => count_reg(12),
      O => clk_temp_i_2_n_0
    );
clk_temp_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => count_reg(21),
      I1 => count_reg(20),
      I2 => count_reg(15),
      I3 => count_reg(16),
      I4 => count_reg(17),
      O => clk_temp_i_3_n_0
    );
clk_temp_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(2),
      I3 => count_reg(0),
      I4 => count_reg(19),
      I5 => count_reg(22),
      O => clk_temp_i_4_n_0
    );
clk_temp_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => count_reg(11),
      I1 => count_reg(14),
      I2 => count_reg(18),
      I3 => count_reg(9),
      I4 => count_reg(6),
      I5 => count_reg(8),
      O => clk_temp_i_5_n_0
    );
clk_temp_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \clk_temp_i_1__0_n_0\,
      Q => \^clk\
    );
\count[0]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => clk_temp_i_2_n_0,
      I1 => clk_temp_i_3_n_0,
      I2 => clk_temp_i_4_n_0,
      I3 => clk_temp_i_5_n_0,
      I4 => count_reg(0),
      O => \count[0]_i_2__0_n_0\
    );
\count[0]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => clk_temp_i_2_n_0,
      I1 => clk_temp_i_3_n_0,
      I2 => clk_temp_i_4_n_0,
      I3 => clk_temp_i_5_n_0,
      I4 => count_reg(3),
      O => \count[0]_i_3__0_n_0\
    );
\count[0]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => clk_temp_i_2_n_0,
      I1 => clk_temp_i_3_n_0,
      I2 => clk_temp_i_4_n_0,
      I3 => clk_temp_i_5_n_0,
      I4 => count_reg(2),
      O => \count[0]_i_4__0_n_0\
    );
\count[0]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => clk_temp_i_2_n_0,
      I1 => clk_temp_i_3_n_0,
      I2 => clk_temp_i_4_n_0,
      I3 => clk_temp_i_5_n_0,
      I4 => count_reg(1),
      O => \count[0]_i_5__0_n_0\
    );
\count[0]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BFFF"
    )
        port map (
      I0 => clk_temp_i_2_n_0,
      I1 => clk_temp_i_3_n_0,
      I2 => clk_temp_i_4_n_0,
      I3 => clk_temp_i_5_n_0,
      I4 => count_reg(0),
      O => \count[0]_i_6__0_n_0\
    );
\count[12]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => clk_temp_i_2_n_0,
      I1 => clk_temp_i_3_n_0,
      I2 => clk_temp_i_4_n_0,
      I3 => clk_temp_i_5_n_0,
      I4 => count_reg(15),
      O => \count[12]_i_2__0_n_0\
    );
\count[12]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => clk_temp_i_2_n_0,
      I1 => clk_temp_i_3_n_0,
      I2 => clk_temp_i_4_n_0,
      I3 => clk_temp_i_5_n_0,
      I4 => count_reg(14),
      O => \count[12]_i_3__0_n_0\
    );
\count[12]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => clk_temp_i_2_n_0,
      I1 => clk_temp_i_3_n_0,
      I2 => clk_temp_i_4_n_0,
      I3 => clk_temp_i_5_n_0,
      I4 => count_reg(13),
      O => \count[12]_i_4__0_n_0\
    );
\count[12]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => clk_temp_i_2_n_0,
      I1 => clk_temp_i_3_n_0,
      I2 => clk_temp_i_4_n_0,
      I3 => clk_temp_i_5_n_0,
      I4 => count_reg(12),
      O => \count[12]_i_5__0_n_0\
    );
\count[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => clk_temp_i_2_n_0,
      I1 => clk_temp_i_3_n_0,
      I2 => clk_temp_i_4_n_0,
      I3 => clk_temp_i_5_n_0,
      I4 => count_reg(19),
      O => \count[16]_i_2_n_0\
    );
\count[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => clk_temp_i_2_n_0,
      I1 => clk_temp_i_3_n_0,
      I2 => clk_temp_i_4_n_0,
      I3 => clk_temp_i_5_n_0,
      I4 => count_reg(18),
      O => \count[16]_i_3_n_0\
    );
\count[16]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => clk_temp_i_2_n_0,
      I1 => clk_temp_i_3_n_0,
      I2 => clk_temp_i_4_n_0,
      I3 => clk_temp_i_5_n_0,
      I4 => count_reg(17),
      O => \count[16]_i_4_n_0\
    );
\count[16]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => clk_temp_i_2_n_0,
      I1 => clk_temp_i_3_n_0,
      I2 => clk_temp_i_4_n_0,
      I3 => clk_temp_i_5_n_0,
      I4 => count_reg(16),
      O => \count[16]_i_5_n_0\
    );
\count[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => clk_temp_i_2_n_0,
      I1 => clk_temp_i_3_n_0,
      I2 => clk_temp_i_4_n_0,
      I3 => clk_temp_i_5_n_0,
      I4 => count_reg(22),
      O => \count[20]_i_2_n_0\
    );
\count[20]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => clk_temp_i_2_n_0,
      I1 => clk_temp_i_3_n_0,
      I2 => clk_temp_i_4_n_0,
      I3 => clk_temp_i_5_n_0,
      I4 => count_reg(21),
      O => \count[20]_i_3_n_0\
    );
\count[20]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => clk_temp_i_2_n_0,
      I1 => clk_temp_i_3_n_0,
      I2 => clk_temp_i_4_n_0,
      I3 => clk_temp_i_5_n_0,
      I4 => count_reg(20),
      O => \count[20]_i_4_n_0\
    );
\count[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => clk_temp_i_2_n_0,
      I1 => clk_temp_i_3_n_0,
      I2 => clk_temp_i_4_n_0,
      I3 => clk_temp_i_5_n_0,
      I4 => count_reg(7),
      O => \count[4]_i_2__0_n_0\
    );
\count[4]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => clk_temp_i_2_n_0,
      I1 => clk_temp_i_3_n_0,
      I2 => clk_temp_i_4_n_0,
      I3 => clk_temp_i_5_n_0,
      I4 => count_reg(6),
      O => \count[4]_i_3__0_n_0\
    );
\count[4]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => clk_temp_i_2_n_0,
      I1 => clk_temp_i_3_n_0,
      I2 => clk_temp_i_4_n_0,
      I3 => clk_temp_i_5_n_0,
      I4 => count_reg(5),
      O => \count[4]_i_4__0_n_0\
    );
\count[4]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => clk_temp_i_2_n_0,
      I1 => clk_temp_i_3_n_0,
      I2 => clk_temp_i_4_n_0,
      I3 => clk_temp_i_5_n_0,
      I4 => count_reg(4),
      O => \count[4]_i_5__0_n_0\
    );
\count[8]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => clk_temp_i_2_n_0,
      I1 => clk_temp_i_3_n_0,
      I2 => clk_temp_i_4_n_0,
      I3 => clk_temp_i_5_n_0,
      I4 => count_reg(11),
      O => \count[8]_i_2__0_n_0\
    );
\count[8]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => clk_temp_i_2_n_0,
      I1 => clk_temp_i_3_n_0,
      I2 => clk_temp_i_4_n_0,
      I3 => clk_temp_i_5_n_0,
      I4 => count_reg(10),
      O => \count[8]_i_3__0_n_0\
    );
\count[8]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => clk_temp_i_2_n_0,
      I1 => clk_temp_i_3_n_0,
      I2 => clk_temp_i_4_n_0,
      I3 => clk_temp_i_5_n_0,
      I4 => count_reg(9),
      O => \count[8]_i_4__0_n_0\
    );
\count[8]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF0000"
    )
        port map (
      I0 => clk_temp_i_2_n_0,
      I1 => clk_temp_i_3_n_0,
      I2 => clk_temp_i_4_n_0,
      I3 => clk_temp_i_5_n_0,
      I4 => count_reg(8),
      O => \count[8]_i_5__0_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[0]_i_1_n_7\,
      Q => count_reg(0)
    );
\count_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_1_n_0\,
      CO(2) => \count_reg[0]_i_1_n_1\,
      CO(1) => \count_reg[0]_i_1_n_2\,
      CO(0) => \count_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \count[0]_i_2__0_n_0\,
      O(3) => \count_reg[0]_i_1_n_4\,
      O(2) => \count_reg[0]_i_1_n_5\,
      O(1) => \count_reg[0]_i_1_n_6\,
      O(0) => \count_reg[0]_i_1_n_7\,
      S(3) => \count[0]_i_3__0_n_0\,
      S(2) => \count[0]_i_4__0_n_0\,
      S(1) => \count[0]_i_5__0_n_0\,
      S(0) => \count[0]_i_6__0_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[8]_i_1_n_5\,
      Q => count_reg(10)
    );
\count_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[8]_i_1_n_4\,
      Q => count_reg(11)
    );
\count_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[12]_i_1_n_7\,
      Q => count_reg(12)
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3) => \count_reg[12]_i_1_n_0\,
      CO(2) => \count_reg[12]_i_1_n_1\,
      CO(1) => \count_reg[12]_i_1_n_2\,
      CO(0) => \count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1_n_4\,
      O(2) => \count_reg[12]_i_1_n_5\,
      O(1) => \count_reg[12]_i_1_n_6\,
      O(0) => \count_reg[12]_i_1_n_7\,
      S(3) => \count[12]_i_2__0_n_0\,
      S(2) => \count[12]_i_3__0_n_0\,
      S(1) => \count[12]_i_4__0_n_0\,
      S(0) => \count[12]_i_5__0_n_0\
    );
\count_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[12]_i_1_n_6\,
      Q => count_reg(13)
    );
\count_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[12]_i_1_n_5\,
      Q => count_reg(14)
    );
\count_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[12]_i_1_n_4\,
      Q => count_reg(15)
    );
\count_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[16]_i_1_n_7\,
      Q => count_reg(16)
    );
\count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1_n_0\,
      CO(3) => \count_reg[16]_i_1_n_0\,
      CO(2) => \count_reg[16]_i_1_n_1\,
      CO(1) => \count_reg[16]_i_1_n_2\,
      CO(0) => \count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[16]_i_1_n_4\,
      O(2) => \count_reg[16]_i_1_n_5\,
      O(1) => \count_reg[16]_i_1_n_6\,
      O(0) => \count_reg[16]_i_1_n_7\,
      S(3) => \count[16]_i_2_n_0\,
      S(2) => \count[16]_i_3_n_0\,
      S(1) => \count[16]_i_4_n_0\,
      S(0) => \count[16]_i_5_n_0\
    );
\count_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[16]_i_1_n_6\,
      Q => count_reg(17)
    );
\count_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[16]_i_1_n_5\,
      Q => count_reg(18)
    );
\count_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[16]_i_1_n_4\,
      Q => count_reg(19)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[0]_i_1_n_6\,
      Q => count_reg(1)
    );
\count_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[20]_i_1_n_7\,
      Q => count_reg(20)
    );
\count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]_i_1_n_0\,
      CO(3 downto 2) => \NLW_count_reg[20]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count_reg[20]_i_1_n_2\,
      CO(0) => \count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count_reg[20]_i_1_O_UNCONNECTED\(3),
      O(2) => \count_reg[20]_i_1_n_5\,
      O(1) => \count_reg[20]_i_1_n_6\,
      O(0) => \count_reg[20]_i_1_n_7\,
      S(3) => '0',
      S(2) => \count[20]_i_2_n_0\,
      S(1) => \count[20]_i_3_n_0\,
      S(0) => \count[20]_i_4_n_0\
    );
\count_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[20]_i_1_n_6\,
      Q => count_reg(21)
    );
\count_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[20]_i_1_n_5\,
      Q => count_reg(22)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[0]_i_1_n_5\,
      Q => count_reg(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[0]_i_1_n_4\,
      Q => count_reg(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[4]_i_1_n_7\,
      Q => count_reg(4)
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_1_n_0\,
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2) => \count_reg[4]_i_1_n_1\,
      CO(1) => \count_reg[4]_i_1_n_2\,
      CO(0) => \count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1_n_4\,
      O(2) => \count_reg[4]_i_1_n_5\,
      O(1) => \count_reg[4]_i_1_n_6\,
      O(0) => \count_reg[4]_i_1_n_7\,
      S(3) => \count[4]_i_2__0_n_0\,
      S(2) => \count[4]_i_3__0_n_0\,
      S(1) => \count[4]_i_4__0_n_0\,
      S(0) => \count[4]_i_5__0_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[4]_i_1_n_6\,
      Q => count_reg(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[4]_i_1_n_5\,
      Q => count_reg(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[4]_i_1_n_4\,
      Q => count_reg(7)
    );
\count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[8]_i_1_n_7\,
      Q => count_reg(8)
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2) => \count_reg[8]_i_1_n_1\,
      CO(1) => \count_reg[8]_i_1_n_2\,
      CO(0) => \count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1_n_4\,
      O(2) => \count_reg[8]_i_1_n_5\,
      O(1) => \count_reg[8]_i_1_n_6\,
      O(0) => \count_reg[8]_i_1_n_7\,
      S(3) => \count[8]_i_2__0_n_0\,
      S(2) => \count[8]_i_3__0_n_0\,
      S(1) => \count[8]_i_4__0_n_0\,
      S(0) => \count[8]_i_5__0_n_0\
    );
\count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[8]_i_1_n_6\,
      Q => count_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Clock_Divider_1Khz is
  port (
    CLK : out STD_LOGIC;
    clk_100Mhz_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Clock_Divider_1Khz;

architecture STRUCTURE of Clock_Divider_1Khz is
  signal \^clk\ : STD_LOGIC;
  signal clk_temp_i_1_n_0 : STD_LOGIC;
  signal \clk_temp_i_2__0_n_0\ : STD_LOGIC;
  signal \clk_temp_i_3__0_n_0\ : STD_LOGIC;
  signal \clk_temp_i_4__0_n_0\ : STD_LOGIC;
  signal \clk_temp_i_5__0_n_0\ : STD_LOGIC;
  signal \count[0]_i_2_n_0\ : STD_LOGIC;
  signal \count[0]_i_3_n_0\ : STD_LOGIC;
  signal \count[0]_i_4_n_0\ : STD_LOGIC;
  signal \count[0]_i_5_n_0\ : STD_LOGIC;
  signal \count[0]_i_6_n_0\ : STD_LOGIC;
  signal \count[0]_i_7_n_0\ : STD_LOGIC;
  signal \count[12]_i_2_n_0\ : STD_LOGIC;
  signal \count[12]_i_3_n_0\ : STD_LOGIC;
  signal \count[12]_i_4_n_0\ : STD_LOGIC;
  signal \count[12]_i_5_n_0\ : STD_LOGIC;
  signal \count[4]_i_2_n_0\ : STD_LOGIC;
  signal \count[4]_i_3_n_0\ : STD_LOGIC;
  signal \count[4]_i_4_n_0\ : STD_LOGIC;
  signal \count[4]_i_5_n_0\ : STD_LOGIC;
  signal \count[8]_i_2_n_0\ : STD_LOGIC;
  signal \count[8]_i_3_n_0\ : STD_LOGIC;
  signal \count[8]_i_4_n_0\ : STD_LOGIC;
  signal \count[8]_i_5_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \count_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \NLW_count_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \clk_temp_i_4__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count[0]_i_7\ : label is "soft_lutpair13";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_reg[0]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[12]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[4]_i_1__0\ : label is 11;
  attribute ADDER_THRESHOLD of \count_reg[8]_i_1__0\ : label is 11;
begin
  CLK <= \^clk\;
clk_temp_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0080"
    )
        port map (
      I0 => \clk_temp_i_2__0_n_0\,
      I1 => \clk_temp_i_3__0_n_0\,
      I2 => \clk_temp_i_4__0_n_0\,
      I3 => \clk_temp_i_5__0_n_0\,
      I4 => \^clk\,
      O => clk_temp_i_1_n_0
    );
\clk_temp_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => count_reg(6),
      I1 => count_reg(4),
      I2 => count_reg(9),
      I3 => count_reg(8),
      O => \clk_temp_i_2__0_n_0\
    );
\clk_temp_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      I2 => count_reg(14),
      I3 => count_reg(15),
      O => \clk_temp_i_3__0_n_0\
    );
\clk_temp_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => count_reg(13),
      I1 => count_reg(12),
      I2 => count_reg(11),
      I3 => count_reg(10),
      O => \clk_temp_i_4__0_n_0\
    );
\clk_temp_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(2),
      I2 => count_reg(7),
      I3 => count_reg(5),
      O => \clk_temp_i_5__0_n_0\
    );
clk_temp_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => clk_temp_i_1_n_0,
      Q => \^clk\
    );
\count[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(0),
      O => \count[0]_i_2_n_0\
    );
\count[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(3),
      O => \count[0]_i_3_n_0\
    );
\count[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(2),
      O => \count[0]_i_4_n_0\
    );
\count[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(1),
      O => \count[0]_i_5_n_0\
    );
\count[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF007F00FF00FF"
    )
        port map (
      I0 => \clk_temp_i_2__0_n_0\,
      I1 => count_reg(15),
      I2 => count_reg(14),
      I3 => count_reg(0),
      I4 => count_reg(1),
      I5 => \count[0]_i_7_n_0\,
      O => \count[0]_i_6_n_0\
    );
\count[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => count_reg(10),
      I1 => count_reg(11),
      I2 => count_reg(12),
      I3 => count_reg(13),
      I4 => \clk_temp_i_5__0_n_0\,
      O => \count[0]_i_7_n_0\
    );
\count[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCC4CCCCCCCCC"
    )
        port map (
      I0 => \clk_temp_i_2__0_n_0\,
      I1 => count_reg(15),
      I2 => count_reg(14),
      I3 => count_reg(0),
      I4 => count_reg(1),
      I5 => \count[0]_i_7_n_0\,
      O => \count[12]_i_2_n_0\
    );
\count[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F070F0F0F0F0"
    )
        port map (
      I0 => \clk_temp_i_2__0_n_0\,
      I1 => count_reg(15),
      I2 => count_reg(14),
      I3 => count_reg(0),
      I4 => count_reg(1),
      I5 => \count[0]_i_7_n_0\,
      O => \count[12]_i_3_n_0\
    );
\count[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(13),
      O => \count[12]_i_4_n_0\
    );
\count[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(12),
      O => \count[12]_i_5_n_0\
    );
\count[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(7),
      O => \count[4]_i_2_n_0\
    );
\count[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00FF00FF00FF00"
    )
        port map (
      I0 => count_reg(8),
      I1 => count_reg(9),
      I2 => count_reg(4),
      I3 => count_reg(6),
      I4 => \clk_temp_i_3__0_n_0\,
      I5 => \count[0]_i_7_n_0\,
      O => \count[4]_i_3_n_0\
    );
\count[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(5),
      O => \count[4]_i_4_n_0\
    );
\count[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70F0F0F0F0F0F0F0"
    )
        port map (
      I0 => count_reg(8),
      I1 => count_reg(9),
      I2 => count_reg(4),
      I3 => count_reg(6),
      I4 => \clk_temp_i_3__0_n_0\,
      I5 => \count[0]_i_7_n_0\,
      O => \count[4]_i_5_n_0\
    );
\count[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(11),
      O => \count[8]_i_2_n_0\
    );
\count[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => count_reg(10),
      O => \count[8]_i_3_n_0\
    );
\count[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4CCCCCCCCCCCCCCC"
    )
        port map (
      I0 => count_reg(8),
      I1 => count_reg(9),
      I2 => count_reg(4),
      I3 => count_reg(6),
      I4 => \clk_temp_i_3__0_n_0\,
      I5 => \count[0]_i_7_n_0\,
      O => \count[8]_i_4_n_0\
    );
\count[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => count_reg(8),
      I1 => count_reg(9),
      I2 => count_reg(4),
      I3 => count_reg(6),
      I4 => \clk_temp_i_3__0_n_0\,
      I5 => \count[0]_i_7_n_0\,
      O => \count[8]_i_5_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[0]_i_1__0_n_7\,
      Q => count_reg(0)
    );
\count_reg[0]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_1__0_n_0\,
      CO(2) => \count_reg[0]_i_1__0_n_1\,
      CO(1) => \count_reg[0]_i_1__0_n_2\,
      CO(0) => \count_reg[0]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \count[0]_i_2_n_0\,
      O(3) => \count_reg[0]_i_1__0_n_4\,
      O(2) => \count_reg[0]_i_1__0_n_5\,
      O(1) => \count_reg[0]_i_1__0_n_6\,
      O(0) => \count_reg[0]_i_1__0_n_7\,
      S(3) => \count[0]_i_3_n_0\,
      S(2) => \count[0]_i_4_n_0\,
      S(1) => \count[0]_i_5_n_0\,
      S(0) => \count[0]_i_6_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[8]_i_1__0_n_5\,
      Q => count_reg(10)
    );
\count_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[8]_i_1__0_n_4\,
      Q => count_reg(11)
    );
\count_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[12]_i_1__0_n_7\,
      Q => count_reg(12)
    );
\count_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1__0_n_0\,
      CO(3) => \NLW_count_reg[12]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[12]_i_1__0_n_1\,
      CO(1) => \count_reg[12]_i_1__0_n_2\,
      CO(0) => \count_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1__0_n_4\,
      O(2) => \count_reg[12]_i_1__0_n_5\,
      O(1) => \count_reg[12]_i_1__0_n_6\,
      O(0) => \count_reg[12]_i_1__0_n_7\,
      S(3) => \count[12]_i_2_n_0\,
      S(2) => \count[12]_i_3_n_0\,
      S(1) => \count[12]_i_4_n_0\,
      S(0) => \count[12]_i_5_n_0\
    );
\count_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[12]_i_1__0_n_6\,
      Q => count_reg(13)
    );
\count_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[12]_i_1__0_n_5\,
      Q => count_reg(14)
    );
\count_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[12]_i_1__0_n_4\,
      Q => count_reg(15)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[0]_i_1__0_n_6\,
      Q => count_reg(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[0]_i_1__0_n_5\,
      Q => count_reg(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[0]_i_1__0_n_4\,
      Q => count_reg(3)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[4]_i_1__0_n_7\,
      Q => count_reg(4)
    );
\count_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_1__0_n_0\,
      CO(3) => \count_reg[4]_i_1__0_n_0\,
      CO(2) => \count_reg[4]_i_1__0_n_1\,
      CO(1) => \count_reg[4]_i_1__0_n_2\,
      CO(0) => \count_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1__0_n_4\,
      O(2) => \count_reg[4]_i_1__0_n_5\,
      O(1) => \count_reg[4]_i_1__0_n_6\,
      O(0) => \count_reg[4]_i_1__0_n_7\,
      S(3) => \count[4]_i_2_n_0\,
      S(2) => \count[4]_i_3_n_0\,
      S(1) => \count[4]_i_4_n_0\,
      S(0) => \count[4]_i_5_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[4]_i_1__0_n_6\,
      Q => count_reg(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[4]_i_1__0_n_5\,
      Q => count_reg(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[4]_i_1__0_n_4\,
      Q => count_reg(7)
    );
\count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[8]_i_1__0_n_7\,
      Q => count_reg(8)
    );
\count_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1__0_n_0\,
      CO(3) => \count_reg[8]_i_1__0_n_0\,
      CO(2) => \count_reg[8]_i_1__0_n_1\,
      CO(1) => \count_reg[8]_i_1__0_n_2\,
      CO(0) => \count_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1__0_n_4\,
      O(2) => \count_reg[8]_i_1__0_n_5\,
      O(1) => \count_reg[8]_i_1__0_n_6\,
      O(0) => \count_reg[8]_i_1__0_n_7\,
      S(3) => \count[8]_i_2_n_0\,
      S(2) => \count[8]_i_3_n_0\,
      S(1) => \count[8]_i_4_n_0\,
      S(0) => \count[8]_i_5_n_0\
    );
\count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \count_reg[8]_i_1__0_n_6\,
      Q => count_reg(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Counter_Two_Bit is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D1_SEG_OBUF : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg[0]_0\ : out STD_LOGIC;
    D1_AN_OBUF : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \count_reg[0]_1\ : out STD_LOGIC;
    \count_reg[0]_2\ : out STD_LOGIC;
    \D1_SEG[5]\ : in STD_LOGIC;
    \D1_SEG[5]_0\ : in STD_LOGIC;
    \D1_SEG[2]\ : in STD_LOGIC;
    \D1_SEG[2]_0\ : in STD_LOGIC;
    \seg_out__27\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    user_rps : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \D1_SEG_OBUF[4]_inst_i_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Counter_Two_Bit;

architecture STRUCTURE of Counter_Two_Bit is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \D0_AN_OBUF[0]_inst_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \D0_AN_OBUF[1]_inst_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \D0_AN_OBUF[2]_inst_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \D0_AN_OBUF[3]_inst_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \D1_SEG_OBUF[0]_inst_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \D1_SEG_OBUF[0]_inst_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \D1_SEG_OBUF[4]_inst_i_4\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair14";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\D0_AN_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => D1_AN_OBUF(0)
    );
\D0_AN_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => D1_AN_OBUF(1)
    );
\D0_AN_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => D1_AN_OBUF(2)
    );
\D0_AN_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => D1_AN_OBUF(3)
    );
\D1_SEG_OBUF[0]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8080808"
    )
        port map (
      I0 => \^q\(0),
      I1 => \seg_out__27\(0),
      I2 => \^q\(1),
      I3 => user_rps(0),
      I4 => user_rps(1),
      O => \count_reg[0]_1\
    );
\D1_SEG_OBUF[0]_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count_reg[0]_0\
    );
\D1_SEG_OBUF[2]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \D1_SEG[2]\,
      I1 => \D1_SEG[2]_0\,
      O => D1_SEG_OBUF(0),
      S => \^q\(0)
    );
\D1_SEG_OBUF[4]_inst_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \D1_SEG_OBUF[4]_inst_i_1\(0),
      O => \count_reg[0]_2\
    );
\D1_SEG_OBUF[5]_inst_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \D1_SEG[5]\,
      I1 => \D1_SEG[5]_0\,
      O => D1_SEG_OBUF(1),
      S => \^q\(0)
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => plusOp(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => plusOp(1)
    );
\count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => plusOp(0),
      Q => \^q\(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => AR(0),
      D => plusOp(1),
      Q => \^q\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity computer_rps is
  port (
    \user_rps_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rps_temp_reg[2]_0\ : out STD_LOGIC;
    \rps_temp_reg[2]_1\ : out STD_LOGIC;
    D0_SEG_OBUF : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \rps_temp_reg[2]_2\ : out STD_LOGIC;
    \rps_temp_reg[1]_0\ : out STD_LOGIC;
    \rps_temp_reg[1]_1\ : out STD_LOGIC;
    \rps_temp_reg[2]_3\ : out STD_LOGIC;
    user_rps : in STD_LOGIC_VECTOR ( 2 downto 0 );
    switch_flag : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sw_IBUF : in STD_LOGIC_VECTOR ( 4 downto 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end computer_rps;

architecture STRUCTURE of computer_rps is
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \rps_temp[0]_i_1_n_0\ : STD_LOGIC;
  signal \rps_temp[2]_i_1_n_0\ : STD_LOGIC;
  signal rps_temp_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^rps_temp_reg[2]_0\ : STD_LOGIC;
  signal \^rps_temp_reg[2]_1\ : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal \tie_count_temp[3]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of led0_i_3 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of led0_i_4 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of led0_i_5 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \loss_count_temp[3]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rps_temp[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rps_temp[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rps_temp[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rps_temp[3]_i_2\ : label is "soft_lutpair18";
begin
  \rps_temp_reg[2]_0\ <= \^rps_temp_reg[2]_0\;
  \rps_temp_reg[2]_1\ <= \^rps_temp_reg[2]_1\;
\D0_SEG_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEEEEFEEEFEEEE"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => rps_temp_reg(1),
      I3 => rps_temp_reg(3),
      I4 => rps_temp_reg(2),
      I5 => rps_temp_reg(0),
      O => D0_SEG_OBUF(0)
    );
\D0_SEG_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFEEEFEFEEE"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => rps_temp_reg(2),
      I3 => rps_temp_reg(0),
      I4 => rps_temp_reg(1),
      I5 => rps_temp_reg(3),
      O => D0_SEG_OBUF(1)
    );
\D0_SEG_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEEEEFEEEE"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => rps_temp_reg(2),
      I3 => rps_temp_reg(0),
      I4 => rps_temp_reg(1),
      I5 => rps_temp_reg(3),
      O => D0_SEG_OBUF(2)
    );
\D0_SEG_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEFEFEEEEFEFEE"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => rps_temp_reg(3),
      I3 => rps_temp_reg(0),
      I4 => rps_temp_reg(2),
      I5 => rps_temp_reg(1),
      O => D0_SEG_OBUF(3)
    );
\D0_SEG_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFBFFFAFAFFFA"
    )
        port map (
      I0 => Q(0),
      I1 => rps_temp_reg(3),
      I2 => Q(1),
      I3 => rps_temp_reg(2),
      I4 => rps_temp_reg(1),
      I5 => rps_temp_reg(0),
      O => D0_SEG_OBUF(4)
    );
\D0_SEG_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEFEEEEEEEFFFE"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => rps_temp_reg(0),
      I3 => rps_temp_reg(1),
      I4 => rps_temp_reg(3),
      I5 => rps_temp_reg(2),
      O => D0_SEG_OBUF(5)
    );
\D0_SEG_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEEFFFEEEEEF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => rps_temp_reg(2),
      I3 => rps_temp_reg(3),
      I4 => rps_temp_reg(1),
      I5 => rps_temp_reg(0),
      O => D0_SEG_OBUF(6)
    );
led0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => rps_temp_reg(2),
      I1 => rps_temp_reg(3),
      I2 => rps_temp_reg(1),
      I3 => rps_temp_reg(0),
      O => \^rps_temp_reg[2]_1\
    );
led0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => rps_temp_reg(1),
      I1 => rps_temp_reg(0),
      I2 => rps_temp_reg(3),
      I3 => rps_temp_reg(2),
      O => \rps_temp_reg[1]_1\
    );
led0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => rps_temp_reg(2),
      I1 => rps_temp_reg(0),
      I2 => rps_temp_reg(3),
      I3 => rps_temp_reg(1),
      O => \^rps_temp_reg[2]_0\
    );
\loss_count_temp[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40000000FFFFFFFF"
    )
        port map (
      I0 => rps_temp_reg(2),
      I1 => rps_temp_reg(0),
      I2 => rps_temp_reg(3),
      I3 => rps_temp_reg(1),
      I4 => switch_flag,
      I5 => user_rps(1),
      O => \rps_temp_reg[2]_3\
    );
\loss_count_temp[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => rps_temp_reg(1),
      I1 => rps_temp_reg(3),
      I2 => rps_temp_reg(0),
      I3 => rps_temp_reg(2),
      O => \rps_temp_reg[1]_0\
    );
\rps_temp[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F07"
    )
        port map (
      I0 => rps_temp_reg(2),
      I1 => rps_temp_reg(3),
      I2 => rps_temp_reg(0),
      I3 => rps_temp_reg(1),
      O => \rps_temp[0]_i_1_n_0\
    );
\rps_temp[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FF8"
    )
        port map (
      I0 => rps_temp_reg(2),
      I1 => rps_temp_reg(3),
      I2 => rps_temp_reg(1),
      I3 => rps_temp_reg(0),
      O => p_0_in(1)
    );
\rps_temp[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5AA2"
    )
        port map (
      I0 => rps_temp_reg(2),
      I1 => rps_temp_reg(3),
      I2 => rps_temp_reg(0),
      I3 => rps_temp_reg(1),
      O => \rps_temp[2]_i_1_n_0\
    );
\rps_temp[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sw_IBUF(3),
      I1 => sw_IBUF(4),
      I2 => sw_IBUF(0),
      I3 => sw_IBUF(1),
      I4 => sw_IBUF(2),
      O => sel
    );
\rps_temp[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => rps_temp_reg(3),
      I1 => rps_temp_reg(2),
      I2 => rps_temp_reg(0),
      I3 => rps_temp_reg(1),
      O => p_0_in(3)
    );
\rps_temp_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      CLR => AR(0),
      D => \rps_temp[0]_i_1_n_0\,
      Q => rps_temp_reg(0)
    );
\rps_temp_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => sel,
      D => p_0_in(1),
      PRE => AR(0),
      Q => rps_temp_reg(1)
    );
\rps_temp_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      CLR => AR(0),
      D => \rps_temp[2]_i_1_n_0\,
      Q => rps_temp_reg(2)
    );
\rps_temp_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => sel,
      D => p_0_in(3),
      PRE => AR(0),
      Q => rps_temp_reg(3)
    );
\tie_count_temp[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808A2220000A222"
    )
        port map (
      I0 => \tie_count_temp[3]_i_3_n_0\,
      I1 => user_rps(1),
      I2 => \^rps_temp_reg[2]_0\,
      I3 => switch_flag,
      I4 => user_rps(0),
      I5 => \^rps_temp_reg[2]_1\,
      O => \user_rps_reg[1]\(0)
    );
\tie_count_temp[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF04000000"
    )
        port map (
      I0 => rps_temp_reg(1),
      I1 => rps_temp_reg(3),
      I2 => rps_temp_reg(0),
      I3 => rps_temp_reg(2),
      I4 => user_rps(2),
      I5 => user_rps(1),
      O => \tie_count_temp[3]_i_3_n_0\
    );
\win_count_temp[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00080000FFFFFFFF"
    )
        port map (
      I0 => rps_temp_reg(2),
      I1 => rps_temp_reg(3),
      I2 => rps_temp_reg(0),
      I3 => rps_temp_reg(1),
      I4 => switch_flag,
      I5 => user_rps(1),
      O => \rps_temp_reg[2]_2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_rps is
  port (
    switch_flag : out STD_LOGIC;
    \user_rps_reg[1]_0\ : out STD_LOGIC;
    user_rps : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    led1 : out STD_LOGIC;
    led0 : out STD_LOGIC;
    \user_rps_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \user_rps_reg[2]_1\ : out STD_LOGIC;
    \count_reg[0]\ : out STD_LOGIC;
    \user_rps_reg[2]_2\ : out STD_LOGIC;
    \user_rps_reg[0]_0\ : out STD_LOGIC;
    \count_reg[0]_0\ : out STD_LOGIC;
    \count_reg[1]\ : out STD_LOGIC;
    clk_100Mhz_IBUF_BUFG : in STD_LOGIC;
    sw_IBUF : in STD_LOGIC_VECTOR ( 4 downto 0 );
    led0_reg : in STD_LOGIC;
    led0_reg_0 : in STD_LOGIC;
    led0_reg_1 : in STD_LOGIC;
    \win_count_temp_reg[3]\ : in STD_LOGIC;
    \loss_count_temp_reg[3]\ : in STD_LOGIC;
    \loss_count_temp_reg[3]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \seg_out__27\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \D1_SEG_OBUF[1]_inst_i_1\ : in STD_LOGIC;
    reset_main_IBUF : in STD_LOGIC
  );
end main_rps;

architecture STRUCTURE of main_rps is
  signal \D1_SEG_OBUF[1]_inst_i_4_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^switch_flag\ : STD_LOGIC;
  signal switch_flag_i_1_n_0 : STD_LOGIC;
  signal switch_flag_i_2_n_0 : STD_LOGIC;
  signal switch_previous : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^user_rps\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \user_rps[0]_i_1_n_0\ : STD_LOGIC;
  signal \user_rps[1]_i_1_n_0\ : STD_LOGIC;
  signal \user_rps[2]_i_1_n_0\ : STD_LOGIC;
  signal \user_rps[2]_i_2_n_0\ : STD_LOGIC;
  signal \user_rps[2]_i_3_n_0\ : STD_LOGIC;
  signal \user_rps[2]_i_4_n_0\ : STD_LOGIC;
  signal \user_rps[2]_i_5_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \D1_SEG_OBUF[1]_inst_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \user_rps[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \user_rps[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \user_rps[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \user_rps[2]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \user_rps[2]_i_4\ : label is "soft_lutpair0";
begin
  switch_flag <= \^switch_flag\;
  user_rps(2 downto 0) <= \^user_rps\(2 downto 0);
\D1_SEG_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFE00000"
    )
        port map (
      I0 => \^user_rps\(2),
      I1 => \D1_SEG_OBUF[1]_inst_i_4_n_0\,
      I2 => Q(1),
      I3 => \seg_out__27\(0),
      I4 => Q(0),
      I5 => \D1_SEG_OBUF[1]_inst_i_1\,
      O => \user_rps_reg[2]_2\
    );
\D1_SEG_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^user_rps\(1),
      I1 => \^user_rps\(0),
      O => \D1_SEG_OBUF[1]_inst_i_4_n_0\
    );
\D1_SEG_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => \^user_rps\(0),
      I1 => \^user_rps\(2),
      I2 => \^user_rps\(1),
      I3 => Q(1),
      I4 => \seg_out__27\(1),
      O => \user_rps_reg[0]_0\
    );
\D1_SEG_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => Q(1),
      I1 => \^user_rps\(1),
      I2 => \^user_rps\(2),
      I3 => \^user_rps\(0),
      O => \count_reg[1]\
    );
\D1_SEG_OBUF[4]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A80808A808A80808"
    )
        port map (
      I0 => Q(0),
      I1 => \seg_out__27\(2),
      I2 => Q(1),
      I3 => \^user_rps\(1),
      I4 => \^user_rps\(0),
      I5 => \^user_rps\(2),
      O => \count_reg[0]_0\
    );
\D1_SEG_OBUF[5]_inst_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8000"
    )
        port map (
      I0 => \^user_rps\(2),
      I1 => \^user_rps\(0),
      I2 => \^user_rps\(1),
      I3 => Q(1),
      I4 => \seg_out__27\(3),
      O => \user_rps_reg[2]_1\
    );
\D1_SEG_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A80808A80808"
    )
        port map (
      I0 => Q(0),
      I1 => \seg_out__27\(4),
      I2 => Q(1),
      I3 => \^user_rps\(0),
      I4 => \^user_rps\(1),
      I5 => \^user_rps\(2),
      O => \count_reg[0]\
    );
led0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFDFFFD"
    )
        port map (
      I0 => \^user_rps\(1),
      I1 => led0_reg,
      I2 => led0_reg_0,
      I3 => led0_reg_1,
      I4 => \^user_rps\(0),
      I5 => \^user_rps\(2),
      O => \user_rps_reg[1]_0\
    );
led0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004224000002240"
    )
        port map (
      I0 => \^user_rps\(2),
      I1 => \^user_rps\(1),
      I2 => led0_reg,
      I3 => led0_reg_1,
      I4 => \^user_rps\(0),
      I5 => led0_reg_0,
      O => led0
    );
led1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444000000002420"
    )
        port map (
      I0 => \^user_rps\(2),
      I1 => \^user_rps\(1),
      I2 => led0_reg,
      I3 => led0_reg_0,
      I4 => led0_reg_1,
      I5 => \^user_rps\(0),
      O => led1
    );
\loss_count_temp[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5550005000800080"
    )
        port map (
      I0 => \^user_rps\(2),
      I1 => led0_reg_1,
      I2 => \loss_count_temp_reg[3]\,
      I3 => \^user_rps\(0),
      I4 => \loss_count_temp_reg[3]_0\,
      I5 => \^user_rps\(1),
      O => \user_rps_reg[2]_0\(0)
    );
switch_flag_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^switch_flag\,
      I1 => switch_flag_i_2_n_0,
      I2 => reset_main_IBUF,
      O => switch_flag_i_1_n_0
    );
switch_flag_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6FFFFF600000000"
    )
        port map (
      I0 => sw_IBUF(4),
      I1 => switch_previous(4),
      I2 => \user_rps[2]_i_5_n_0\,
      I3 => switch_previous(3),
      I4 => sw_IBUF(3),
      I5 => \user_rps[2]_i_4_n_0\,
      O => switch_flag_i_2_n_0
    );
switch_flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      D => switch_flag_i_1_n_0,
      Q => \^switch_flag\,
      R => '0'
    );
\switch_previous_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      D => sw_IBUF(0),
      Q => switch_previous(0),
      R => '0'
    );
\switch_previous_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      D => sw_IBUF(1),
      Q => switch_previous(1),
      R => '0'
    );
\switch_previous_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      D => sw_IBUF(2),
      Q => switch_previous(2),
      R => '0'
    );
\switch_previous_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      D => sw_IBUF(3),
      Q => switch_previous(3),
      R => '0'
    );
\switch_previous_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      D => sw_IBUF(4),
      Q => switch_previous(4),
      R => '0'
    );
\user_rps[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^user_rps\(0),
      I1 => \user_rps[2]_i_2_n_0\,
      I2 => p_1_in(0),
      I3 => reset_main_IBUF,
      O => \user_rps[0]_i_1_n_0\
    );
\user_rps[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFE9"
    )
        port map (
      I0 => sw_IBUF(0),
      I1 => sw_IBUF(2),
      I2 => sw_IBUF(4),
      I3 => sw_IBUF(3),
      I4 => sw_IBUF(1),
      O => p_1_in(0)
    );
\user_rps[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE2"
    )
        port map (
      I0 => \^user_rps\(1),
      I1 => \user_rps[2]_i_2_n_0\,
      I2 => p_1_in(1),
      I3 => reset_main_IBUF,
      O => \user_rps[1]_i_1_n_0\
    );
\user_rps[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEF"
    )
        port map (
      I0 => sw_IBUF(4),
      I1 => sw_IBUF(0),
      I2 => sw_IBUF(2),
      I3 => sw_IBUF(3),
      I4 => sw_IBUF(1),
      O => p_1_in(1)
    );
\user_rps[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE2"
    )
        port map (
      I0 => \^user_rps\(2),
      I1 => \user_rps[2]_i_2_n_0\,
      I2 => \user_rps[2]_i_3_n_0\,
      I3 => reset_main_IBUF,
      O => \user_rps[2]_i_1_n_0\
    );
\user_rps[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55D75555555555D7"
    )
        port map (
      I0 => \user_rps[2]_i_4_n_0\,
      I1 => sw_IBUF(3),
      I2 => switch_previous(3),
      I3 => \user_rps[2]_i_5_n_0\,
      I4 => switch_previous(4),
      I5 => sw_IBUF(4),
      O => \user_rps[2]_i_2_n_0\
    );
\user_rps[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF9"
    )
        port map (
      I0 => sw_IBUF(0),
      I1 => sw_IBUF(1),
      I2 => sw_IBUF(2),
      I3 => sw_IBUF(3),
      I4 => sw_IBUF(4),
      O => \user_rps[2]_i_3_n_0\
    );
\user_rps[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sw_IBUF(3),
      I1 => sw_IBUF(0),
      I2 => sw_IBUF(1),
      I3 => sw_IBUF(4),
      I4 => sw_IBUF(2),
      O => \user_rps[2]_i_4_n_0\
    );
\user_rps[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => sw_IBUF(0),
      I1 => switch_previous(0),
      I2 => switch_previous(2),
      I3 => sw_IBUF(2),
      I4 => switch_previous(1),
      I5 => sw_IBUF(1),
      O => \user_rps[2]_i_5_n_0\
    );
\user_rps_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      D => \user_rps[0]_i_1_n_0\,
      Q => \^user_rps\(0),
      R => '0'
    );
\user_rps_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      D => \user_rps[1]_i_1_n_0\,
      Q => \^user_rps\(1),
      R => '0'
    );
\user_rps_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => '1',
      D => \user_rps[2]_i_1_n_0\,
      Q => \^user_rps\(2),
      R => '0'
    );
\win_count_temp[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5550005000000080"
    )
        port map (
      I0 => \^user_rps\(2),
      I1 => led0_reg,
      I2 => \win_count_temp_reg[3]\,
      I3 => \^user_rps\(0),
      I4 => led0_reg_1,
      I5 => \^user_rps\(1),
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rps_rules is
  port (
    led_OBUF : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    D1_SEG_OBUF : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \seg_out__27\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \loss_count_temp_reg[2]_0\ : out STD_LOGIC;
    \loss_count_temp_reg[2]_1\ : out STD_LOGIC;
    \count_reg[1]\ : out STD_LOGIC;
    led0_reg_0 : in STD_LOGIC;
    led0 : in STD_LOGIC;
    clk_100Mhz_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    led1 : in STD_LOGIC;
    \D1_SEG[3]\ : in STD_LOGIC;
    \D1_SEG[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \D1_SEG[6]\ : in STD_LOGIC;
    \D1_SEG[0]\ : in STD_LOGIC;
    \D1_SEG[0]_0\ : in STD_LOGIC;
    \D1_SEG_OBUF[0]_inst_i_1_0\ : in STD_LOGIC;
    \D1_SEG[1]_0\ : in STD_LOGIC;
    \D1_SEG[4]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \tie_count_temp_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \loss_count_temp_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end rps_rules;

architecture STRUCTURE of rps_rules is
  signal \D1_SEG_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \D1_SEG_OBUF[0]_inst_i_5_n_0\ : STD_LOGIC;
  signal \D1_SEG_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \D1_SEG_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \D1_SEG_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \D1_SEG_OBUF[3]_inst_i_5_n_0\ : STD_LOGIC;
  signal \D1_SEG_OBUF[3]_inst_i_6_n_0\ : STD_LOGIC;
  signal \D1_SEG_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \D1_SEG_OBUF[4]_inst_i_5_n_0\ : STD_LOGIC;
  signal \D1_SEG_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \D1_SEG_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \D1_SEG_OBUF[6]_inst_i_5_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \U13/seg_out__27\ : STD_LOGIC_VECTOR ( 5 downto 2 );
  signal loss_count_temp_reg : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \plusOp__2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \tie_count_temp[0]_i_1_n_0\ : STD_LOGIC;
  signal \tie_count_temp[1]_i_1_n_0\ : STD_LOGIC;
  signal tie_count_temp_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \win_count_temp[0]_i_1_n_0\ : STD_LOGIC;
  signal \win_count_temp[1]_i_1_n_0\ : STD_LOGIC;
  signal win_count_temp_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \D1_SEG_OBUF[0]_inst_i_6\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \D1_SEG_OBUF[1]_inst_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \D1_SEG_OBUF[2]_inst_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \D1_SEG_OBUF[2]_inst_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \D1_SEG_OBUF[3]_inst_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \D1_SEG_OBUF[3]_inst_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \D1_SEG_OBUF[3]_inst_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \D1_SEG_OBUF[4]_inst_i_6\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \D1_SEG_OBUF[5]_inst_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \D1_SEG_OBUF[5]_inst_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \D1_SEG_OBUF[6]_inst_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \loss_count_temp[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \loss_count_temp[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \loss_count_temp[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \tie_count_temp[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tie_count_temp[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tie_count_temp[3]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \win_count_temp[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \win_count_temp[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \win_count_temp[3]_i_2\ : label is "soft_lutpair3";
begin
  Q(0) <= \^q\(0);
\D1_SEG_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEAAAAAE"
    )
        port map (
      I0 => \D1_SEG_OBUF[0]_inst_i_2_n_0\,
      I1 => \D1_SEG[0]\,
      I2 => loss_count_temp_reg(1),
      I3 => loss_count_temp_reg(3),
      I4 => loss_count_temp_reg(2),
      I5 => \D1_SEG[0]_0\,
      O => D1_SEG_OBUF(0)
    );
\D1_SEG_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40004110"
    )
        port map (
      I0 => \D1_SEG_OBUF[0]_inst_i_1_0\,
      I1 => win_count_temp_reg(3),
      I2 => win_count_temp_reg(2),
      I3 => win_count_temp_reg(0),
      I4 => win_count_temp_reg(1),
      I5 => \D1_SEG_OBUF[0]_inst_i_5_n_0\,
      O => \D1_SEG_OBUF[0]_inst_i_2_n_0\
    );
\D1_SEG_OBUF[0]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \D1_SEG[1]\(0),
      I1 => \^q\(0),
      I2 => \D1_SEG[1]\(1),
      I3 => loss_count_temp_reg(3),
      I4 => loss_count_temp_reg(1),
      I5 => loss_count_temp_reg(2),
      O => \D1_SEG_OBUF[0]_inst_i_5_n_0\
    );
\D1_SEG_OBUF[0]_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8094"
    )
        port map (
      I0 => tie_count_temp_reg(3),
      I1 => tie_count_temp_reg(2),
      I2 => tie_count_temp_reg(0),
      I3 => tie_count_temp_reg(1),
      O => \seg_out__27\(0)
    );
\D1_SEG_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4000"
    )
        port map (
      I0 => \D1_SEG[1]\(0),
      I1 => \D1_SEG[1]\(1),
      I2 => loss_count_temp_reg(2),
      I3 => loss_count_temp_reg(3),
      I4 => \D1_SEG_OBUF[1]_inst_i_2_n_0\,
      I5 => \D1_SEG[1]_0\,
      O => D1_SEG_OBUF(1)
    );
\D1_SEG_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000F460"
    )
        port map (
      I0 => win_count_temp_reg(0),
      I1 => win_count_temp_reg(1),
      I2 => win_count_temp_reg(2),
      I3 => win_count_temp_reg(3),
      I4 => \D1_SEG[1]\(1),
      I5 => \D1_SEG[1]\(0),
      O => \D1_SEG_OBUF[1]_inst_i_2_n_0\
    );
\D1_SEG_OBUF[1]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CE8"
    )
        port map (
      I0 => tie_count_temp_reg(3),
      I1 => tie_count_temp_reg(2),
      I2 => tie_count_temp_reg(1),
      I3 => tie_count_temp_reg(0),
      O => \seg_out__27\(1)
    );
\D1_SEG_OBUF[1]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002020000000800"
    )
        port map (
      I0 => \D1_SEG[1]\(1),
      I1 => loss_count_temp_reg(3),
      I2 => \D1_SEG[1]\(0),
      I3 => loss_count_temp_reg(1),
      I4 => \^q\(0),
      I5 => loss_count_temp_reg(2),
      O => \count_reg[1]\
    );
\D1_SEG_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F810FFFFF8100000"
    )
        port map (
      I0 => loss_count_temp_reg(2),
      I1 => \^q\(0),
      I2 => loss_count_temp_reg(1),
      I3 => loss_count_temp_reg(3),
      I4 => \D1_SEG[1]\(1),
      I5 => \U13/seg_out__27\(2),
      O => \loss_count_temp_reg[2]_1\
    );
\D1_SEG_OBUF[2]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8B0"
    )
        port map (
      I0 => win_count_temp_reg(3),
      I1 => win_count_temp_reg(0),
      I2 => win_count_temp_reg(1),
      I3 => win_count_temp_reg(2),
      O => \U13/seg_out__27\(2)
    );
\D1_SEG_OBUF[2]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8B0"
    )
        port map (
      I0 => tie_count_temp_reg(3),
      I1 => tie_count_temp_reg(0),
      I2 => tie_count_temp_reg(1),
      I3 => tie_count_temp_reg(2),
      O => \seg_out__27\(2)
    );
\D1_SEG_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA888A800000000"
    )
        port map (
      I0 => \D1_SEG_OBUF[3]_inst_i_2_n_0\,
      I1 => \D1_SEG[3]\,
      I2 => \D1_SEG_OBUF[3]_inst_i_4_n_0\,
      I3 => \D1_SEG[1]\(0),
      I4 => \D1_SEG_OBUF[3]_inst_i_5_n_0\,
      I5 => \D1_SEG_OBUF[3]_inst_i_6_n_0\,
      O => D1_SEG_OBUF(2)
    );
\D1_SEG_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB6FFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => loss_count_temp_reg(2),
      I2 => loss_count_temp_reg(1),
      I3 => \D1_SEG[1]\(0),
      I4 => \D1_SEG[1]\(1),
      O => \D1_SEG_OBUF[3]_inst_i_2_n_0\
    );
\D1_SEG_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEEEBBA"
    )
        port map (
      I0 => \D1_SEG[1]\(1),
      I1 => win_count_temp_reg(1),
      I2 => win_count_temp_reg(0),
      I3 => win_count_temp_reg(2),
      I4 => win_count_temp_reg(3),
      O => \D1_SEG_OBUF[3]_inst_i_4_n_0\
    );
\D1_SEG_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008A94"
    )
        port map (
      I0 => tie_count_temp_reg(1),
      I1 => tie_count_temp_reg(0),
      I2 => tie_count_temp_reg(2),
      I3 => tie_count_temp_reg(3),
      I4 => \D1_SEG[1]\(1),
      O => \D1_SEG_OBUF[3]_inst_i_5_n_0\
    );
\D1_SEG_OBUF[3]_inst_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDFFDDF"
    )
        port map (
      I0 => \D1_SEG[1]\(1),
      I1 => \D1_SEG[1]\(0),
      I2 => loss_count_temp_reg(3),
      I3 => loss_count_temp_reg(1),
      I4 => loss_count_temp_reg(2),
      O => \D1_SEG_OBUF[3]_inst_i_6_n_0\
    );
\D1_SEG_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEFEFEFEFEFE"
    )
        port map (
      I0 => \D1_SEG_OBUF[4]_inst_i_2_n_0\,
      I1 => \D1_SEG[4]\,
      I2 => \D1_SEG[0]\,
      I3 => loss_count_temp_reg(1),
      I4 => loss_count_temp_reg(2),
      I5 => loss_count_temp_reg(3),
      O => D1_SEG_OBUF(3)
    );
\D1_SEG_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAEAA"
    )
        port map (
      I0 => \D1_SEG_OBUF[4]_inst_i_5_n_0\,
      I1 => loss_count_temp_reg(2),
      I2 => loss_count_temp_reg(1),
      I3 => \D1_SEG[1]\(1),
      I4 => \^q\(0),
      I5 => \D1_SEG[1]\(0),
      O => \D1_SEG_OBUF[4]_inst_i_2_n_0\
    );
\D1_SEG_OBUF[4]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000086AE"
    )
        port map (
      I0 => win_count_temp_reg(0),
      I1 => win_count_temp_reg(2),
      I2 => win_count_temp_reg(1),
      I3 => win_count_temp_reg(3),
      I4 => \D1_SEG[1]\(1),
      I5 => \D1_SEG[1]\(0),
      O => \D1_SEG_OBUF[4]_inst_i_5_n_0\
    );
\D1_SEG_OBUF[4]_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D730"
    )
        port map (
      I0 => tie_count_temp_reg(3),
      I1 => tie_count_temp_reg(1),
      I2 => tie_count_temp_reg(2),
      I3 => tie_count_temp_reg(0),
      O => \seg_out__27\(3)
    );
\D1_SEG_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B110FFFFB1100000"
    )
        port map (
      I0 => loss_count_temp_reg(2),
      I1 => loss_count_temp_reg(3),
      I2 => loss_count_temp_reg(1),
      I3 => \^q\(0),
      I4 => \D1_SEG[1]\(1),
      I5 => \U13/seg_out__27\(5),
      O => \loss_count_temp_reg[2]_0\
    );
\D1_SEG_OBUF[5]_inst_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D110"
    )
        port map (
      I0 => win_count_temp_reg(3),
      I1 => win_count_temp_reg(2),
      I2 => win_count_temp_reg(1),
      I3 => win_count_temp_reg(0),
      O => \U13/seg_out__27\(5)
    );
\D1_SEG_OBUF[5]_inst_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D110"
    )
        port map (
      I0 => tie_count_temp_reg(3),
      I1 => tie_count_temp_reg(2),
      I2 => tie_count_temp_reg(1),
      I3 => tie_count_temp_reg(0),
      O => \seg_out__27\(4)
    );
\D1_SEG_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \D1_SEG_OBUF[6]_inst_i_2_n_0\,
      I1 => \D1_SEG_OBUF[6]_inst_i_3_n_0\,
      I2 => \D1_SEG[6]\,
      O => D1_SEG_OBUF(4)
    );
\D1_SEG_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAABAA"
    )
        port map (
      I0 => \D1_SEG_OBUF[6]_inst_i_5_n_0\,
      I1 => loss_count_temp_reg(3),
      I2 => loss_count_temp_reg(1),
      I3 => \D1_SEG[1]\(1),
      I4 => \D1_SEG[1]\(0),
      I5 => loss_count_temp_reg(2),
      O => \D1_SEG_OBUF[6]_inst_i_2_n_0\
    );
\D1_SEG_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220200000002000"
    )
        port map (
      I0 => \D1_SEG[1]\(1),
      I1 => \D1_SEG[1]\(0),
      I2 => loss_count_temp_reg(3),
      I3 => loss_count_temp_reg(1),
      I4 => \^q\(0),
      I5 => loss_count_temp_reg(2),
      O => \D1_SEG_OBUF[6]_inst_i_3_n_0\
    );
\D1_SEG_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CA91"
    )
        port map (
      I0 => win_count_temp_reg(1),
      I1 => win_count_temp_reg(2),
      I2 => win_count_temp_reg(0),
      I3 => win_count_temp_reg(3),
      I4 => \D1_SEG[1]\(1),
      I5 => \D1_SEG[1]\(0),
      O => \D1_SEG_OBUF[6]_inst_i_5_n_0\
    );
\D1_SEG_OBUF[6]_inst_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E285"
    )
        port map (
      I0 => tie_count_temp_reg(3),
      I1 => tie_count_temp_reg(0),
      I2 => tie_count_temp_reg(2),
      I3 => tie_count_temp_reg(1),
      O => \seg_out__27\(5)
    );
led0_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => led0_reg_0,
      CLR => AR(0),
      D => led0,
      Q => led_OBUF(0)
    );
led1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => led0_reg_0,
      CLR => AR(0),
      D => led1,
      Q => led_OBUF(1)
    );
\loss_count_temp[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \plusOp__2\(0)
    );
\loss_count_temp[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => loss_count_temp_reg(1),
      O => \plusOp__2\(1)
    );
\loss_count_temp[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => loss_count_temp_reg(1),
      I2 => loss_count_temp_reg(2),
      O => \plusOp__2\(2)
    );
\loss_count_temp[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => loss_count_temp_reg(1),
      I1 => \^q\(0),
      I2 => loss_count_temp_reg(2),
      I3 => loss_count_temp_reg(3),
      O => \plusOp__2\(3)
    );
\loss_count_temp_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => \loss_count_temp_reg[3]_0\(0),
      CLR => AR(0),
      D => \plusOp__2\(0),
      Q => \^q\(0)
    );
\loss_count_temp_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => \loss_count_temp_reg[3]_0\(0),
      CLR => AR(0),
      D => \plusOp__2\(1),
      Q => loss_count_temp_reg(1)
    );
\loss_count_temp_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => \loss_count_temp_reg[3]_0\(0),
      CLR => AR(0),
      D => \plusOp__2\(2),
      Q => loss_count_temp_reg(2)
    );
\loss_count_temp_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => \loss_count_temp_reg[3]_0\(0),
      CLR => AR(0),
      D => \plusOp__2\(3),
      Q => loss_count_temp_reg(3)
    );
\tie_count_temp[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tie_count_temp_reg(0),
      O => \tie_count_temp[0]_i_1_n_0\
    );
\tie_count_temp[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tie_count_temp_reg(0),
      I1 => tie_count_temp_reg(1),
      O => \tie_count_temp[1]_i_1_n_0\
    );
\tie_count_temp[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => tie_count_temp_reg(0),
      I1 => tie_count_temp_reg(1),
      I2 => tie_count_temp_reg(2),
      O => \plusOp__1\(2)
    );
\tie_count_temp[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => tie_count_temp_reg(1),
      I1 => tie_count_temp_reg(0),
      I2 => tie_count_temp_reg(2),
      I3 => tie_count_temp_reg(3),
      O => \plusOp__1\(3)
    );
\tie_count_temp_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => \tie_count_temp_reg[3]_0\(0),
      CLR => AR(0),
      D => \tie_count_temp[0]_i_1_n_0\,
      Q => tie_count_temp_reg(0)
    );
\tie_count_temp_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => \tie_count_temp_reg[3]_0\(0),
      CLR => AR(0),
      D => \tie_count_temp[1]_i_1_n_0\,
      Q => tie_count_temp_reg(1)
    );
\tie_count_temp_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => \tie_count_temp_reg[3]_0\(0),
      CLR => AR(0),
      D => \plusOp__1\(2),
      Q => tie_count_temp_reg(2)
    );
\tie_count_temp_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => \tie_count_temp_reg[3]_0\(0),
      CLR => AR(0),
      D => \plusOp__1\(3),
      Q => tie_count_temp_reg(3)
    );
\win_count_temp[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => win_count_temp_reg(0),
      O => \win_count_temp[0]_i_1_n_0\
    );
\win_count_temp[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => win_count_temp_reg(0),
      I1 => win_count_temp_reg(1),
      O => \win_count_temp[1]_i_1_n_0\
    );
\win_count_temp[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => win_count_temp_reg(0),
      I1 => win_count_temp_reg(1),
      I2 => win_count_temp_reg(2),
      O => \plusOp__0\(2)
    );
\win_count_temp[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => win_count_temp_reg(1),
      I1 => win_count_temp_reg(0),
      I2 => win_count_temp_reg(2),
      I3 => win_count_temp_reg(3),
      O => \plusOp__0\(3)
    );
\win_count_temp_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \win_count_temp[0]_i_1_n_0\,
      Q => win_count_temp_reg(0)
    );
\win_count_temp_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \win_count_temp[1]_i_1_n_0\,
      Q => win_count_temp_reg(1)
    );
\win_count_temp_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(2),
      Q => win_count_temp_reg(2)
    );
\win_count_temp_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_100Mhz_IBUF_BUFG,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(3),
      Q => win_count_temp_reg(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Lab1_Top_Level is
  port (
    sw : in STD_LOGIC_VECTOR ( 4 downto 0 );
    clk_100Mhz : in STD_LOGIC;
    reset_main : in STD_LOGIC;
    D0_SEG : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D1_SEG : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D0_AN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D1_AN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Lab1_Top_Level : entity is true;
end Lab1_Top_Level;

architecture STRUCTURE of Lab1_Top_Level is
  signal D0_SEG_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal D1_AN_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal D1_SEG_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal U11_n_1 : STD_LOGIC;
  signal U11_n_10 : STD_LOGIC;
  signal U11_n_11 : STD_LOGIC;
  signal U11_n_12 : STD_LOGIC;
  signal U11_n_13 : STD_LOGIC;
  signal U11_n_14 : STD_LOGIC;
  signal U11_n_9 : STD_LOGIC;
  signal U12_n_14 : STD_LOGIC;
  signal U12_n_15 : STD_LOGIC;
  signal U12_n_16 : STD_LOGIC;
  signal \U14/seg_out__27\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal U4_n_10 : STD_LOGIC;
  signal U4_n_4 : STD_LOGIC;
  signal U4_n_9 : STD_LOGIC;
  signal U5_n_1 : STD_LOGIC;
  signal U5_n_10 : STD_LOGIC;
  signal U5_n_11 : STD_LOGIC;
  signal U5_n_12 : STD_LOGIC;
  signal U5_n_13 : STD_LOGIC;
  signal U5_n_2 : STD_LOGIC;
  signal clk : STD_LOGIC;
  signal clk_100Mhz_IBUF : STD_LOGIC;
  signal clk_100Mhz_IBUF_BUFG : STD_LOGIC;
  signal clk_temp : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal led0 : STD_LOGIC;
  signal led1 : STD_LOGIC;
  signal led_OBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal loss_count_temp : STD_LOGIC;
  signal loss_count_temp_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reset_main_IBUF : STD_LOGIC;
  signal sw_IBUF : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal switch_flag : STD_LOGIC;
  signal tie_count_temp : STD_LOGIC;
  signal user_rps : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal win_count_temp : STD_LOGIC;
begin
\D0_AN_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => D1_AN_OBUF(0),
      O => D0_AN(0)
    );
\D0_AN_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => D1_AN_OBUF(1),
      O => D0_AN(1)
    );
\D0_AN_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => D1_AN_OBUF(2),
      O => D0_AN(2)
    );
\D0_AN_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => D1_AN_OBUF(3),
      O => D0_AN(3)
    );
\D0_SEG_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => D0_SEG_OBUF(0),
      O => D0_SEG(0)
    );
\D0_SEG_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => D0_SEG_OBUF(1),
      O => D0_SEG(1)
    );
\D0_SEG_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => D0_SEG_OBUF(2),
      O => D0_SEG(2)
    );
\D0_SEG_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => D0_SEG_OBUF(3),
      O => D0_SEG(3)
    );
\D0_SEG_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => D0_SEG_OBUF(4),
      O => D0_SEG(4)
    );
\D0_SEG_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => D0_SEG_OBUF(5),
      O => D0_SEG(5)
    );
\D0_SEG_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => D0_SEG_OBUF(6),
      O => D0_SEG(6)
    );
\D0_SEG_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => D0_SEG(7)
    );
\D1_AN_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => D1_AN_OBUF(0),
      O => D1_AN(0)
    );
\D1_AN_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => D1_AN_OBUF(1),
      O => D1_AN(1)
    );
\D1_AN_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => D1_AN_OBUF(2),
      O => D1_AN(2)
    );
\D1_AN_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => D1_AN_OBUF(3),
      O => D1_AN(3)
    );
\D1_SEG_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => D1_SEG_OBUF(0),
      O => D1_SEG(0)
    );
\D1_SEG_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => D1_SEG_OBUF(1),
      O => D1_SEG(1)
    );
\D1_SEG_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => D1_SEG_OBUF(2),
      O => D1_SEG(2)
    );
\D1_SEG_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => D1_SEG_OBUF(3),
      O => D1_SEG(3)
    );
\D1_SEG_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => D1_SEG_OBUF(4),
      O => D1_SEG(4)
    );
\D1_SEG_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => D1_SEG_OBUF(5),
      O => D1_SEG(5)
    );
\D1_SEG_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => D1_SEG_OBUF(6),
      O => D1_SEG(6)
    );
\D1_SEG_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => D1_SEG(7)
    );
U11: entity work.main_rps
     port map (
      \D1_SEG_OBUF[1]_inst_i_1\ => U12_n_16,
      E(0) => win_count_temp,
      Q(1 downto 0) => count(1 downto 0),
      clk_100Mhz_IBUF_BUFG => clk_100Mhz_IBUF_BUFG,
      \count_reg[0]\ => U11_n_10,
      \count_reg[0]_0\ => U11_n_13,
      \count_reg[1]\ => U11_n_14,
      led0 => led0,
      led0_reg => U5_n_2,
      led0_reg_0 => U5_n_12,
      led0_reg_1 => U5_n_1,
      led1 => led1,
      \loss_count_temp_reg[3]\ => U5_n_13,
      \loss_count_temp_reg[3]_0\ => U5_n_11,
      reset_main_IBUF => reset_main_IBUF,
      \seg_out__27\(4 downto 2) => \U14/seg_out__27\(6 downto 4),
      \seg_out__27\(1 downto 0) => \U14/seg_out__27\(2 downto 1),
      sw_IBUF(4 downto 0) => sw_IBUF(4 downto 0),
      switch_flag => switch_flag,
      user_rps(2 downto 0) => user_rps(2 downto 0),
      \user_rps_reg[0]_0\ => U11_n_12,
      \user_rps_reg[1]_0\ => U11_n_1,
      \user_rps_reg[2]_0\(0) => loss_count_temp,
      \user_rps_reg[2]_1\ => U11_n_9,
      \user_rps_reg[2]_2\ => U11_n_11,
      \win_count_temp_reg[3]\ => U5_n_10
    );
U12: entity work.rps_rules
     port map (
      AR(0) => reset_main_IBUF,
      \D1_SEG[0]\ => U4_n_10,
      \D1_SEG[0]_0\ => U4_n_9,
      \D1_SEG[1]\(1 downto 0) => count(1 downto 0),
      \D1_SEG[1]_0\ => U11_n_11,
      \D1_SEG[3]\ => U11_n_14,
      \D1_SEG[4]\ => U11_n_13,
      \D1_SEG[6]\ => U11_n_10,
      D1_SEG_OBUF(4) => D1_SEG_OBUF(6),
      D1_SEG_OBUF(3 downto 2) => D1_SEG_OBUF(4 downto 3),
      D1_SEG_OBUF(1 downto 0) => D1_SEG_OBUF(1 downto 0),
      \D1_SEG_OBUF[0]_inst_i_1_0\ => U4_n_4,
      E(0) => win_count_temp,
      Q(0) => loss_count_temp_reg(0),
      clk_100Mhz_IBUF_BUFG => clk_100Mhz_IBUF_BUFG,
      \count_reg[1]\ => U12_n_16,
      led0 => led0,
      led0_reg_0 => U11_n_1,
      led1 => led1,
      led_OBUF(1 downto 0) => led_OBUF(1 downto 0),
      \loss_count_temp_reg[2]_0\ => U12_n_14,
      \loss_count_temp_reg[2]_1\ => U12_n_15,
      \loss_count_temp_reg[3]_0\(0) => loss_count_temp,
      \seg_out__27\(5 downto 3) => \U14/seg_out__27\(6 downto 4),
      \seg_out__27\(2 downto 0) => \U14/seg_out__27\(2 downto 0),
      \tie_count_temp_reg[3]_0\(0) => tie_count_temp
    );
U2: entity work.Clock_Divider_1Khz
     port map (
      AR(0) => reset_main_IBUF,
      CLK => clk_temp,
      clk_100Mhz_IBUF_BUFG => clk_100Mhz_IBUF_BUFG
    );
U3: entity work.Clock_Divider_10Hz
     port map (
      AR(0) => reset_main_IBUF,
      CLK => clk,
      clk_100Mhz_IBUF_BUFG => clk_100Mhz_IBUF_BUFG
    );
U4: entity work.Counter_Two_Bit
     port map (
      AR(0) => reset_main_IBUF,
      CLK => clk_temp,
      D1_AN_OBUF(3 downto 0) => D1_AN_OBUF(3 downto 0),
      \D1_SEG[2]\ => U12_n_15,
      \D1_SEG[2]_0\ => U11_n_12,
      \D1_SEG[5]\ => U12_n_14,
      \D1_SEG[5]_0\ => U11_n_9,
      D1_SEG_OBUF(1) => D1_SEG_OBUF(5),
      D1_SEG_OBUF(0) => D1_SEG_OBUF(2),
      \D1_SEG_OBUF[4]_inst_i_1\(0) => loss_count_temp_reg(0),
      Q(1 downto 0) => count(1 downto 0),
      \count_reg[0]_0\ => U4_n_4,
      \count_reg[0]_1\ => U4_n_9,
      \count_reg[0]_2\ => U4_n_10,
      \seg_out__27\(0) => \U14/seg_out__27\(0),
      user_rps(1) => user_rps(2),
      user_rps(0) => user_rps(0)
    );
U5: entity work.computer_rps
     port map (
      AR(0) => reset_main_IBUF,
      CLK => clk,
      D0_SEG_OBUF(6 downto 0) => D0_SEG_OBUF(6 downto 0),
      Q(1 downto 0) => count(1 downto 0),
      \rps_temp_reg[1]_0\ => U5_n_11,
      \rps_temp_reg[1]_1\ => U5_n_12,
      \rps_temp_reg[2]_0\ => U5_n_1,
      \rps_temp_reg[2]_1\ => U5_n_2,
      \rps_temp_reg[2]_2\ => U5_n_10,
      \rps_temp_reg[2]_3\ => U5_n_13,
      sw_IBUF(4 downto 0) => sw_IBUF(4 downto 0),
      switch_flag => switch_flag,
      user_rps(2 downto 0) => user_rps(2 downto 0),
      \user_rps_reg[1]\(0) => tie_count_temp
    );
clk_100Mhz_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_100Mhz_IBUF,
      O => clk_100Mhz_IBUF_BUFG
    );
clk_100Mhz_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk_100Mhz,
      O => clk_100Mhz_IBUF
    );
\led_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(0),
      O => led(0)
    );
\led_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(1),
      O => led(1)
    );
reset_main_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset_main,
      O => reset_main_IBUF
    );
\sw_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => sw(0),
      O => sw_IBUF(0)
    );
\sw_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => sw(1),
      O => sw_IBUF(1)
    );
\sw_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => sw(2),
      O => sw_IBUF(2)
    );
\sw_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => sw(3),
      O => sw_IBUF(3)
    );
\sw_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => sw(4),
      O => sw_IBUF(4)
    );
end STRUCTURE;

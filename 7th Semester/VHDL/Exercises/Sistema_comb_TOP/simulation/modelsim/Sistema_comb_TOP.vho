-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/28/2017 21:21:11"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Sistema_comb_TOP IS
    PORT (
	i_EN : IN std_logic;
	i_CLK : IN std_logic;
	i_DATA : IN std_logic_vector(7 DOWNTO 0);
	o_DATA : OUT std_logic_vector(7 DOWNTO 0);
	i_SELABC1 : IN std_logic_vector(2 DOWNTO 0);
	i_SELABC2 : IN std_logic_vector(2 DOWNTO 0);
	i_SELABC3 : IN std_logic_vector(2 DOWNTO 0);
	o_DATA_00 : OUT std_logic_vector(7 DOWNTO 0);
	o_DATA_01 : OUT std_logic_vector(7 DOWNTO 0);
	o_DATA_02 : OUT std_logic_vector(7 DOWNTO 0);
	o_A : OUT std_logic_vector(7 DOWNTO 0);
	o_B : OUT std_logic_vector(7 DOWNTO 0);
	o_C : OUT std_logic_vector(7 DOWNTO 0)
	);
END Sistema_comb_TOP;

-- Design Ports Information
-- i_DATA[0]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[1]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[2]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[3]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[4]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[5]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[6]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[7]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[1]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[2]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[3]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[5]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[6]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[7]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_00[0]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_00[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_00[2]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_00[3]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_00[4]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_00[5]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_00[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_00[7]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_01[0]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_01[1]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_01[2]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_01[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_01[4]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_01[5]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_01[6]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_01[7]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_02[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_02[1]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_02[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_02[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_02[4]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_02[5]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_02[6]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_02[7]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_A[0]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_A[1]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_A[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_A[3]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_A[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_A[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_A[6]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_A[7]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_B[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_B[1]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_B[2]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_B[3]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_B[4]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_B[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_B[6]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_B[7]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_C[0]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_C[1]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_C[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_C[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_C[4]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_C[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_C[6]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_C[7]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_EN	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SELABC1[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SELABC1[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SELABC1[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SELABC2[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SELABC2[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SELABC2[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SELABC3[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SELABC3[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SELABC3[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Sistema_comb_TOP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_EN : std_logic;
SIGNAL ww_i_CLK : std_logic;
SIGNAL ww_i_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_SELABC1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_i_SELABC2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_i_SELABC3 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_o_DATA_00 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_DATA_01 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_DATA_02 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_C : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|Mux10~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|Mux4~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|Mux15~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_DATA[0]~input_o\ : std_logic;
SIGNAL \i_DATA[1]~input_o\ : std_logic;
SIGNAL \i_DATA[2]~input_o\ : std_logic;
SIGNAL \i_DATA[3]~input_o\ : std_logic;
SIGNAL \i_DATA[4]~input_o\ : std_logic;
SIGNAL \i_DATA[5]~input_o\ : std_logic;
SIGNAL \i_DATA[6]~input_o\ : std_logic;
SIGNAL \i_DATA[7]~input_o\ : std_logic;
SIGNAL \o_DATA[0]~output_o\ : std_logic;
SIGNAL \o_DATA[1]~output_o\ : std_logic;
SIGNAL \o_DATA[2]~output_o\ : std_logic;
SIGNAL \o_DATA[3]~output_o\ : std_logic;
SIGNAL \o_DATA[4]~output_o\ : std_logic;
SIGNAL \o_DATA[5]~output_o\ : std_logic;
SIGNAL \o_DATA[6]~output_o\ : std_logic;
SIGNAL \o_DATA[7]~output_o\ : std_logic;
SIGNAL \o_DATA_00[0]~output_o\ : std_logic;
SIGNAL \o_DATA_00[1]~output_o\ : std_logic;
SIGNAL \o_DATA_00[2]~output_o\ : std_logic;
SIGNAL \o_DATA_00[3]~output_o\ : std_logic;
SIGNAL \o_DATA_00[4]~output_o\ : std_logic;
SIGNAL \o_DATA_00[5]~output_o\ : std_logic;
SIGNAL \o_DATA_00[6]~output_o\ : std_logic;
SIGNAL \o_DATA_00[7]~output_o\ : std_logic;
SIGNAL \o_DATA_01[0]~output_o\ : std_logic;
SIGNAL \o_DATA_01[1]~output_o\ : std_logic;
SIGNAL \o_DATA_01[2]~output_o\ : std_logic;
SIGNAL \o_DATA_01[3]~output_o\ : std_logic;
SIGNAL \o_DATA_01[4]~output_o\ : std_logic;
SIGNAL \o_DATA_01[5]~output_o\ : std_logic;
SIGNAL \o_DATA_01[6]~output_o\ : std_logic;
SIGNAL \o_DATA_01[7]~output_o\ : std_logic;
SIGNAL \o_DATA_02[0]~output_o\ : std_logic;
SIGNAL \o_DATA_02[1]~output_o\ : std_logic;
SIGNAL \o_DATA_02[2]~output_o\ : std_logic;
SIGNAL \o_DATA_02[3]~output_o\ : std_logic;
SIGNAL \o_DATA_02[4]~output_o\ : std_logic;
SIGNAL \o_DATA_02[5]~output_o\ : std_logic;
SIGNAL \o_DATA_02[6]~output_o\ : std_logic;
SIGNAL \o_DATA_02[7]~output_o\ : std_logic;
SIGNAL \o_A[0]~output_o\ : std_logic;
SIGNAL \o_A[1]~output_o\ : std_logic;
SIGNAL \o_A[2]~output_o\ : std_logic;
SIGNAL \o_A[3]~output_o\ : std_logic;
SIGNAL \o_A[4]~output_o\ : std_logic;
SIGNAL \o_A[5]~output_o\ : std_logic;
SIGNAL \o_A[6]~output_o\ : std_logic;
SIGNAL \o_A[7]~output_o\ : std_logic;
SIGNAL \o_B[0]~output_o\ : std_logic;
SIGNAL \o_B[1]~output_o\ : std_logic;
SIGNAL \o_B[2]~output_o\ : std_logic;
SIGNAL \o_B[3]~output_o\ : std_logic;
SIGNAL \o_B[4]~output_o\ : std_logic;
SIGNAL \o_B[5]~output_o\ : std_logic;
SIGNAL \o_B[6]~output_o\ : std_logic;
SIGNAL \o_B[7]~output_o\ : std_logic;
SIGNAL \o_C[0]~output_o\ : std_logic;
SIGNAL \o_C[1]~output_o\ : std_logic;
SIGNAL \o_C[2]~output_o\ : std_logic;
SIGNAL \o_C[3]~output_o\ : std_logic;
SIGNAL \o_C[4]~output_o\ : std_logic;
SIGNAL \o_C[5]~output_o\ : std_logic;
SIGNAL \o_C[6]~output_o\ : std_logic;
SIGNAL \o_C[7]~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_SELABC1[0]~input_o\ : std_logic;
SIGNAL \i_SELABC1[1]~input_o\ : std_logic;
SIGNAL \i_SELABC1[2]~input_o\ : std_logic;
SIGNAL \U1|Mux15~0_combout\ : std_logic;
SIGNAL \U1|Mux15~0clkctrl_outclk\ : std_logic;
SIGNAL \i_EN~input_o\ : std_logic;
SIGNAL \U1|Mux14~0_combout\ : std_logic;
SIGNAL \i_SELABC2[0]~input_o\ : std_logic;
SIGNAL \i_SELABC2[1]~input_o\ : std_logic;
SIGNAL \i_SELABC2[2]~input_o\ : std_logic;
SIGNAL \U1|Mux10~0_combout\ : std_logic;
SIGNAL \U1|Mux10~0clkctrl_outclk\ : std_logic;
SIGNAL \U1|Mux7~0_combout\ : std_logic;
SIGNAL \i_SELABC3[0]~input_o\ : std_logic;
SIGNAL \i_SELABC3[1]~input_o\ : std_logic;
SIGNAL \i_SELABC3[2]~input_o\ : std_logic;
SIGNAL \U1|Mux4~0_combout\ : std_logic;
SIGNAL \U1|Mux4~0clkctrl_outclk\ : std_logic;
SIGNAL \U1|Mux1~0_combout\ : std_logic;
SIGNAL \U1|Mux2~0_combout\ : std_logic;
SIGNAL \U3|o_DATA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U4|o_DATA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|o_DATA_02\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|o_DATA_01\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U1|o_DATA_00\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U2|o_DATA\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_i_EN <= i_EN;
ww_i_CLK <= i_CLK;
ww_i_DATA <= i_DATA;
o_DATA <= ww_o_DATA;
ww_i_SELABC1 <= i_SELABC1;
ww_i_SELABC2 <= i_SELABC2;
ww_i_SELABC3 <= i_SELABC3;
o_DATA_00 <= ww_o_DATA_00;
o_DATA_01 <= ww_o_DATA_01;
o_DATA_02 <= ww_o_DATA_02;
o_A <= ww_o_A;
o_B <= ww_o_B;
o_C <= ww_o_C;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);

\U1|Mux10~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|Mux10~0_combout\);

\U1|Mux4~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|Mux4~0_combout\);

\U1|Mux15~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U1|Mux15~0_combout\);

-- Location: IOOBUF_X23_Y0_N9
\o_DATA[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA[0]~output_o\);

-- Location: IOOBUF_X41_Y0_N23
\o_DATA[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA[1]~output_o\);

-- Location: IOOBUF_X50_Y41_N9
\o_DATA[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA[2]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\o_DATA[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA[3]~output_o\);

-- Location: IOOBUF_X38_Y41_N9
\o_DATA[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA[4]~output_o\);

-- Location: IOOBUF_X10_Y0_N2
\o_DATA[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\o_DATA[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA[6]~output_o\);

-- Location: IOOBUF_X43_Y0_N9
\o_DATA[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\o_DATA_00[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA_00[0]~output_o\);

-- Location: IOOBUF_X52_Y9_N2
\o_DATA_00[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA_00[1]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\o_DATA_00[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA_00[2]~output_o\);

-- Location: IOOBUF_X46_Y41_N16
\o_DATA_00[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA_00[3]~output_o\);

-- Location: IOOBUF_X52_Y13_N2
\o_DATA_00[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA_00[4]~output_o\);

-- Location: IOOBUF_X43_Y41_N9
\o_DATA_00[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA_00[5]~output_o\);

-- Location: IOOBUF_X41_Y41_N9
\o_DATA_00[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA_00[6]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\o_DATA_00[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA_00[7]~output_o\);

-- Location: IOOBUF_X52_Y16_N9
\o_DATA_01[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA_01[0]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\o_DATA_01[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA_01[1]~output_o\);

-- Location: IOOBUF_X52_Y11_N2
\o_DATA_01[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA_01[2]~output_o\);

-- Location: IOOBUF_X14_Y41_N9
\o_DATA_01[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA_01[3]~output_o\);

-- Location: IOOBUF_X52_Y19_N9
\o_DATA_01[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA_01[4]~output_o\);

-- Location: IOOBUF_X52_Y11_N9
\o_DATA_01[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA_01[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\o_DATA_01[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA_01[6]~output_o\);

-- Location: IOOBUF_X52_Y18_N2
\o_DATA_01[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA_01[7]~output_o\);

-- Location: IOOBUF_X5_Y41_N2
\o_DATA_02[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA_02[0]~output_o\);

-- Location: IOOBUF_X50_Y41_N2
\o_DATA_02[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA_02[1]~output_o\);

-- Location: IOOBUF_X52_Y31_N2
\o_DATA_02[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA_02[2]~output_o\);

-- Location: IOOBUF_X46_Y0_N16
\o_DATA_02[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA_02[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\o_DATA_02[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA_02[4]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\o_DATA_02[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA_02[5]~output_o\);

-- Location: IOOBUF_X46_Y41_N9
\o_DATA_02[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA_02[6]~output_o\);

-- Location: IOOBUF_X12_Y41_N2
\o_DATA_02[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_DATA_02[7]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\o_A[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_A[0]~output_o\);

-- Location: IOOBUF_X10_Y41_N2
\o_A[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_A[1]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
\o_A[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_A[2]~output_o\);

-- Location: IOOBUF_X46_Y41_N23
\o_A[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_A[3]~output_o\);

-- Location: IOOBUF_X31_Y41_N16
\o_A[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|o_DATA\(4),
	devoe => ww_devoe,
	o => \o_A[4]~output_o\);

-- Location: IOOBUF_X21_Y41_N9
\o_A[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|o_DATA\(5),
	devoe => ww_devoe,
	o => \o_A[5]~output_o\);

-- Location: IOOBUF_X29_Y41_N2
\o_A[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|o_DATA\(6),
	devoe => ww_devoe,
	o => \o_A[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\o_A[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_A[7]~output_o\);

-- Location: IOOBUF_X31_Y41_N9
\o_B[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|o_DATA\(0),
	devoe => ww_devoe,
	o => \o_B[0]~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\o_B[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|o_DATA\(1),
	devoe => ww_devoe,
	o => \o_B[1]~output_o\);

-- Location: IOOBUF_X21_Y41_N2
\o_B[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|o_DATA\(2),
	devoe => ww_devoe,
	o => \o_B[2]~output_o\);

-- Location: IOOBUF_X52_Y16_N2
\o_B[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_B[3]~output_o\);

-- Location: IOOBUF_X10_Y41_N9
\o_B[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_B[4]~output_o\);

-- Location: IOOBUF_X12_Y41_N9
\o_B[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_B[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\o_B[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_B[6]~output_o\);

-- Location: IOOBUF_X34_Y0_N9
\o_B[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_B[7]~output_o\);

-- Location: IOOBUF_X50_Y0_N2
\o_C[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_C[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\o_C[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_C[1]~output_o\);

-- Location: IOOBUF_X41_Y41_N23
\o_C[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_C[2]~output_o\);

-- Location: IOOBUF_X7_Y41_N9
\o_C[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_C[3]~output_o\);

-- Location: IOOBUF_X31_Y41_N2
\o_C[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|o_DATA\(4),
	devoe => ww_devoe,
	o => \o_C[4]~output_o\);

-- Location: IOOBUF_X31_Y41_N23
\o_C[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|o_DATA\(5),
	devoe => ww_devoe,
	o => \o_C[5]~output_o\);

-- Location: IOOBUF_X23_Y41_N9
\o_C[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|o_DATA\(6),
	devoe => ww_devoe,
	o => \o_C[6]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\o_C[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \o_C[7]~output_o\);

-- Location: IOIBUF_X27_Y0_N15
\i_CLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLK,
	o => \i_CLK~input_o\);

-- Location: CLKCTRL_G17
\i_CLK~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X25_Y41_N8
\i_SELABC1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SELABC1(0),
	o => \i_SELABC1[0]~input_o\);

-- Location: IOIBUF_X34_Y41_N1
\i_SELABC1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SELABC1(1),
	o => \i_SELABC1[1]~input_o\);

-- Location: IOIBUF_X18_Y41_N1
\i_SELABC1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SELABC1(2),
	o => \i_SELABC1[2]~input_o\);

-- Location: LCCOMB_X26_Y40_N20
\U1|Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|Mux15~0_combout\ = ((!\i_SELABC1[1]~input_o\ & !\i_SELABC1[0]~input_o\)) # (!\i_SELABC1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_SELABC1[1]~input_o\,
	datac => \i_SELABC1[2]~input_o\,
	datad => \i_SELABC1[0]~input_o\,
	combout => \U1|Mux15~0_combout\);

-- Location: CLKCTRL_G11
\U1|Mux15~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|Mux15~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|Mux15~0clkctrl_outclk\);

-- Location: LCCOMB_X26_Y40_N14
\U1|o_DATA_00[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|o_DATA_00\(4) = (GLOBAL(\U1|Mux15~0clkctrl_outclk\) & ((\i_SELABC1[0]~input_o\))) # (!GLOBAL(\U1|Mux15~0clkctrl_outclk\) & (\U1|o_DATA_00\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|o_DATA_00\(4),
	datac => \i_SELABC1[0]~input_o\,
	datad => \U1|Mux15~0clkctrl_outclk\,
	combout => \U1|o_DATA_00\(4));

-- Location: IOIBUF_X34_Y41_N8
\i_EN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_EN,
	o => \i_EN~input_o\);

-- Location: FF_X26_Y40_N15
\U2|o_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|o_DATA_00\(4),
	ena => \i_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|o_DATA\(4));

-- Location: LCCOMB_X26_Y40_N8
\U1|o_DATA_00[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|o_DATA_00\(5) = (GLOBAL(\U1|Mux15~0clkctrl_outclk\) & (!\i_SELABC1[1]~input_o\)) # (!GLOBAL(\U1|Mux15~0clkctrl_outclk\) & ((\U1|o_DATA_00\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_SELABC1[1]~input_o\,
	datac => \U1|o_DATA_00\(5),
	datad => \U1|Mux15~0clkctrl_outclk\,
	combout => \U1|o_DATA_00\(5));

-- Location: FF_X26_Y40_N9
\U2|o_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|o_DATA_00\(5),
	ena => \i_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|o_DATA\(5));

-- Location: LCCOMB_X26_Y40_N6
\U1|Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|Mux14~0_combout\ = (\i_SELABC1[1]~input_o\) # (\i_SELABC1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_SELABC1[1]~input_o\,
	datac => \i_SELABC1[2]~input_o\,
	combout => \U1|Mux14~0_combout\);

-- Location: LCCOMB_X26_Y40_N28
\U1|o_DATA_00[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|o_DATA_00\(6) = (GLOBAL(\U1|Mux15~0clkctrl_outclk\) & (\U1|Mux14~0_combout\)) # (!GLOBAL(\U1|Mux15~0clkctrl_outclk\) & ((\U1|o_DATA_00\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux14~0_combout\,
	datab => \U1|o_DATA_00\(6),
	datad => \U1|Mux15~0clkctrl_outclk\,
	combout => \U1|o_DATA_00\(6));

-- Location: FF_X26_Y40_N29
\U2|o_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|o_DATA_00\(6),
	ena => \i_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|o_DATA\(6));

-- Location: IOIBUF_X25_Y41_N1
\i_SELABC2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SELABC2(0),
	o => \i_SELABC2[0]~input_o\);

-- Location: IOIBUF_X23_Y41_N1
\i_SELABC2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SELABC2(1),
	o => \i_SELABC2[1]~input_o\);

-- Location: IOIBUF_X18_Y41_N8
\i_SELABC2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SELABC2(2),
	o => \i_SELABC2[2]~input_o\);

-- Location: LCCOMB_X26_Y40_N30
\U1|Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|Mux10~0_combout\ = ((!\i_SELABC2[1]~input_o\ & !\i_SELABC2[0]~input_o\)) # (!\i_SELABC2[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SELABC2[1]~input_o\,
	datac => \i_SELABC2[2]~input_o\,
	datad => \i_SELABC2[0]~input_o\,
	combout => \U1|Mux10~0_combout\);

-- Location: CLKCTRL_G10
\U1|Mux10~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|Mux10~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|Mux10~0clkctrl_outclk\);

-- Location: LCCOMB_X26_Y40_N24
\U1|o_DATA_01[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|o_DATA_01\(0) = (GLOBAL(\U1|Mux10~0clkctrl_outclk\) & ((\i_SELABC2[0]~input_o\))) # (!GLOBAL(\U1|Mux10~0clkctrl_outclk\) & (\U1|o_DATA_01\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|o_DATA_01\(0),
	datac => \i_SELABC2[0]~input_o\,
	datad => \U1|Mux10~0clkctrl_outclk\,
	combout => \U1|o_DATA_01\(0));

-- Location: FF_X26_Y40_N25
\U3|o_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|o_DATA_01\(0),
	ena => \i_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|o_DATA\(0));

-- Location: LCCOMB_X26_Y40_N26
\U1|o_DATA_01[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|o_DATA_01\(1) = (GLOBAL(\U1|Mux10~0clkctrl_outclk\) & (!\i_SELABC2[1]~input_o\)) # (!GLOBAL(\U1|Mux10~0clkctrl_outclk\) & ((\U1|o_DATA_01\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SELABC2[1]~input_o\,
	datac => \U1|o_DATA_01\(1),
	datad => \U1|Mux10~0clkctrl_outclk\,
	combout => \U1|o_DATA_01\(1));

-- Location: FF_X26_Y40_N27
\U3|o_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|o_DATA_01\(1),
	ena => \i_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|o_DATA\(1));

-- Location: LCCOMB_X26_Y40_N16
\U1|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|Mux7~0_combout\ = (\i_SELABC2[1]~input_o\) # (\i_SELABC2[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SELABC2[1]~input_o\,
	datac => \i_SELABC2[2]~input_o\,
	combout => \U1|Mux7~0_combout\);

-- Location: LCCOMB_X26_Y40_N22
\U1|o_DATA_01[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|o_DATA_01\(2) = (GLOBAL(\U1|Mux10~0clkctrl_outclk\) & (\U1|Mux7~0_combout\)) # (!GLOBAL(\U1|Mux10~0clkctrl_outclk\) & ((\U1|o_DATA_01\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux7~0_combout\,
	datac => \U1|o_DATA_01\(2),
	datad => \U1|Mux10~0clkctrl_outclk\,
	combout => \U1|o_DATA_01\(2));

-- Location: FF_X26_Y40_N23
\U3|o_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|o_DATA_01\(2),
	ena => \i_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|o_DATA\(2));

-- Location: IOIBUF_X29_Y41_N8
\i_SELABC3[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SELABC3(0),
	o => \i_SELABC3[0]~input_o\);

-- Location: IOIBUF_X36_Y41_N1
\i_SELABC3[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SELABC3(1),
	o => \i_SELABC3[1]~input_o\);

-- Location: IOIBUF_X36_Y41_N8
\i_SELABC3[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SELABC3(2),
	o => \i_SELABC3[2]~input_o\);

-- Location: LCCOMB_X28_Y40_N28
\U1|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|Mux4~0_combout\ = ((!\i_SELABC3[1]~input_o\ & !\i_SELABC3[0]~input_o\)) # (!\i_SELABC3[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SELABC3[1]~input_o\,
	datac => \i_SELABC3[2]~input_o\,
	datad => \i_SELABC3[0]~input_o\,
	combout => \U1|Mux4~0_combout\);

-- Location: CLKCTRL_G14
\U1|Mux4~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U1|Mux4~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U1|Mux4~0clkctrl_outclk\);

-- Location: LCCOMB_X28_Y40_N26
\U1|o_DATA_02[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|o_DATA_02\(4) = (GLOBAL(\U1|Mux4~0clkctrl_outclk\) & (!\i_SELABC3[0]~input_o\)) # (!GLOBAL(\U1|Mux4~0clkctrl_outclk\) & ((\U1|o_DATA_02\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_SELABC3[0]~input_o\,
	datac => \U1|o_DATA_02\(4),
	datad => \U1|Mux4~0clkctrl_outclk\,
	combout => \U1|o_DATA_02\(4));

-- Location: FF_X28_Y40_N27
\U4|o_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|o_DATA_02\(4),
	ena => \i_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|o_DATA\(4));

-- Location: LCCOMB_X28_Y40_N24
\U1|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|Mux1~0_combout\ = \i_SELABC3[1]~input_o\ $ (\i_SELABC3[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SELABC3[1]~input_o\,
	datad => \i_SELABC3[0]~input_o\,
	combout => \U1|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y40_N22
\U1|o_DATA_02[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|o_DATA_02\(5) = (GLOBAL(\U1|Mux4~0clkctrl_outclk\) & (\U1|Mux1~0_combout\)) # (!GLOBAL(\U1|Mux4~0clkctrl_outclk\) & ((\U1|o_DATA_02\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Mux1~0_combout\,
	datac => \U1|o_DATA_02\(5),
	datad => \U1|Mux4~0clkctrl_outclk\,
	combout => \U1|o_DATA_02\(5));

-- Location: FF_X28_Y40_N23
\U4|o_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \U1|o_DATA_02\(5),
	ena => \i_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|o_DATA\(5));

-- Location: LCCOMB_X28_Y40_N14
\U1|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|Mux2~0_combout\ = (\i_SELABC3[2]~input_o\) # ((\i_SELABC3[1]~input_o\ & \i_SELABC3[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SELABC3[1]~input_o\,
	datab => \i_SELABC3[2]~input_o\,
	datad => \i_SELABC3[0]~input_o\,
	combout => \U1|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y40_N30
\U1|o_DATA_02[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|o_DATA_02\(6) = (GLOBAL(\U1|Mux4~0clkctrl_outclk\) & (\U1|Mux2~0_combout\)) # (!GLOBAL(\U1|Mux4~0clkctrl_outclk\) & ((\U1|o_DATA_02\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1|Mux2~0_combout\,
	datac => \U1|o_DATA_02\(6),
	datad => \U1|Mux4~0clkctrl_outclk\,
	combout => \U1|o_DATA_02\(6));

-- Location: FF_X28_Y40_N15
\U4|o_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \U1|o_DATA_02\(6),
	sload => VCC,
	ena => \i_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U4|o_DATA\(6));

-- Location: IOIBUF_X16_Y0_N8
\i_DATA[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(0),
	o => \i_DATA[0]~input_o\);

-- Location: IOIBUF_X52_Y18_N8
\i_DATA[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(1),
	o => \i_DATA[1]~input_o\);

-- Location: IOIBUF_X5_Y41_N8
\i_DATA[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(2),
	o => \i_DATA[2]~input_o\);

-- Location: IOIBUF_X38_Y41_N1
\i_DATA[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(3),
	o => \i_DATA[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\i_DATA[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(4),
	o => \i_DATA[4]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\i_DATA[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(5),
	o => \i_DATA[5]~input_o\);

-- Location: IOIBUF_X48_Y0_N8
\i_DATA[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(6),
	o => \i_DATA[6]~input_o\);

-- Location: IOIBUF_X14_Y41_N1
\i_DATA[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(7),
	o => \i_DATA[7]~input_o\);

ww_o_DATA(0) <= \o_DATA[0]~output_o\;

ww_o_DATA(1) <= \o_DATA[1]~output_o\;

ww_o_DATA(2) <= \o_DATA[2]~output_o\;

ww_o_DATA(3) <= \o_DATA[3]~output_o\;

ww_o_DATA(4) <= \o_DATA[4]~output_o\;

ww_o_DATA(5) <= \o_DATA[5]~output_o\;

ww_o_DATA(6) <= \o_DATA[6]~output_o\;

ww_o_DATA(7) <= \o_DATA[7]~output_o\;

ww_o_DATA_00(0) <= \o_DATA_00[0]~output_o\;

ww_o_DATA_00(1) <= \o_DATA_00[1]~output_o\;

ww_o_DATA_00(2) <= \o_DATA_00[2]~output_o\;

ww_o_DATA_00(3) <= \o_DATA_00[3]~output_o\;

ww_o_DATA_00(4) <= \o_DATA_00[4]~output_o\;

ww_o_DATA_00(5) <= \o_DATA_00[5]~output_o\;

ww_o_DATA_00(6) <= \o_DATA_00[6]~output_o\;

ww_o_DATA_00(7) <= \o_DATA_00[7]~output_o\;

ww_o_DATA_01(0) <= \o_DATA_01[0]~output_o\;

ww_o_DATA_01(1) <= \o_DATA_01[1]~output_o\;

ww_o_DATA_01(2) <= \o_DATA_01[2]~output_o\;

ww_o_DATA_01(3) <= \o_DATA_01[3]~output_o\;

ww_o_DATA_01(4) <= \o_DATA_01[4]~output_o\;

ww_o_DATA_01(5) <= \o_DATA_01[5]~output_o\;

ww_o_DATA_01(6) <= \o_DATA_01[6]~output_o\;

ww_o_DATA_01(7) <= \o_DATA_01[7]~output_o\;

ww_o_DATA_02(0) <= \o_DATA_02[0]~output_o\;

ww_o_DATA_02(1) <= \o_DATA_02[1]~output_o\;

ww_o_DATA_02(2) <= \o_DATA_02[2]~output_o\;

ww_o_DATA_02(3) <= \o_DATA_02[3]~output_o\;

ww_o_DATA_02(4) <= \o_DATA_02[4]~output_o\;

ww_o_DATA_02(5) <= \o_DATA_02[5]~output_o\;

ww_o_DATA_02(6) <= \o_DATA_02[6]~output_o\;

ww_o_DATA_02(7) <= \o_DATA_02[7]~output_o\;

ww_o_A(0) <= \o_A[0]~output_o\;

ww_o_A(1) <= \o_A[1]~output_o\;

ww_o_A(2) <= \o_A[2]~output_o\;

ww_o_A(3) <= \o_A[3]~output_o\;

ww_o_A(4) <= \o_A[4]~output_o\;

ww_o_A(5) <= \o_A[5]~output_o\;

ww_o_A(6) <= \o_A[6]~output_o\;

ww_o_A(7) <= \o_A[7]~output_o\;

ww_o_B(0) <= \o_B[0]~output_o\;

ww_o_B(1) <= \o_B[1]~output_o\;

ww_o_B(2) <= \o_B[2]~output_o\;

ww_o_B(3) <= \o_B[3]~output_o\;

ww_o_B(4) <= \o_B[4]~output_o\;

ww_o_B(5) <= \o_B[5]~output_o\;

ww_o_B(6) <= \o_B[6]~output_o\;

ww_o_B(7) <= \o_B[7]~output_o\;

ww_o_C(0) <= \o_C[0]~output_o\;

ww_o_C(1) <= \o_C[1]~output_o\;

ww_o_C(2) <= \o_C[2]~output_o\;

ww_o_C(3) <= \o_C[3]~output_o\;

ww_o_C(4) <= \o_C[4]~output_o\;

ww_o_C(5) <= \o_C[5]~output_o\;

ww_o_C(6) <= \o_C[6]~output_o\;

ww_o_C(7) <= \o_C[7]~output_o\;
END structure;



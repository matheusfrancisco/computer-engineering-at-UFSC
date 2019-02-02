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

-- DATE "04/02/2017 21:50:21"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	somador_completo IS
    PORT (
	i_A : IN std_logic_vector(3 DOWNTO 0);
	i_B : IN std_logic_vector(3 DOWNTO 0);
	i_C : IN std_logic_vector(3 DOWNTO 0);
	o_C : OUT std_logic_vector(3 DOWNTO 0);
	o_Y : OUT std_logic_vector(3 DOWNTO 0)
	);
END somador_completo;

-- Design Ports Information
-- o_C[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_C[1]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_C[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_C[3]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y[2]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[0]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[1]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[1]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[1]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[3]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF somador_completo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_i_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_i_C : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o_C : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_C[0]~output_o\ : std_logic;
SIGNAL \o_C[1]~output_o\ : std_logic;
SIGNAL \o_C[2]~output_o\ : std_logic;
SIGNAL \o_C[3]~output_o\ : std_logic;
SIGNAL \o_Y[0]~output_o\ : std_logic;
SIGNAL \o_Y[1]~output_o\ : std_logic;
SIGNAL \o_Y[2]~output_o\ : std_logic;
SIGNAL \o_Y[3]~output_o\ : std_logic;
SIGNAL \i_C[0]~input_o\ : std_logic;
SIGNAL \i_A[0]~input_o\ : std_logic;
SIGNAL \i_B[0]~input_o\ : std_logic;
SIGNAL \o_C~0_combout\ : std_logic;
SIGNAL \i_B[1]~input_o\ : std_logic;
SIGNAL \i_A[1]~input_o\ : std_logic;
SIGNAL \i_C[1]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \i_B[2]~input_o\ : std_logic;
SIGNAL \i_C[2]~input_o\ : std_logic;
SIGNAL \i_A[2]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \i_A[3]~input_o\ : std_logic;
SIGNAL \i_C[3]~input_o\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \i_B[3]~input_o\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \U2|o_Y[0]~0_combout\ : std_logic;
SIGNAL \U2|o_Y[1]~1_combout\ : std_logic;
SIGNAL \U2|o_Y[2]~2_combout\ : std_logic;
SIGNAL \U2|o_Y[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_o_C~0_combout\ : std_logic;

BEGIN

ww_i_A <= i_A;
ww_i_B <= i_B;
ww_i_C <= i_C;
o_C <= ww_o_C;
o_Y <= ww_o_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_o_C~0_combout\ <= NOT \o_C~0_combout\;

-- Location: IOOBUF_X10_Y0_N9
\o_C[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o_C~0_combout\,
	devoe => ww_devoe,
	o => \o_C[0]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\o_C[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~0_combout\,
	devoe => ww_devoe,
	o => \o_C[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\o_C[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~2_combout\,
	devoe => ww_devoe,
	o => \o_C[2]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\o_C[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~4_combout\,
	devoe => ww_devoe,
	o => \o_C[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\o_Y[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|o_Y[0]~0_combout\,
	devoe => ww_devoe,
	o => \o_Y[0]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\o_Y[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|o_Y[1]~1_combout\,
	devoe => ww_devoe,
	o => \o_Y[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\o_Y[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|o_Y[2]~2_combout\,
	devoe => ww_devoe,
	o => \o_Y[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\o_Y[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|o_Y[3]~3_combout\,
	devoe => ww_devoe,
	o => \o_Y[3]~output_o\);

-- Location: IOIBUF_X16_Y0_N1
\i_C[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(0),
	o => \i_C[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\i_A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(0),
	o => \i_A[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\i_B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(0),
	o => \i_B[0]~input_o\);

-- Location: LCCOMB_X22_Y1_N24
\o_C~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_C~0_combout\ = (\i_C[0]~input_o\ & ((\i_A[0]~input_o\) # (\i_B[0]~input_o\))) # (!\i_C[0]~input_o\ & (\i_A[0]~input_o\ & \i_B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_C[0]~input_o\,
	datac => \i_A[0]~input_o\,
	datad => \i_B[0]~input_o\,
	combout => \o_C~0_combout\);

-- Location: IOIBUF_X26_Y0_N8
\i_B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(1),
	o => \i_B[1]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\i_A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(1),
	o => \i_A[1]~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\i_C[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(1),
	o => \i_C[1]~input_o\);

-- Location: LCCOMB_X22_Y1_N2
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \o_C~0_combout\ $ (((\i_B[1]~input_o\ & ((\i_A[1]~input_o\) # (\i_C[1]~input_o\))) # (!\i_B[1]~input_o\ & (\i_A[1]~input_o\ & \i_C[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B[1]~input_o\,
	datab => \i_A[1]~input_o\,
	datac => \o_C~0_combout\,
	datad => \i_C[1]~input_o\,
	combout => \Add0~0_combout\);

-- Location: IOIBUF_X12_Y0_N8
\i_B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(2),
	o => \i_B[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\i_C[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(2),
	o => \i_C[2]~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\i_A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(2),
	o => \i_A[2]~input_o\);

-- Location: LCCOMB_X22_Y1_N12
\Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\o_C~0_combout\ & ((\i_B[1]~input_o\ & ((\i_A[1]~input_o\) # (\i_C[1]~input_o\))) # (!\i_B[1]~input_o\ & (\i_A[1]~input_o\ & \i_C[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B[1]~input_o\,
	datab => \i_A[1]~input_o\,
	datac => \o_C~0_combout\,
	datad => \i_C[1]~input_o\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X22_Y1_N30
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = \Add0~1_combout\ $ (((\i_B[2]~input_o\ & ((\i_C[2]~input_o\) # (\i_A[2]~input_o\))) # (!\i_B[2]~input_o\ & (\i_C[2]~input_o\ & \i_A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B[2]~input_o\,
	datab => \i_C[2]~input_o\,
	datac => \i_A[2]~input_o\,
	datad => \Add0~1_combout\,
	combout => \Add0~2_combout\);

-- Location: IOIBUF_X24_Y0_N1
\i_A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(3),
	o => \i_A[3]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\i_C[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(3),
	o => \i_C[3]~input_o\);

-- Location: LCCOMB_X22_Y1_N8
\Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Add0~1_combout\ & ((\i_B[2]~input_o\ & ((\i_C[2]~input_o\) # (\i_A[2]~input_o\))) # (!\i_B[2]~input_o\ & (\i_C[2]~input_o\ & \i_A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B[2]~input_o\,
	datab => \i_C[2]~input_o\,
	datac => \i_A[2]~input_o\,
	datad => \Add0~1_combout\,
	combout => \Add0~3_combout\);

-- Location: IOIBUF_X22_Y0_N8
\i_B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(3),
	o => \i_B[3]~input_o\);

-- Location: LCCOMB_X22_Y1_N26
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = \Add0~3_combout\ $ (((\i_A[3]~input_o\ & ((\i_C[3]~input_o\) # (\i_B[3]~input_o\))) # (!\i_A[3]~input_o\ & (\i_C[3]~input_o\ & \i_B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_A[3]~input_o\,
	datab => \i_C[3]~input_o\,
	datac => \Add0~3_combout\,
	datad => \i_B[3]~input_o\,
	combout => \Add0~4_combout\);

-- Location: LCCOMB_X22_Y1_N20
\U2|o_Y[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U2|o_Y[0]~0_combout\ = \i_C[0]~input_o\ $ (\i_A[0]~input_o\ $ (\i_B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_C[0]~input_o\,
	datac => \i_A[0]~input_o\,
	datad => \i_B[0]~input_o\,
	combout => \U2|o_Y[0]~0_combout\);

-- Location: LCCOMB_X22_Y1_N14
\U2|o_Y[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U2|o_Y[1]~1_combout\ = \i_B[1]~input_o\ $ (\i_A[1]~input_o\ $ (\i_C[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B[1]~input_o\,
	datab => \i_A[1]~input_o\,
	datad => \i_C[1]~input_o\,
	combout => \U2|o_Y[1]~1_combout\);

-- Location: LCCOMB_X22_Y1_N0
\U2|o_Y[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U2|o_Y[2]~2_combout\ = \i_B[2]~input_o\ $ (\i_A[2]~input_o\ $ (\i_C[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B[2]~input_o\,
	datac => \i_A[2]~input_o\,
	datad => \i_C[2]~input_o\,
	combout => \U2|o_Y[2]~2_combout\);

-- Location: LCCOMB_X22_Y1_N10
\U2|o_Y[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U2|o_Y[3]~3_combout\ = \i_A[3]~input_o\ $ (\i_B[3]~input_o\ $ (\i_C[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_A[3]~input_o\,
	datab => \i_B[3]~input_o\,
	datad => \i_C[3]~input_o\,
	combout => \U2|o_Y[3]~3_combout\);

ww_o_C(0) <= \o_C[0]~output_o\;

ww_o_C(1) <= \o_C[1]~output_o\;

ww_o_C(2) <= \o_C[2]~output_o\;

ww_o_C(3) <= \o_C[3]~output_o\;

ww_o_Y(0) <= \o_Y[0]~output_o\;

ww_o_Y(1) <= \o_Y[1]~output_o\;

ww_o_Y(2) <= \o_Y[2]~output_o\;

ww_o_Y(3) <= \o_Y[3]~output_o\;
END structure;



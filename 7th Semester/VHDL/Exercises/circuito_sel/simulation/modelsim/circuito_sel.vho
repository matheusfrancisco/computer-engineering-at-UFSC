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

-- DATE "03/24/2017 23:00:17"

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

ENTITY 	circuito_sel IS
    PORT (
	i_selA : IN std_logic_vector(2 DOWNTO 0);
	i_selE : IN std_logic_vector(2 DOWNTO 0);
	o_DATA : OUT std_logic_vector(7 DOWNTO 0)
	);
END circuito_sel;

-- Design Ports Information
-- o_DATA[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[3]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[6]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[7]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_selA[2]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_selE[0]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_selA[0]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_selE[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_selA[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_selE[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF circuito_sel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_selA : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_i_selE : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_o_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL \o_DATA[0]~output_o\ : std_logic;
SIGNAL \o_DATA[1]~output_o\ : std_logic;
SIGNAL \o_DATA[2]~output_o\ : std_logic;
SIGNAL \o_DATA[3]~output_o\ : std_logic;
SIGNAL \o_DATA[4]~output_o\ : std_logic;
SIGNAL \o_DATA[5]~output_o\ : std_logic;
SIGNAL \o_DATA[6]~output_o\ : std_logic;
SIGNAL \o_DATA[7]~output_o\ : std_logic;
SIGNAL \i_selA[0]~input_o\ : std_logic;
SIGNAL \i_selE[2]~input_o\ : std_logic;
SIGNAL \i_selE[0]~input_o\ : std_logic;
SIGNAL \i_selE[1]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \i_selA[2]~input_o\ : std_logic;
SIGNAL \i_selA[1]~input_o\ : std_logic;
SIGNAL \o_DATA~4_combout\ : std_logic;
SIGNAL \o_DATA~0_combout\ : std_logic;
SIGNAL \o_DATA~1_combout\ : std_logic;
SIGNAL \o_DATA~2_combout\ : std_logic;
SIGNAL \o_DATA~3_combout\ : std_logic;
SIGNAL \o_DATA~5_combout\ : std_logic;
SIGNAL \o_DATA~6_combout\ : std_logic;
SIGNAL \o_DATA~7_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \o_DATA~8_combout\ : std_logic;
SIGNAL \o_DATA~9_combout\ : std_logic;
SIGNAL \o_DATA~11_combout\ : std_logic;
SIGNAL \o_DATA~10_combout\ : std_logic;
SIGNAL \o_DATA~12_combout\ : std_logic;
SIGNAL \o_DATA~13_combout\ : std_logic;
SIGNAL \o_DATA~14_combout\ : std_logic;
SIGNAL \o_DATA~15_combout\ : std_logic;
SIGNAL \o_DATA~16_combout\ : std_logic;
SIGNAL \o_DATA~17_combout\ : std_logic;
SIGNAL \o_DATA~18_combout\ : std_logic;
SIGNAL \o_DATA~19_combout\ : std_logic;
SIGNAL \ALT_INV_o_DATA~17_combout\ : std_logic;
SIGNAL \ALT_INV_o_DATA~15_combout\ : std_logic;
SIGNAL \ALT_INV_o_DATA~14_combout\ : std_logic;

BEGIN

ww_i_selA <= i_selA;
ww_i_selE <= i_selE;
o_DATA <= ww_o_DATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_o_DATA~17_combout\ <= NOT \o_DATA~17_combout\;
\ALT_INV_o_DATA~15_combout\ <= NOT \o_DATA~15_combout\;
\ALT_INV_o_DATA~14_combout\ <= NOT \o_DATA~14_combout\;

-- Location: IOOBUF_X12_Y0_N9
\o_DATA[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA~6_combout\,
	devoe => ww_devoe,
	o => \o_DATA[0]~output_o\);

-- Location: IOOBUF_X14_Y31_N9
\o_DATA[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA~8_combout\,
	devoe => ww_devoe,
	o => \o_DATA[1]~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\o_DATA[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA~12_combout\,
	devoe => ww_devoe,
	o => \o_DATA[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\o_DATA[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o_DATA~14_combout\,
	devoe => ww_devoe,
	o => \o_DATA[3]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\o_DATA[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o_DATA~15_combout\,
	devoe => ww_devoe,
	o => \o_DATA[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\o_DATA[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_o_DATA~17_combout\,
	devoe => ww_devoe,
	o => \o_DATA[5]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\o_DATA[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA~18_combout\,
	devoe => ww_devoe,
	o => \o_DATA[6]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\o_DATA[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA~19_combout\,
	devoe => ww_devoe,
	o => \o_DATA[7]~output_o\);

-- Location: IOIBUF_X8_Y0_N8
\i_selA[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_selA(0),
	o => \i_selA[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\i_selE[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_selE(2),
	o => \i_selE[2]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\i_selE[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_selE(0),
	o => \i_selE[0]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\i_selE[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_selE(1),
	o => \i_selE[1]~input_o\);

-- Location: LCCOMB_X18_Y2_N16
\Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\i_selE[2]~input_o\ & (\i_selE[0]~input_o\ & !\i_selE[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_selE[2]~input_o\,
	datac => \i_selE[0]~input_o\,
	datad => \i_selE[1]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X10_Y0_N8
\i_selA[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_selA(2),
	o => \i_selA[2]~input_o\);

-- Location: IOIBUF_X20_Y31_N8
\i_selA[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_selA(1),
	o => \i_selA[1]~input_o\);

-- Location: LCCOMB_X18_Y2_N10
\o_DATA~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA~4_combout\ = (\Equal1~0_combout\ & (\i_selA[2]~input_o\ $ (((\i_selA[0]~input_o\ & \i_selA[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_selA[0]~input_o\,
	datab => \Equal1~0_combout\,
	datac => \i_selA[2]~input_o\,
	datad => \i_selA[1]~input_o\,
	combout => \o_DATA~4_combout\);

-- Location: LCCOMB_X18_Y2_N0
\o_DATA~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA~0_combout\ = (!\i_selA[0]~input_o\ & (!\i_selE[1]~input_o\ & (!\i_selE[0]~input_o\ & !\i_selA[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_selA[0]~input_o\,
	datab => \i_selE[1]~input_o\,
	datac => \i_selE[0]~input_o\,
	datad => \i_selA[2]~input_o\,
	combout => \o_DATA~0_combout\);

-- Location: LCCOMB_X18_Y2_N2
\o_DATA~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA~1_combout\ = (\i_selA[1]~input_o\ & (\o_DATA~0_combout\ & !\i_selE[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_selA[1]~input_o\,
	datab => \o_DATA~0_combout\,
	datac => \i_selE[2]~input_o\,
	combout => \o_DATA~1_combout\);

-- Location: LCCOMB_X18_Y2_N12
\o_DATA~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA~2_combout\ = (\i_selA[0]~input_o\ & (!\i_selA[2]~input_o\ & (!\i_selE[0]~input_o\ & !\i_selA[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_selA[0]~input_o\,
	datab => \i_selA[2]~input_o\,
	datac => \i_selE[0]~input_o\,
	datad => \i_selA[1]~input_o\,
	combout => \o_DATA~2_combout\);

-- Location: LCCOMB_X18_Y2_N30
\o_DATA~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA~3_combout\ = (\o_DATA~2_combout\ & (!\i_selE[2]~input_o\ & \i_selE[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_DATA~2_combout\,
	datab => \i_selE[2]~input_o\,
	datad => \i_selE[1]~input_o\,
	combout => \o_DATA~3_combout\);

-- Location: LCCOMB_X18_Y2_N20
\o_DATA~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA~5_combout\ = (\i_selA[1]~input_o\) # ((!\i_selE[2]~input_o\) # (!\o_DATA~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_selA[1]~input_o\,
	datab => \o_DATA~0_combout\,
	datac => \i_selE[2]~input_o\,
	combout => \o_DATA~5_combout\);

-- Location: LCCOMB_X18_Y2_N14
\o_DATA~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA~6_combout\ = (\o_DATA~4_combout\) # ((\o_DATA~1_combout\) # ((\o_DATA~3_combout\) # (!\o_DATA~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_DATA~4_combout\,
	datab => \o_DATA~1_combout\,
	datac => \o_DATA~3_combout\,
	datad => \o_DATA~5_combout\,
	combout => \o_DATA~6_combout\);

-- Location: LCCOMB_X18_Y2_N18
\o_DATA~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA~7_combout\ = (\i_selA[2]~input_o\ & (\i_selE[0]~input_o\ & ((\i_selA[0]~input_o\) # (!\i_selA[1]~input_o\)))) # (!\i_selA[2]~input_o\ & (\i_selA[1]~input_o\ & (\i_selA[0]~input_o\ $ (!\i_selE[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_selA[0]~input_o\,
	datab => \i_selA[2]~input_o\,
	datac => \i_selE[0]~input_o\,
	datad => \i_selA[1]~input_o\,
	combout => \o_DATA~7_combout\);

-- Location: LCCOMB_X18_Y2_N8
\Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\i_selE[2]~input_o\ & !\i_selE[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_selE[2]~input_o\,
	datad => \i_selE[1]~input_o\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X18_Y2_N28
\o_DATA~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA~8_combout\ = (\o_DATA~3_combout\) # (((\o_DATA~7_combout\ & \Equal1~1_combout\)) # (!\o_DATA~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_DATA~3_combout\,
	datab => \o_DATA~7_combout\,
	datac => \Equal1~1_combout\,
	datad => \o_DATA~5_combout\,
	combout => \o_DATA~8_combout\);

-- Location: LCCOMB_X8_Y26_N0
\o_DATA~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA~9_combout\ = (\Equal1~0_combout\ & ((\i_selA[0]~input_o\ & ((\i_selA[1]~input_o\))) # (!\i_selA[0]~input_o\ & (\i_selA[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_selA[2]~input_o\,
	datab => \i_selA[0]~input_o\,
	datac => \i_selA[1]~input_o\,
	datad => \Equal1~0_combout\,
	combout => \o_DATA~9_combout\);

-- Location: LCCOMB_X8_Y26_N2
\o_DATA~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA~11_combout\ = (\i_selA[2]~input_o\ & (\i_selA[0]~input_o\ & (!\i_selA[1]~input_o\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_selA[2]~input_o\,
	datab => \i_selA[0]~input_o\,
	datac => \i_selA[1]~input_o\,
	datad => \Equal1~0_combout\,
	combout => \o_DATA~11_combout\);

-- Location: LCCOMB_X18_Y2_N6
\o_DATA~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA~10_combout\ = (!\o_DATA~1_combout\ & (((\i_selE[2]~input_o\) # (!\i_selE[1]~input_o\)) # (!\o_DATA~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_DATA~2_combout\,
	datab => \o_DATA~1_combout\,
	datac => \i_selE[2]~input_o\,
	datad => \i_selE[1]~input_o\,
	combout => \o_DATA~10_combout\);

-- Location: LCCOMB_X8_Y26_N12
\o_DATA~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA~12_combout\ = (!\o_DATA~11_combout\ & ((\o_DATA~9_combout\) # ((!\o_DATA~5_combout\) # (!\o_DATA~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_DATA~9_combout\,
	datab => \o_DATA~11_combout\,
	datac => \o_DATA~10_combout\,
	datad => \o_DATA~5_combout\,
	combout => \o_DATA~12_combout\);

-- Location: LCCOMB_X8_Y26_N6
\o_DATA~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA~13_combout\ = (\i_selA[2]~input_o\ & ((\i_selA[0]~input_o\) # (\i_selA[1]~input_o\))) # (!\i_selA[2]~input_o\ & (\i_selA[0]~input_o\ & \i_selA[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_selA[2]~input_o\,
	datab => \i_selA[0]~input_o\,
	datac => \i_selA[1]~input_o\,
	combout => \o_DATA~13_combout\);

-- Location: LCCOMB_X8_Y26_N24
\o_DATA~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA~14_combout\ = \o_DATA~5_combout\ $ ((((\o_DATA~13_combout\ & \Equal1~0_combout\)) # (!\o_DATA~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_DATA~13_combout\,
	datab => \o_DATA~5_combout\,
	datac => \o_DATA~10_combout\,
	datad => \Equal1~0_combout\,
	combout => \o_DATA~14_combout\);

-- Location: LCCOMB_X8_Y26_N10
\o_DATA~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA~15_combout\ = \o_DATA~5_combout\ $ ((((\i_selA[2]~input_o\ & \Equal1~0_combout\)) # (!\o_DATA~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_selA[2]~input_o\,
	datab => \o_DATA~5_combout\,
	datac => \o_DATA~10_combout\,
	datad => \Equal1~0_combout\,
	combout => \o_DATA~15_combout\);

-- Location: LCCOMB_X18_Y2_N24
\o_DATA~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA~16_combout\ = (\Equal1~0_combout\ & ((\i_selA[2]~input_o\) # ((\i_selA[0]~input_o\ & \i_selA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_selA[0]~input_o\,
	datab => \Equal1~0_combout\,
	datac => \i_selA[2]~input_o\,
	datad => \i_selA[1]~input_o\,
	combout => \o_DATA~16_combout\);

-- Location: LCCOMB_X18_Y2_N26
\o_DATA~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA~17_combout\ = \o_DATA~5_combout\ $ (((\o_DATA~16_combout\) # (\o_DATA~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \o_DATA~16_combout\,
	datac => \o_DATA~3_combout\,
	datad => \o_DATA~5_combout\,
	combout => \o_DATA~17_combout\);

-- Location: LCCOMB_X18_Y2_N4
\o_DATA~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA~18_combout\ = ((!\o_DATA~3_combout\ & ((\o_DATA~16_combout\) # (\o_DATA~1_combout\)))) # (!\o_DATA~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_DATA~16_combout\,
	datab => \o_DATA~1_combout\,
	datac => \o_DATA~3_combout\,
	datad => \o_DATA~5_combout\,
	combout => \o_DATA~18_combout\);

-- Location: LCCOMB_X18_Y2_N22
\o_DATA~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA~19_combout\ = (\o_DATA~5_combout\ & ((\o_DATA~16_combout\) # ((\o_DATA~1_combout\) # (\o_DATA~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_DATA~16_combout\,
	datab => \o_DATA~1_combout\,
	datac => \o_DATA~3_combout\,
	datad => \o_DATA~5_combout\,
	combout => \o_DATA~19_combout\);

ww_o_DATA(0) <= \o_DATA[0]~output_o\;

ww_o_DATA(1) <= \o_DATA[1]~output_o\;

ww_o_DATA(2) <= \o_DATA[2]~output_o\;

ww_o_DATA(3) <= \o_DATA[3]~output_o\;

ww_o_DATA(4) <= \o_DATA[4]~output_o\;

ww_o_DATA(5) <= \o_DATA[5]~output_o\;

ww_o_DATA(6) <= \o_DATA[6]~output_o\;

ww_o_DATA(7) <= \o_DATA[7]~output_o\;
END structure;



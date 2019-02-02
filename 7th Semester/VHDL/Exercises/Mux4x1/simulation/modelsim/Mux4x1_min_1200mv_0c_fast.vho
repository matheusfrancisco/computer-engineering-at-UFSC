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

-- DATE "04/08/2017 16:08:32"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MUX4x1 IS
    PORT (
	i_entrada_0 : IN std_logic_vector(7 DOWNTO 0);
	i_entrada_1 : IN std_logic_vector(7 DOWNTO 0);
	i_entrada_2 : IN std_logic_vector(7 DOWNTO 0);
	i_entrada_3 : IN std_logic_vector(7 DOWNTO 0);
	i_SEL : IN std_logic_vector(1 DOWNTO 0);
	o_saida : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END MUX4x1;

-- Design Ports Information
-- o_saida[0]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_saida[1]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_saida[2]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_saida[3]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_saida[4]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_saida[5]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_saida[6]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_saida[7]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_2[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SEL[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_1[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SEL[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_0[0]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_3[0]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_1[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_2[1]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_0[1]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_3[1]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_2[2]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_1[2]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_0[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_3[2]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_1[3]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_2[3]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_0[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_3[3]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_2[4]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_1[4]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_0[4]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_3[4]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_1[5]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_2[5]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_0[5]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_3[5]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_2[6]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_1[6]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_0[6]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_3[6]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_1[7]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_2[7]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_0[7]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_entrada_3[7]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MUX4x1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_entrada_0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_entrada_1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_entrada_2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_entrada_3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_SEL : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_o_saida : std_logic_vector(7 DOWNTO 0);
SIGNAL \o_saida[0]~output_o\ : std_logic;
SIGNAL \o_saida[1]~output_o\ : std_logic;
SIGNAL \o_saida[2]~output_o\ : std_logic;
SIGNAL \o_saida[3]~output_o\ : std_logic;
SIGNAL \o_saida[4]~output_o\ : std_logic;
SIGNAL \o_saida[5]~output_o\ : std_logic;
SIGNAL \o_saida[6]~output_o\ : std_logic;
SIGNAL \o_saida[7]~output_o\ : std_logic;
SIGNAL \i_SEL[1]~input_o\ : std_logic;
SIGNAL \i_entrada_0[0]~input_o\ : std_logic;
SIGNAL \i_entrada_1[0]~input_o\ : std_logic;
SIGNAL \i_SEL[0]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \i_entrada_3[0]~input_o\ : std_logic;
SIGNAL \i_entrada_2[0]~input_o\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \i_entrada_1[1]~input_o\ : std_logic;
SIGNAL \i_entrada_2[1]~input_o\ : std_logic;
SIGNAL \i_entrada_0[1]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \i_entrada_3[1]~input_o\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \i_entrada_3[2]~input_o\ : std_logic;
SIGNAL \i_entrada_0[2]~input_o\ : std_logic;
SIGNAL \i_entrada_1[2]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \i_entrada_2[2]~input_o\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \i_entrada_0[3]~input_o\ : std_logic;
SIGNAL \i_entrada_2[3]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \i_entrada_3[3]~input_o\ : std_logic;
SIGNAL \i_entrada_1[3]~input_o\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \i_entrada_2[4]~input_o\ : std_logic;
SIGNAL \i_entrada_0[4]~input_o\ : std_logic;
SIGNAL \i_entrada_1[4]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \i_entrada_3[4]~input_o\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \i_entrada_2[5]~input_o\ : std_logic;
SIGNAL \i_entrada_0[5]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \i_entrada_3[5]~input_o\ : std_logic;
SIGNAL \i_entrada_1[5]~input_o\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \i_entrada_1[6]~input_o\ : std_logic;
SIGNAL \i_entrada_0[6]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \i_entrada_2[6]~input_o\ : std_logic;
SIGNAL \i_entrada_3[6]~input_o\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \i_entrada_1[7]~input_o\ : std_logic;
SIGNAL \i_entrada_3[7]~input_o\ : std_logic;
SIGNAL \i_entrada_0[7]~input_o\ : std_logic;
SIGNAL \i_entrada_2[7]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;

BEGIN

ww_i_entrada_0 <= i_entrada_0;
ww_i_entrada_1 <= i_entrada_1;
ww_i_entrada_2 <= i_entrada_2;
ww_i_entrada_3 <= i_entrada_3;
ww_i_SEL <= i_SEL;
o_saida <= ww_o_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X7_Y0_N23
\o_saida[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => \o_saida[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\o_saida[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \o_saida[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\o_saida[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => \o_saida[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\o_saida[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \o_saida[3]~output_o\);

-- Location: IOOBUF_X9_Y29_N9
\o_saida[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => \o_saida[4]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\o_saida[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \o_saida[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\o_saida[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \o_saida[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N30
\o_saida[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \o_saida[7]~output_o\);

-- Location: IOIBUF_X21_Y0_N1
\i_SEL[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SEL(1),
	o => \i_SEL[1]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\i_entrada_0[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_0(0),
	o => \i_entrada_0[0]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\i_entrada_1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_1(0),
	o => \i_entrada_1[0]~input_o\);

-- Location: IOIBUF_X19_Y0_N1
\i_SEL[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SEL(0),
	o => \i_SEL[0]~input_o\);

-- Location: LCCOMB_X9_Y1_N0
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\i_SEL[0]~input_o\ & (((\i_entrada_1[0]~input_o\) # (\i_SEL[1]~input_o\)))) # (!\i_SEL[0]~input_o\ & (\i_entrada_0[0]~input_o\ & ((!\i_SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_entrada_0[0]~input_o\,
	datab => \i_entrada_1[0]~input_o\,
	datac => \i_SEL[0]~input_o\,
	datad => \i_SEL[1]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X9_Y0_N15
\i_entrada_3[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_3(0),
	o => \i_entrada_3[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\i_entrada_2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_2(0),
	o => \i_entrada_2[0]~input_o\);

-- Location: LCCOMB_X9_Y1_N2
\Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\i_SEL[1]~input_o\ & ((\Mux7~0_combout\ & (\i_entrada_3[0]~input_o\)) # (!\Mux7~0_combout\ & ((\i_entrada_2[0]~input_o\))))) # (!\i_SEL[1]~input_o\ & (\Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SEL[1]~input_o\,
	datab => \Mux7~0_combout\,
	datac => \i_entrada_3[0]~input_o\,
	datad => \i_entrada_2[0]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: IOIBUF_X5_Y0_N29
\i_entrada_1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_1(1),
	o => \i_entrada_1[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\i_entrada_2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_2(1),
	o => \i_entrada_2[1]~input_o\);

-- Location: IOIBUF_X0_Y3_N1
\i_entrada_0[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_0(1),
	o => \i_entrada_0[1]~input_o\);

-- Location: LCCOMB_X9_Y1_N20
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\i_SEL[0]~input_o\ & (((\i_SEL[1]~input_o\)))) # (!\i_SEL[0]~input_o\ & ((\i_SEL[1]~input_o\ & (\i_entrada_2[1]~input_o\)) # (!\i_SEL[1]~input_o\ & ((\i_entrada_0[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SEL[0]~input_o\,
	datab => \i_entrada_2[1]~input_o\,
	datac => \i_entrada_0[1]~input_o\,
	datad => \i_SEL[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: IOIBUF_X9_Y0_N29
\i_entrada_3[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_3(1),
	o => \i_entrada_3[1]~input_o\);

-- Location: LCCOMB_X9_Y1_N30
\Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & (((\i_entrada_3[1]~input_o\) # (!\i_SEL[0]~input_o\)))) # (!\Mux6~0_combout\ & (\i_entrada_1[1]~input_o\ & (\i_SEL[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_entrada_1[1]~input_o\,
	datab => \Mux6~0_combout\,
	datac => \i_SEL[0]~input_o\,
	datad => \i_entrada_3[1]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: IOIBUF_X11_Y0_N22
\i_entrada_3[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_3(2),
	o => \i_entrada_3[2]~input_o\);

-- Location: IOIBUF_X0_Y2_N8
\i_entrada_0[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_0(2),
	o => \i_entrada_0[2]~input_o\);

-- Location: IOIBUF_X0_Y6_N8
\i_entrada_1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_1(2),
	o => \i_entrada_1[2]~input_o\);

-- Location: LCCOMB_X9_Y1_N16
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\i_SEL[0]~input_o\ & (((\i_entrada_1[2]~input_o\) # (\i_SEL[1]~input_o\)))) # (!\i_SEL[0]~input_o\ & (\i_entrada_0[2]~input_o\ & ((!\i_SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SEL[0]~input_o\,
	datab => \i_entrada_0[2]~input_o\,
	datac => \i_entrada_1[2]~input_o\,
	datad => \i_SEL[1]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: IOIBUF_X9_Y0_N1
\i_entrada_2[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_2(2),
	o => \i_entrada_2[2]~input_o\);

-- Location: LCCOMB_X9_Y1_N26
\Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & ((\i_entrada_3[2]~input_o\) # ((!\i_SEL[1]~input_o\)))) # (!\Mux5~0_combout\ & (((\i_entrada_2[2]~input_o\ & \i_SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_entrada_3[2]~input_o\,
	datab => \Mux5~0_combout\,
	datac => \i_entrada_2[2]~input_o\,
	datad => \i_SEL[1]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: IOIBUF_X0_Y2_N1
\i_entrada_0[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_0(3),
	o => \i_entrada_0[3]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\i_entrada_2[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_2(3),
	o => \i_entrada_2[3]~input_o\);

-- Location: LCCOMB_X9_Y1_N12
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\i_SEL[0]~input_o\ & (((\i_SEL[1]~input_o\)))) # (!\i_SEL[0]~input_o\ & ((\i_SEL[1]~input_o\ & ((\i_entrada_2[3]~input_o\))) # (!\i_SEL[1]~input_o\ & (\i_entrada_0[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_entrada_0[3]~input_o\,
	datab => \i_entrada_2[3]~input_o\,
	datac => \i_SEL[0]~input_o\,
	datad => \i_SEL[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: IOIBUF_X14_Y0_N22
\i_entrada_3[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_3(3),
	o => \i_entrada_3[3]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\i_entrada_1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_1(3),
	o => \i_entrada_1[3]~input_o\);

-- Location: LCCOMB_X9_Y1_N22
\Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & ((\i_entrada_3[3]~input_o\) # ((!\i_SEL[0]~input_o\)))) # (!\Mux4~0_combout\ & (((\i_SEL[0]~input_o\ & \i_entrada_1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \i_entrada_3[3]~input_o\,
	datac => \i_SEL[0]~input_o\,
	datad => \i_entrada_1[3]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: IOIBUF_X11_Y0_N29
\i_entrada_2[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_2(4),
	o => \i_entrada_2[4]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\i_entrada_0[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_0(4),
	o => \i_entrada_0[4]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\i_entrada_1[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_1(4),
	o => \i_entrada_1[4]~input_o\);

-- Location: LCCOMB_X9_Y1_N8
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\i_SEL[0]~input_o\ & (((\i_entrada_1[4]~input_o\) # (\i_SEL[1]~input_o\)))) # (!\i_SEL[0]~input_o\ & (\i_entrada_0[4]~input_o\ & ((!\i_SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_entrada_0[4]~input_o\,
	datab => \i_entrada_1[4]~input_o\,
	datac => \i_SEL[0]~input_o\,
	datad => \i_SEL[1]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X1_Y0_N8
\i_entrada_3[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_3(4),
	o => \i_entrada_3[4]~input_o\);

-- Location: LCCOMB_X9_Y1_N18
\Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & (((\i_entrada_3[4]~input_o\) # (!\i_SEL[1]~input_o\)))) # (!\Mux3~0_combout\ & (\i_entrada_2[4]~input_o\ & ((\i_SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_entrada_2[4]~input_o\,
	datab => \Mux3~0_combout\,
	datac => \i_entrada_3[4]~input_o\,
	datad => \i_SEL[1]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: IOIBUF_X3_Y0_N8
\i_entrada_2[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_2(5),
	o => \i_entrada_2[5]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\i_entrada_0[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_0(5),
	o => \i_entrada_0[5]~input_o\);

-- Location: LCCOMB_X9_Y1_N28
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\i_SEL[0]~input_o\ & (((\i_SEL[1]~input_o\)))) # (!\i_SEL[0]~input_o\ & ((\i_SEL[1]~input_o\ & (\i_entrada_2[5]~input_o\)) # (!\i_SEL[1]~input_o\ & ((\i_entrada_0[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_entrada_2[5]~input_o\,
	datab => \i_entrada_0[5]~input_o\,
	datac => \i_SEL[0]~input_o\,
	datad => \i_SEL[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X19_Y0_N15
\i_entrada_3[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_3(5),
	o => \i_entrada_3[5]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\i_entrada_1[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_1(5),
	o => \i_entrada_1[5]~input_o\);

-- Location: LCCOMB_X19_Y1_N24
\Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & (((\i_entrada_3[5]~input_o\)) # (!\i_SEL[0]~input_o\))) # (!\Mux2~0_combout\ & (\i_SEL[0]~input_o\ & ((\i_entrada_1[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \i_SEL[0]~input_o\,
	datac => \i_entrada_3[5]~input_o\,
	datad => \i_entrada_1[5]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: IOIBUF_X19_Y0_N8
\i_entrada_1[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_1(6),
	o => \i_entrada_1[6]~input_o\);

-- Location: IOIBUF_X0_Y2_N15
\i_entrada_0[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_0(6),
	o => \i_entrada_0[6]~input_o\);

-- Location: LCCOMB_X9_Y1_N6
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\i_SEL[0]~input_o\ & ((\i_entrada_1[6]~input_o\) # ((\i_SEL[1]~input_o\)))) # (!\i_SEL[0]~input_o\ & (((\i_entrada_0[6]~input_o\ & !\i_SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SEL[0]~input_o\,
	datab => \i_entrada_1[6]~input_o\,
	datac => \i_entrada_0[6]~input_o\,
	datad => \i_SEL[1]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X1_Y0_N15
\i_entrada_2[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_2(6),
	o => \i_entrada_2[6]~input_o\);

-- Location: IOIBUF_X0_Y8_N1
\i_entrada_3[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_3(6),
	o => \i_entrada_3[6]~input_o\);

-- Location: LCCOMB_X9_Y1_N24
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & (((\i_entrada_3[6]~input_o\) # (!\i_SEL[1]~input_o\)))) # (!\Mux1~0_combout\ & (\i_entrada_2[6]~input_o\ & ((\i_SEL[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \i_entrada_2[6]~input_o\,
	datac => \i_entrada_3[6]~input_o\,
	datad => \i_SEL[1]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: IOIBUF_X5_Y0_N8
\i_entrada_1[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_1(7),
	o => \i_entrada_1[7]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\i_entrada_3[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_3(7),
	o => \i_entrada_3[7]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\i_entrada_0[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_0(7),
	o => \i_entrada_0[7]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\i_entrada_2[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_entrada_2(7),
	o => \i_entrada_2[7]~input_o\);

-- Location: LCCOMB_X9_Y1_N10
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\i_SEL[0]~input_o\ & (((\i_SEL[1]~input_o\)))) # (!\i_SEL[0]~input_o\ & ((\i_SEL[1]~input_o\ & ((\i_entrada_2[7]~input_o\))) # (!\i_SEL[1]~input_o\ & (\i_entrada_0[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SEL[0]~input_o\,
	datab => \i_entrada_0[7]~input_o\,
	datac => \i_entrada_2[7]~input_o\,
	datad => \i_SEL[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X9_Y1_N4
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\i_SEL[0]~input_o\ & ((\Mux0~0_combout\ & ((\i_entrada_3[7]~input_o\))) # (!\Mux0~0_combout\ & (\i_entrada_1[7]~input_o\)))) # (!\i_SEL[0]~input_o\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_entrada_1[7]~input_o\,
	datab => \i_entrada_3[7]~input_o\,
	datac => \i_SEL[0]~input_o\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

ww_o_saida(0) <= \o_saida[0]~output_o\;

ww_o_saida(1) <= \o_saida[1]~output_o\;

ww_o_saida(2) <= \o_saida[2]~output_o\;

ww_o_saida(3) <= \o_saida[3]~output_o\;

ww_o_saida(4) <= \o_saida[4]~output_o\;

ww_o_saida(5) <= \o_saida[5]~output_o\;

ww_o_saida(6) <= \o_saida[6]~output_o\;

ww_o_saida(7) <= \o_saida[7]~output_o\;
END structure;



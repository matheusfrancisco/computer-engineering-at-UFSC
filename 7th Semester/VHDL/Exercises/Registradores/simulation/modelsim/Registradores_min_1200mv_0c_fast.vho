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

-- DATE "03/21/2017 19:02:20"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Registradores IS
    PORT (
	i_EN : IN std_logic;
	i_CLK : IN std_logic;
	i_DATA : IN std_logic_vector(7 DOWNTO 0);
	o_DATA : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END Registradores;

-- Design Ports Information
-- o_DATA[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[1]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[2]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[3]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[4]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[5]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[6]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA[7]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[0]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_EN	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[3]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[4]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[5]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[6]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA[7]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Registradores IS
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
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_DATA[0]~output_o\ : std_logic;
SIGNAL \o_DATA[1]~output_o\ : std_logic;
SIGNAL \o_DATA[2]~output_o\ : std_logic;
SIGNAL \o_DATA[3]~output_o\ : std_logic;
SIGNAL \o_DATA[4]~output_o\ : std_logic;
SIGNAL \o_DATA[5]~output_o\ : std_logic;
SIGNAL \o_DATA[6]~output_o\ : std_logic;
SIGNAL \o_DATA[7]~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_DATA[0]~input_o\ : std_logic;
SIGNAL \o_DATA[0]~reg0feeder_combout\ : std_logic;
SIGNAL \i_EN~input_o\ : std_logic;
SIGNAL \o_DATA[0]~reg0_q\ : std_logic;
SIGNAL \i_DATA[1]~input_o\ : std_logic;
SIGNAL \o_DATA[1]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA[1]~reg0_q\ : std_logic;
SIGNAL \i_DATA[2]~input_o\ : std_logic;
SIGNAL \o_DATA[2]~reg0_q\ : std_logic;
SIGNAL \i_DATA[3]~input_o\ : std_logic;
SIGNAL \o_DATA[3]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA[3]~reg0_q\ : std_logic;
SIGNAL \i_DATA[4]~input_o\ : std_logic;
SIGNAL \o_DATA[4]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA[4]~reg0_q\ : std_logic;
SIGNAL \i_DATA[5]~input_o\ : std_logic;
SIGNAL \o_DATA[5]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA[5]~reg0_q\ : std_logic;
SIGNAL \i_DATA[6]~input_o\ : std_logic;
SIGNAL \o_DATA[6]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA[6]~reg0_q\ : std_logic;
SIGNAL \i_DATA[7]~input_o\ : std_logic;
SIGNAL \o_DATA[7]~reg0feeder_combout\ : std_logic;
SIGNAL \o_DATA[7]~reg0_q\ : std_logic;

BEGIN

ww_i_EN <= i_EN;
ww_i_CLK <= i_CLK;
ww_i_DATA <= i_DATA;
o_DATA <= ww_o_DATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);

-- Location: IOOBUF_X0_Y6_N9
\o_DATA[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[0]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\o_DATA[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[1]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\o_DATA[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[2]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\o_DATA[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[3]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA[3]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\o_DATA[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[4]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA[4]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\o_DATA[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[5]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\o_DATA[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[6]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA[6]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\o_DATA[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA[7]~reg0_q\,
	devoe => ww_devoe,
	o => \o_DATA[7]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\i_CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_CLK,
	o => \i_CLK~input_o\);

-- Location: CLKCTRL_G4
\i_CLK~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: IOIBUF_X28_Y0_N22
\i_DATA[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(0),
	o => \i_DATA[0]~input_o\);

-- Location: LCCOMB_X1_Y6_N16
\o_DATA[0]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[0]~reg0feeder_combout\ = \i_DATA[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA[0]~input_o\,
	combout => \o_DATA[0]~reg0feeder_combout\);

-- Location: IOIBUF_X0_Y6_N1
\i_EN~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_EN,
	o => \i_EN~input_o\);

-- Location: FF_X1_Y6_N17
\o_DATA[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA[0]~reg0feeder_combout\,
	ena => \i_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[0]~reg0_q\);

-- Location: IOIBUF_X0_Y6_N15
\i_DATA[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(1),
	o => \i_DATA[1]~input_o\);

-- Location: LCCOMB_X1_Y6_N10
\o_DATA[1]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[1]~reg0feeder_combout\ = \i_DATA[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA[1]~input_o\,
	combout => \o_DATA[1]~reg0feeder_combout\);

-- Location: FF_X1_Y6_N11
\o_DATA[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA[1]~reg0feeder_combout\,
	ena => \i_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[1]~reg0_q\);

-- Location: IOIBUF_X0_Y3_N8
\i_DATA[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(2),
	o => \i_DATA[2]~input_o\);

-- Location: FF_X1_Y6_N13
\o_DATA[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA[2]~input_o\,
	sload => VCC,
	ena => \i_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[2]~reg0_q\);

-- Location: IOIBUF_X0_Y27_N22
\i_DATA[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(3),
	o => \i_DATA[3]~input_o\);

-- Location: LCCOMB_X1_Y6_N30
\o_DATA[3]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[3]~reg0feeder_combout\ = \i_DATA[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA[3]~input_o\,
	combout => \o_DATA[3]~reg0feeder_combout\);

-- Location: FF_X1_Y6_N31
\o_DATA[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA[3]~reg0feeder_combout\,
	ena => \i_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[3]~reg0_q\);

-- Location: IOIBUF_X0_Y5_N1
\i_DATA[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(4),
	o => \i_DATA[4]~input_o\);

-- Location: LCCOMB_X1_Y6_N0
\o_DATA[4]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[4]~reg0feeder_combout\ = \i_DATA[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA[4]~input_o\,
	combout => \o_DATA[4]~reg0feeder_combout\);

-- Location: FF_X1_Y6_N1
\o_DATA[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA[4]~reg0feeder_combout\,
	ena => \i_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[4]~reg0_q\);

-- Location: IOIBUF_X0_Y5_N22
\i_DATA[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(5),
	o => \i_DATA[5]~input_o\);

-- Location: LCCOMB_X1_Y6_N2
\o_DATA[5]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[5]~reg0feeder_combout\ = \i_DATA[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA[5]~input_o\,
	combout => \o_DATA[5]~reg0feeder_combout\);

-- Location: FF_X1_Y6_N3
\o_DATA[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA[5]~reg0feeder_combout\,
	ena => \i_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[5]~reg0_q\);

-- Location: IOIBUF_X0_Y4_N1
\i_DATA[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(6),
	o => \i_DATA[6]~input_o\);

-- Location: LCCOMB_X1_Y6_N4
\o_DATA[6]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[6]~reg0feeder_combout\ = \i_DATA[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA[6]~input_o\,
	combout => \o_DATA[6]~reg0feeder_combout\);

-- Location: FF_X1_Y6_N5
\o_DATA[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA[6]~reg0feeder_combout\,
	ena => \i_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[6]~reg0_q\);

-- Location: IOIBUF_X7_Y0_N29
\i_DATA[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA(7),
	o => \i_DATA[7]~input_o\);

-- Location: LCCOMB_X1_Y6_N14
\o_DATA[7]~reg0feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \o_DATA[7]~reg0feeder_combout\ = \i_DATA[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA[7]~input_o\,
	combout => \o_DATA[7]~reg0feeder_combout\);

-- Location: FF_X1_Y6_N15
\o_DATA[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_DATA[7]~reg0feeder_combout\,
	ena => \i_EN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_DATA[7]~reg0_q\);

ww_o_DATA(0) <= \o_DATA[0]~output_o\;

ww_o_DATA(1) <= \o_DATA[1]~output_o\;

ww_o_DATA(2) <= \o_DATA[2]~output_o\;

ww_o_DATA(3) <= \o_DATA[3]~output_o\;

ww_o_DATA(4) <= \o_DATA[4]~output_o\;

ww_o_DATA(5) <= \o_DATA[5]~output_o\;

ww_o_DATA(6) <= \o_DATA[6]~output_o\;

ww_o_DATA(7) <= \o_DATA[7]~output_o\;
END structure;



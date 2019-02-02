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

-- DATE "03/21/2017 20:04:49"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
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

ENTITY 	Master_conta IS
    PORT (
	i_RST : IN std_logic;
	i_CLK : IN std_logic;
	o_ND : BUFFER std_logic
	);
END Master_conta;

-- Design Ports Information
-- o_ND	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RST	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Master_conta IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_RST : std_logic;
SIGNAL ww_i_CLK : std_logic;
SIGNAL ww_o_ND : std_logic;
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_ND~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_RST~input_o\ : std_logic;
SIGNAL \w_CONT~1_combout\ : std_logic;
SIGNAL \w_CONT~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \w_CONT~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \w_CONT~3_combout\ : std_logic;
SIGNAL \o_ND~0_combout\ : std_logic;
SIGNAL \o_ND~1_combout\ : std_logic;
SIGNAL \o_ND~reg0_q\ : std_logic;
SIGNAL w_CONT : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_i_RST <= i_RST;
ww_i_CLK <= i_CLK;
o_ND <= ww_o_ND;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);

-- Location: IOOBUF_X33_Y25_N9
\o_ND~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_ND~reg0_q\,
	devoe => ww_devoe,
	o => \o_ND~output_o\);

-- Location: IOIBUF_X16_Y0_N15
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

-- Location: IOIBUF_X33_Y25_N1
\i_RST~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RST,
	o => \i_RST~input_o\);

-- Location: LCCOMB_X32_Y25_N28
\w_CONT~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \w_CONT~1_combout\ = (!\i_RST~input_o\ & (!w_CONT(0) & !\o_ND~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RST~input_o\,
	datac => w_CONT(0),
	datad => \o_ND~0_combout\,
	combout => \w_CONT~1_combout\);

-- Location: FF_X32_Y25_N29
\w_CONT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \w_CONT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_CONT(0));

-- Location: LCCOMB_X32_Y25_N2
\w_CONT~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \w_CONT~2_combout\ = (!\i_RST~input_o\ & (w_CONT(1) $ (w_CONT(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_RST~input_o\,
	datac => w_CONT(1),
	datad => w_CONT(0),
	combout => \w_CONT~2_combout\);

-- Location: FF_X32_Y25_N3
\w_CONT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \w_CONT~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_CONT(1));

-- Location: LCCOMB_X32_Y25_N20
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = w_CONT(2) $ (((w_CONT(1) & w_CONT(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => w_CONT(1),
	datac => w_CONT(2),
	datad => w_CONT(0),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X32_Y25_N26
\w_CONT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \w_CONT~0_combout\ = (!\o_ND~0_combout\ & (!\i_RST~input_o\ & \Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_ND~0_combout\,
	datab => \i_RST~input_o\,
	datad => \Add0~0_combout\,
	combout => \w_CONT~0_combout\);

-- Location: FF_X32_Y25_N27
\w_CONT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \w_CONT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_CONT(2));

-- Location: LCCOMB_X32_Y25_N18
\Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = w_CONT(3) $ (((w_CONT(2) & (w_CONT(0) & w_CONT(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_CONT(2),
	datab => w_CONT(0),
	datac => w_CONT(3),
	datad => w_CONT(1),
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X32_Y25_N8
\w_CONT~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \w_CONT~3_combout\ = (!\o_ND~0_combout\ & (!\i_RST~input_o\ & \Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_ND~0_combout\,
	datab => \i_RST~input_o\,
	datad => \Add0~1_combout\,
	combout => \w_CONT~3_combout\);

-- Location: FF_X32_Y25_N9
\w_CONT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \w_CONT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_CONT(3));

-- Location: LCCOMB_X32_Y25_N6
\o_ND~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_ND~0_combout\ = (w_CONT(2) & (!w_CONT(1) & (!w_CONT(3) & !w_CONT(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_CONT(2),
	datab => w_CONT(1),
	datac => w_CONT(3),
	datad => w_CONT(0),
	combout => \o_ND~0_combout\);

-- Location: LCCOMB_X32_Y25_N24
\o_ND~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_ND~1_combout\ = (!\i_RST~input_o\ & \o_ND~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_RST~input_o\,
	datad => \o_ND~0_combout\,
	combout => \o_ND~1_combout\);

-- Location: FF_X32_Y25_N25
\o_ND~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_CLK~inputclkctrl_outclk\,
	d => \o_ND~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \o_ND~reg0_q\);

ww_o_ND <= \o_ND~output_o\;
END structure;



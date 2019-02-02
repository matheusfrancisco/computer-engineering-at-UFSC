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

-- DATE "04/02/2017 20:58:08"

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

ENTITY 	meio_somador IS
    PORT (
	i_A : IN std_logic;
	i_B : IN std_logic;
	o_C : OUT std_logic;
	o_Y : OUT std_logic
	);
END meio_somador;

-- Design Ports Information
-- o_C	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF meio_somador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_A : std_logic;
SIGNAL ww_i_B : std_logic;
SIGNAL ww_o_C : std_logic;
SIGNAL ww_o_Y : std_logic;
SIGNAL \o_C~output_o\ : std_logic;
SIGNAL \o_Y~output_o\ : std_logic;
SIGNAL \i_A~input_o\ : std_logic;
SIGNAL \i_B~input_o\ : std_logic;
SIGNAL \o_C~0_combout\ : std_logic;
SIGNAL \o_Y~0_combout\ : std_logic;

BEGIN

ww_i_A <= i_A;
ww_i_B <= i_B;
o_C <= ww_o_C;
o_Y <= ww_o_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X14_Y0_N9
\o_C~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_C~0_combout\,
	devoe => ww_devoe,
	o => \o_C~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\o_Y~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_Y~0_combout\,
	devoe => ww_devoe,
	o => \o_Y~output_o\);

-- Location: IOIBUF_X8_Y0_N1
\i_A~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A,
	o => \i_A~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\i_B~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B,
	o => \i_B~input_o\);

-- Location: LCCOMB_X23_Y1_N24
\o_C~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_C~0_combout\ = (\i_A~input_o\ & \i_B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_A~input_o\,
	datad => \i_B~input_o\,
	combout => \o_C~0_combout\);

-- Location: LCCOMB_X23_Y1_N26
\o_Y~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_Y~0_combout\ = \i_A~input_o\ $ (\i_B~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_A~input_o\,
	datad => \i_B~input_o\,
	combout => \o_Y~0_combout\);

ww_o_C <= \o_C~output_o\;

ww_o_Y <= \o_Y~output_o\;
END structure;



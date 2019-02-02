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

-- DATE "03/28/2017 19:47:41"

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

ENTITY 	sistema_comb IS
    PORT (
	i_SELABC1 : IN std_logic_vector(2 DOWNTO 0);
	i_SELABC2 : IN std_logic_vector(2 DOWNTO 0);
	i_SELABC3 : IN std_logic_vector(2 DOWNTO 0);
	o_DATA_00 : OUT std_logic_vector(7 DOWNTO 0);
	o_DATA_01 : OUT std_logic_vector(7 DOWNTO 0);
	o_DATA_02 : OUT std_logic_vector(7 DOWNTO 0)
	);
END sistema_comb;

-- Design Ports Information
-- o_DATA_00[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_00[1]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_00[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_00[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_00[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_00[5]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_00[6]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_00[7]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_01[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_01[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_01[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_01[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_01[4]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_01[5]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_01[6]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_01[7]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_02[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_02[1]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_02[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_02[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_02[4]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_02[5]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_02[6]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_02[7]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SELABC1[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SELABC1[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SELABC1[2]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SELABC2[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SELABC2[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SELABC2[2]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SELABC3[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SELABC3[1]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_SELABC3[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sistema_comb IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_SELABC1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_i_SELABC2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_i_SELABC3 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_o_DATA_00 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_DATA_01 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_DATA_02 : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mux10~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux4~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mux15~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \i_SELABC1[0]~input_o\ : std_logic;
SIGNAL \i_SELABC1[1]~input_o\ : std_logic;
SIGNAL \i_SELABC1[2]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~0clkctrl_outclk\ : std_logic;
SIGNAL \o_DATA_00[4]$latch~combout\ : std_logic;
SIGNAL \o_DATA_00[5]$latch~combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \o_DATA_00[6]$latch~combout\ : std_logic;
SIGNAL \i_SELABC2[0]~input_o\ : std_logic;
SIGNAL \i_SELABC2[2]~input_o\ : std_logic;
SIGNAL \i_SELABC2[1]~input_o\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~0clkctrl_outclk\ : std_logic;
SIGNAL \o_DATA_01[0]$latch~combout\ : std_logic;
SIGNAL \o_DATA_01[1]$latch~combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \o_DATA_01[2]$latch~combout\ : std_logic;
SIGNAL \i_SELABC3[0]~input_o\ : std_logic;
SIGNAL \i_SELABC3[2]~input_o\ : std_logic;
SIGNAL \i_SELABC3[1]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~0clkctrl_outclk\ : std_logic;
SIGNAL \o_DATA_02[4]$latch~combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \o_DATA_02[5]$latch~combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \o_DATA_02[6]$latch~combout\ : std_logic;

BEGIN

ww_i_SELABC1 <= i_SELABC1;
ww_i_SELABC2 <= i_SELABC2;
ww_i_SELABC3 <= i_SELABC3;
o_DATA_00 <= ww_o_DATA_00;
o_DATA_01 <= ww_o_DATA_01;
o_DATA_02 <= ww_o_DATA_02;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mux10~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux10~0_combout\);

\Mux4~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux4~0_combout\);

\Mux15~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Mux15~0_combout\);

-- Location: IOOBUF_X12_Y31_N2
\o_DATA_00[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_DATA_00[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
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

-- Location: IOOBUF_X12_Y31_N9
\o_DATA_00[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_DATA_00[2]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
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

-- Location: IOOBUF_X33_Y14_N9
\o_DATA_00[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA_00[4]$latch~combout\,
	devoe => ww_devoe,
	o => \o_DATA_00[4]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\o_DATA_00[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA_00[5]$latch~combout\,
	devoe => ww_devoe,
	o => \o_DATA_00[5]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\o_DATA_00[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA_00[6]$latch~combout\,
	devoe => ww_devoe,
	o => \o_DATA_00[6]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
\o_DATA_00[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_DATA_00[7]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\o_DATA_01[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA_01[0]$latch~combout\,
	devoe => ww_devoe,
	o => \o_DATA_01[0]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\o_DATA_01[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA_01[1]$latch~combout\,
	devoe => ww_devoe,
	o => \o_DATA_01[1]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\o_DATA_01[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA_01[2]$latch~combout\,
	devoe => ww_devoe,
	o => \o_DATA_01[2]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\o_DATA_01[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_DATA_01[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\o_DATA_01[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_DATA_01[4]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
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

-- Location: IOOBUF_X8_Y0_N2
\o_DATA_01[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \o_DATA_01[6]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
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

-- Location: IOOBUF_X24_Y31_N9
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

-- Location: IOOBUF_X8_Y0_N9
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

-- Location: IOOBUF_X29_Y31_N9
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

-- Location: IOOBUF_X12_Y0_N9
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

-- Location: IOOBUF_X33_Y15_N2
\o_DATA_02[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA_02[4]$latch~combout\,
	devoe => ww_devoe,
	o => \o_DATA_02[4]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\o_DATA_02[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA_02[5]$latch~combout\,
	devoe => ww_devoe,
	o => \o_DATA_02[5]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\o_DATA_02[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_DATA_02[6]$latch~combout\,
	devoe => ww_devoe,
	o => \o_DATA_02[6]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
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

-- Location: IOIBUF_X33_Y16_N8
\i_SELABC1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SELABC1(0),
	o => \i_SELABC1[0]~input_o\);

-- Location: IOIBUF_X33_Y16_N1
\i_SELABC1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SELABC1(1),
	o => \i_SELABC1[1]~input_o\);

-- Location: IOIBUF_X33_Y12_N1
\i_SELABC1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SELABC1(2),
	o => \i_SELABC1[2]~input_o\);

-- Location: LCCOMB_X32_Y16_N26
\Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ((!\i_SELABC1[1]~input_o\ & !\i_SELABC1[0]~input_o\)) # (!\i_SELABC1[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SELABC1[1]~input_o\,
	datac => \i_SELABC1[2]~input_o\,
	datad => \i_SELABC1[0]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: CLKCTRL_G9
\Mux15~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux15~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux15~0clkctrl_outclk\);

-- Location: LCCOMB_X32_Y16_N8
\o_DATA_00[4]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA_00[4]$latch~combout\ = (GLOBAL(\Mux15~0clkctrl_outclk\) & (\i_SELABC1[0]~input_o\)) # (!GLOBAL(\Mux15~0clkctrl_outclk\) & ((\o_DATA_00[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_SELABC1[0]~input_o\,
	datac => \o_DATA_00[4]$latch~combout\,
	datad => \Mux15~0clkctrl_outclk\,
	combout => \o_DATA_00[4]$latch~combout\);

-- Location: LCCOMB_X32_Y16_N22
\o_DATA_00[5]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA_00[5]$latch~combout\ = (GLOBAL(\Mux15~0clkctrl_outclk\) & (!\i_SELABC1[1]~input_o\)) # (!GLOBAL(\Mux15~0clkctrl_outclk\) & ((\o_DATA_00[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SELABC1[1]~input_o\,
	datac => \o_DATA_00[5]$latch~combout\,
	datad => \Mux15~0clkctrl_outclk\,
	combout => \o_DATA_00[5]$latch~combout\);

-- Location: LCCOMB_X32_Y16_N12
\Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\i_SELABC1[2]~input_o\) # (\i_SELABC1[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_SELABC1[2]~input_o\,
	datad => \i_SELABC1[1]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X32_Y16_N18
\o_DATA_00[6]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA_00[6]$latch~combout\ = (GLOBAL(\Mux15~0clkctrl_outclk\) & (\Mux14~0_combout\)) # (!GLOBAL(\Mux15~0clkctrl_outclk\) & ((\o_DATA_00[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \o_DATA_00[6]$latch~combout\,
	datad => \Mux15~0clkctrl_outclk\,
	combout => \o_DATA_00[6]$latch~combout\);

-- Location: IOIBUF_X33_Y24_N1
\i_SELABC2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SELABC2(0),
	o => \i_SELABC2[0]~input_o\);

-- Location: IOIBUF_X33_Y24_N8
\i_SELABC2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SELABC2(2),
	o => \i_SELABC2[2]~input_o\);

-- Location: IOIBUF_X33_Y25_N1
\i_SELABC2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SELABC2(1),
	o => \i_SELABC2[1]~input_o\);

-- Location: LCCOMB_X32_Y24_N20
\Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ((!\i_SELABC2[1]~input_o\ & !\i_SELABC2[0]~input_o\)) # (!\i_SELABC2[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SELABC2[2]~input_o\,
	datab => \i_SELABC2[1]~input_o\,
	datad => \i_SELABC2[0]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: CLKCTRL_G5
\Mux10~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux10~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux10~0clkctrl_outclk\);

-- Location: LCCOMB_X32_Y24_N30
\o_DATA_01[0]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA_01[0]$latch~combout\ = (GLOBAL(\Mux10~0clkctrl_outclk\) & (\i_SELABC2[0]~input_o\)) # (!GLOBAL(\Mux10~0clkctrl_outclk\) & ((\o_DATA_01[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SELABC2[0]~input_o\,
	datac => \o_DATA_01[0]$latch~combout\,
	datad => \Mux10~0clkctrl_outclk\,
	combout => \o_DATA_01[0]$latch~combout\);

-- Location: LCCOMB_X32_Y24_N22
\o_DATA_01[1]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA_01[1]$latch~combout\ = (GLOBAL(\Mux10~0clkctrl_outclk\) & (!\i_SELABC2[1]~input_o\)) # (!GLOBAL(\Mux10~0clkctrl_outclk\) & ((\o_DATA_01[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_SELABC2[1]~input_o\,
	datac => \o_DATA_01[1]$latch~combout\,
	datad => \Mux10~0clkctrl_outclk\,
	combout => \o_DATA_01[1]$latch~combout\);

-- Location: LCCOMB_X32_Y24_N28
\Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\i_SELABC2[2]~input_o\) # (\i_SELABC2[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_SELABC2[2]~input_o\,
	datad => \i_SELABC2[1]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X32_Y24_N26
\o_DATA_01[2]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA_01[2]$latch~combout\ = (GLOBAL(\Mux10~0clkctrl_outclk\) & (\Mux7~0_combout\)) # (!GLOBAL(\Mux10~0clkctrl_outclk\) & ((\o_DATA_01[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~0_combout\,
	datac => \o_DATA_01[2]$latch~combout\,
	datad => \Mux10~0clkctrl_outclk\,
	combout => \o_DATA_01[2]$latch~combout\);

-- Location: IOIBUF_X33_Y15_N8
\i_SELABC3[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SELABC3(0),
	o => \i_SELABC3[0]~input_o\);

-- Location: IOIBUF_X33_Y14_N1
\i_SELABC3[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SELABC3(2),
	o => \i_SELABC3[2]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\i_SELABC3[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_SELABC3(1),
	o => \i_SELABC3[1]~input_o\);

-- Location: LCCOMB_X32_Y15_N4
\Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ((!\i_SELABC3[1]~input_o\ & !\i_SELABC3[0]~input_o\)) # (!\i_SELABC3[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_SELABC3[2]~input_o\,
	datac => \i_SELABC3[1]~input_o\,
	datad => \i_SELABC3[0]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: CLKCTRL_G7
\Mux4~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Mux4~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Mux4~0clkctrl_outclk\);

-- Location: LCCOMB_X32_Y15_N12
\o_DATA_02[4]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA_02[4]$latch~combout\ = (GLOBAL(\Mux4~0clkctrl_outclk\) & ((!\i_SELABC3[0]~input_o\))) # (!GLOBAL(\Mux4~0clkctrl_outclk\) & (\o_DATA_02[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \o_DATA_02[4]$latch~combout\,
	datac => \i_SELABC3[0]~input_o\,
	datad => \Mux4~0clkctrl_outclk\,
	combout => \o_DATA_02[4]$latch~combout\);

-- Location: LCCOMB_X32_Y15_N20
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = \i_SELABC3[1]~input_o\ $ (\i_SELABC3[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_SELABC3[1]~input_o\,
	datad => \i_SELABC3[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X32_Y15_N22
\o_DATA_02[5]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA_02[5]$latch~combout\ = (GLOBAL(\Mux4~0clkctrl_outclk\) & (\Mux1~0_combout\)) # (!GLOBAL(\Mux4~0clkctrl_outclk\) & ((\o_DATA_02[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datac => \o_DATA_02[5]$latch~combout\,
	datad => \Mux4~0clkctrl_outclk\,
	combout => \o_DATA_02[5]$latch~combout\);

-- Location: LCCOMB_X32_Y15_N8
\Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\i_SELABC3[2]~input_o\) # ((\i_SELABC3[1]~input_o\ & \i_SELABC3[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_SELABC3[2]~input_o\,
	datac => \i_SELABC3[1]~input_o\,
	datad => \i_SELABC3[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X32_Y15_N24
\o_DATA_02[6]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \o_DATA_02[6]$latch~combout\ = (GLOBAL(\Mux4~0clkctrl_outclk\) & (\Mux2~0_combout\)) # (!GLOBAL(\Mux4~0clkctrl_outclk\) & ((\o_DATA_02[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~0_combout\,
	datac => \o_DATA_02[6]$latch~combout\,
	datad => \Mux4~0clkctrl_outclk\,
	combout => \o_DATA_02[6]$latch~combout\);

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
END structure;



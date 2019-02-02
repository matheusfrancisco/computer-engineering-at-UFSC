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

-- DATE "04/08/2017 02:13:21"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	somador_4bit IS
    PORT (
	i_A0 : IN std_logic_vector(3 DOWNTO 0);
	i_B0 : IN std_logic_vector(3 DOWNTO 0);
	i_C : IN std_logic_vector(3 DOWNTO 0);
	i_A1 : IN std_logic_vector(3 DOWNTO 0);
	i_B1 : IN std_logic_vector(3 DOWNTO 0);
	i_A2 : IN std_logic_vector(3 DOWNTO 0);
	i_B2 : IN std_logic_vector(3 DOWNTO 0);
	i_A3 : IN std_logic_vector(3 DOWNTO 0);
	i_B3 : IN std_logic_vector(3 DOWNTO 0);
	o_C : BUFFER std_logic_vector(3 DOWNTO 0);
	o_Y0 : BUFFER std_logic_vector(3 DOWNTO 0);
	o_Y1 : BUFFER std_logic_vector(3 DOWNTO 0);
	o_Y2 : BUFFER std_logic_vector(3 DOWNTO 0);
	o_Y3 : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END somador_4bit;

-- Design Ports Information
-- o_C[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_C[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_C[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_C[3]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y0[0]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y0[1]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y0[2]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y0[3]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y1[0]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y1[1]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y1[2]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y1[3]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y2[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y2[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y2[2]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y2[3]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y3[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y3[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y3[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_Y3[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A3[0]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B3[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A2[0]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B2[0]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A1[0]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B1[0]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B0[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A0[0]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A3[1]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B3[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A2[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B2[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A1[1]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B1[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B0[1]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[1]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A0[1]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A3[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B3[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A2[2]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B2[2]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A1[2]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B1[2]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B0[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A0[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A3[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B3[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A2[3]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B2[3]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A1[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B1[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B0[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_C[3]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A0[3]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF somador_4bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_A0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_i_B0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_i_C : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_i_A1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_i_B1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_i_A2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_i_B2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_i_A3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_i_B3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o_C : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o_Y0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o_Y1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o_Y2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_o_Y3 : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_C[0]~output_o\ : std_logic;
SIGNAL \o_C[1]~output_o\ : std_logic;
SIGNAL \o_C[2]~output_o\ : std_logic;
SIGNAL \o_C[3]~output_o\ : std_logic;
SIGNAL \o_Y0[0]~output_o\ : std_logic;
SIGNAL \o_Y0[1]~output_o\ : std_logic;
SIGNAL \o_Y0[2]~output_o\ : std_logic;
SIGNAL \o_Y0[3]~output_o\ : std_logic;
SIGNAL \o_Y1[0]~output_o\ : std_logic;
SIGNAL \o_Y1[1]~output_o\ : std_logic;
SIGNAL \o_Y1[2]~output_o\ : std_logic;
SIGNAL \o_Y1[3]~output_o\ : std_logic;
SIGNAL \o_Y2[0]~output_o\ : std_logic;
SIGNAL \o_Y2[1]~output_o\ : std_logic;
SIGNAL \o_Y2[2]~output_o\ : std_logic;
SIGNAL \o_Y2[3]~output_o\ : std_logic;
SIGNAL \o_Y3[0]~output_o\ : std_logic;
SIGNAL \o_Y3[1]~output_o\ : std_logic;
SIGNAL \o_Y3[2]~output_o\ : std_logic;
SIGNAL \o_Y3[3]~output_o\ : std_logic;
SIGNAL \i_B3[0]~input_o\ : std_logic;
SIGNAL \i_A3[0]~input_o\ : std_logic;
SIGNAL \i_B1[0]~input_o\ : std_logic;
SIGNAL \i_A1[0]~input_o\ : std_logic;
SIGNAL \i_B0[0]~input_o\ : std_logic;
SIGNAL \i_A0[0]~input_o\ : std_logic;
SIGNAL \i_C[0]~input_o\ : std_logic;
SIGNAL \U1|o_C~0_combout\ : std_logic;
SIGNAL \U2|o_C~0_combout\ : std_logic;
SIGNAL \i_A2[0]~input_o\ : std_logic;
SIGNAL \i_B2[0]~input_o\ : std_logic;
SIGNAL \U3|o_C~0_combout\ : std_logic;
SIGNAL \U4|o_C~0_combout\ : std_logic;
SIGNAL \i_A2[1]~input_o\ : std_logic;
SIGNAL \i_B1[1]~input_o\ : std_logic;
SIGNAL \i_B0[1]~input_o\ : std_logic;
SIGNAL \i_C[1]~input_o\ : std_logic;
SIGNAL \i_A0[1]~input_o\ : std_logic;
SIGNAL \U1|Add0~0_combout\ : std_logic;
SIGNAL \i_A1[1]~input_o\ : std_logic;
SIGNAL \U2|Add0~0_combout\ : std_logic;
SIGNAL \i_B2[1]~input_o\ : std_logic;
SIGNAL \U3|Add0~0_combout\ : std_logic;
SIGNAL \i_A3[1]~input_o\ : std_logic;
SIGNAL \i_B3[1]~input_o\ : std_logic;
SIGNAL \U4|Add0~0_combout\ : std_logic;
SIGNAL \i_B3[2]~input_o\ : std_logic;
SIGNAL \U3|Add0~1_combout\ : std_logic;
SIGNAL \i_B2[2]~input_o\ : std_logic;
SIGNAL \U2|Add0~1_combout\ : std_logic;
SIGNAL \i_A1[2]~input_o\ : std_logic;
SIGNAL \i_B1[2]~input_o\ : std_logic;
SIGNAL \i_C[2]~input_o\ : std_logic;
SIGNAL \U1|Add0~1_combout\ : std_logic;
SIGNAL \i_B0[2]~input_o\ : std_logic;
SIGNAL \i_A0[2]~input_o\ : std_logic;
SIGNAL \U1|Add0~2_combout\ : std_logic;
SIGNAL \U2|Add0~2_combout\ : std_logic;
SIGNAL \i_A2[2]~input_o\ : std_logic;
SIGNAL \U3|Add0~2_combout\ : std_logic;
SIGNAL \i_A3[2]~input_o\ : std_logic;
SIGNAL \U4|Add0~1_combout\ : std_logic;
SIGNAL \U4|Add0~2_combout\ : std_logic;
SIGNAL \i_A3[3]~input_o\ : std_logic;
SIGNAL \U4|Add0~3_combout\ : std_logic;
SIGNAL \i_B3[3]~input_o\ : std_logic;
SIGNAL \U1|Add0~3_combout\ : std_logic;
SIGNAL \i_A0[3]~input_o\ : std_logic;
SIGNAL \i_C[3]~input_o\ : std_logic;
SIGNAL \i_B0[3]~input_o\ : std_logic;
SIGNAL \U1|Add0~4_combout\ : std_logic;
SIGNAL \i_B1[3]~input_o\ : std_logic;
SIGNAL \i_A1[3]~input_o\ : std_logic;
SIGNAL \U2|Add0~3_combout\ : std_logic;
SIGNAL \U2|Add0~4_combout\ : std_logic;
SIGNAL \U3|Add0~3_combout\ : std_logic;
SIGNAL \i_B2[3]~input_o\ : std_logic;
SIGNAL \i_A2[3]~input_o\ : std_logic;
SIGNAL \U3|Add0~4_combout\ : std_logic;
SIGNAL \U4|Add0~4_combout\ : std_logic;
SIGNAL \U1|U2|o_Y[0]~0_combout\ : std_logic;
SIGNAL \U1|U2|o_Y[1]~1_combout\ : std_logic;
SIGNAL \U1|U2|o_Y[2]~2_combout\ : std_logic;
SIGNAL \U1|U2|o_Y[3]~3_combout\ : std_logic;
SIGNAL \U2|U2|o_Y\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U3|U2|o_Y\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U4|U2|o_Y\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U4|U2|ALT_INV_o_Y\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U3|U2|ALT_INV_o_Y\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U2|U2|ALT_INV_o_Y\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U4|ALT_INV_o_C~0_combout\ : std_logic;

BEGIN

ww_i_A0 <= i_A0;
ww_i_B0 <= i_B0;
ww_i_C <= i_C;
ww_i_A1 <= i_A1;
ww_i_B1 <= i_B1;
ww_i_A2 <= i_A2;
ww_i_B2 <= i_B2;
ww_i_A3 <= i_A3;
ww_i_B3 <= i_B3;
o_C <= ww_o_C;
o_Y0 <= ww_o_Y0;
o_Y1 <= ww_o_Y1;
o_Y2 <= ww_o_Y2;
o_Y3 <= ww_o_Y3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U4|U2|ALT_INV_o_Y\(0) <= NOT \U4|U2|o_Y\(0);
\U3|U2|ALT_INV_o_Y\(0) <= NOT \U3|U2|o_Y\(0);
\U2|U2|ALT_INV_o_Y\(0) <= NOT \U2|U2|o_Y\(0);
\U4|ALT_INV_o_C~0_combout\ <= NOT \U4|o_C~0_combout\;

-- Location: IOOBUF_X25_Y41_N2
\o_C[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|ALT_INV_o_C~0_combout\,
	devoe => ww_devoe,
	o => \o_C[0]~output_o\);

-- Location: IOOBUF_X16_Y41_N9
\o_C[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Add0~0_combout\,
	devoe => ww_devoe,
	o => \o_C[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\o_C[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Add0~2_combout\,
	devoe => ww_devoe,
	o => \o_C[2]~output_o\);

-- Location: IOOBUF_X21_Y41_N2
\o_C[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Add0~4_combout\,
	devoe => ww_devoe,
	o => \o_C[3]~output_o\);

-- Location: IOOBUF_X52_Y11_N9
\o_Y0[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U2|o_Y[0]~0_combout\,
	devoe => ww_devoe,
	o => \o_Y0[0]~output_o\);

-- Location: IOOBUF_X52_Y18_N2
\o_Y0[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U2|o_Y[1]~1_combout\,
	devoe => ww_devoe,
	o => \o_Y0[1]~output_o\);

-- Location: IOOBUF_X52_Y32_N16
\o_Y0[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U2|o_Y[2]~2_combout\,
	devoe => ww_devoe,
	o => \o_Y0[2]~output_o\);

-- Location: IOOBUF_X52_Y31_N9
\o_Y0[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U1|U2|o_Y[3]~3_combout\,
	devoe => ww_devoe,
	o => \o_Y0[3]~output_o\);

-- Location: IOOBUF_X52_Y18_N9
\o_Y1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U2|ALT_INV_o_Y\(0),
	devoe => ww_devoe,
	o => \o_Y1[0]~output_o\);

-- Location: IOOBUF_X52_Y23_N2
\o_Y1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U2|o_Y\(1),
	devoe => ww_devoe,
	o => \o_Y1[1]~output_o\);

-- Location: IOOBUF_X50_Y41_N9
\o_Y1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U2|o_Y\(2),
	devoe => ww_devoe,
	o => \o_Y1[2]~output_o\);

-- Location: IOOBUF_X50_Y41_N2
\o_Y1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|U2|o_Y\(3),
	devoe => ww_devoe,
	o => \o_Y1[3]~output_o\);

-- Location: IOOBUF_X52_Y15_N2
\o_Y2[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|U2|ALT_INV_o_Y\(0),
	devoe => ww_devoe,
	o => \o_Y2[0]~output_o\);

-- Location: IOOBUF_X31_Y41_N9
\o_Y2[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|U2|o_Y\(1),
	devoe => ww_devoe,
	o => \o_Y2[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\o_Y2[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|U2|o_Y\(2),
	devoe => ww_devoe,
	o => \o_Y2[2]~output_o\);

-- Location: IOOBUF_X52_Y32_N23
\o_Y2[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|U2|o_Y\(3),
	devoe => ww_devoe,
	o => \o_Y2[3]~output_o\);

-- Location: IOOBUF_X18_Y41_N2
\o_Y3[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|U2|ALT_INV_o_Y\(0),
	devoe => ww_devoe,
	o => \o_Y3[0]~output_o\);

-- Location: IOOBUF_X52_Y23_N9
\o_Y3[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|U2|o_Y\(1),
	devoe => ww_devoe,
	o => \o_Y3[1]~output_o\);

-- Location: IOOBUF_X25_Y41_N9
\o_Y3[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|U2|o_Y\(2),
	devoe => ww_devoe,
	o => \o_Y3[2]~output_o\);

-- Location: IOOBUF_X21_Y41_N9
\o_Y3[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|U2|o_Y\(3),
	devoe => ww_devoe,
	o => \o_Y3[3]~output_o\);

-- Location: IOIBUF_X29_Y41_N1
\i_B3[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B3(0),
	o => \i_B3[0]~input_o\);

-- Location: IOIBUF_X25_Y0_N8
\i_A3[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A3(0),
	o => \i_A3[0]~input_o\);

-- Location: IOIBUF_X52_Y15_N8
\i_B1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B1(0),
	o => \i_B1[0]~input_o\);

-- Location: IOIBUF_X52_Y16_N8
\i_A1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A1(0),
	o => \i_A1[0]~input_o\);

-- Location: IOIBUF_X52_Y19_N1
\i_B0[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B0(0),
	o => \i_B0[0]~input_o\);

-- Location: IOIBUF_X52_Y12_N1
\i_A0[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A0(0),
	o => \i_A0[0]~input_o\);

-- Location: IOIBUF_X52_Y19_N8
\i_C[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(0),
	o => \i_C[0]~input_o\);

-- Location: LCCOMB_X51_Y16_N24
\U1|o_C~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|o_C~0_combout\ = (\i_B0[0]~input_o\ & ((\i_A0[0]~input_o\) # (\i_C[0]~input_o\))) # (!\i_B0[0]~input_o\ & (\i_A0[0]~input_o\ & \i_C[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_B0[0]~input_o\,
	datac => \i_A0[0]~input_o\,
	datad => \i_C[0]~input_o\,
	combout => \U1|o_C~0_combout\);

-- Location: LCCOMB_X51_Y16_N10
\U2|o_C~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U2|o_C~0_combout\ = (\i_B1[0]~input_o\ & ((\i_A1[0]~input_o\) # (!\U1|o_C~0_combout\))) # (!\i_B1[0]~input_o\ & (\i_A1[0]~input_o\ & !\U1|o_C~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_B1[0]~input_o\,
	datac => \i_A1[0]~input_o\,
	datad => \U1|o_C~0_combout\,
	combout => \U2|o_C~0_combout\);

-- Location: IOIBUF_X52_Y11_N1
\i_A2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A2(0),
	o => \i_A2[0]~input_o\);

-- Location: IOIBUF_X52_Y13_N8
\i_B2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B2(0),
	o => \i_B2[0]~input_o\);

-- Location: LCCOMB_X51_Y16_N20
\U3|o_C~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U3|o_C~0_combout\ = (\U2|o_C~0_combout\ & (\i_A2[0]~input_o\ & \i_B2[0]~input_o\)) # (!\U2|o_C~0_combout\ & ((\i_A2[0]~input_o\) # (\i_B2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|o_C~0_combout\,
	datac => \i_A2[0]~input_o\,
	datad => \i_B2[0]~input_o\,
	combout => \U3|o_C~0_combout\);

-- Location: LCCOMB_X25_Y21_N16
\U4|o_C~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U4|o_C~0_combout\ = (\i_B3[0]~input_o\ & ((\i_A3[0]~input_o\) # (!\U3|o_C~0_combout\))) # (!\i_B3[0]~input_o\ & (\i_A3[0]~input_o\ & !\U3|o_C~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B3[0]~input_o\,
	datab => \i_A3[0]~input_o\,
	datac => \U3|o_C~0_combout\,
	combout => \U4|o_C~0_combout\);

-- Location: IOIBUF_X18_Y41_N8
\i_A2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A2(1),
	o => \i_A2[1]~input_o\);

-- Location: IOIBUF_X52_Y10_N8
\i_B1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B1(1),
	o => \i_B1[1]~input_o\);

-- Location: IOIBUF_X52_Y13_N1
\i_B0[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B0(1),
	o => \i_B0[1]~input_o\);

-- Location: IOIBUF_X52_Y12_N8
\i_C[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(1),
	o => \i_C[1]~input_o\);

-- Location: IOIBUF_X52_Y21_N22
\i_A0[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A0(1),
	o => \i_A0[1]~input_o\);

-- Location: LCCOMB_X51_Y16_N22
\U1|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|Add0~0_combout\ = \U1|o_C~0_combout\ $ (((\i_B0[1]~input_o\ & ((\i_C[1]~input_o\) # (\i_A0[1]~input_o\))) # (!\i_B0[1]~input_o\ & (\i_C[1]~input_o\ & \i_A0[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B0[1]~input_o\,
	datab => \U1|o_C~0_combout\,
	datac => \i_C[1]~input_o\,
	datad => \i_A0[1]~input_o\,
	combout => \U1|Add0~0_combout\);

-- Location: IOIBUF_X52_Y16_N1
\i_A1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A1(1),
	o => \i_A1[1]~input_o\);

-- Location: LCCOMB_X51_Y16_N0
\U2|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U2|Add0~0_combout\ = \U2|o_C~0_combout\ $ (((\i_B1[1]~input_o\ & ((\U1|Add0~0_combout\) # (\i_A1[1]~input_o\))) # (!\i_B1[1]~input_o\ & (\U1|Add0~0_combout\ & \i_A1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|o_C~0_combout\,
	datab => \i_B1[1]~input_o\,
	datac => \U1|Add0~0_combout\,
	datad => \i_A1[1]~input_o\,
	combout => \U2|Add0~0_combout\);

-- Location: IOIBUF_X29_Y0_N1
\i_B2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B2(1),
	o => \i_B2[1]~input_o\);

-- Location: LCCOMB_X25_Y21_N10
\U3|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U3|Add0~0_combout\ = \U3|o_C~0_combout\ $ (((\i_A2[1]~input_o\ & ((\U2|Add0~0_combout\) # (\i_B2[1]~input_o\))) # (!\i_A2[1]~input_o\ & (\U2|Add0~0_combout\ & \i_B2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_A2[1]~input_o\,
	datab => \U2|Add0~0_combout\,
	datac => \U3|o_C~0_combout\,
	datad => \i_B2[1]~input_o\,
	combout => \U3|Add0~0_combout\);

-- Location: IOIBUF_X21_Y0_N1
\i_A3[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A3(1),
	o => \i_A3[1]~input_o\);

-- Location: IOIBUF_X29_Y41_N8
\i_B3[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B3(1),
	o => \i_B3[1]~input_o\);

-- Location: LCCOMB_X25_Y21_N28
\U4|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U4|Add0~0_combout\ = \U4|o_C~0_combout\ $ (((\U3|Add0~0_combout\ & ((\i_A3[1]~input_o\) # (\i_B3[1]~input_o\))) # (!\U3|Add0~0_combout\ & (\i_A3[1]~input_o\ & \i_B3[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Add0~0_combout\,
	datab => \i_A3[1]~input_o\,
	datac => \i_B3[1]~input_o\,
	datad => \U4|o_C~0_combout\,
	combout => \U4|Add0~0_combout\);

-- Location: IOIBUF_X23_Y41_N8
\i_B3[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B3(2),
	o => \i_B3[2]~input_o\);

-- Location: LCCOMB_X25_Y21_N6
\U3|Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U3|Add0~1_combout\ = (\U3|o_C~0_combout\ & ((\i_A2[1]~input_o\ & ((\U2|Add0~0_combout\) # (\i_B2[1]~input_o\))) # (!\i_A2[1]~input_o\ & (\U2|Add0~0_combout\ & \i_B2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_A2[1]~input_o\,
	datab => \U2|Add0~0_combout\,
	datac => \U3|o_C~0_combout\,
	datad => \i_B2[1]~input_o\,
	combout => \U3|Add0~1_combout\);

-- Location: IOIBUF_X52_Y21_N1
\i_B2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B2(2),
	o => \i_B2[2]~input_o\);

-- Location: LCCOMB_X51_Y16_N4
\U2|Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U2|Add0~1_combout\ = (\U2|o_C~0_combout\ & ((\i_B1[1]~input_o\ & ((\U1|Add0~0_combout\) # (\i_A1[1]~input_o\))) # (!\i_B1[1]~input_o\ & (\U1|Add0~0_combout\ & \i_A1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|o_C~0_combout\,
	datab => \i_B1[1]~input_o\,
	datac => \U1|Add0~0_combout\,
	datad => \i_A1[1]~input_o\,
	combout => \U2|Add0~1_combout\);

-- Location: IOIBUF_X48_Y41_N1
\i_A1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A1(2),
	o => \i_A1[2]~input_o\);

-- Location: IOIBUF_X52_Y25_N8
\i_B1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B1(2),
	o => \i_B1[2]~input_o\);

-- Location: IOIBUF_X52_Y28_N8
\i_C[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(2),
	o => \i_C[2]~input_o\);

-- Location: LCCOMB_X51_Y16_N26
\U1|Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|Add0~1_combout\ = (\U1|o_C~0_combout\ & ((\i_B0[1]~input_o\ & ((\i_C[1]~input_o\) # (\i_A0[1]~input_o\))) # (!\i_B0[1]~input_o\ & (\i_C[1]~input_o\ & \i_A0[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B0[1]~input_o\,
	datab => \U1|o_C~0_combout\,
	datac => \i_C[1]~input_o\,
	datad => \i_A0[1]~input_o\,
	combout => \U1|Add0~1_combout\);

-- Location: IOIBUF_X52_Y30_N8
\i_B0[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B0(2),
	o => \i_B0[2]~input_o\);

-- Location: IOIBUF_X52_Y31_N1
\i_A0[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A0(2),
	o => \i_A0[2]~input_o\);

-- Location: LCCOMB_X51_Y28_N0
\U1|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|Add0~2_combout\ = \U1|Add0~1_combout\ $ (((\i_C[2]~input_o\ & ((\i_B0[2]~input_o\) # (\i_A0[2]~input_o\))) # (!\i_C[2]~input_o\ & (\i_B0[2]~input_o\ & \i_A0[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_C[2]~input_o\,
	datab => \U1|Add0~1_combout\,
	datac => \i_B0[2]~input_o\,
	datad => \i_A0[2]~input_o\,
	combout => \U1|Add0~2_combout\);

-- Location: LCCOMB_X51_Y28_N2
\U2|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U2|Add0~2_combout\ = \U2|Add0~1_combout\ $ (((\i_A1[2]~input_o\ & ((\i_B1[2]~input_o\) # (\U1|Add0~2_combout\))) # (!\i_A1[2]~input_o\ & (\i_B1[2]~input_o\ & \U1|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~1_combout\,
	datab => \i_A1[2]~input_o\,
	datac => \i_B1[2]~input_o\,
	datad => \U1|Add0~2_combout\,
	combout => \U2|Add0~2_combout\);

-- Location: IOIBUF_X52_Y21_N8
\i_A2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A2(2),
	o => \i_A2[2]~input_o\);

-- Location: LCCOMB_X25_Y21_N0
\U3|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U3|Add0~2_combout\ = \U3|Add0~1_combout\ $ (((\i_B2[2]~input_o\ & ((\U2|Add0~2_combout\) # (\i_A2[2]~input_o\))) # (!\i_B2[2]~input_o\ & (\U2|Add0~2_combout\ & \i_A2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Add0~1_combout\,
	datab => \i_B2[2]~input_o\,
	datac => \U2|Add0~2_combout\,
	datad => \i_A2[2]~input_o\,
	combout => \U3|Add0~2_combout\);

-- Location: IOIBUF_X52_Y21_N15
\i_A3[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A3(2),
	o => \i_A3[2]~input_o\);

-- Location: LCCOMB_X25_Y21_N18
\U4|Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U4|Add0~1_combout\ = (\U4|o_C~0_combout\ & ((\U3|Add0~0_combout\ & ((\i_A3[1]~input_o\) # (\i_B3[1]~input_o\))) # (!\U3|Add0~0_combout\ & (\i_A3[1]~input_o\ & \i_B3[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Add0~0_combout\,
	datab => \i_A3[1]~input_o\,
	datac => \i_B3[1]~input_o\,
	datad => \U4|o_C~0_combout\,
	combout => \U4|Add0~1_combout\);

-- Location: LCCOMB_X25_Y21_N20
\U4|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U4|Add0~2_combout\ = \U4|Add0~1_combout\ $ (((\i_B3[2]~input_o\ & ((\U3|Add0~2_combout\) # (\i_A3[2]~input_o\))) # (!\i_B3[2]~input_o\ & (\U3|Add0~2_combout\ & \i_A3[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B3[2]~input_o\,
	datab => \U3|Add0~2_combout\,
	datac => \i_A3[2]~input_o\,
	datad => \U4|Add0~1_combout\,
	combout => \U4|Add0~2_combout\);

-- Location: IOIBUF_X23_Y41_N1
\i_A3[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A3(3),
	o => \i_A3[3]~input_o\);

-- Location: LCCOMB_X25_Y21_N24
\U4|Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U4|Add0~3_combout\ = (\U4|Add0~1_combout\ & ((\i_B3[2]~input_o\ & ((\U3|Add0~2_combout\) # (\i_A3[2]~input_o\))) # (!\i_B3[2]~input_o\ & (\U3|Add0~2_combout\ & \i_A3[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B3[2]~input_o\,
	datab => \U3|Add0~2_combout\,
	datac => \i_A3[2]~input_o\,
	datad => \U4|Add0~1_combout\,
	combout => \U4|Add0~3_combout\);

-- Location: IOIBUF_X25_Y0_N1
\i_B3[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B3(3),
	o => \i_B3[3]~input_o\);

-- Location: LCCOMB_X51_Y28_N20
\U1|Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|Add0~3_combout\ = (\U1|Add0~1_combout\ & ((\i_C[2]~input_o\ & ((\i_B0[2]~input_o\) # (\i_A0[2]~input_o\))) # (!\i_C[2]~input_o\ & (\i_B0[2]~input_o\ & \i_A0[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_C[2]~input_o\,
	datab => \U1|Add0~1_combout\,
	datac => \i_B0[2]~input_o\,
	datad => \i_A0[2]~input_o\,
	combout => \U1|Add0~3_combout\);

-- Location: IOIBUF_X52_Y30_N1
\i_A0[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A0(3),
	o => \i_A0[3]~input_o\);

-- Location: IOIBUF_X52_Y25_N1
\i_C[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_C(3),
	o => \i_C[3]~input_o\);

-- Location: IOIBUF_X52_Y32_N1
\i_B0[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B0(3),
	o => \i_B0[3]~input_o\);

-- Location: LCCOMB_X51_Y28_N6
\U1|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|Add0~4_combout\ = \U1|Add0~3_combout\ $ (((\i_A0[3]~input_o\ & ((\i_C[3]~input_o\) # (\i_B0[3]~input_o\))) # (!\i_A0[3]~input_o\ & (\i_C[3]~input_o\ & \i_B0[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~3_combout\,
	datab => \i_A0[3]~input_o\,
	datac => \i_C[3]~input_o\,
	datad => \i_B0[3]~input_o\,
	combout => \U1|Add0~4_combout\);

-- Location: IOIBUF_X52_Y27_N1
\i_B1[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B1(3),
	o => \i_B1[3]~input_o\);

-- Location: IOIBUF_X52_Y32_N8
\i_A1[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A1(3),
	o => \i_A1[3]~input_o\);

-- Location: LCCOMB_X51_Y28_N24
\U2|Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U2|Add0~3_combout\ = (\U2|Add0~1_combout\ & ((\i_A1[2]~input_o\ & ((\i_B1[2]~input_o\) # (\U1|Add0~2_combout\))) # (!\i_A1[2]~input_o\ & (\i_B1[2]~input_o\ & \U1|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~1_combout\,
	datab => \i_A1[2]~input_o\,
	datac => \i_B1[2]~input_o\,
	datad => \U1|Add0~2_combout\,
	combout => \U2|Add0~3_combout\);

-- Location: LCCOMB_X51_Y28_N10
\U2|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U2|Add0~4_combout\ = \U2|Add0~3_combout\ $ (((\U1|Add0~4_combout\ & ((\i_B1[3]~input_o\) # (\i_A1[3]~input_o\))) # (!\U1|Add0~4_combout\ & (\i_B1[3]~input_o\ & \i_A1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~4_combout\,
	datab => \i_B1[3]~input_o\,
	datac => \i_A1[3]~input_o\,
	datad => \U2|Add0~3_combout\,
	combout => \U2|Add0~4_combout\);

-- Location: LCCOMB_X25_Y21_N30
\U3|Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U3|Add0~3_combout\ = (\U3|Add0~1_combout\ & ((\i_B2[2]~input_o\ & ((\U2|Add0~2_combout\) # (\i_A2[2]~input_o\))) # (!\i_B2[2]~input_o\ & (\U2|Add0~2_combout\ & \i_A2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Add0~1_combout\,
	datab => \i_B2[2]~input_o\,
	datac => \U2|Add0~2_combout\,
	datad => \i_A2[2]~input_o\,
	combout => \U3|Add0~3_combout\);

-- Location: IOIBUF_X52_Y27_N8
\i_B2[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B2(3),
	o => \i_B2[3]~input_o\);

-- Location: IOIBUF_X52_Y28_N1
\i_A2[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A2(3),
	o => \i_A2[3]~input_o\);

-- Location: LCCOMB_X51_Y28_N28
\U3|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U3|Add0~4_combout\ = \U3|Add0~3_combout\ $ (((\U2|Add0~4_combout\ & ((\i_B2[3]~input_o\) # (\i_A2[3]~input_o\))) # (!\U2|Add0~4_combout\ & (\i_B2[3]~input_o\ & \i_A2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~4_combout\,
	datab => \U3|Add0~3_combout\,
	datac => \i_B2[3]~input_o\,
	datad => \i_A2[3]~input_o\,
	combout => \U3|Add0~4_combout\);

-- Location: LCCOMB_X25_Y21_N26
\U4|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U4|Add0~4_combout\ = \U4|Add0~3_combout\ $ (((\i_A3[3]~input_o\ & ((\i_B3[3]~input_o\) # (\U3|Add0~4_combout\))) # (!\i_A3[3]~input_o\ & (\i_B3[3]~input_o\ & \U3|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_A3[3]~input_o\,
	datab => \U4|Add0~3_combout\,
	datac => \i_B3[3]~input_o\,
	datad => \U3|Add0~4_combout\,
	combout => \U4|Add0~4_combout\);

-- Location: LCCOMB_X51_Y16_N30
\U1|U2|o_Y[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|U2|o_Y[0]~0_combout\ = \i_B0[0]~input_o\ $ (\i_A0[0]~input_o\ $ (\i_C[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_B0[0]~input_o\,
	datac => \i_A0[0]~input_o\,
	datad => \i_C[0]~input_o\,
	combout => \U1|U2|o_Y[0]~0_combout\);

-- Location: LCCOMB_X51_Y16_N16
\U1|U2|o_Y[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|U2|o_Y[1]~1_combout\ = \i_B0[1]~input_o\ $ (\i_C[1]~input_o\ $ (\i_A0[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B0[1]~input_o\,
	datac => \i_C[1]~input_o\,
	datad => \i_A0[1]~input_o\,
	combout => \U1|U2|o_Y[1]~1_combout\);

-- Location: LCCOMB_X51_Y28_N22
\U1|U2|o_Y[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|U2|o_Y[2]~2_combout\ = \i_C[2]~input_o\ $ (\i_B0[2]~input_o\ $ (\i_A0[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_C[2]~input_o\,
	datac => \i_B0[2]~input_o\,
	datad => \i_A0[2]~input_o\,
	combout => \U1|U2|o_Y[2]~2_combout\);

-- Location: LCCOMB_X51_Y28_N16
\U1|U2|o_Y[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|U2|o_Y[3]~3_combout\ = \i_A0[3]~input_o\ $ (\i_C[3]~input_o\ $ (\i_B0[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_A0[3]~input_o\,
	datac => \i_C[3]~input_o\,
	datad => \i_B0[3]~input_o\,
	combout => \U1|U2|o_Y[3]~3_combout\);

-- Location: LCCOMB_X51_Y16_N2
\U2|U2|o_Y[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U2|U2|o_Y\(0) = \i_B1[0]~input_o\ $ (\i_A1[0]~input_o\ $ (\U1|o_C~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_B1[0]~input_o\,
	datac => \i_A1[0]~input_o\,
	datad => \U1|o_C~0_combout\,
	combout => \U2|U2|o_Y\(0));

-- Location: LCCOMB_X51_Y16_N12
\U2|U2|o_Y[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U2|U2|o_Y\(1) = \i_B1[1]~input_o\ $ (\U1|Add0~0_combout\ $ (\i_A1[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_B1[1]~input_o\,
	datac => \U1|Add0~0_combout\,
	datad => \i_A1[1]~input_o\,
	combout => \U2|U2|o_Y\(1));

-- Location: LCCOMB_X51_Y28_N26
\U2|U2|o_Y[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U2|U2|o_Y\(2) = \i_A1[2]~input_o\ $ (\i_B1[2]~input_o\ $ (\U1|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_A1[2]~input_o\,
	datac => \i_B1[2]~input_o\,
	datad => \U1|Add0~2_combout\,
	combout => \U2|U2|o_Y\(2));

-- Location: LCCOMB_X51_Y28_N12
\U2|U2|o_Y[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U2|U2|o_Y\(3) = \U1|Add0~4_combout\ $ (\i_A1[3]~input_o\ $ (\i_B1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1|Add0~4_combout\,
	datab => \i_A1[3]~input_o\,
	datac => \i_B1[3]~input_o\,
	combout => \U2|U2|o_Y\(3));

-- Location: LCCOMB_X51_Y16_N6
\U3|U2|o_Y[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U3|U2|o_Y\(0) = \U2|o_C~0_combout\ $ (\i_A2[0]~input_o\ $ (\i_B2[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|o_C~0_combout\,
	datac => \i_A2[0]~input_o\,
	datad => \i_B2[0]~input_o\,
	combout => \U3|U2|o_Y\(0));

-- Location: LCCOMB_X25_Y21_N4
\U3|U2|o_Y[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U3|U2|o_Y\(1) = \i_A2[1]~input_o\ $ (\U2|Add0~0_combout\ $ (\i_B2[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_A2[1]~input_o\,
	datac => \U2|Add0~0_combout\,
	datad => \i_B2[1]~input_o\,
	combout => \U3|U2|o_Y\(1));

-- Location: LCCOMB_X25_Y21_N22
\U3|U2|o_Y[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U3|U2|o_Y\(2) = \i_B2[2]~input_o\ $ (\U2|Add0~2_combout\ $ (\i_A2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_B2[2]~input_o\,
	datac => \U2|Add0~2_combout\,
	datad => \i_A2[2]~input_o\,
	combout => \U3|U2|o_Y\(2));

-- Location: LCCOMB_X51_Y28_N14
\U3|U2|o_Y[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U3|U2|o_Y\(3) = \U2|Add0~4_combout\ $ (\i_B2[3]~input_o\ $ (\i_A2[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~4_combout\,
	datac => \i_B2[3]~input_o\,
	datad => \i_A2[3]~input_o\,
	combout => \U3|U2|o_Y\(3));

-- Location: LCCOMB_X25_Y21_N8
\U4|U2|o_Y[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U4|U2|o_Y\(0) = \i_B3[0]~input_o\ $ (\i_A3[0]~input_o\ $ (\U3|o_C~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B3[0]~input_o\,
	datab => \i_A3[0]~input_o\,
	datac => \U3|o_C~0_combout\,
	combout => \U4|U2|o_Y\(0));

-- Location: LCCOMB_X25_Y21_N2
\U4|U2|o_Y[1]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U4|U2|o_Y\(1) = \U3|Add0~0_combout\ $ (\i_A3[1]~input_o\ $ (\i_B3[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Add0~0_combout\,
	datab => \i_A3[1]~input_o\,
	datac => \i_B3[1]~input_o\,
	combout => \U4|U2|o_Y\(1));

-- Location: LCCOMB_X25_Y21_N12
\U4|U2|o_Y[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U4|U2|o_Y\(2) = \i_B3[2]~input_o\ $ (\U3|Add0~2_combout\ $ (\i_A3[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_B3[2]~input_o\,
	datab => \U3|Add0~2_combout\,
	datac => \i_A3[2]~input_o\,
	combout => \U4|U2|o_Y\(2));

-- Location: LCCOMB_X25_Y21_N14
\U4|U2|o_Y[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U4|U2|o_Y\(3) = \i_A3[3]~input_o\ $ (\i_B3[3]~input_o\ $ (\U3|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_A3[3]~input_o\,
	datac => \i_B3[3]~input_o\,
	datad => \U3|Add0~4_combout\,
	combout => \U4|U2|o_Y\(3));

ww_o_C(0) <= \o_C[0]~output_o\;

ww_o_C(1) <= \o_C[1]~output_o\;

ww_o_C(2) <= \o_C[2]~output_o\;

ww_o_C(3) <= \o_C[3]~output_o\;

ww_o_Y0(0) <= \o_Y0[0]~output_o\;

ww_o_Y0(1) <= \o_Y0[1]~output_o\;

ww_o_Y0(2) <= \o_Y0[2]~output_o\;

ww_o_Y0(3) <= \o_Y0[3]~output_o\;

ww_o_Y1(0) <= \o_Y1[0]~output_o\;

ww_o_Y1(1) <= \o_Y1[1]~output_o\;

ww_o_Y1(2) <= \o_Y1[2]~output_o\;

ww_o_Y1(3) <= \o_Y1[3]~output_o\;

ww_o_Y2(0) <= \o_Y2[0]~output_o\;

ww_o_Y2(1) <= \o_Y2[1]~output_o\;

ww_o_Y2(2) <= \o_Y2[2]~output_o\;

ww_o_Y2(3) <= \o_Y2[3]~output_o\;

ww_o_Y3(0) <= \o_Y3[0]~output_o\;

ww_o_Y3(1) <= \o_Y3[1]~output_o\;

ww_o_Y3(2) <= \o_Y3[2]~output_o\;

ww_o_Y3(3) <= \o_Y3[3]~output_o\;
END structure;



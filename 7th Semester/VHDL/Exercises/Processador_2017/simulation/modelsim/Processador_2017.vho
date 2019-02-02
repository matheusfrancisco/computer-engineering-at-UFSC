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

-- DATE "04/27/2017 18:42:21"

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

ENTITY 	PROCESSADOR IS
    PORT (
	i_CLK : IN std_logic;
	i_RST : IN std_logic;
	i_DATA_ROM : IN std_logic_vector(15 DOWNTO 0);
	o_ADD_ROM : OUT std_logic_vector(11 DOWNTO 0);
	o_DATA_IO : OUT std_logic_vector(15 DOWNTO 0)
	);
END PROCESSADOR;

-- Design Ports Information
-- o_ADD_ROM[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADD_ROM[1]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADD_ROM[2]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADD_ROM[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADD_ROM[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADD_ROM[5]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADD_ROM[6]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADD_ROM[7]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADD_ROM[8]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADD_ROM[9]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADD_ROM[10]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_ADD_ROM[11]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IO[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IO[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IO[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IO[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IO[4]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IO[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IO[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IO[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IO[8]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IO[9]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IO[10]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IO[11]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IO[12]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IO[13]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IO[14]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_DATA_IO[15]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_CLK	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_RST	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_ROM[13]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_ROM[12]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_ROM[15]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_ROM[14]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_ROM[8]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_ROM[9]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_ROM[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_ROM[6]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_ROM[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_ROM[10]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_ROM[11]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_ROM[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_ROM[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_ROM[3]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_ROM[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_DATA_ROM[5]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PROCESSADOR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_CLK : std_logic;
SIGNAL ww_i_RST : std_logic;
SIGNAL ww_i_DATA_ROM : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_ADD_ROM : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_o_DATA_IO : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_ADD_ROM[0]~output_o\ : std_logic;
SIGNAL \o_ADD_ROM[1]~output_o\ : std_logic;
SIGNAL \o_ADD_ROM[2]~output_o\ : std_logic;
SIGNAL \o_ADD_ROM[3]~output_o\ : std_logic;
SIGNAL \o_ADD_ROM[4]~output_o\ : std_logic;
SIGNAL \o_ADD_ROM[5]~output_o\ : std_logic;
SIGNAL \o_ADD_ROM[6]~output_o\ : std_logic;
SIGNAL \o_ADD_ROM[7]~output_o\ : std_logic;
SIGNAL \o_ADD_ROM[8]~output_o\ : std_logic;
SIGNAL \o_ADD_ROM[9]~output_o\ : std_logic;
SIGNAL \o_ADD_ROM[10]~output_o\ : std_logic;
SIGNAL \o_ADD_ROM[11]~output_o\ : std_logic;
SIGNAL \o_DATA_IO[0]~output_o\ : std_logic;
SIGNAL \o_DATA_IO[1]~output_o\ : std_logic;
SIGNAL \o_DATA_IO[2]~output_o\ : std_logic;
SIGNAL \o_DATA_IO[3]~output_o\ : std_logic;
SIGNAL \o_DATA_IO[4]~output_o\ : std_logic;
SIGNAL \o_DATA_IO[5]~output_o\ : std_logic;
SIGNAL \o_DATA_IO[6]~output_o\ : std_logic;
SIGNAL \o_DATA_IO[7]~output_o\ : std_logic;
SIGNAL \o_DATA_IO[8]~output_o\ : std_logic;
SIGNAL \o_DATA_IO[9]~output_o\ : std_logic;
SIGNAL \o_DATA_IO[10]~output_o\ : std_logic;
SIGNAL \o_DATA_IO[11]~output_o\ : std_logic;
SIGNAL \o_DATA_IO[12]~output_o\ : std_logic;
SIGNAL \o_DATA_IO[13]~output_o\ : std_logic;
SIGNAL \o_DATA_IO[14]~output_o\ : std_logic;
SIGNAL \o_DATA_IO[15]~output_o\ : std_logic;
SIGNAL \i_CLK~input_o\ : std_logic;
SIGNAL \i_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_DATA_ROM[13]~input_o\ : std_logic;
SIGNAL \CC|IR|o_DATA[13]~feeder_combout\ : std_logic;
SIGNAL \i_RST~input_o\ : std_logic;
SIGNAL \i_RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_DATA_ROM[12]~input_o\ : std_logic;
SIGNAL \i_DATA_ROM[14]~input_o\ : std_logic;
SIGNAL \i_DATA_ROM[15]~input_o\ : std_logic;
SIGNAL \CC|w_WR_PC~0_combout\ : std_logic;
SIGNAL \CC|PC|o_DATA[0]~11_combout\ : std_logic;
SIGNAL \CC|PC|o_DATA[1]~12_combout\ : std_logic;
SIGNAL \CC|PC|o_DATA[1]~13\ : std_logic;
SIGNAL \CC|PC|o_DATA[2]~14_combout\ : std_logic;
SIGNAL \CC|PC|o_DATA[2]~15\ : std_logic;
SIGNAL \CC|PC|o_DATA[3]~16_combout\ : std_logic;
SIGNAL \CC|PC|o_DATA[3]~17\ : std_logic;
SIGNAL \CC|PC|o_DATA[4]~18_combout\ : std_logic;
SIGNAL \CC|PC|o_DATA[4]~19\ : std_logic;
SIGNAL \CC|PC|o_DATA[5]~20_combout\ : std_logic;
SIGNAL \CC|PC|o_DATA[5]~21\ : std_logic;
SIGNAL \CC|PC|o_DATA[6]~22_combout\ : std_logic;
SIGNAL \CC|PC|o_DATA[6]~23\ : std_logic;
SIGNAL \CC|PC|o_DATA[7]~24_combout\ : std_logic;
SIGNAL \CC|PC|o_DATA[7]~25\ : std_logic;
SIGNAL \CC|PC|o_DATA[8]~26_combout\ : std_logic;
SIGNAL \CC|PC|o_DATA[8]~27\ : std_logic;
SIGNAL \CC|PC|o_DATA[9]~28_combout\ : std_logic;
SIGNAL \CC|PC|o_DATA[9]~29\ : std_logic;
SIGNAL \CC|PC|o_DATA[10]~30_combout\ : std_logic;
SIGNAL \CC|PC|o_DATA[10]~31\ : std_logic;
SIGNAL \CC|PC|o_DATA[11]~32_combout\ : std_logic;
SIGNAL \i_DATA_ROM[8]~input_o\ : std_logic;
SIGNAL \CC|o_SEL_ULA~0_combout\ : std_logic;
SIGNAL \i_DATA_ROM[0]~input_o\ : std_logic;
SIGNAL \i_DATA_ROM[7]~input_o\ : std_logic;
SIGNAL \CC|IR|o_DATA[7]~feeder_combout\ : std_logic;
SIGNAL \i_DATA_ROM[11]~input_o\ : std_logic;
SIGNAL \i_DATA_ROM[10]~input_o\ : std_logic;
SIGNAL \CD|U01|w_WR2~1_combout\ : std_logic;
SIGNAL \i_DATA_ROM[6]~input_o\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|_~0_combout\ : std_logic;
SIGNAL \CD|U01|w_WR1~combout\ : std_logic;
SIGNAL \CD|U01|U04|o_DATA[0]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|w_WR2~2_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|_~1_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|_~2_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[0]~1_cout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[1]~2_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \CD|U01|U02|o_DATA[0]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|w_WR2~0_combout\ : std_logic;
SIGNAL \i_DATA_ROM[9]~input_o\ : std_logic;
SIGNAL \CC|IR|o_DATA[9]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[0]~0_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[0]~1_combout\ : std_logic;
SIGNAL \CC|o_WR_IO~0_combout\ : std_logic;
SIGNAL \i_DATA_ROM[1]~input_o\ : std_logic;
SIGNAL \CC|IR|o_DATA[1]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|U01|o_DATA[1]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|U02|o_DATA[1]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[1]~0_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[1]~1_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|_~3_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[1]~3\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[2]~4_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|op_1~21_combout\ : std_logic;
SIGNAL \CD|U01|U03|o_DATA[1]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[1]~2_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[1]~3_combout\ : std_logic;
SIGNAL \i_DATA_ROM[2]~input_o\ : std_logic;
SIGNAL \CC|IR|o_DATA[2]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|U03|o_DATA[2]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|U01|o_DATA[2]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[2]~2_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[2]~3_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|_~4_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[2]~5\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[3]~6_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[2]~4_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[2]~5_combout\ : std_logic;
SIGNAL \CD|U03|o_DATA[2]~feeder_combout\ : std_logic;
SIGNAL \i_DATA_ROM[3]~input_o\ : std_logic;
SIGNAL \CD|U01|U02|o_DATA[3]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[3]~4_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[3]~5_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|_~5_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[3]~7\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[4]~8_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|op_1~23_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[3]~6_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[3]~7_combout\ : std_logic;
SIGNAL \CD|U03|o_DATA[3]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[4]~6_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[4]~7_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|_~6_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[4]~9\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[5]~10_combout\ : std_logic;
SIGNAL \i_DATA_ROM[4]~input_o\ : std_logic;
SIGNAL \CC|IR|o_DATA[4]~feeder_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[4]~8_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[4]~9_combout\ : std_logic;
SIGNAL \CD|U03|o_DATA[4]~feeder_combout\ : std_logic;
SIGNAL \i_DATA_ROM[5]~input_o\ : std_logic;
SIGNAL \CD|U01|U02|o_DATA[5]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[5]~8_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[5]~9_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|_~7_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[5]~11\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[6]~12_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|op_1~25_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[5]~10_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[5]~11_combout\ : std_logic;
SIGNAL \CD|U03|o_DATA[5]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[6]~10_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[6]~11_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|_~8_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[6]~13\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[7]~14_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[6]~12_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[6]~13_combout\ : std_logic;
SIGNAL \CD|U03|o_DATA[6]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|U02|o_DATA[7]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[7]~12_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[7]~13_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|_~9_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[7]~15\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[8]~16_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|op_1~27_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[7]~14_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[7]~15_combout\ : std_logic;
SIGNAL \CD|U03|o_DATA[7]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|U01|o_DATA[8]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[8]~14_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[8]~15_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|_~10_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[8]~17\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[9]~18_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \CD|U01|U02|o_DATA[8]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[8]~16_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[8]~17_combout\ : std_logic;
SIGNAL \CD|U01|U02|o_DATA[9]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|U01|o_DATA[9]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[9]~16_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[9]~17_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|_~11_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[9]~19\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[10]~20_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|op_1~29_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[9]~18_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[9]~19_combout\ : std_logic;
SIGNAL \CD|U01|U01|o_DATA[10]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[10]~18_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[10]~19_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|_~12_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[10]~21\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[11]~22_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[10]~20_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[10]~21_combout\ : std_logic;
SIGNAL \CD|U03|o_DATA[10]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|U03|o_DATA[11]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|U02|o_DATA[11]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|U01|o_DATA[11]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[11]~20_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[11]~21_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|_~13_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[11]~23\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[12]~24_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|op_1~31_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[11]~22_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[11]~23_combout\ : std_logic;
SIGNAL \CD|U01|U01|o_DATA[12]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[12]~22_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[12]~23_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|_~14_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[12]~25\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[13]~26_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \CD|U01|U04|o_DATA[12]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[12]~24_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[12]~25_combout\ : std_logic;
SIGNAL \CD|U01|U03|o_DATA[13]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[13]~24_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[13]~25_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|_~15_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[13]~27\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[14]~28_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|op_1~33_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[13]~26_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[13]~27_combout\ : std_logic;
SIGNAL \CD|U03|o_DATA[13]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[14]~26_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[14]~27_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|_~16_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[14]~29\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[15]~30_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[14]~28_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[14]~29_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[15]~28_combout\ : std_logic;
SIGNAL \CD|U01|o_RS2[15]~29_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|_~17_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[15]~31\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|result_int[16]~32_combout\ : std_logic;
SIGNAL \CD|U02|Add0|auto_generated|op_1~35_combout\ : std_logic;
SIGNAL \CD|U01|U03|o_DATA[15]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[15]~30_combout\ : std_logic;
SIGNAL \CD|U01|o_RS1[15]~31_combout\ : std_logic;
SIGNAL \CD|U03|o_DATA[15]~feeder_combout\ : std_logic;
SIGNAL \CD|U01|U01|o_DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CD|U01|U02|o_DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CD|U01|U03|o_DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CD|U01|U04|o_DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CD|U03|o_DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CC|PC|o_DATA\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \CC|IR|o_DATA\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_i_RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_i_CLK~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_i_CLK <= i_CLK;
ww_i_RST <= i_RST;
ww_i_DATA_ROM <= i_DATA_ROM;
o_ADD_ROM <= ww_o_ADD_ROM;
o_DATA_IO <= ww_o_DATA_IO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_CLK~input_o\);

\i_RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_RST~input_o\);
\ALT_INV_i_RST~inputclkctrl_outclk\ <= NOT \i_RST~inputclkctrl_outclk\;
\ALT_INV_i_CLK~inputclkctrl_outclk\ <= NOT \i_CLK~inputclkctrl_outclk\;

-- Location: IOOBUF_X30_Y29_N2
\o_ADD_ROM[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CC|PC|o_DATA\(0),
	devoe => ww_devoe,
	o => \o_ADD_ROM[0]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\o_ADD_ROM[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CC|PC|o_DATA\(1),
	devoe => ww_devoe,
	o => \o_ADD_ROM[1]~output_o\);

-- Location: IOOBUF_X14_Y29_N9
\o_ADD_ROM[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CC|PC|o_DATA\(2),
	devoe => ww_devoe,
	o => \o_ADD_ROM[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\o_ADD_ROM[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CC|PC|o_DATA\(3),
	devoe => ww_devoe,
	o => \o_ADD_ROM[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\o_ADD_ROM[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CC|PC|o_DATA\(4),
	devoe => ww_devoe,
	o => \o_ADD_ROM[4]~output_o\);

-- Location: IOOBUF_X14_Y29_N16
\o_ADD_ROM[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CC|PC|o_DATA\(5),
	devoe => ww_devoe,
	o => \o_ADD_ROM[5]~output_o\);

-- Location: IOOBUF_X23_Y29_N16
\o_ADD_ROM[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CC|PC|o_DATA\(6),
	devoe => ww_devoe,
	o => \o_ADD_ROM[6]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\o_ADD_ROM[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CC|PC|o_DATA\(7),
	devoe => ww_devoe,
	o => \o_ADD_ROM[7]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\o_ADD_ROM[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CC|PC|o_DATA\(8),
	devoe => ww_devoe,
	o => \o_ADD_ROM[8]~output_o\);

-- Location: IOOBUF_X19_Y29_N30
\o_ADD_ROM[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CC|PC|o_DATA\(9),
	devoe => ww_devoe,
	o => \o_ADD_ROM[9]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\o_ADD_ROM[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CC|PC|o_DATA\(10),
	devoe => ww_devoe,
	o => \o_ADD_ROM[10]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\o_ADD_ROM[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CC|PC|o_DATA\(11),
	devoe => ww_devoe,
	o => \o_ADD_ROM[11]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\o_DATA_IO[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CD|U03|o_DATA\(0),
	devoe => ww_devoe,
	o => \o_DATA_IO[0]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\o_DATA_IO[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CD|U03|o_DATA\(1),
	devoe => ww_devoe,
	o => \o_DATA_IO[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\o_DATA_IO[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CD|U03|o_DATA\(2),
	devoe => ww_devoe,
	o => \o_DATA_IO[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\o_DATA_IO[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CD|U03|o_DATA\(3),
	devoe => ww_devoe,
	o => \o_DATA_IO[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\o_DATA_IO[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CD|U03|o_DATA\(4),
	devoe => ww_devoe,
	o => \o_DATA_IO[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\o_DATA_IO[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CD|U03|o_DATA\(5),
	devoe => ww_devoe,
	o => \o_DATA_IO[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\o_DATA_IO[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CD|U03|o_DATA\(6),
	devoe => ww_devoe,
	o => \o_DATA_IO[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\o_DATA_IO[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CD|U03|o_DATA\(7),
	devoe => ww_devoe,
	o => \o_DATA_IO[7]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\o_DATA_IO[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CD|U03|o_DATA\(8),
	devoe => ww_devoe,
	o => \o_DATA_IO[8]~output_o\);

-- Location: IOOBUF_X14_Y29_N2
\o_DATA_IO[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CD|U03|o_DATA\(9),
	devoe => ww_devoe,
	o => \o_DATA_IO[9]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\o_DATA_IO[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CD|U03|o_DATA\(10),
	devoe => ww_devoe,
	o => \o_DATA_IO[10]~output_o\);

-- Location: IOOBUF_X23_Y0_N30
\o_DATA_IO[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CD|U03|o_DATA\(11),
	devoe => ww_devoe,
	o => \o_DATA_IO[11]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\o_DATA_IO[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CD|U03|o_DATA\(12),
	devoe => ww_devoe,
	o => \o_DATA_IO[12]~output_o\);

-- Location: IOOBUF_X16_Y29_N2
\o_DATA_IO[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CD|U03|o_DATA\(13),
	devoe => ww_devoe,
	o => \o_DATA_IO[13]~output_o\);

-- Location: IOOBUF_X41_Y22_N23
\o_DATA_IO[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CD|U03|o_DATA\(14),
	devoe => ww_devoe,
	o => \o_DATA_IO[14]~output_o\);

-- Location: IOOBUF_X16_Y29_N9
\o_DATA_IO[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CD|U03|o_DATA\(15),
	devoe => ww_devoe,
	o => \o_DATA_IO[15]~output_o\);

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

-- Location: IOIBUF_X23_Y29_N1
\i_DATA_ROM[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_ROM(13),
	o => \i_DATA_ROM[13]~input_o\);

-- Location: LCCOMB_X23_Y25_N6
\CC|IR|o_DATA[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CC|IR|o_DATA[13]~feeder_combout\ = \i_DATA_ROM[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA_ROM[13]~input_o\,
	combout => \CC|IR|o_DATA[13]~feeder_combout\);

-- Location: IOIBUF_X0_Y14_N8
\i_RST~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_RST,
	o => \i_RST~input_o\);

-- Location: CLKCTRL_G2
\i_RST~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_RST~inputclkctrl_outclk\);

-- Location: FF_X23_Y25_N7
\CC|IR|o_DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CC|IR|o_DATA[13]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|IR|o_DATA\(13));

-- Location: IOIBUF_X30_Y29_N8
\i_DATA_ROM[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_ROM(12),
	o => \i_DATA_ROM[12]~input_o\);

-- Location: FF_X22_Y23_N9
\CC|IR|o_DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA_ROM[12]~input_o\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|IR|o_DATA\(12));

-- Location: IOIBUF_X23_Y29_N8
\i_DATA_ROM[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_ROM(14),
	o => \i_DATA_ROM[14]~input_o\);

-- Location: FF_X23_Y25_N31
\CC|IR|o_DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA_ROM[14]~input_o\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|IR|o_DATA\(14));

-- Location: IOIBUF_X32_Y29_N1
\i_DATA_ROM[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_ROM(15),
	o => \i_DATA_ROM[15]~input_o\);

-- Location: FF_X23_Y25_N1
\CC|IR|o_DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA_ROM[15]~input_o\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|IR|o_DATA\(15));

-- Location: LCCOMB_X23_Y25_N30
\CC|w_WR_PC~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CC|w_WR_PC~0_combout\ = (!\CC|IR|o_DATA\(14) & (!\CC|IR|o_DATA\(15) & ((\CC|IR|o_DATA\(13)) # (\CC|IR|o_DATA\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(13),
	datab => \CC|IR|o_DATA\(12),
	datac => \CC|IR|o_DATA\(14),
	datad => \CC|IR|o_DATA\(15),
	combout => \CC|w_WR_PC~0_combout\);

-- Location: LCCOMB_X23_Y25_N4
\CC|PC|o_DATA[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CC|PC|o_DATA[0]~11_combout\ = \CC|PC|o_DATA\(0) $ (\CC|w_WR_PC~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CC|PC|o_DATA\(0),
	datad => \CC|w_WR_PC~0_combout\,
	combout => \CC|PC|o_DATA[0]~11_combout\);

-- Location: FF_X23_Y25_N5
\CC|PC|o_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CC|PC|o_DATA[0]~11_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|PC|o_DATA\(0));

-- Location: LCCOMB_X23_Y25_N8
\CC|PC|o_DATA[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CC|PC|o_DATA[1]~12_combout\ = (\CC|PC|o_DATA\(0) & (\CC|PC|o_DATA\(1) $ (VCC))) # (!\CC|PC|o_DATA\(0) & (\CC|PC|o_DATA\(1) & VCC))
-- \CC|PC|o_DATA[1]~13\ = CARRY((\CC|PC|o_DATA\(0) & \CC|PC|o_DATA\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|PC|o_DATA\(0),
	datab => \CC|PC|o_DATA\(1),
	datad => VCC,
	combout => \CC|PC|o_DATA[1]~12_combout\,
	cout => \CC|PC|o_DATA[1]~13\);

-- Location: FF_X23_Y25_N9
\CC|PC|o_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CC|PC|o_DATA[1]~12_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CC|w_WR_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|PC|o_DATA\(1));

-- Location: LCCOMB_X23_Y25_N10
\CC|PC|o_DATA[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CC|PC|o_DATA[2]~14_combout\ = (\CC|PC|o_DATA\(2) & (!\CC|PC|o_DATA[1]~13\)) # (!\CC|PC|o_DATA\(2) & ((\CC|PC|o_DATA[1]~13\) # (GND)))
-- \CC|PC|o_DATA[2]~15\ = CARRY((!\CC|PC|o_DATA[1]~13\) # (!\CC|PC|o_DATA\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CC|PC|o_DATA\(2),
	datad => VCC,
	cin => \CC|PC|o_DATA[1]~13\,
	combout => \CC|PC|o_DATA[2]~14_combout\,
	cout => \CC|PC|o_DATA[2]~15\);

-- Location: FF_X23_Y25_N11
\CC|PC|o_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CC|PC|o_DATA[2]~14_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CC|w_WR_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|PC|o_DATA\(2));

-- Location: LCCOMB_X23_Y25_N12
\CC|PC|o_DATA[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CC|PC|o_DATA[3]~16_combout\ = (\CC|PC|o_DATA\(3) & (\CC|PC|o_DATA[2]~15\ $ (GND))) # (!\CC|PC|o_DATA\(3) & (!\CC|PC|o_DATA[2]~15\ & VCC))
-- \CC|PC|o_DATA[3]~17\ = CARRY((\CC|PC|o_DATA\(3) & !\CC|PC|o_DATA[2]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CC|PC|o_DATA\(3),
	datad => VCC,
	cin => \CC|PC|o_DATA[2]~15\,
	combout => \CC|PC|o_DATA[3]~16_combout\,
	cout => \CC|PC|o_DATA[3]~17\);

-- Location: FF_X23_Y25_N13
\CC|PC|o_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CC|PC|o_DATA[3]~16_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CC|w_WR_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|PC|o_DATA\(3));

-- Location: LCCOMB_X23_Y25_N14
\CC|PC|o_DATA[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CC|PC|o_DATA[4]~18_combout\ = (\CC|PC|o_DATA\(4) & (!\CC|PC|o_DATA[3]~17\)) # (!\CC|PC|o_DATA\(4) & ((\CC|PC|o_DATA[3]~17\) # (GND)))
-- \CC|PC|o_DATA[4]~19\ = CARRY((!\CC|PC|o_DATA[3]~17\) # (!\CC|PC|o_DATA\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CC|PC|o_DATA\(4),
	datad => VCC,
	cin => \CC|PC|o_DATA[3]~17\,
	combout => \CC|PC|o_DATA[4]~18_combout\,
	cout => \CC|PC|o_DATA[4]~19\);

-- Location: FF_X23_Y25_N15
\CC|PC|o_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CC|PC|o_DATA[4]~18_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CC|w_WR_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|PC|o_DATA\(4));

-- Location: LCCOMB_X23_Y25_N16
\CC|PC|o_DATA[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CC|PC|o_DATA[5]~20_combout\ = (\CC|PC|o_DATA\(5) & (\CC|PC|o_DATA[4]~19\ $ (GND))) # (!\CC|PC|o_DATA\(5) & (!\CC|PC|o_DATA[4]~19\ & VCC))
-- \CC|PC|o_DATA[5]~21\ = CARRY((\CC|PC|o_DATA\(5) & !\CC|PC|o_DATA[4]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CC|PC|o_DATA\(5),
	datad => VCC,
	cin => \CC|PC|o_DATA[4]~19\,
	combout => \CC|PC|o_DATA[5]~20_combout\,
	cout => \CC|PC|o_DATA[5]~21\);

-- Location: FF_X23_Y25_N17
\CC|PC|o_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CC|PC|o_DATA[5]~20_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CC|w_WR_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|PC|o_DATA\(5));

-- Location: LCCOMB_X23_Y25_N18
\CC|PC|o_DATA[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CC|PC|o_DATA[6]~22_combout\ = (\CC|PC|o_DATA\(6) & (!\CC|PC|o_DATA[5]~21\)) # (!\CC|PC|o_DATA\(6) & ((\CC|PC|o_DATA[5]~21\) # (GND)))
-- \CC|PC|o_DATA[6]~23\ = CARRY((!\CC|PC|o_DATA[5]~21\) # (!\CC|PC|o_DATA\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CC|PC|o_DATA\(6),
	datad => VCC,
	cin => \CC|PC|o_DATA[5]~21\,
	combout => \CC|PC|o_DATA[6]~22_combout\,
	cout => \CC|PC|o_DATA[6]~23\);

-- Location: FF_X23_Y25_N19
\CC|PC|o_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CC|PC|o_DATA[6]~22_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CC|w_WR_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|PC|o_DATA\(6));

-- Location: LCCOMB_X23_Y25_N20
\CC|PC|o_DATA[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CC|PC|o_DATA[7]~24_combout\ = (\CC|PC|o_DATA\(7) & (\CC|PC|o_DATA[6]~23\ $ (GND))) # (!\CC|PC|o_DATA\(7) & (!\CC|PC|o_DATA[6]~23\ & VCC))
-- \CC|PC|o_DATA[7]~25\ = CARRY((\CC|PC|o_DATA\(7) & !\CC|PC|o_DATA[6]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CC|PC|o_DATA\(7),
	datad => VCC,
	cin => \CC|PC|o_DATA[6]~23\,
	combout => \CC|PC|o_DATA[7]~24_combout\,
	cout => \CC|PC|o_DATA[7]~25\);

-- Location: FF_X23_Y25_N21
\CC|PC|o_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CC|PC|o_DATA[7]~24_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CC|w_WR_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|PC|o_DATA\(7));

-- Location: LCCOMB_X23_Y25_N22
\CC|PC|o_DATA[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CC|PC|o_DATA[8]~26_combout\ = (\CC|PC|o_DATA\(8) & (!\CC|PC|o_DATA[7]~25\)) # (!\CC|PC|o_DATA\(8) & ((\CC|PC|o_DATA[7]~25\) # (GND)))
-- \CC|PC|o_DATA[8]~27\ = CARRY((!\CC|PC|o_DATA[7]~25\) # (!\CC|PC|o_DATA\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CC|PC|o_DATA\(8),
	datad => VCC,
	cin => \CC|PC|o_DATA[7]~25\,
	combout => \CC|PC|o_DATA[8]~26_combout\,
	cout => \CC|PC|o_DATA[8]~27\);

-- Location: FF_X23_Y25_N23
\CC|PC|o_DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CC|PC|o_DATA[8]~26_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CC|w_WR_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|PC|o_DATA\(8));

-- Location: LCCOMB_X23_Y25_N24
\CC|PC|o_DATA[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CC|PC|o_DATA[9]~28_combout\ = (\CC|PC|o_DATA\(9) & (\CC|PC|o_DATA[8]~27\ $ (GND))) # (!\CC|PC|o_DATA\(9) & (!\CC|PC|o_DATA[8]~27\ & VCC))
-- \CC|PC|o_DATA[9]~29\ = CARRY((\CC|PC|o_DATA\(9) & !\CC|PC|o_DATA[8]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CC|PC|o_DATA\(9),
	datad => VCC,
	cin => \CC|PC|o_DATA[8]~27\,
	combout => \CC|PC|o_DATA[9]~28_combout\,
	cout => \CC|PC|o_DATA[9]~29\);

-- Location: FF_X23_Y25_N25
\CC|PC|o_DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CC|PC|o_DATA[9]~28_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CC|w_WR_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|PC|o_DATA\(9));

-- Location: LCCOMB_X23_Y25_N26
\CC|PC|o_DATA[10]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CC|PC|o_DATA[10]~30_combout\ = (\CC|PC|o_DATA\(10) & (!\CC|PC|o_DATA[9]~29\)) # (!\CC|PC|o_DATA\(10) & ((\CC|PC|o_DATA[9]~29\) # (GND)))
-- \CC|PC|o_DATA[10]~31\ = CARRY((!\CC|PC|o_DATA[9]~29\) # (!\CC|PC|o_DATA\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CC|PC|o_DATA\(10),
	datad => VCC,
	cin => \CC|PC|o_DATA[9]~29\,
	combout => \CC|PC|o_DATA[10]~30_combout\,
	cout => \CC|PC|o_DATA[10]~31\);

-- Location: FF_X23_Y25_N27
\CC|PC|o_DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CC|PC|o_DATA[10]~30_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CC|w_WR_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|PC|o_DATA\(10));

-- Location: LCCOMB_X23_Y25_N28
\CC|PC|o_DATA[11]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CC|PC|o_DATA[11]~32_combout\ = \CC|PC|o_DATA[10]~31\ $ (!\CC|PC|o_DATA\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CC|PC|o_DATA\(11),
	cin => \CC|PC|o_DATA[10]~31\,
	combout => \CC|PC|o_DATA[11]~32_combout\);

-- Location: FF_X23_Y25_N29
\CC|PC|o_DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CC|PC|o_DATA[11]~32_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CC|w_WR_PC~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|PC|o_DATA\(11));

-- Location: IOIBUF_X28_Y29_N15
\i_DATA_ROM[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_ROM(8),
	o => \i_DATA_ROM[8]~input_o\);

-- Location: FF_X24_Y21_N13
\CC|IR|o_DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA_ROM[8]~input_o\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|IR|o_DATA\(8));

-- Location: LCCOMB_X23_Y25_N2
\CC|o_SEL_ULA~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CC|o_SEL_ULA~0_combout\ = (\CC|IR|o_DATA\(15)) # ((\CC|IR|o_DATA\(14)) # (!\CC|IR|o_DATA\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CC|IR|o_DATA\(15),
	datac => \CC|IR|o_DATA\(14),
	datad => \CC|IR|o_DATA\(13),
	combout => \CC|o_SEL_ULA~0_combout\);

-- Location: IOIBUF_X16_Y29_N29
\i_DATA_ROM[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_ROM(0),
	o => \i_DATA_ROM[0]~input_o\);

-- Location: FF_X21_Y23_N15
\CC|IR|o_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA_ROM[0]~input_o\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|IR|o_DATA\(0));

-- Location: IOIBUF_X28_Y29_N8
\i_DATA_ROM[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_ROM(7),
	o => \i_DATA_ROM[7]~input_o\);

-- Location: LCCOMB_X23_Y21_N6
\CC|IR|o_DATA[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CC|IR|o_DATA[7]~feeder_combout\ = \i_DATA_ROM[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA_ROM[7]~input_o\,
	combout => \CC|IR|o_DATA[7]~feeder_combout\);

-- Location: FF_X23_Y21_N7
\CC|IR|o_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CC|IR|o_DATA[7]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|IR|o_DATA\(7));

-- Location: IOIBUF_X0_Y21_N22
\i_DATA_ROM[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_ROM(11),
	o => \i_DATA_ROM[11]~input_o\);

-- Location: FF_X23_Y21_N1
\CC|IR|o_DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA_ROM[11]~input_o\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|IR|o_DATA\(11));

-- Location: IOIBUF_X32_Y29_N8
\i_DATA_ROM[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_ROM(10),
	o => \i_DATA_ROM[10]~input_o\);

-- Location: FF_X24_Y21_N27
\CC|IR|o_DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA_ROM[10]~input_o\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|IR|o_DATA\(10));

-- Location: LCCOMB_X24_Y21_N30
\CD|U01|w_WR2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|w_WR2~1_combout\ = (\CC|IR|o_DATA\(11) & (!\CC|IR|o_DATA\(10) & \CC|w_WR_PC~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(11),
	datac => \CC|IR|o_DATA\(10),
	datad => \CC|w_WR_PC~0_combout\,
	combout => \CD|U01|w_WR2~1_combout\);

-- Location: FF_X22_Y21_N5
\CD|U01|U03|o_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~20_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U03|o_DATA\(0));

-- Location: IOIBUF_X23_Y0_N8
\i_DATA_ROM[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_ROM(6),
	o => \i_DATA_ROM[6]~input_o\);

-- Location: FF_X24_Y21_N25
\CC|IR|o_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA_ROM[6]~input_o\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|IR|o_DATA\(6));

-- Location: LCCOMB_X22_Y21_N4
\CD|U02|Add0|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|_~0_combout\ = (\CC|IR|o_DATA\(7) & (((\CD|U01|U03|o_DATA\(0)) # (\CC|IR|o_DATA\(6))))) # (!\CC|IR|o_DATA\(7) & ((\CD|U01|U02|o_DATA\(0)) # ((!\CC|IR|o_DATA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(7),
	datab => \CD|U01|U02|o_DATA\(0),
	datac => \CD|U01|U03|o_DATA\(0),
	datad => \CC|IR|o_DATA\(6),
	combout => \CD|U02|Add0|auto_generated|_~0_combout\);

-- Location: LCCOMB_X24_Y21_N26
\CD|U01|w_WR1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|w_WR1~combout\ = (!\CC|IR|o_DATA\(11) & (!\CC|IR|o_DATA\(10) & \CC|w_WR_PC~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(11),
	datac => \CC|IR|o_DATA\(10),
	datad => \CC|w_WR_PC~0_combout\,
	combout => \CD|U01|w_WR1~combout\);

-- Location: FF_X22_Y21_N31
\CD|U01|U01|o_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~20_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U01|o_DATA\(0));

-- Location: LCCOMB_X21_Y23_N20
\CD|U01|U04|o_DATA[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|U04|o_DATA[0]~feeder_combout\ = \CD|U02|Add0|auto_generated|op_1~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CD|U02|Add0|auto_generated|op_1~20_combout\,
	combout => \CD|U01|U04|o_DATA[0]~feeder_combout\);

-- Location: LCCOMB_X24_Y21_N4
\CD|U01|w_WR2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|w_WR2~2_combout\ = (\CC|IR|o_DATA\(11) & (\CC|IR|o_DATA\(10) & \CC|w_WR_PC~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(11),
	datac => \CC|IR|o_DATA\(10),
	datad => \CC|w_WR_PC~0_combout\,
	combout => \CD|U01|w_WR2~2_combout\);

-- Location: FF_X21_Y23_N21
\CD|U01|U04|o_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U01|U04|o_DATA[0]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U04|o_DATA\(0));

-- Location: LCCOMB_X22_Y21_N24
\CD|U02|Add0|auto_generated|_~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|_~1_combout\ = (\CC|IR|o_DATA\(7) & (((\CD|U01|U04|o_DATA\(0)) # (!\CC|IR|o_DATA\(6))))) # (!\CC|IR|o_DATA\(7) & ((\CD|U01|U01|o_DATA\(0)) # ((\CC|IR|o_DATA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U01|o_DATA\(0),
	datab => \CC|IR|o_DATA\(7),
	datac => \CD|U01|U04|o_DATA\(0),
	datad => \CC|IR|o_DATA\(6),
	combout => \CD|U02|Add0|auto_generated|_~1_combout\);

-- Location: LCCOMB_X22_Y23_N8
\CD|U02|Add0|auto_generated|_~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|_~2_combout\ = (\CD|U02|Add0|auto_generated|_~0_combout\ & (\CD|U02|Add0|auto_generated|_~1_combout\ $ (((!\CC|o_SEL_ULA~0_combout\ & \CC|IR|o_DATA\(12)))))) # (!\CD|U02|Add0|auto_generated|_~0_combout\ & 
-- (!\CC|o_SEL_ULA~0_combout\ & (\CC|IR|o_DATA\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U02|Add0|auto_generated|_~0_combout\,
	datab => \CC|o_SEL_ULA~0_combout\,
	datac => \CC|IR|o_DATA\(12),
	datad => \CD|U02|Add0|auto_generated|_~1_combout\,
	combout => \CD|U02|Add0|auto_generated|_~2_combout\);

-- Location: LCCOMB_X22_Y23_N16
\CD|U02|Add0|auto_generated|result_int[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|result_int[0]~1_cout\ = CARRY((\CC|IR|o_DATA\(12) & !\CC|o_SEL_ULA~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(12),
	datab => \CC|o_SEL_ULA~0_combout\,
	datad => VCC,
	cout => \CD|U02|Add0|auto_generated|result_int[0]~1_cout\);

-- Location: LCCOMB_X22_Y23_N18
\CD|U02|Add0|auto_generated|result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|result_int[1]~2_combout\ = (\CD|U01|o_RS1[0]~1_combout\ & ((\CD|U02|Add0|auto_generated|_~2_combout\ & (\CD|U02|Add0|auto_generated|result_int[0]~1_cout\ & VCC)) # (!\CD|U02|Add0|auto_generated|_~2_combout\ & 
-- (!\CD|U02|Add0|auto_generated|result_int[0]~1_cout\)))) # (!\CD|U01|o_RS1[0]~1_combout\ & ((\CD|U02|Add0|auto_generated|_~2_combout\ & (!\CD|U02|Add0|auto_generated|result_int[0]~1_cout\)) # (!\CD|U02|Add0|auto_generated|_~2_combout\ & 
-- ((\CD|U02|Add0|auto_generated|result_int[0]~1_cout\) # (GND)))))
-- \CD|U02|Add0|auto_generated|result_int[1]~3\ = CARRY((\CD|U01|o_RS1[0]~1_combout\ & (!\CD|U02|Add0|auto_generated|_~2_combout\ & !\CD|U02|Add0|auto_generated|result_int[0]~1_cout\)) # (!\CD|U01|o_RS1[0]~1_combout\ & 
-- ((!\CD|U02|Add0|auto_generated|result_int[0]~1_cout\) # (!\CD|U02|Add0|auto_generated|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|o_RS1[0]~1_combout\,
	datab => \CD|U02|Add0|auto_generated|_~2_combout\,
	datad => VCC,
	cin => \CD|U02|Add0|auto_generated|result_int[0]~1_cout\,
	combout => \CD|U02|Add0|auto_generated|result_int[1]~2_combout\,
	cout => \CD|U02|Add0|auto_generated|result_int[1]~3\);

-- Location: LCCOMB_X21_Y23_N14
\CD|U02|Add0|auto_generated|op_1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|op_1~20_combout\ = (\CC|o_SEL_ULA~0_combout\ & (\CC|IR|o_DATA\(0))) # (!\CC|o_SEL_ULA~0_combout\ & ((\CD|U02|Add0|auto_generated|result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CC|o_SEL_ULA~0_combout\,
	datac => \CC|IR|o_DATA\(0),
	datad => \CD|U02|Add0|auto_generated|result_int[1]~2_combout\,
	combout => \CD|U02|Add0|auto_generated|op_1~20_combout\);

-- Location: LCCOMB_X21_Y21_N18
\CD|U01|U02|o_DATA[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|U02|o_DATA[0]~feeder_combout\ = \CD|U02|Add0|auto_generated|op_1~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CD|U02|Add0|auto_generated|op_1~20_combout\,
	combout => \CD|U01|U02|o_DATA[0]~feeder_combout\);

-- Location: LCCOMB_X24_Y21_N8
\CD|U01|w_WR2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|w_WR2~0_combout\ = (!\CC|IR|o_DATA\(11) & (\CC|IR|o_DATA\(10) & \CC|w_WR_PC~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(11),
	datac => \CC|IR|o_DATA\(10),
	datad => \CC|w_WR_PC~0_combout\,
	combout => \CD|U01|w_WR2~0_combout\);

-- Location: FF_X21_Y21_N19
\CD|U01|U02|o_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U01|U02|o_DATA[0]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U02|o_DATA\(0));

-- Location: IOIBUF_X41_Y21_N15
\i_DATA_ROM[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_ROM(9),
	o => \i_DATA_ROM[9]~input_o\);

-- Location: LCCOMB_X24_Y21_N18
\CC|IR|o_DATA[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CC|IR|o_DATA[9]~feeder_combout\ = \i_DATA_ROM[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA_ROM[9]~input_o\,
	combout => \CC|IR|o_DATA[9]~feeder_combout\);

-- Location: FF_X24_Y21_N19
\CC|IR|o_DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CC|IR|o_DATA[9]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|IR|o_DATA\(9));

-- Location: LCCOMB_X24_Y21_N28
\CD|U01|o_RS1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[0]~0_combout\ = (\CC|IR|o_DATA\(8) & (\CC|IR|o_DATA\(9))) # (!\CC|IR|o_DATA\(8) & ((\CC|IR|o_DATA\(9) & ((\CD|U01|U03|o_DATA\(0)))) # (!\CC|IR|o_DATA\(9) & (\CD|U01|U01|o_DATA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(8),
	datab => \CC|IR|o_DATA\(9),
	datac => \CD|U01|U01|o_DATA\(0),
	datad => \CD|U01|U03|o_DATA\(0),
	combout => \CD|U01|o_RS1[0]~0_combout\);

-- Location: LCCOMB_X21_Y21_N4
\CD|U01|o_RS1[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[0]~1_combout\ = (\CC|IR|o_DATA\(8) & ((\CD|U01|o_RS1[0]~0_combout\ & ((\CD|U01|U04|o_DATA\(0)))) # (!\CD|U01|o_RS1[0]~0_combout\ & (\CD|U01|U02|o_DATA\(0))))) # (!\CC|IR|o_DATA\(8) & (((\CD|U01|o_RS1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(8),
	datab => \CD|U01|U02|o_DATA\(0),
	datac => \CD|U01|o_RS1[0]~0_combout\,
	datad => \CD|U01|U04|o_DATA\(0),
	combout => \CD|U01|o_RS1[0]~1_combout\);

-- Location: LCCOMB_X22_Y24_N0
\CC|o_WR_IO~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CC|o_WR_IO~0_combout\ = (\CC|IR|o_DATA\(14) & (!\CC|IR|o_DATA\(12) & (!\CC|IR|o_DATA\(13) & !\CC|IR|o_DATA\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(14),
	datab => \CC|IR|o_DATA\(12),
	datac => \CC|IR|o_DATA\(13),
	datad => \CC|IR|o_DATA\(15),
	combout => \CC|o_WR_IO~0_combout\);

-- Location: FF_X21_Y21_N5
\CD|U03|o_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U01|o_RS1[0]~1_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CC|o_WR_IO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U03|o_DATA\(0));

-- Location: IOIBUF_X16_Y29_N15
\i_DATA_ROM[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_ROM(1),
	o => \i_DATA_ROM[1]~input_o\);

-- Location: LCCOMB_X21_Y23_N16
\CC|IR|o_DATA[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CC|IR|o_DATA[1]~feeder_combout\ = \i_DATA_ROM[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA_ROM[1]~input_o\,
	combout => \CC|IR|o_DATA[1]~feeder_combout\);

-- Location: FF_X21_Y23_N17
\CC|IR|o_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CC|IR|o_DATA[1]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|IR|o_DATA\(1));

-- Location: FF_X22_Y23_N15
\CD|U01|U04|o_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U02|Add0|auto_generated|op_1~21_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U04|o_DATA\(1));

-- Location: LCCOMB_X24_Y21_N6
\CD|U01|U01|o_DATA[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|U01|o_DATA[1]~feeder_combout\ = \CD|U02|Add0|auto_generated|op_1~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CD|U02|Add0|auto_generated|op_1~21_combout\,
	combout => \CD|U01|U01|o_DATA[1]~feeder_combout\);

-- Location: FF_X24_Y21_N7
\CD|U01|U01|o_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U01|U01|o_DATA[1]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U01|o_DATA\(1));

-- Location: LCCOMB_X26_Y21_N16
\CD|U01|U02|o_DATA[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|U02|o_DATA[1]~feeder_combout\ = \CD|U02|Add0|auto_generated|op_1~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CD|U02|Add0|auto_generated|op_1~21_combout\,
	combout => \CD|U01|U02|o_DATA[1]~feeder_combout\);

-- Location: FF_X26_Y21_N17
\CD|U01|U02|o_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U01|U02|o_DATA[1]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U02|o_DATA\(1));

-- Location: LCCOMB_X24_Y21_N10
\CD|U01|o_RS2[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[1]~0_combout\ = (\CC|IR|o_DATA\(6) & (((\CC|IR|o_DATA\(7)) # (\CD|U01|U02|o_DATA\(1))))) # (!\CC|IR|o_DATA\(6) & (\CD|U01|U01|o_DATA\(1) & (!\CC|IR|o_DATA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U01|o_DATA\(1),
	datab => \CC|IR|o_DATA\(6),
	datac => \CC|IR|o_DATA\(7),
	datad => \CD|U01|U02|o_DATA\(1),
	combout => \CD|U01|o_RS2[1]~0_combout\);

-- Location: LCCOMB_X23_Y22_N0
\CD|U01|o_RS2[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[1]~1_combout\ = (\CC|IR|o_DATA\(7) & ((\CD|U01|o_RS2[1]~0_combout\ & (\CD|U01|U04|o_DATA\(1))) # (!\CD|U01|o_RS2[1]~0_combout\ & ((\CD|U01|U03|o_DATA\(1)))))) # (!\CC|IR|o_DATA\(7) & (((\CD|U01|o_RS2[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U04|o_DATA\(1),
	datab => \CD|U01|U03|o_DATA\(1),
	datac => \CC|IR|o_DATA\(7),
	datad => \CD|U01|o_RS2[1]~0_combout\,
	combout => \CD|U01|o_RS2[1]~1_combout\);

-- Location: LCCOMB_X22_Y23_N12
\CD|U02|Add0|auto_generated|_~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|_~3_combout\ = \CD|U01|o_RS2[1]~1_combout\ $ (((!\CC|o_SEL_ULA~0_combout\ & \CC|IR|o_DATA\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CC|o_SEL_ULA~0_combout\,
	datac => \CC|IR|o_DATA\(12),
	datad => \CD|U01|o_RS2[1]~1_combout\,
	combout => \CD|U02|Add0|auto_generated|_~3_combout\);

-- Location: LCCOMB_X22_Y23_N20
\CD|U02|Add0|auto_generated|result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|result_int[2]~4_combout\ = ((\CD|U02|Add0|auto_generated|_~3_combout\ $ (\CD|U01|o_RS1[1]~3_combout\ $ (!\CD|U02|Add0|auto_generated|result_int[1]~3\)))) # (GND)
-- \CD|U02|Add0|auto_generated|result_int[2]~5\ = CARRY((\CD|U02|Add0|auto_generated|_~3_combout\ & ((\CD|U01|o_RS1[1]~3_combout\) # (!\CD|U02|Add0|auto_generated|result_int[1]~3\))) # (!\CD|U02|Add0|auto_generated|_~3_combout\ & (\CD|U01|o_RS1[1]~3_combout\ 
-- & !\CD|U02|Add0|auto_generated|result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U02|Add0|auto_generated|_~3_combout\,
	datab => \CD|U01|o_RS1[1]~3_combout\,
	datad => VCC,
	cin => \CD|U02|Add0|auto_generated|result_int[1]~3\,
	combout => \CD|U02|Add0|auto_generated|result_int[2]~4_combout\,
	cout => \CD|U02|Add0|auto_generated|result_int[2]~5\);

-- Location: LCCOMB_X22_Y23_N14
\CD|U02|Add0|auto_generated|op_1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|op_1~21_combout\ = (\CC|o_SEL_ULA~0_combout\ & (\CC|IR|o_DATA\(1))) # (!\CC|o_SEL_ULA~0_combout\ & ((\CD|U02|Add0|auto_generated|result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CC|o_SEL_ULA~0_combout\,
	datac => \CC|IR|o_DATA\(1),
	datad => \CD|U02|Add0|auto_generated|result_int[2]~4_combout\,
	combout => \CD|U02|Add0|auto_generated|op_1~21_combout\);

-- Location: LCCOMB_X23_Y22_N8
\CD|U01|U03|o_DATA[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|U03|o_DATA[1]~feeder_combout\ = \CD|U02|Add0|auto_generated|op_1~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CD|U02|Add0|auto_generated|op_1~21_combout\,
	combout => \CD|U01|U03|o_DATA[1]~feeder_combout\);

-- Location: FF_X23_Y22_N9
\CD|U01|U03|o_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U01|U03|o_DATA[1]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U03|o_DATA\(1));

-- Location: LCCOMB_X24_Y21_N0
\CD|U01|o_RS1[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[1]~2_combout\ = (\CC|IR|o_DATA\(9) & (((\CC|IR|o_DATA\(8))))) # (!\CC|IR|o_DATA\(9) & ((\CC|IR|o_DATA\(8) & ((\CD|U01|U02|o_DATA\(1)))) # (!\CC|IR|o_DATA\(8) & (\CD|U01|U01|o_DATA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U01|o_DATA\(1),
	datab => \CC|IR|o_DATA\(9),
	datac => \CC|IR|o_DATA\(8),
	datad => \CD|U01|U02|o_DATA\(1),
	combout => \CD|U01|o_RS1[1]~2_combout\);

-- Location: LCCOMB_X23_Y22_N10
\CD|U01|o_RS1[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[1]~3_combout\ = (\CC|IR|o_DATA\(9) & ((\CD|U01|o_RS1[1]~2_combout\ & ((\CD|U01|U04|o_DATA\(1)))) # (!\CD|U01|o_RS1[1]~2_combout\ & (\CD|U01|U03|o_DATA\(1))))) # (!\CC|IR|o_DATA\(9) & (((\CD|U01|o_RS1[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(9),
	datab => \CD|U01|U03|o_DATA\(1),
	datac => \CD|U01|U04|o_DATA\(1),
	datad => \CD|U01|o_RS1[1]~2_combout\,
	combout => \CD|U01|o_RS1[1]~3_combout\);

-- Location: FF_X23_Y22_N29
\CD|U03|o_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U01|o_RS1[1]~3_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CC|o_WR_IO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U03|o_DATA\(1));

-- Location: IOIBUF_X21_Y29_N1
\i_DATA_ROM[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_ROM(2),
	o => \i_DATA_ROM[2]~input_o\);

-- Location: LCCOMB_X21_Y23_N26
\CC|IR|o_DATA[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CC|IR|o_DATA[2]~feeder_combout\ = \i_DATA_ROM[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA_ROM[2]~input_o\,
	combout => \CC|IR|o_DATA[2]~feeder_combout\);

-- Location: FF_X21_Y23_N27
\CC|IR|o_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CC|IR|o_DATA[2]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|IR|o_DATA\(2));

-- Location: FF_X23_Y23_N17
\CD|U01|U02|o_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~22_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U02|o_DATA\(2));

-- Location: LCCOMB_X23_Y21_N4
\CD|U01|U03|o_DATA[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|U03|o_DATA[2]~feeder_combout\ = \CD|U02|Add0|auto_generated|op_1~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CD|U02|Add0|auto_generated|op_1~22_combout\,
	combout => \CD|U01|U03|o_DATA[2]~feeder_combout\);

-- Location: FF_X23_Y21_N5
\CD|U01|U03|o_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U01|U03|o_DATA[2]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U03|o_DATA\(2));

-- Location: LCCOMB_X24_Y21_N14
\CD|U01|U01|o_DATA[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|U01|o_DATA[2]~feeder_combout\ = \CD|U02|Add0|auto_generated|op_1~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CD|U02|Add0|auto_generated|op_1~22_combout\,
	combout => \CD|U01|U01|o_DATA[2]~feeder_combout\);

-- Location: FF_X24_Y21_N15
\CD|U01|U01|o_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U01|U01|o_DATA[2]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U01|o_DATA\(2));

-- Location: LCCOMB_X23_Y21_N2
\CD|U01|o_RS2[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[2]~2_combout\ = (\CC|IR|o_DATA\(7) & ((\CD|U01|U03|o_DATA\(2)) # ((\CC|IR|o_DATA\(6))))) # (!\CC|IR|o_DATA\(7) & (((\CD|U01|U01|o_DATA\(2) & !\CC|IR|o_DATA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(7),
	datab => \CD|U01|U03|o_DATA\(2),
	datac => \CD|U01|U01|o_DATA\(2),
	datad => \CC|IR|o_DATA\(6),
	combout => \CD|U01|o_RS2[2]~2_combout\);

-- Location: LCCOMB_X23_Y23_N16
\CD|U01|o_RS2[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[2]~3_combout\ = (\CC|IR|o_DATA\(6) & ((\CD|U01|o_RS2[2]~2_combout\ & (\CD|U01|U04|o_DATA\(2))) # (!\CD|U01|o_RS2[2]~2_combout\ & ((\CD|U01|U02|o_DATA\(2)))))) # (!\CC|IR|o_DATA\(6) & (((\CD|U01|o_RS2[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(6),
	datab => \CD|U01|U04|o_DATA\(2),
	datac => \CD|U01|U02|o_DATA\(2),
	datad => \CD|U01|o_RS2[2]~2_combout\,
	combout => \CD|U01|o_RS2[2]~3_combout\);

-- Location: LCCOMB_X22_Y23_N10
\CD|U02|Add0|auto_generated|_~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|_~4_combout\ = \CD|U01|o_RS2[2]~3_combout\ $ (((!\CC|o_SEL_ULA~0_combout\ & \CC|IR|o_DATA\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CC|o_SEL_ULA~0_combout\,
	datac => \CC|IR|o_DATA\(12),
	datad => \CD|U01|o_RS2[2]~3_combout\,
	combout => \CD|U02|Add0|auto_generated|_~4_combout\);

-- Location: LCCOMB_X22_Y23_N22
\CD|U02|Add0|auto_generated|result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|result_int[3]~6_combout\ = (\CD|U02|Add0|auto_generated|_~4_combout\ & ((\CD|U01|o_RS1[2]~5_combout\ & (\CD|U02|Add0|auto_generated|result_int[2]~5\ & VCC)) # (!\CD|U01|o_RS1[2]~5_combout\ & 
-- (!\CD|U02|Add0|auto_generated|result_int[2]~5\)))) # (!\CD|U02|Add0|auto_generated|_~4_combout\ & ((\CD|U01|o_RS1[2]~5_combout\ & (!\CD|U02|Add0|auto_generated|result_int[2]~5\)) # (!\CD|U01|o_RS1[2]~5_combout\ & 
-- ((\CD|U02|Add0|auto_generated|result_int[2]~5\) # (GND)))))
-- \CD|U02|Add0|auto_generated|result_int[3]~7\ = CARRY((\CD|U02|Add0|auto_generated|_~4_combout\ & (!\CD|U01|o_RS1[2]~5_combout\ & !\CD|U02|Add0|auto_generated|result_int[2]~5\)) # (!\CD|U02|Add0|auto_generated|_~4_combout\ & 
-- ((!\CD|U02|Add0|auto_generated|result_int[2]~5\) # (!\CD|U01|o_RS1[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U02|Add0|auto_generated|_~4_combout\,
	datab => \CD|U01|o_RS1[2]~5_combout\,
	datad => VCC,
	cin => \CD|U02|Add0|auto_generated|result_int[2]~5\,
	combout => \CD|U02|Add0|auto_generated|result_int[3]~6_combout\,
	cout => \CD|U02|Add0|auto_generated|result_int[3]~7\);

-- Location: LCCOMB_X23_Y23_N18
\CD|U02|Add0|auto_generated|op_1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|op_1~22_combout\ = (\CC|o_SEL_ULA~0_combout\ & (\CC|IR|o_DATA\(2))) # (!\CC|o_SEL_ULA~0_combout\ & ((\CD|U02|Add0|auto_generated|result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CC|o_SEL_ULA~0_combout\,
	datac => \CC|IR|o_DATA\(2),
	datad => \CD|U02|Add0|auto_generated|result_int[3]~6_combout\,
	combout => \CD|U02|Add0|auto_generated|op_1~22_combout\);

-- Location: FF_X23_Y23_N19
\CD|U01|U04|o_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U02|Add0|auto_generated|op_1~22_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U04|o_DATA\(2));

-- Location: LCCOMB_X24_Y21_N20
\CD|U01|o_RS1[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[2]~4_combout\ = (\CC|IR|o_DATA\(8) & (((\CC|IR|o_DATA\(9))))) # (!\CC|IR|o_DATA\(8) & ((\CC|IR|o_DATA\(9) & ((\CD|U01|U03|o_DATA\(2)))) # (!\CC|IR|o_DATA\(9) & (\CD|U01|U01|o_DATA\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(8),
	datab => \CD|U01|U01|o_DATA\(2),
	datac => \CD|U01|U03|o_DATA\(2),
	datad => \CC|IR|o_DATA\(9),
	combout => \CD|U01|o_RS1[2]~4_combout\);

-- Location: LCCOMB_X23_Y23_N0
\CD|U01|o_RS1[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[2]~5_combout\ = (\CC|IR|o_DATA\(8) & ((\CD|U01|o_RS1[2]~4_combout\ & (\CD|U01|U04|o_DATA\(2))) # (!\CD|U01|o_RS1[2]~4_combout\ & ((\CD|U01|U02|o_DATA\(2)))))) # (!\CC|IR|o_DATA\(8) & (((\CD|U01|o_RS1[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(8),
	datab => \CD|U01|U04|o_DATA\(2),
	datac => \CD|U01|o_RS1[2]~4_combout\,
	datad => \CD|U01|U02|o_DATA\(2),
	combout => \CD|U01|o_RS1[2]~5_combout\);

-- Location: LCCOMB_X24_Y23_N24
\CD|U03|o_DATA[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U03|o_DATA[2]~feeder_combout\ = \CD|U01|o_RS1[2]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CD|U01|o_RS1[2]~5_combout\,
	combout => \CD|U03|o_DATA[2]~feeder_combout\);

-- Location: FF_X24_Y23_N25
\CD|U03|o_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U03|o_DATA[2]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CC|o_WR_IO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U03|o_DATA\(2));

-- Location: IOIBUF_X30_Y29_N15
\i_DATA_ROM[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_ROM(3),
	o => \i_DATA_ROM[3]~input_o\);

-- Location: FF_X22_Y23_N27
\CC|IR|o_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA_ROM[3]~input_o\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|IR|o_DATA\(3));

-- Location: FF_X22_Y23_N1
\CD|U01|U04|o_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U02|Add0|auto_generated|op_1~23_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U04|o_DATA\(3));

-- Location: LCCOMB_X23_Y23_N22
\CD|U01|U02|o_DATA[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|U02|o_DATA[3]~feeder_combout\ = \CD|U02|Add0|auto_generated|op_1~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CD|U02|Add0|auto_generated|op_1~23_combout\,
	combout => \CD|U01|U02|o_DATA[3]~feeder_combout\);

-- Location: FF_X23_Y23_N23
\CD|U01|U02|o_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U01|U02|o_DATA[3]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U02|o_DATA\(3));

-- Location: FF_X22_Y21_N7
\CD|U01|U01|o_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~23_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U01|o_DATA\(3));

-- Location: LCCOMB_X22_Y21_N6
\CD|U01|o_RS2[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[3]~4_combout\ = (\CC|IR|o_DATA\(7) & (((\CC|IR|o_DATA\(6))))) # (!\CC|IR|o_DATA\(7) & ((\CC|IR|o_DATA\(6) & (\CD|U01|U02|o_DATA\(3))) # (!\CC|IR|o_DATA\(6) & ((\CD|U01|U01|o_DATA\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(7),
	datab => \CD|U01|U02|o_DATA\(3),
	datac => \CD|U01|U01|o_DATA\(3),
	datad => \CC|IR|o_DATA\(6),
	combout => \CD|U01|o_RS2[3]~4_combout\);

-- Location: LCCOMB_X22_Y21_N8
\CD|U01|o_RS2[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[3]~5_combout\ = (\CC|IR|o_DATA\(7) & ((\CD|U01|o_RS2[3]~4_combout\ & (\CD|U01|U04|o_DATA\(3))) # (!\CD|U01|o_RS2[3]~4_combout\ & ((\CD|U01|U03|o_DATA\(3)))))) # (!\CC|IR|o_DATA\(7) & (((\CD|U01|o_RS2[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(7),
	datab => \CD|U01|U04|o_DATA\(3),
	datac => \CD|U01|U03|o_DATA\(3),
	datad => \CD|U01|o_RS2[3]~4_combout\,
	combout => \CD|U01|o_RS2[3]~5_combout\);

-- Location: LCCOMB_X22_Y23_N4
\CD|U02|Add0|auto_generated|_~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|_~5_combout\ = \CD|U01|o_RS2[3]~5_combout\ $ (((!\CC|o_SEL_ULA~0_combout\ & \CC|IR|o_DATA\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CC|o_SEL_ULA~0_combout\,
	datac => \CC|IR|o_DATA\(12),
	datad => \CD|U01|o_RS2[3]~5_combout\,
	combout => \CD|U02|Add0|auto_generated|_~5_combout\);

-- Location: LCCOMB_X22_Y23_N24
\CD|U02|Add0|auto_generated|result_int[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|result_int[4]~8_combout\ = ((\CD|U01|o_RS1[3]~7_combout\ $ (\CD|U02|Add0|auto_generated|_~5_combout\ $ (!\CD|U02|Add0|auto_generated|result_int[3]~7\)))) # (GND)
-- \CD|U02|Add0|auto_generated|result_int[4]~9\ = CARRY((\CD|U01|o_RS1[3]~7_combout\ & ((\CD|U02|Add0|auto_generated|_~5_combout\) # (!\CD|U02|Add0|auto_generated|result_int[3]~7\))) # (!\CD|U01|o_RS1[3]~7_combout\ & (\CD|U02|Add0|auto_generated|_~5_combout\ 
-- & !\CD|U02|Add0|auto_generated|result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|o_RS1[3]~7_combout\,
	datab => \CD|U02|Add0|auto_generated|_~5_combout\,
	datad => VCC,
	cin => \CD|U02|Add0|auto_generated|result_int[3]~7\,
	combout => \CD|U02|Add0|auto_generated|result_int[4]~8_combout\,
	cout => \CD|U02|Add0|auto_generated|result_int[4]~9\);

-- Location: LCCOMB_X22_Y23_N0
\CD|U02|Add0|auto_generated|op_1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|op_1~23_combout\ = (\CC|o_SEL_ULA~0_combout\ & (\CC|IR|o_DATA\(3))) # (!\CC|o_SEL_ULA~0_combout\ & ((\CD|U02|Add0|auto_generated|result_int[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CC|o_SEL_ULA~0_combout\,
	datac => \CC|IR|o_DATA\(3),
	datad => \CD|U02|Add0|auto_generated|result_int[4]~8_combout\,
	combout => \CD|U02|Add0|auto_generated|op_1~23_combout\);

-- Location: FF_X22_Y21_N9
\CD|U01|U03|o_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~23_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U03|o_DATA\(3));

-- Location: LCCOMB_X24_Y21_N22
\CD|U01|o_RS1[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[3]~6_combout\ = (\CC|IR|o_DATA\(8) & (((\CD|U01|U02|o_DATA\(3)) # (\CC|IR|o_DATA\(9))))) # (!\CC|IR|o_DATA\(8) & (\CD|U01|U01|o_DATA\(3) & ((!\CC|IR|o_DATA\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(8),
	datab => \CD|U01|U01|o_DATA\(3),
	datac => \CD|U01|U02|o_DATA\(3),
	datad => \CC|IR|o_DATA\(9),
	combout => \CD|U01|o_RS1[3]~6_combout\);

-- Location: LCCOMB_X23_Y21_N30
\CD|U01|o_RS1[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[3]~7_combout\ = (\CC|IR|o_DATA\(9) & ((\CD|U01|o_RS1[3]~6_combout\ & ((\CD|U01|U04|o_DATA\(3)))) # (!\CD|U01|o_RS1[3]~6_combout\ & (\CD|U01|U03|o_DATA\(3))))) # (!\CC|IR|o_DATA\(9) & (((\CD|U01|o_RS1[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U03|o_DATA\(3),
	datab => \CC|IR|o_DATA\(9),
	datac => \CD|U01|U04|o_DATA\(3),
	datad => \CD|U01|o_RS1[3]~6_combout\,
	combout => \CD|U01|o_RS1[3]~7_combout\);

-- Location: LCCOMB_X24_Y23_N6
\CD|U03|o_DATA[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U03|o_DATA[3]~feeder_combout\ = \CD|U01|o_RS1[3]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CD|U01|o_RS1[3]~7_combout\,
	combout => \CD|U03|o_DATA[3]~feeder_combout\);

-- Location: FF_X24_Y23_N7
\CD|U03|o_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U03|o_DATA[3]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CC|o_WR_IO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U03|o_DATA\(3));

-- Location: FF_X23_Y23_N27
\CD|U01|U04|o_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U02|Add0|auto_generated|op_1~24_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U04|o_DATA\(4));

-- Location: FF_X22_Y21_N1
\CD|U01|U03|o_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~24_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U03|o_DATA\(4));

-- Location: FF_X22_Y21_N27
\CD|U01|U01|o_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~24_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U01|o_DATA\(4));

-- Location: LCCOMB_X22_Y21_N26
\CD|U01|o_RS2[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[4]~6_combout\ = (\CC|IR|o_DATA\(7) & ((\CD|U01|U03|o_DATA\(4)) # ((\CC|IR|o_DATA\(6))))) # (!\CC|IR|o_DATA\(7) & (((\CD|U01|U01|o_DATA\(4) & !\CC|IR|o_DATA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(7),
	datab => \CD|U01|U03|o_DATA\(4),
	datac => \CD|U01|U01|o_DATA\(4),
	datad => \CC|IR|o_DATA\(6),
	combout => \CD|U01|o_RS2[4]~6_combout\);

-- Location: LCCOMB_X23_Y23_N20
\CD|U01|o_RS2[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[4]~7_combout\ = (\CC|IR|o_DATA\(6) & ((\CD|U01|o_RS2[4]~6_combout\ & (\CD|U01|U04|o_DATA\(4))) # (!\CD|U01|o_RS2[4]~6_combout\ & ((\CD|U01|U02|o_DATA\(4)))))) # (!\CC|IR|o_DATA\(6) & (((\CD|U01|o_RS2[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(6),
	datab => \CD|U01|U04|o_DATA\(4),
	datac => \CD|U01|U02|o_DATA\(4),
	datad => \CD|U01|o_RS2[4]~6_combout\,
	combout => \CD|U01|o_RS2[4]~7_combout\);

-- Location: LCCOMB_X23_Y23_N4
\CD|U02|Add0|auto_generated|_~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|_~6_combout\ = \CD|U01|o_RS2[4]~7_combout\ $ (((\CC|IR|o_DATA\(12) & !\CC|o_SEL_ULA~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(12),
	datac => \CC|o_SEL_ULA~0_combout\,
	datad => \CD|U01|o_RS2[4]~7_combout\,
	combout => \CD|U02|Add0|auto_generated|_~6_combout\);

-- Location: LCCOMB_X22_Y23_N26
\CD|U02|Add0|auto_generated|result_int[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|result_int[5]~10_combout\ = (\CD|U02|Add0|auto_generated|_~6_combout\ & ((\CD|U01|o_RS1[4]~9_combout\ & (\CD|U02|Add0|auto_generated|result_int[4]~9\ & VCC)) # (!\CD|U01|o_RS1[4]~9_combout\ & 
-- (!\CD|U02|Add0|auto_generated|result_int[4]~9\)))) # (!\CD|U02|Add0|auto_generated|_~6_combout\ & ((\CD|U01|o_RS1[4]~9_combout\ & (!\CD|U02|Add0|auto_generated|result_int[4]~9\)) # (!\CD|U01|o_RS1[4]~9_combout\ & 
-- ((\CD|U02|Add0|auto_generated|result_int[4]~9\) # (GND)))))
-- \CD|U02|Add0|auto_generated|result_int[5]~11\ = CARRY((\CD|U02|Add0|auto_generated|_~6_combout\ & (!\CD|U01|o_RS1[4]~9_combout\ & !\CD|U02|Add0|auto_generated|result_int[4]~9\)) # (!\CD|U02|Add0|auto_generated|_~6_combout\ & 
-- ((!\CD|U02|Add0|auto_generated|result_int[4]~9\) # (!\CD|U01|o_RS1[4]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U02|Add0|auto_generated|_~6_combout\,
	datab => \CD|U01|o_RS1[4]~9_combout\,
	datad => VCC,
	cin => \CD|U02|Add0|auto_generated|result_int[4]~9\,
	combout => \CD|U02|Add0|auto_generated|result_int[5]~10_combout\,
	cout => \CD|U02|Add0|auto_generated|result_int[5]~11\);

-- Location: IOIBUF_X21_Y29_N8
\i_DATA_ROM[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_ROM(4),
	o => \i_DATA_ROM[4]~input_o\);

-- Location: LCCOMB_X22_Y25_N12
\CC|IR|o_DATA[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CC|IR|o_DATA[4]~feeder_combout\ = \i_DATA_ROM[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DATA_ROM[4]~input_o\,
	combout => \CC|IR|o_DATA[4]~feeder_combout\);

-- Location: FF_X22_Y25_N13
\CC|IR|o_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CC|IR|o_DATA[4]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|IR|o_DATA\(4));

-- Location: LCCOMB_X23_Y23_N26
\CD|U02|Add0|auto_generated|op_1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|op_1~24_combout\ = (\CC|o_SEL_ULA~0_combout\ & ((\CC|IR|o_DATA\(4)))) # (!\CC|o_SEL_ULA~0_combout\ & (\CD|U02|Add0|auto_generated|result_int[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CC|o_SEL_ULA~0_combout\,
	datac => \CD|U02|Add0|auto_generated|result_int[5]~10_combout\,
	datad => \CC|IR|o_DATA\(4),
	combout => \CD|U02|Add0|auto_generated|op_1~24_combout\);

-- Location: FF_X23_Y23_N21
\CD|U01|U02|o_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~24_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U02|o_DATA\(4));

-- Location: LCCOMB_X22_Y21_N0
\CD|U01|o_RS1[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[4]~8_combout\ = (\CC|IR|o_DATA\(8) & (((\CC|IR|o_DATA\(9))))) # (!\CC|IR|o_DATA\(8) & ((\CC|IR|o_DATA\(9) & ((\CD|U01|U03|o_DATA\(4)))) # (!\CC|IR|o_DATA\(9) & (\CD|U01|U01|o_DATA\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U01|o_DATA\(4),
	datab => \CC|IR|o_DATA\(8),
	datac => \CD|U01|U03|o_DATA\(4),
	datad => \CC|IR|o_DATA\(9),
	combout => \CD|U01|o_RS1[4]~8_combout\);

-- Location: LCCOMB_X23_Y23_N24
\CD|U01|o_RS1[4]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[4]~9_combout\ = (\CC|IR|o_DATA\(8) & ((\CD|U01|o_RS1[4]~8_combout\ & ((\CD|U01|U04|o_DATA\(4)))) # (!\CD|U01|o_RS1[4]~8_combout\ & (\CD|U01|U02|o_DATA\(4))))) # (!\CC|IR|o_DATA\(8) & (((\CD|U01|o_RS1[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U02|o_DATA\(4),
	datab => \CD|U01|U04|o_DATA\(4),
	datac => \CC|IR|o_DATA\(8),
	datad => \CD|U01|o_RS1[4]~8_combout\,
	combout => \CD|U01|o_RS1[4]~9_combout\);

-- Location: LCCOMB_X24_Y23_N0
\CD|U03|o_DATA[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U03|o_DATA[4]~feeder_combout\ = \CD|U01|o_RS1[4]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CD|U01|o_RS1[4]~9_combout\,
	combout => \CD|U03|o_DATA[4]~feeder_combout\);

-- Location: FF_X24_Y23_N1
\CD|U03|o_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U03|o_DATA[4]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CC|o_WR_IO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U03|o_DATA\(4));

-- Location: IOIBUF_X28_Y29_N1
\i_DATA_ROM[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_DATA_ROM(5),
	o => \i_DATA_ROM[5]~input_o\);

-- Location: FF_X22_Y23_N25
\CC|IR|o_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \i_DATA_ROM[5]~input_o\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CC|IR|o_DATA\(5));

-- Location: FF_X22_Y23_N7
\CD|U01|U04|o_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U02|Add0|auto_generated|op_1~25_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U04|o_DATA\(5));

-- Location: LCCOMB_X21_Y21_N20
\CD|U01|U02|o_DATA[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|U02|o_DATA[5]~feeder_combout\ = \CD|U02|Add0|auto_generated|op_1~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CD|U02|Add0|auto_generated|op_1~25_combout\,
	combout => \CD|U01|U02|o_DATA[5]~feeder_combout\);

-- Location: FF_X21_Y21_N21
\CD|U01|U02|o_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U01|U02|o_DATA[5]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U02|o_DATA\(5));

-- Location: FF_X22_Y21_N19
\CD|U01|U01|o_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~25_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U01|o_DATA\(5));

-- Location: LCCOMB_X22_Y21_N18
\CD|U01|o_RS2[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[5]~8_combout\ = (\CC|IR|o_DATA\(7) & (((\CC|IR|o_DATA\(6))))) # (!\CC|IR|o_DATA\(7) & ((\CC|IR|o_DATA\(6) & (\CD|U01|U02|o_DATA\(5))) # (!\CC|IR|o_DATA\(6) & ((\CD|U01|U01|o_DATA\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(7),
	datab => \CD|U01|U02|o_DATA\(5),
	datac => \CD|U01|U01|o_DATA\(5),
	datad => \CC|IR|o_DATA\(6),
	combout => \CD|U01|o_RS2[5]~8_combout\);

-- Location: LCCOMB_X22_Y21_N28
\CD|U01|o_RS2[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[5]~9_combout\ = (\CD|U01|o_RS2[5]~8_combout\ & ((\CD|U01|U04|o_DATA\(5)) # ((!\CC|IR|o_DATA\(7))))) # (!\CD|U01|o_RS2[5]~8_combout\ & (((\CD|U01|U03|o_DATA\(5) & \CC|IR|o_DATA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U04|o_DATA\(5),
	datab => \CD|U01|o_RS2[5]~8_combout\,
	datac => \CD|U01|U03|o_DATA\(5),
	datad => \CC|IR|o_DATA\(7),
	combout => \CD|U01|o_RS2[5]~9_combout\);

-- Location: LCCOMB_X22_Y21_N12
\CD|U02|Add0|auto_generated|_~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|_~7_combout\ = \CD|U01|o_RS2[5]~9_combout\ $ (((!\CC|o_SEL_ULA~0_combout\ & \CC|IR|o_DATA\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|o_SEL_ULA~0_combout\,
	datab => \CC|IR|o_DATA\(12),
	datad => \CD|U01|o_RS2[5]~9_combout\,
	combout => \CD|U02|Add0|auto_generated|_~7_combout\);

-- Location: LCCOMB_X22_Y23_N28
\CD|U02|Add0|auto_generated|result_int[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|result_int[6]~12_combout\ = ((\CD|U02|Add0|auto_generated|_~7_combout\ $ (\CD|U01|o_RS1[5]~11_combout\ $ (!\CD|U02|Add0|auto_generated|result_int[5]~11\)))) # (GND)
-- \CD|U02|Add0|auto_generated|result_int[6]~13\ = CARRY((\CD|U02|Add0|auto_generated|_~7_combout\ & ((\CD|U01|o_RS1[5]~11_combout\) # (!\CD|U02|Add0|auto_generated|result_int[5]~11\))) # (!\CD|U02|Add0|auto_generated|_~7_combout\ & 
-- (\CD|U01|o_RS1[5]~11_combout\ & !\CD|U02|Add0|auto_generated|result_int[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U02|Add0|auto_generated|_~7_combout\,
	datab => \CD|U01|o_RS1[5]~11_combout\,
	datad => VCC,
	cin => \CD|U02|Add0|auto_generated|result_int[5]~11\,
	combout => \CD|U02|Add0|auto_generated|result_int[6]~12_combout\,
	cout => \CD|U02|Add0|auto_generated|result_int[6]~13\);

-- Location: LCCOMB_X22_Y23_N6
\CD|U02|Add0|auto_generated|op_1~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|op_1~25_combout\ = (\CC|o_SEL_ULA~0_combout\ & (\CC|IR|o_DATA\(5))) # (!\CC|o_SEL_ULA~0_combout\ & ((\CD|U02|Add0|auto_generated|result_int[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CC|o_SEL_ULA~0_combout\,
	datac => \CC|IR|o_DATA\(5),
	datad => \CD|U02|Add0|auto_generated|result_int[6]~12_combout\,
	combout => \CD|U02|Add0|auto_generated|op_1~25_combout\);

-- Location: FF_X22_Y21_N29
\CD|U01|U03|o_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~25_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U03|o_DATA\(5));

-- Location: LCCOMB_X21_Y21_N6
\CD|U01|o_RS1[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[5]~10_combout\ = (\CC|IR|o_DATA\(9) & (((\CC|IR|o_DATA\(8))))) # (!\CC|IR|o_DATA\(9) & ((\CC|IR|o_DATA\(8) & ((\CD|U01|U02|o_DATA\(5)))) # (!\CC|IR|o_DATA\(8) & (\CD|U01|U01|o_DATA\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U01|o_DATA\(5),
	datab => \CD|U01|U02|o_DATA\(5),
	datac => \CC|IR|o_DATA\(9),
	datad => \CC|IR|o_DATA\(8),
	combout => \CD|U01|o_RS1[5]~10_combout\);

-- Location: LCCOMB_X21_Y21_N8
\CD|U01|o_RS1[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[5]~11_combout\ = (\CC|IR|o_DATA\(9) & ((\CD|U01|o_RS1[5]~10_combout\ & ((\CD|U01|U04|o_DATA\(5)))) # (!\CD|U01|o_RS1[5]~10_combout\ & (\CD|U01|U03|o_DATA\(5))))) # (!\CC|IR|o_DATA\(9) & (((\CD|U01|o_RS1[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(9),
	datab => \CD|U01|U03|o_DATA\(5),
	datac => \CD|U01|U04|o_DATA\(5),
	datad => \CD|U01|o_RS1[5]~10_combout\,
	combout => \CD|U01|o_RS1[5]~11_combout\);

-- Location: LCCOMB_X21_Y21_N14
\CD|U03|o_DATA[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U03|o_DATA[5]~feeder_combout\ = \CD|U01|o_RS1[5]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CD|U01|o_RS1[5]~11_combout\,
	combout => \CD|U03|o_DATA[5]~feeder_combout\);

-- Location: FF_X21_Y21_N15
\CD|U03|o_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U03|o_DATA[5]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CC|o_WR_IO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U03|o_DATA\(5));

-- Location: FF_X23_Y23_N7
\CD|U01|U02|o_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~26_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U02|o_DATA\(6));

-- Location: FF_X22_Y21_N17
\CD|U01|U03|o_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~26_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U03|o_DATA\(6));

-- Location: FF_X22_Y21_N11
\CD|U01|U01|o_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~26_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U01|o_DATA\(6));

-- Location: LCCOMB_X22_Y21_N10
\CD|U01|o_RS2[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[6]~10_combout\ = (\CC|IR|o_DATA\(7) & ((\CD|U01|U03|o_DATA\(6)) # ((\CC|IR|o_DATA\(6))))) # (!\CC|IR|o_DATA\(7) & (((\CD|U01|U01|o_DATA\(6) & !\CC|IR|o_DATA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(7),
	datab => \CD|U01|U03|o_DATA\(6),
	datac => \CD|U01|U01|o_DATA\(6),
	datad => \CC|IR|o_DATA\(6),
	combout => \CD|U01|o_RS2[6]~10_combout\);

-- Location: LCCOMB_X23_Y23_N6
\CD|U01|o_RS2[6]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[6]~11_combout\ = (\CC|IR|o_DATA\(6) & ((\CD|U01|o_RS2[6]~10_combout\ & (\CD|U01|U04|o_DATA\(6))) # (!\CD|U01|o_RS2[6]~10_combout\ & ((\CD|U01|U02|o_DATA\(6)))))) # (!\CC|IR|o_DATA\(6) & (((\CD|U01|o_RS2[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U04|o_DATA\(6),
	datab => \CC|IR|o_DATA\(6),
	datac => \CD|U01|U02|o_DATA\(6),
	datad => \CD|U01|o_RS2[6]~10_combout\,
	combout => \CD|U01|o_RS2[6]~11_combout\);

-- Location: LCCOMB_X22_Y23_N2
\CD|U02|Add0|auto_generated|_~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|_~8_combout\ = \CD|U01|o_RS2[6]~11_combout\ $ (((!\CC|o_SEL_ULA~0_combout\ & \CC|IR|o_DATA\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CC|o_SEL_ULA~0_combout\,
	datac => \CC|IR|o_DATA\(12),
	datad => \CD|U01|o_RS2[6]~11_combout\,
	combout => \CD|U02|Add0|auto_generated|_~8_combout\);

-- Location: LCCOMB_X22_Y23_N30
\CD|U02|Add0|auto_generated|result_int[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|result_int[7]~14_combout\ = (\CD|U01|o_RS1[6]~13_combout\ & ((\CD|U02|Add0|auto_generated|_~8_combout\ & (\CD|U02|Add0|auto_generated|result_int[6]~13\ & VCC)) # (!\CD|U02|Add0|auto_generated|_~8_combout\ & 
-- (!\CD|U02|Add0|auto_generated|result_int[6]~13\)))) # (!\CD|U01|o_RS1[6]~13_combout\ & ((\CD|U02|Add0|auto_generated|_~8_combout\ & (!\CD|U02|Add0|auto_generated|result_int[6]~13\)) # (!\CD|U02|Add0|auto_generated|_~8_combout\ & 
-- ((\CD|U02|Add0|auto_generated|result_int[6]~13\) # (GND)))))
-- \CD|U02|Add0|auto_generated|result_int[7]~15\ = CARRY((\CD|U01|o_RS1[6]~13_combout\ & (!\CD|U02|Add0|auto_generated|_~8_combout\ & !\CD|U02|Add0|auto_generated|result_int[6]~13\)) # (!\CD|U01|o_RS1[6]~13_combout\ & 
-- ((!\CD|U02|Add0|auto_generated|result_int[6]~13\) # (!\CD|U02|Add0|auto_generated|_~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|o_RS1[6]~13_combout\,
	datab => \CD|U02|Add0|auto_generated|_~8_combout\,
	datad => VCC,
	cin => \CD|U02|Add0|auto_generated|result_int[6]~13\,
	combout => \CD|U02|Add0|auto_generated|result_int[7]~14_combout\,
	cout => \CD|U02|Add0|auto_generated|result_int[7]~15\);

-- Location: LCCOMB_X23_Y23_N12
\CD|U02|Add0|auto_generated|op_1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|op_1~26_combout\ = (!\CC|IR|o_DATA\(15) & (!\CC|IR|o_DATA\(14) & (\CC|IR|o_DATA\(13) & \CD|U02|Add0|auto_generated|result_int[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(15),
	datab => \CC|IR|o_DATA\(14),
	datac => \CC|IR|o_DATA\(13),
	datad => \CD|U02|Add0|auto_generated|result_int[7]~14_combout\,
	combout => \CD|U02|Add0|auto_generated|op_1~26_combout\);

-- Location: FF_X23_Y23_N13
\CD|U01|U04|o_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U02|Add0|auto_generated|op_1~26_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U04|o_DATA\(6));

-- Location: LCCOMB_X22_Y21_N16
\CD|U01|o_RS1[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[6]~12_combout\ = (\CC|IR|o_DATA\(8) & (((\CC|IR|o_DATA\(9))))) # (!\CC|IR|o_DATA\(8) & ((\CC|IR|o_DATA\(9) & ((\CD|U01|U03|o_DATA\(6)))) # (!\CC|IR|o_DATA\(9) & (\CD|U01|U01|o_DATA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U01|o_DATA\(6),
	datab => \CC|IR|o_DATA\(8),
	datac => \CD|U01|U03|o_DATA\(6),
	datad => \CC|IR|o_DATA\(9),
	combout => \CD|U01|o_RS1[6]~12_combout\);

-- Location: LCCOMB_X23_Y23_N2
\CD|U01|o_RS1[6]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[6]~13_combout\ = (\CC|IR|o_DATA\(8) & ((\CD|U01|o_RS1[6]~12_combout\ & (\CD|U01|U04|o_DATA\(6))) # (!\CD|U01|o_RS1[6]~12_combout\ & ((\CD|U01|U02|o_DATA\(6)))))) # (!\CC|IR|o_DATA\(8) & (((\CD|U01|o_RS1[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U04|o_DATA\(6),
	datab => \CC|IR|o_DATA\(8),
	datac => \CD|U01|o_RS1[6]~12_combout\,
	datad => \CD|U01|U02|o_DATA\(6),
	combout => \CD|U01|o_RS1[6]~13_combout\);

-- Location: LCCOMB_X24_Y23_N10
\CD|U03|o_DATA[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U03|o_DATA[6]~feeder_combout\ = \CD|U01|o_RS1[6]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CD|U01|o_RS1[6]~13_combout\,
	combout => \CD|U03|o_DATA[6]~feeder_combout\);

-- Location: FF_X24_Y23_N11
\CD|U03|o_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U03|o_DATA[6]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CC|o_WR_IO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U03|o_DATA\(6));

-- Location: FF_X22_Y21_N21
\CD|U01|U03|o_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~27_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U03|o_DATA\(7));

-- Location: LCCOMB_X21_Y21_N2
\CD|U01|U02|o_DATA[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|U02|o_DATA[7]~feeder_combout\ = \CD|U02|Add0|auto_generated|op_1~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CD|U02|Add0|auto_generated|op_1~27_combout\,
	combout => \CD|U01|U02|o_DATA[7]~feeder_combout\);

-- Location: FF_X21_Y21_N3
\CD|U01|U02|o_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U01|U02|o_DATA[7]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U02|o_DATA\(7));

-- Location: FF_X22_Y21_N3
\CD|U01|U01|o_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~27_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U01|o_DATA\(7));

-- Location: LCCOMB_X22_Y21_N2
\CD|U01|o_RS2[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[7]~12_combout\ = (\CC|IR|o_DATA\(6) & ((\CD|U01|U02|o_DATA\(7)) # ((\CC|IR|o_DATA\(7))))) # (!\CC|IR|o_DATA\(6) & (((\CD|U01|U01|o_DATA\(7) & !\CC|IR|o_DATA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U02|o_DATA\(7),
	datab => \CC|IR|o_DATA\(6),
	datac => \CD|U01|U01|o_DATA\(7),
	datad => \CC|IR|o_DATA\(7),
	combout => \CD|U01|o_RS2[7]~12_combout\);

-- Location: LCCOMB_X22_Y21_N20
\CD|U01|o_RS2[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[7]~13_combout\ = (\CC|IR|o_DATA\(7) & ((\CD|U01|o_RS2[7]~12_combout\ & (\CD|U01|U04|o_DATA\(7))) # (!\CD|U01|o_RS2[7]~12_combout\ & ((\CD|U01|U03|o_DATA\(7)))))) # (!\CC|IR|o_DATA\(7) & (((\CD|U01|o_RS2[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(7),
	datab => \CD|U01|U04|o_DATA\(7),
	datac => \CD|U01|U03|o_DATA\(7),
	datad => \CD|U01|o_RS2[7]~12_combout\,
	combout => \CD|U01|o_RS2[7]~13_combout\);

-- Location: LCCOMB_X22_Y21_N30
\CD|U02|Add0|auto_generated|_~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|_~9_combout\ = \CD|U01|o_RS2[7]~13_combout\ $ (((!\CC|o_SEL_ULA~0_combout\ & \CC|IR|o_DATA\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|o_SEL_ULA~0_combout\,
	datab => \CC|IR|o_DATA\(12),
	datad => \CD|U01|o_RS2[7]~13_combout\,
	combout => \CD|U02|Add0|auto_generated|_~9_combout\);

-- Location: LCCOMB_X22_Y22_N0
\CD|U02|Add0|auto_generated|result_int[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|result_int[8]~16_combout\ = ((\CD|U02|Add0|auto_generated|_~9_combout\ $ (\CD|U01|o_RS1[7]~15_combout\ $ (!\CD|U02|Add0|auto_generated|result_int[7]~15\)))) # (GND)
-- \CD|U02|Add0|auto_generated|result_int[8]~17\ = CARRY((\CD|U02|Add0|auto_generated|_~9_combout\ & ((\CD|U01|o_RS1[7]~15_combout\) # (!\CD|U02|Add0|auto_generated|result_int[7]~15\))) # (!\CD|U02|Add0|auto_generated|_~9_combout\ & 
-- (\CD|U01|o_RS1[7]~15_combout\ & !\CD|U02|Add0|auto_generated|result_int[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U02|Add0|auto_generated|_~9_combout\,
	datab => \CD|U01|o_RS1[7]~15_combout\,
	datad => VCC,
	cin => \CD|U02|Add0|auto_generated|result_int[7]~15\,
	combout => \CD|U02|Add0|auto_generated|result_int[8]~16_combout\,
	cout => \CD|U02|Add0|auto_generated|result_int[8]~17\);

-- Location: LCCOMB_X22_Y22_N26
\CD|U02|Add0|auto_generated|op_1~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|op_1~27_combout\ = (\CC|IR|o_DATA\(13) & (!\CC|IR|o_DATA\(15) & (!\CC|IR|o_DATA\(14) & \CD|U02|Add0|auto_generated|result_int[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(13),
	datab => \CC|IR|o_DATA\(15),
	datac => \CC|IR|o_DATA\(14),
	datad => \CD|U02|Add0|auto_generated|result_int[8]~16_combout\,
	combout => \CD|U02|Add0|auto_generated|op_1~27_combout\);

-- Location: FF_X22_Y22_N27
\CD|U01|U04|o_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U02|Add0|auto_generated|op_1~27_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U04|o_DATA\(7));

-- Location: LCCOMB_X21_Y21_N12
\CD|U01|o_RS1[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[7]~14_combout\ = (\CC|IR|o_DATA\(9) & (((\CC|IR|o_DATA\(8))))) # (!\CC|IR|o_DATA\(9) & ((\CC|IR|o_DATA\(8) & ((\CD|U01|U02|o_DATA\(7)))) # (!\CC|IR|o_DATA\(8) & (\CD|U01|U01|o_DATA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U01|o_DATA\(7),
	datab => \CD|U01|U02|o_DATA\(7),
	datac => \CC|IR|o_DATA\(9),
	datad => \CC|IR|o_DATA\(8),
	combout => \CD|U01|o_RS1[7]~14_combout\);

-- Location: LCCOMB_X21_Y21_N30
\CD|U01|o_RS1[7]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[7]~15_combout\ = (\CC|IR|o_DATA\(9) & ((\CD|U01|o_RS1[7]~14_combout\ & (\CD|U01|U04|o_DATA\(7))) # (!\CD|U01|o_RS1[7]~14_combout\ & ((\CD|U01|U03|o_DATA\(7)))))) # (!\CC|IR|o_DATA\(9) & (((\CD|U01|o_RS1[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U04|o_DATA\(7),
	datab => \CC|IR|o_DATA\(9),
	datac => \CD|U01|U03|o_DATA\(7),
	datad => \CD|U01|o_RS1[7]~14_combout\,
	combout => \CD|U01|o_RS1[7]~15_combout\);

-- Location: LCCOMB_X21_Y21_N16
\CD|U03|o_DATA[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U03|o_DATA[7]~feeder_combout\ = \CD|U01|o_RS1[7]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CD|U01|o_RS1[7]~15_combout\,
	combout => \CD|U03|o_DATA[7]~feeder_combout\);

-- Location: FF_X21_Y21_N17
\CD|U03|o_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U03|o_DATA[7]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CC|o_WR_IO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U03|o_DATA\(7));

-- Location: FF_X22_Y22_N25
\CD|U01|U04|o_DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U02|Add0|auto_generated|op_1~28_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U04|o_DATA\(8));

-- Location: LCCOMB_X24_Y22_N30
\CD|U01|U01|o_DATA[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|U01|o_DATA[8]~feeder_combout\ = \CD|U02|Add0|auto_generated|op_1~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CD|U02|Add0|auto_generated|op_1~28_combout\,
	combout => \CD|U01|U01|o_DATA[8]~feeder_combout\);

-- Location: FF_X24_Y22_N31
\CD|U01|U01|o_DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U01|U01|o_DATA[8]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U01|o_DATA\(8));

-- Location: FF_X23_Y22_N25
\CD|U01|U03|o_DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~28_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U03|o_DATA\(8));

-- Location: LCCOMB_X24_Y22_N2
\CD|U01|o_RS2[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[8]~14_combout\ = (\CC|IR|o_DATA\(6) & (((\CC|IR|o_DATA\(7))))) # (!\CC|IR|o_DATA\(6) & ((\CC|IR|o_DATA\(7) & ((\CD|U01|U03|o_DATA\(8)))) # (!\CC|IR|o_DATA\(7) & (\CD|U01|U01|o_DATA\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U01|o_DATA\(8),
	datab => \CD|U01|U03|o_DATA\(8),
	datac => \CC|IR|o_DATA\(6),
	datad => \CC|IR|o_DATA\(7),
	combout => \CD|U01|o_RS2[8]~14_combout\);

-- Location: LCCOMB_X24_Y22_N4
\CD|U01|o_RS2[8]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[8]~15_combout\ = (\CC|IR|o_DATA\(6) & ((\CD|U01|o_RS2[8]~14_combout\ & ((\CD|U01|U04|o_DATA\(8)))) # (!\CD|U01|o_RS2[8]~14_combout\ & (\CD|U01|U02|o_DATA\(8))))) # (!\CC|IR|o_DATA\(6) & (((\CD|U01|o_RS2[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U02|o_DATA\(8),
	datab => \CD|U01|U04|o_DATA\(8),
	datac => \CC|IR|o_DATA\(6),
	datad => \CD|U01|o_RS2[8]~14_combout\,
	combout => \CD|U01|o_RS2[8]~15_combout\);

-- Location: LCCOMB_X23_Y22_N28
\CD|U02|Add0|auto_generated|_~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|_~10_combout\ = \CD|U01|o_RS2[8]~15_combout\ $ (((\CC|IR|o_DATA\(12) & !\CC|o_SEL_ULA~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(12),
	datab => \CC|o_SEL_ULA~0_combout\,
	datad => \CD|U01|o_RS2[8]~15_combout\,
	combout => \CD|U02|Add0|auto_generated|_~10_combout\);

-- Location: LCCOMB_X22_Y22_N2
\CD|U02|Add0|auto_generated|result_int[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|result_int[9]~18_combout\ = (\CD|U01|o_RS1[8]~17_combout\ & ((\CD|U02|Add0|auto_generated|_~10_combout\ & (\CD|U02|Add0|auto_generated|result_int[8]~17\ & VCC)) # (!\CD|U02|Add0|auto_generated|_~10_combout\ & 
-- (!\CD|U02|Add0|auto_generated|result_int[8]~17\)))) # (!\CD|U01|o_RS1[8]~17_combout\ & ((\CD|U02|Add0|auto_generated|_~10_combout\ & (!\CD|U02|Add0|auto_generated|result_int[8]~17\)) # (!\CD|U02|Add0|auto_generated|_~10_combout\ & 
-- ((\CD|U02|Add0|auto_generated|result_int[8]~17\) # (GND)))))
-- \CD|U02|Add0|auto_generated|result_int[9]~19\ = CARRY((\CD|U01|o_RS1[8]~17_combout\ & (!\CD|U02|Add0|auto_generated|_~10_combout\ & !\CD|U02|Add0|auto_generated|result_int[8]~17\)) # (!\CD|U01|o_RS1[8]~17_combout\ & 
-- ((!\CD|U02|Add0|auto_generated|result_int[8]~17\) # (!\CD|U02|Add0|auto_generated|_~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|o_RS1[8]~17_combout\,
	datab => \CD|U02|Add0|auto_generated|_~10_combout\,
	datad => VCC,
	cin => \CD|U02|Add0|auto_generated|result_int[8]~17\,
	combout => \CD|U02|Add0|auto_generated|result_int[9]~18_combout\,
	cout => \CD|U02|Add0|auto_generated|result_int[9]~19\);

-- Location: LCCOMB_X22_Y22_N24
\CD|U02|Add0|auto_generated|op_1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|op_1~28_combout\ = (\CC|IR|o_DATA\(13) & (!\CC|IR|o_DATA\(15) & (!\CC|IR|o_DATA\(14) & \CD|U02|Add0|auto_generated|result_int[9]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(13),
	datab => \CC|IR|o_DATA\(15),
	datac => \CC|IR|o_DATA\(14),
	datad => \CD|U02|Add0|auto_generated|result_int[9]~18_combout\,
	combout => \CD|U02|Add0|auto_generated|op_1~28_combout\);

-- Location: LCCOMB_X24_Y22_N12
\CD|U01|U02|o_DATA[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|U02|o_DATA[8]~feeder_combout\ = \CD|U02|Add0|auto_generated|op_1~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CD|U02|Add0|auto_generated|op_1~28_combout\,
	combout => \CD|U01|U02|o_DATA[8]~feeder_combout\);

-- Location: FF_X24_Y22_N13
\CD|U01|U02|o_DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U01|U02|o_DATA[8]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U02|o_DATA\(8));

-- Location: LCCOMB_X23_Y22_N24
\CD|U01|o_RS1[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[8]~16_combout\ = (\CC|IR|o_DATA\(8) & (((\CC|IR|o_DATA\(9))))) # (!\CC|IR|o_DATA\(8) & ((\CC|IR|o_DATA\(9) & ((\CD|U01|U03|o_DATA\(8)))) # (!\CC|IR|o_DATA\(9) & (\CD|U01|U01|o_DATA\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(8),
	datab => \CD|U01|U01|o_DATA\(8),
	datac => \CD|U01|U03|o_DATA\(8),
	datad => \CC|IR|o_DATA\(9),
	combout => \CD|U01|o_RS1[8]~16_combout\);

-- Location: LCCOMB_X23_Y22_N6
\CD|U01|o_RS1[8]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[8]~17_combout\ = (\CC|IR|o_DATA\(8) & ((\CD|U01|o_RS1[8]~16_combout\ & ((\CD|U01|U04|o_DATA\(8)))) # (!\CD|U01|o_RS1[8]~16_combout\ & (\CD|U01|U02|o_DATA\(8))))) # (!\CC|IR|o_DATA\(8) & (((\CD|U01|o_RS1[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U02|o_DATA\(8),
	datab => \CD|U01|U04|o_DATA\(8),
	datac => \CC|IR|o_DATA\(8),
	datad => \CD|U01|o_RS1[8]~16_combout\,
	combout => \CD|U01|o_RS1[8]~17_combout\);

-- Location: FF_X22_Y22_N5
\CD|U03|o_DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U01|o_RS1[8]~17_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CC|o_WR_IO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U03|o_DATA\(8));

-- Location: FF_X23_Y22_N17
\CD|U01|U03|o_DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~29_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U03|o_DATA\(9));

-- Location: LCCOMB_X21_Y22_N20
\CD|U01|U02|o_DATA[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|U02|o_DATA[9]~feeder_combout\ = \CD|U02|Add0|auto_generated|op_1~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CD|U02|Add0|auto_generated|op_1~29_combout\,
	combout => \CD|U01|U02|o_DATA[9]~feeder_combout\);

-- Location: FF_X21_Y22_N21
\CD|U01|U02|o_DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U01|U02|o_DATA[9]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U02|o_DATA\(9));

-- Location: LCCOMB_X24_Y22_N8
\CD|U01|U01|o_DATA[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|U01|o_DATA[9]~feeder_combout\ = \CD|U02|Add0|auto_generated|op_1~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CD|U02|Add0|auto_generated|op_1~29_combout\,
	combout => \CD|U01|U01|o_DATA[9]~feeder_combout\);

-- Location: FF_X24_Y22_N9
\CD|U01|U01|o_DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U01|U01|o_DATA[9]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U01|o_DATA\(9));

-- Location: LCCOMB_X24_Y22_N26
\CD|U01|o_RS2[9]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[9]~16_combout\ = (\CC|IR|o_DATA\(6) & ((\CD|U01|U02|o_DATA\(9)) # ((\CC|IR|o_DATA\(7))))) # (!\CC|IR|o_DATA\(6) & (((\CD|U01|U01|o_DATA\(9) & !\CC|IR|o_DATA\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U02|o_DATA\(9),
	datab => \CD|U01|U01|o_DATA\(9),
	datac => \CC|IR|o_DATA\(6),
	datad => \CC|IR|o_DATA\(7),
	combout => \CD|U01|o_RS2[9]~16_combout\);

-- Location: LCCOMB_X23_Y22_N16
\CD|U01|o_RS2[9]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[9]~17_combout\ = (\CC|IR|o_DATA\(7) & ((\CD|U01|o_RS2[9]~16_combout\ & (\CD|U01|U04|o_DATA\(9))) # (!\CD|U01|o_RS2[9]~16_combout\ & ((\CD|U01|U03|o_DATA\(9)))))) # (!\CC|IR|o_DATA\(7) & (((\CD|U01|o_RS2[9]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(7),
	datab => \CD|U01|U04|o_DATA\(9),
	datac => \CD|U01|U03|o_DATA\(9),
	datad => \CD|U01|o_RS2[9]~16_combout\,
	combout => \CD|U01|o_RS2[9]~17_combout\);

-- Location: LCCOMB_X23_Y22_N22
\CD|U02|Add0|auto_generated|_~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|_~11_combout\ = \CD|U01|o_RS2[9]~17_combout\ $ (((!\CC|o_SEL_ULA~0_combout\ & \CC|IR|o_DATA\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CC|o_SEL_ULA~0_combout\,
	datac => \CC|IR|o_DATA\(12),
	datad => \CD|U01|o_RS2[9]~17_combout\,
	combout => \CD|U02|Add0|auto_generated|_~11_combout\);

-- Location: LCCOMB_X22_Y22_N4
\CD|U02|Add0|auto_generated|result_int[10]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|result_int[10]~20_combout\ = ((\CD|U01|o_RS1[9]~19_combout\ $ (\CD|U02|Add0|auto_generated|_~11_combout\ $ (!\CD|U02|Add0|auto_generated|result_int[9]~19\)))) # (GND)
-- \CD|U02|Add0|auto_generated|result_int[10]~21\ = CARRY((\CD|U01|o_RS1[9]~19_combout\ & ((\CD|U02|Add0|auto_generated|_~11_combout\) # (!\CD|U02|Add0|auto_generated|result_int[9]~19\))) # (!\CD|U01|o_RS1[9]~19_combout\ & 
-- (\CD|U02|Add0|auto_generated|_~11_combout\ & !\CD|U02|Add0|auto_generated|result_int[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|o_RS1[9]~19_combout\,
	datab => \CD|U02|Add0|auto_generated|_~11_combout\,
	datad => VCC,
	cin => \CD|U02|Add0|auto_generated|result_int[9]~19\,
	combout => \CD|U02|Add0|auto_generated|result_int[10]~20_combout\,
	cout => \CD|U02|Add0|auto_generated|result_int[10]~21\);

-- Location: LCCOMB_X22_Y22_N18
\CD|U02|Add0|auto_generated|op_1~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|op_1~29_combout\ = (!\CC|IR|o_DATA\(14) & (!\CC|IR|o_DATA\(15) & (\CD|U02|Add0|auto_generated|result_int[10]~20_combout\ & \CC|IR|o_DATA\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(14),
	datab => \CC|IR|o_DATA\(15),
	datac => \CD|U02|Add0|auto_generated|result_int[10]~20_combout\,
	datad => \CC|IR|o_DATA\(13),
	combout => \CD|U02|Add0|auto_generated|op_1~29_combout\);

-- Location: FF_X22_Y22_N19
\CD|U01|U04|o_DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U02|Add0|auto_generated|op_1~29_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U04|o_DATA\(9));

-- Location: LCCOMB_X21_Y22_N2
\CD|U01|o_RS1[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[9]~18_combout\ = (\CC|IR|o_DATA\(9) & (((\CC|IR|o_DATA\(8))))) # (!\CC|IR|o_DATA\(9) & ((\CC|IR|o_DATA\(8) & (\CD|U01|U02|o_DATA\(9))) # (!\CC|IR|o_DATA\(8) & ((\CD|U01|U01|o_DATA\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(9),
	datab => \CD|U01|U02|o_DATA\(9),
	datac => \CD|U01|U01|o_DATA\(9),
	datad => \CC|IR|o_DATA\(8),
	combout => \CD|U01|o_RS1[9]~18_combout\);

-- Location: LCCOMB_X21_Y22_N16
\CD|U01|o_RS1[9]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[9]~19_combout\ = (\CC|IR|o_DATA\(9) & ((\CD|U01|o_RS1[9]~18_combout\ & (\CD|U01|U04|o_DATA\(9))) # (!\CD|U01|o_RS1[9]~18_combout\ & ((\CD|U01|U03|o_DATA\(9)))))) # (!\CC|IR|o_DATA\(9) & (((\CD|U01|o_RS1[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(9),
	datab => \CD|U01|U04|o_DATA\(9),
	datac => \CD|U01|U03|o_DATA\(9),
	datad => \CD|U01|o_RS1[9]~18_combout\,
	combout => \CD|U01|o_RS1[9]~19_combout\);

-- Location: FF_X22_Y22_N1
\CD|U03|o_DATA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U01|o_RS1[9]~19_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CC|o_WR_IO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U03|o_DATA\(9));

-- Location: FF_X22_Y22_N21
\CD|U01|U04|o_DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U02|Add0|auto_generated|op_1~30_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U04|o_DATA\(10));

-- Location: FF_X23_Y22_N15
\CD|U01|U03|o_DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~30_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U03|o_DATA\(10));

-- Location: LCCOMB_X24_Y22_N28
\CD|U01|U01|o_DATA[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|U01|o_DATA[10]~feeder_combout\ = \CD|U02|Add0|auto_generated|op_1~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CD|U02|Add0|auto_generated|op_1~30_combout\,
	combout => \CD|U01|U01|o_DATA[10]~feeder_combout\);

-- Location: FF_X24_Y22_N29
\CD|U01|U01|o_DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U01|U01|o_DATA[10]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U01|o_DATA\(10));

-- Location: LCCOMB_X24_Y22_N16
\CD|U01|o_RS2[10]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[10]~18_combout\ = (\CC|IR|o_DATA\(6) & (((\CC|IR|o_DATA\(7))))) # (!\CC|IR|o_DATA\(6) & ((\CC|IR|o_DATA\(7) & (\CD|U01|U03|o_DATA\(10))) # (!\CC|IR|o_DATA\(7) & ((\CD|U01|U01|o_DATA\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U03|o_DATA\(10),
	datab => \CD|U01|U01|o_DATA\(10),
	datac => \CC|IR|o_DATA\(6),
	datad => \CC|IR|o_DATA\(7),
	combout => \CD|U01|o_RS2[10]~18_combout\);

-- Location: LCCOMB_X24_Y22_N10
\CD|U01|o_RS2[10]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[10]~19_combout\ = (\CC|IR|o_DATA\(6) & ((\CD|U01|o_RS2[10]~18_combout\ & (\CD|U01|U04|o_DATA\(10))) # (!\CD|U01|o_RS2[10]~18_combout\ & ((\CD|U01|U02|o_DATA\(10)))))) # (!\CC|IR|o_DATA\(6) & (((\CD|U01|o_RS2[10]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(6),
	datab => \CD|U01|U04|o_DATA\(10),
	datac => \CD|U01|U02|o_DATA\(10),
	datad => \CD|U01|o_RS2[10]~18_combout\,
	combout => \CD|U01|o_RS2[10]~19_combout\);

-- Location: LCCOMB_X24_Y22_N22
\CD|U02|Add0|auto_generated|_~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|_~12_combout\ = \CD|U01|o_RS2[10]~19_combout\ $ (((!\CC|o_SEL_ULA~0_combout\ & \CC|IR|o_DATA\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CC|o_SEL_ULA~0_combout\,
	datac => \CC|IR|o_DATA\(12),
	datad => \CD|U01|o_RS2[10]~19_combout\,
	combout => \CD|U02|Add0|auto_generated|_~12_combout\);

-- Location: LCCOMB_X22_Y22_N6
\CD|U02|Add0|auto_generated|result_int[11]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|result_int[11]~22_combout\ = (\CD|U01|o_RS1[10]~21_combout\ & ((\CD|U02|Add0|auto_generated|_~12_combout\ & (\CD|U02|Add0|auto_generated|result_int[10]~21\ & VCC)) # (!\CD|U02|Add0|auto_generated|_~12_combout\ & 
-- (!\CD|U02|Add0|auto_generated|result_int[10]~21\)))) # (!\CD|U01|o_RS1[10]~21_combout\ & ((\CD|U02|Add0|auto_generated|_~12_combout\ & (!\CD|U02|Add0|auto_generated|result_int[10]~21\)) # (!\CD|U02|Add0|auto_generated|_~12_combout\ & 
-- ((\CD|U02|Add0|auto_generated|result_int[10]~21\) # (GND)))))
-- \CD|U02|Add0|auto_generated|result_int[11]~23\ = CARRY((\CD|U01|o_RS1[10]~21_combout\ & (!\CD|U02|Add0|auto_generated|_~12_combout\ & !\CD|U02|Add0|auto_generated|result_int[10]~21\)) # (!\CD|U01|o_RS1[10]~21_combout\ & 
-- ((!\CD|U02|Add0|auto_generated|result_int[10]~21\) # (!\CD|U02|Add0|auto_generated|_~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|o_RS1[10]~21_combout\,
	datab => \CD|U02|Add0|auto_generated|_~12_combout\,
	datad => VCC,
	cin => \CD|U02|Add0|auto_generated|result_int[10]~21\,
	combout => \CD|U02|Add0|auto_generated|result_int[11]~22_combout\,
	cout => \CD|U02|Add0|auto_generated|result_int[11]~23\);

-- Location: LCCOMB_X22_Y22_N20
\CD|U02|Add0|auto_generated|op_1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|op_1~30_combout\ = (\CC|IR|o_DATA\(13) & (!\CC|IR|o_DATA\(15) & (!\CC|IR|o_DATA\(14) & \CD|U02|Add0|auto_generated|result_int[11]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(13),
	datab => \CC|IR|o_DATA\(15),
	datac => \CC|IR|o_DATA\(14),
	datad => \CD|U02|Add0|auto_generated|result_int[11]~22_combout\,
	combout => \CD|U02|Add0|auto_generated|op_1~30_combout\);

-- Location: FF_X24_Y22_N11
\CD|U01|U02|o_DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~30_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U02|o_DATA\(10));

-- Location: LCCOMB_X23_Y22_N14
\CD|U01|o_RS1[10]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[10]~20_combout\ = (\CC|IR|o_DATA\(8) & (((\CC|IR|o_DATA\(9))))) # (!\CC|IR|o_DATA\(8) & ((\CC|IR|o_DATA\(9) & ((\CD|U01|U03|o_DATA\(10)))) # (!\CC|IR|o_DATA\(9) & (\CD|U01|U01|o_DATA\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(8),
	datab => \CD|U01|U01|o_DATA\(10),
	datac => \CD|U01|U03|o_DATA\(10),
	datad => \CC|IR|o_DATA\(9),
	combout => \CD|U01|o_RS1[10]~20_combout\);

-- Location: LCCOMB_X23_Y22_N4
\CD|U01|o_RS1[10]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[10]~21_combout\ = (\CC|IR|o_DATA\(8) & ((\CD|U01|o_RS1[10]~20_combout\ & ((\CD|U01|U04|o_DATA\(10)))) # (!\CD|U01|o_RS1[10]~20_combout\ & (\CD|U01|U02|o_DATA\(10))))) # (!\CC|IR|o_DATA\(8) & (((\CD|U01|o_RS1[10]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(8),
	datab => \CD|U01|U02|o_DATA\(10),
	datac => \CD|U01|o_RS1[10]~20_combout\,
	datad => \CD|U01|U04|o_DATA\(10),
	combout => \CD|U01|o_RS1[10]~21_combout\);

-- Location: LCCOMB_X23_Y22_N18
\CD|U03|o_DATA[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U03|o_DATA[10]~feeder_combout\ = \CD|U01|o_RS1[10]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CD|U01|o_RS1[10]~21_combout\,
	combout => \CD|U03|o_DATA[10]~feeder_combout\);

-- Location: FF_X23_Y22_N19
\CD|U03|o_DATA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U03|o_DATA[10]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CC|o_WR_IO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U03|o_DATA\(10));

-- Location: LCCOMB_X24_Y23_N28
\CD|U01|U03|o_DATA[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|U03|o_DATA[11]~feeder_combout\ = \CD|U02|Add0|auto_generated|op_1~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CD|U02|Add0|auto_generated|op_1~31_combout\,
	combout => \CD|U01|U03|o_DATA[11]~feeder_combout\);

-- Location: FF_X24_Y23_N29
\CD|U01|U03|o_DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U01|U03|o_DATA[11]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U03|o_DATA\(11));

-- Location: LCCOMB_X23_Y23_N28
\CD|U01|U02|o_DATA[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|U02|o_DATA[11]~feeder_combout\ = \CD|U02|Add0|auto_generated|op_1~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CD|U02|Add0|auto_generated|op_1~31_combout\,
	combout => \CD|U01|U02|o_DATA[11]~feeder_combout\);

-- Location: FF_X23_Y23_N29
\CD|U01|U02|o_DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U01|U02|o_DATA[11]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U02|o_DATA\(11));

-- Location: LCCOMB_X26_Y23_N24
\CD|U01|U01|o_DATA[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|U01|o_DATA[11]~feeder_combout\ = \CD|U02|Add0|auto_generated|op_1~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CD|U02|Add0|auto_generated|op_1~31_combout\,
	combout => \CD|U01|U01|o_DATA[11]~feeder_combout\);

-- Location: FF_X26_Y23_N25
\CD|U01|U01|o_DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U01|U01|o_DATA[11]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U01|o_DATA\(11));

-- Location: LCCOMB_X26_Y23_N10
\CD|U01|o_RS2[11]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[11]~20_combout\ = (\CC|IR|o_DATA\(7) & (((\CC|IR|o_DATA\(6))))) # (!\CC|IR|o_DATA\(7) & ((\CC|IR|o_DATA\(6) & (\CD|U01|U02|o_DATA\(11))) # (!\CC|IR|o_DATA\(6) & ((\CD|U01|U01|o_DATA\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U02|o_DATA\(11),
	datab => \CD|U01|U01|o_DATA\(11),
	datac => \CC|IR|o_DATA\(7),
	datad => \CC|IR|o_DATA\(6),
	combout => \CD|U01|o_RS2[11]~20_combout\);

-- Location: LCCOMB_X24_Y23_N26
\CD|U01|o_RS2[11]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[11]~21_combout\ = (\CC|IR|o_DATA\(7) & ((\CD|U01|o_RS2[11]~20_combout\ & (\CD|U01|U04|o_DATA\(11))) # (!\CD|U01|o_RS2[11]~20_combout\ & ((\CD|U01|U03|o_DATA\(11)))))) # (!\CC|IR|o_DATA\(7) & (((\CD|U01|o_RS2[11]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U04|o_DATA\(11),
	datab => \CD|U01|U03|o_DATA\(11),
	datac => \CC|IR|o_DATA\(7),
	datad => \CD|U01|o_RS2[11]~20_combout\,
	combout => \CD|U01|o_RS2[11]~21_combout\);

-- Location: LCCOMB_X23_Y23_N30
\CD|U02|Add0|auto_generated|_~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|_~13_combout\ = \CD|U01|o_RS2[11]~21_combout\ $ (((\CC|IR|o_DATA\(12) & !\CC|o_SEL_ULA~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(12),
	datac => \CC|o_SEL_ULA~0_combout\,
	datad => \CD|U01|o_RS2[11]~21_combout\,
	combout => \CD|U02|Add0|auto_generated|_~13_combout\);

-- Location: LCCOMB_X22_Y22_N8
\CD|U02|Add0|auto_generated|result_int[12]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|result_int[12]~24_combout\ = ((\CD|U01|o_RS1[11]~23_combout\ $ (\CD|U02|Add0|auto_generated|_~13_combout\ $ (!\CD|U02|Add0|auto_generated|result_int[11]~23\)))) # (GND)
-- \CD|U02|Add0|auto_generated|result_int[12]~25\ = CARRY((\CD|U01|o_RS1[11]~23_combout\ & ((\CD|U02|Add0|auto_generated|_~13_combout\) # (!\CD|U02|Add0|auto_generated|result_int[11]~23\))) # (!\CD|U01|o_RS1[11]~23_combout\ & 
-- (\CD|U02|Add0|auto_generated|_~13_combout\ & !\CD|U02|Add0|auto_generated|result_int[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|o_RS1[11]~23_combout\,
	datab => \CD|U02|Add0|auto_generated|_~13_combout\,
	datad => VCC,
	cin => \CD|U02|Add0|auto_generated|result_int[11]~23\,
	combout => \CD|U02|Add0|auto_generated|result_int[12]~24_combout\,
	cout => \CD|U02|Add0|auto_generated|result_int[12]~25\);

-- Location: LCCOMB_X23_Y23_N8
\CD|U02|Add0|auto_generated|op_1~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|op_1~31_combout\ = (!\CC|IR|o_DATA\(15) & (!\CC|IR|o_DATA\(14) & (\CC|IR|o_DATA\(13) & \CD|U02|Add0|auto_generated|result_int[12]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(15),
	datab => \CC|IR|o_DATA\(14),
	datac => \CC|IR|o_DATA\(13),
	datad => \CD|U02|Add0|auto_generated|result_int[12]~24_combout\,
	combout => \CD|U02|Add0|auto_generated|op_1~31_combout\);

-- Location: FF_X23_Y23_N9
\CD|U01|U04|o_DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U02|Add0|auto_generated|op_1~31_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U04|o_DATA\(11));

-- Location: LCCOMB_X23_Y23_N14
\CD|U01|o_RS1[11]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[11]~22_combout\ = (\CC|IR|o_DATA\(8) & (((\CC|IR|o_DATA\(9)) # (\CD|U01|U02|o_DATA\(11))))) # (!\CC|IR|o_DATA\(8) & (\CD|U01|U01|o_DATA\(11) & (!\CC|IR|o_DATA\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U01|o_DATA\(11),
	datab => \CC|IR|o_DATA\(8),
	datac => \CC|IR|o_DATA\(9),
	datad => \CD|U01|U02|o_DATA\(11),
	combout => \CD|U01|o_RS1[11]~22_combout\);

-- Location: LCCOMB_X23_Y23_N10
\CD|U01|o_RS1[11]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[11]~23_combout\ = (\CC|IR|o_DATA\(9) & ((\CD|U01|o_RS1[11]~22_combout\ & (\CD|U01|U04|o_DATA\(11))) # (!\CD|U01|o_RS1[11]~22_combout\ & ((\CD|U01|U03|o_DATA\(11)))))) # (!\CC|IR|o_DATA\(9) & (((\CD|U01|o_RS1[11]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(9),
	datab => \CD|U01|U04|o_DATA\(11),
	datac => \CD|U01|o_RS1[11]~22_combout\,
	datad => \CD|U01|U03|o_DATA\(11),
	combout => \CD|U01|o_RS1[11]~23_combout\);

-- Location: FF_X22_Y22_N3
\CD|U03|o_DATA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U01|o_RS1[11]~23_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CC|o_WR_IO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U03|o_DATA\(11));

-- Location: FF_X24_Y22_N15
\CD|U01|U02|o_DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~32_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U02|o_DATA\(12));

-- Location: FF_X23_Y22_N3
\CD|U01|U03|o_DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~32_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U03|o_DATA\(12));

-- Location: LCCOMB_X24_Y22_N20
\CD|U01|U01|o_DATA[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|U01|o_DATA[12]~feeder_combout\ = \CD|U02|Add0|auto_generated|op_1~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CD|U02|Add0|auto_generated|op_1~32_combout\,
	combout => \CD|U01|U01|o_DATA[12]~feeder_combout\);

-- Location: FF_X24_Y22_N21
\CD|U01|U01|o_DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U01|U01|o_DATA[12]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U01|o_DATA\(12));

-- Location: LCCOMB_X24_Y22_N24
\CD|U01|o_RS2[12]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[12]~22_combout\ = (\CC|IR|o_DATA\(6) & (((\CC|IR|o_DATA\(7))))) # (!\CC|IR|o_DATA\(6) & ((\CC|IR|o_DATA\(7) & (\CD|U01|U03|o_DATA\(12))) # (!\CC|IR|o_DATA\(7) & ((\CD|U01|U01|o_DATA\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U03|o_DATA\(12),
	datab => \CD|U01|U01|o_DATA\(12),
	datac => \CC|IR|o_DATA\(6),
	datad => \CC|IR|o_DATA\(7),
	combout => \CD|U01|o_RS2[12]~22_combout\);

-- Location: LCCOMB_X24_Y22_N14
\CD|U01|o_RS2[12]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[12]~23_combout\ = (\CC|IR|o_DATA\(6) & ((\CD|U01|o_RS2[12]~22_combout\ & (\CD|U01|U04|o_DATA\(12))) # (!\CD|U01|o_RS2[12]~22_combout\ & ((\CD|U01|U02|o_DATA\(12)))))) # (!\CC|IR|o_DATA\(6) & (((\CD|U01|o_RS2[12]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(6),
	datab => \CD|U01|U04|o_DATA\(12),
	datac => \CD|U01|U02|o_DATA\(12),
	datad => \CD|U01|o_RS2[12]~22_combout\,
	combout => \CD|U01|o_RS2[12]~23_combout\);

-- Location: LCCOMB_X24_Y22_N18
\CD|U02|Add0|auto_generated|_~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|_~14_combout\ = \CD|U01|o_RS2[12]~23_combout\ $ (((\CC|IR|o_DATA\(12) & !\CC|o_SEL_ULA~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(12),
	datab => \CC|o_SEL_ULA~0_combout\,
	datac => \CD|U01|o_RS2[12]~23_combout\,
	combout => \CD|U02|Add0|auto_generated|_~14_combout\);

-- Location: LCCOMB_X22_Y22_N10
\CD|U02|Add0|auto_generated|result_int[13]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|result_int[13]~26_combout\ = (\CD|U02|Add0|auto_generated|_~14_combout\ & ((\CD|U01|o_RS1[12]~25_combout\ & (\CD|U02|Add0|auto_generated|result_int[12]~25\ & VCC)) # (!\CD|U01|o_RS1[12]~25_combout\ & 
-- (!\CD|U02|Add0|auto_generated|result_int[12]~25\)))) # (!\CD|U02|Add0|auto_generated|_~14_combout\ & ((\CD|U01|o_RS1[12]~25_combout\ & (!\CD|U02|Add0|auto_generated|result_int[12]~25\)) # (!\CD|U01|o_RS1[12]~25_combout\ & 
-- ((\CD|U02|Add0|auto_generated|result_int[12]~25\) # (GND)))))
-- \CD|U02|Add0|auto_generated|result_int[13]~27\ = CARRY((\CD|U02|Add0|auto_generated|_~14_combout\ & (!\CD|U01|o_RS1[12]~25_combout\ & !\CD|U02|Add0|auto_generated|result_int[12]~25\)) # (!\CD|U02|Add0|auto_generated|_~14_combout\ & 
-- ((!\CD|U02|Add0|auto_generated|result_int[12]~25\) # (!\CD|U01|o_RS1[12]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U02|Add0|auto_generated|_~14_combout\,
	datab => \CD|U01|o_RS1[12]~25_combout\,
	datad => VCC,
	cin => \CD|U02|Add0|auto_generated|result_int[12]~25\,
	combout => \CD|U02|Add0|auto_generated|result_int[13]~26_combout\,
	cout => \CD|U02|Add0|auto_generated|result_int[13]~27\);

-- Location: LCCOMB_X26_Y22_N14
\CD|U02|Add0|auto_generated|op_1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|op_1~32_combout\ = (\CC|IR|o_DATA\(13) & (!\CC|IR|o_DATA\(15) & (!\CC|IR|o_DATA\(14) & \CD|U02|Add0|auto_generated|result_int[13]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(13),
	datab => \CC|IR|o_DATA\(15),
	datac => \CC|IR|o_DATA\(14),
	datad => \CD|U02|Add0|auto_generated|result_int[13]~26_combout\,
	combout => \CD|U02|Add0|auto_generated|op_1~32_combout\);

-- Location: LCCOMB_X26_Y22_N8
\CD|U01|U04|o_DATA[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|U04|o_DATA[12]~feeder_combout\ = \CD|U02|Add0|auto_generated|op_1~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CD|U02|Add0|auto_generated|op_1~32_combout\,
	combout => \CD|U01|U04|o_DATA[12]~feeder_combout\);

-- Location: FF_X26_Y22_N9
\CD|U01|U04|o_DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U01|U04|o_DATA[12]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U04|o_DATA\(12));

-- Location: LCCOMB_X23_Y22_N2
\CD|U01|o_RS1[12]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[12]~24_combout\ = (\CC|IR|o_DATA\(8) & (((\CC|IR|o_DATA\(9))))) # (!\CC|IR|o_DATA\(8) & ((\CC|IR|o_DATA\(9) & ((\CD|U01|U03|o_DATA\(12)))) # (!\CC|IR|o_DATA\(9) & (\CD|U01|U01|o_DATA\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(8),
	datab => \CD|U01|U01|o_DATA\(12),
	datac => \CD|U01|U03|o_DATA\(12),
	datad => \CC|IR|o_DATA\(9),
	combout => \CD|U01|o_RS1[12]~24_combout\);

-- Location: LCCOMB_X23_Y22_N12
\CD|U01|o_RS1[12]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[12]~25_combout\ = (\CC|IR|o_DATA\(8) & ((\CD|U01|o_RS1[12]~24_combout\ & (\CD|U01|U04|o_DATA\(12))) # (!\CD|U01|o_RS1[12]~24_combout\ & ((\CD|U01|U02|o_DATA\(12)))))) # (!\CC|IR|o_DATA\(8) & (((\CD|U01|o_RS1[12]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(8),
	datab => \CD|U01|U04|o_DATA\(12),
	datac => \CD|U01|U02|o_DATA\(12),
	datad => \CD|U01|o_RS1[12]~24_combout\,
	combout => \CD|U01|o_RS1[12]~25_combout\);

-- Location: FF_X23_Y22_N13
\CD|U03|o_DATA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U01|o_RS1[12]~25_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CC|o_WR_IO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U03|o_DATA\(12));

-- Location: LCCOMB_X23_Y21_N28
\CD|U01|U03|o_DATA[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|U03|o_DATA[13]~feeder_combout\ = \CD|U02|Add0|auto_generated|op_1~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CD|U02|Add0|auto_generated|op_1~33_combout\,
	combout => \CD|U01|U03|o_DATA[13]~feeder_combout\);

-- Location: FF_X23_Y21_N29
\CD|U01|U03|o_DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U01|U03|o_DATA[13]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U03|o_DATA\(13));

-- Location: FF_X21_Y21_N29
\CD|U01|U02|o_DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~33_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U02|o_DATA\(13));

-- Location: FF_X22_Y21_N13
\CD|U01|U01|o_DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~33_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U01|o_DATA\(13));

-- Location: LCCOMB_X23_Y21_N24
\CD|U01|o_RS2[13]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[13]~24_combout\ = (\CC|IR|o_DATA\(7) & (\CC|IR|o_DATA\(6))) # (!\CC|IR|o_DATA\(7) & ((\CC|IR|o_DATA\(6) & (\CD|U01|U02|o_DATA\(13))) # (!\CC|IR|o_DATA\(6) & ((\CD|U01|U01|o_DATA\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(7),
	datab => \CC|IR|o_DATA\(6),
	datac => \CD|U01|U02|o_DATA\(13),
	datad => \CD|U01|U01|o_DATA\(13),
	combout => \CD|U01|o_RS2[13]~24_combout\);

-- Location: LCCOMB_X23_Y21_N18
\CD|U01|o_RS2[13]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[13]~25_combout\ = (\CC|IR|o_DATA\(7) & ((\CD|U01|o_RS2[13]~24_combout\ & ((\CD|U01|U04|o_DATA\(13)))) # (!\CD|U01|o_RS2[13]~24_combout\ & (\CD|U01|U03|o_DATA\(13))))) # (!\CC|IR|o_DATA\(7) & (((\CD|U01|o_RS2[13]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(7),
	datab => \CD|U01|U03|o_DATA\(13),
	datac => \CD|U01|U04|o_DATA\(13),
	datad => \CD|U01|o_RS2[13]~24_combout\,
	combout => \CD|U01|o_RS2[13]~25_combout\);

-- Location: LCCOMB_X23_Y21_N8
\CD|U02|Add0|auto_generated|_~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|_~15_combout\ = \CD|U01|o_RS2[13]~25_combout\ $ (((\CC|IR|o_DATA\(12) & !\CC|o_SEL_ULA~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(12),
	datab => \CC|o_SEL_ULA~0_combout\,
	datad => \CD|U01|o_RS2[13]~25_combout\,
	combout => \CD|U02|Add0|auto_generated|_~15_combout\);

-- Location: LCCOMB_X22_Y22_N12
\CD|U02|Add0|auto_generated|result_int[14]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|result_int[14]~28_combout\ = ((\CD|U01|o_RS1[13]~27_combout\ $ (\CD|U02|Add0|auto_generated|_~15_combout\ $ (!\CD|U02|Add0|auto_generated|result_int[13]~27\)))) # (GND)
-- \CD|U02|Add0|auto_generated|result_int[14]~29\ = CARRY((\CD|U01|o_RS1[13]~27_combout\ & ((\CD|U02|Add0|auto_generated|_~15_combout\) # (!\CD|U02|Add0|auto_generated|result_int[13]~27\))) # (!\CD|U01|o_RS1[13]~27_combout\ & 
-- (\CD|U02|Add0|auto_generated|_~15_combout\ & !\CD|U02|Add0|auto_generated|result_int[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|o_RS1[13]~27_combout\,
	datab => \CD|U02|Add0|auto_generated|_~15_combout\,
	datad => VCC,
	cin => \CD|U02|Add0|auto_generated|result_int[13]~27\,
	combout => \CD|U02|Add0|auto_generated|result_int[14]~28_combout\,
	cout => \CD|U02|Add0|auto_generated|result_int[14]~29\);

-- Location: LCCOMB_X22_Y22_N22
\CD|U02|Add0|auto_generated|op_1~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|op_1~33_combout\ = (\CC|IR|o_DATA\(13) & (!\CC|IR|o_DATA\(15) & (!\CC|IR|o_DATA\(14) & \CD|U02|Add0|auto_generated|result_int[14]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(13),
	datab => \CC|IR|o_DATA\(15),
	datac => \CC|IR|o_DATA\(14),
	datad => \CD|U02|Add0|auto_generated|result_int[14]~28_combout\,
	combout => \CD|U02|Add0|auto_generated|op_1~33_combout\);

-- Location: FF_X22_Y22_N23
\CD|U01|U04|o_DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U02|Add0|auto_generated|op_1~33_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U04|o_DATA\(13));

-- Location: LCCOMB_X21_Y21_N28
\CD|U01|o_RS1[13]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[13]~26_combout\ = (\CC|IR|o_DATA\(9) & (((\CC|IR|o_DATA\(8))))) # (!\CC|IR|o_DATA\(9) & ((\CC|IR|o_DATA\(8) & ((\CD|U01|U02|o_DATA\(13)))) # (!\CC|IR|o_DATA\(8) & (\CD|U01|U01|o_DATA\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(9),
	datab => \CD|U01|U01|o_DATA\(13),
	datac => \CD|U01|U02|o_DATA\(13),
	datad => \CC|IR|o_DATA\(8),
	combout => \CD|U01|o_RS1[13]~26_combout\);

-- Location: LCCOMB_X21_Y21_N26
\CD|U01|o_RS1[13]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[13]~27_combout\ = (\CC|IR|o_DATA\(9) & ((\CD|U01|o_RS1[13]~26_combout\ & (\CD|U01|U04|o_DATA\(13))) # (!\CD|U01|o_RS1[13]~26_combout\ & ((\CD|U01|U03|o_DATA\(13)))))) # (!\CC|IR|o_DATA\(9) & (((\CD|U01|o_RS1[13]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U04|o_DATA\(13),
	datab => \CC|IR|o_DATA\(9),
	datac => \CD|U01|U03|o_DATA\(13),
	datad => \CD|U01|o_RS1[13]~26_combout\,
	combout => \CD|U01|o_RS1[13]~27_combout\);

-- Location: LCCOMB_X21_Y21_N10
\CD|U03|o_DATA[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U03|o_DATA[13]~feeder_combout\ = \CD|U01|o_RS1[13]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CD|U01|o_RS1[13]~27_combout\,
	combout => \CD|U03|o_DATA[13]~feeder_combout\);

-- Location: FF_X21_Y21_N11
\CD|U03|o_DATA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U03|o_DATA[13]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CC|o_WR_IO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U03|o_DATA\(13));

-- Location: FF_X22_Y22_N29
\CD|U01|U04|o_DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U02|Add0|auto_generated|op_1~34_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U04|o_DATA\(14));

-- Location: FF_X23_Y22_N21
\CD|U01|U03|o_DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~34_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U03|o_DATA\(14));

-- Location: FF_X24_Y22_N1
\CD|U01|U01|o_DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~34_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U01|o_DATA\(14));

-- Location: LCCOMB_X24_Y22_N0
\CD|U01|o_RS2[14]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[14]~26_combout\ = (\CC|IR|o_DATA\(6) & (((\CC|IR|o_DATA\(7))))) # (!\CC|IR|o_DATA\(6) & ((\CC|IR|o_DATA\(7) & (\CD|U01|U03|o_DATA\(14))) # (!\CC|IR|o_DATA\(7) & ((\CD|U01|U01|o_DATA\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(6),
	datab => \CD|U01|U03|o_DATA\(14),
	datac => \CD|U01|U01|o_DATA\(14),
	datad => \CC|IR|o_DATA\(7),
	combout => \CD|U01|o_RS2[14]~26_combout\);

-- Location: LCCOMB_X24_Y22_N6
\CD|U01|o_RS2[14]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[14]~27_combout\ = (\CD|U01|o_RS2[14]~26_combout\ & ((\CD|U01|U04|o_DATA\(14)) # ((!\CC|IR|o_DATA\(6))))) # (!\CD|U01|o_RS2[14]~26_combout\ & (((\CD|U01|U02|o_DATA\(14) & \CC|IR|o_DATA\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U04|o_DATA\(14),
	datab => \CD|U01|o_RS2[14]~26_combout\,
	datac => \CD|U01|U02|o_DATA\(14),
	datad => \CC|IR|o_DATA\(6),
	combout => \CD|U01|o_RS2[14]~27_combout\);

-- Location: LCCOMB_X23_Y22_N26
\CD|U02|Add0|auto_generated|_~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|_~16_combout\ = \CD|U01|o_RS2[14]~27_combout\ $ (((\CC|IR|o_DATA\(12) & !\CC|o_SEL_ULA~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(12),
	datab => \CC|o_SEL_ULA~0_combout\,
	datad => \CD|U01|o_RS2[14]~27_combout\,
	combout => \CD|U02|Add0|auto_generated|_~16_combout\);

-- Location: LCCOMB_X22_Y22_N14
\CD|U02|Add0|auto_generated|result_int[15]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|result_int[15]~30_combout\ = (\CD|U01|o_RS1[14]~29_combout\ & ((\CD|U02|Add0|auto_generated|_~16_combout\ & (\CD|U02|Add0|auto_generated|result_int[14]~29\ & VCC)) # (!\CD|U02|Add0|auto_generated|_~16_combout\ & 
-- (!\CD|U02|Add0|auto_generated|result_int[14]~29\)))) # (!\CD|U01|o_RS1[14]~29_combout\ & ((\CD|U02|Add0|auto_generated|_~16_combout\ & (!\CD|U02|Add0|auto_generated|result_int[14]~29\)) # (!\CD|U02|Add0|auto_generated|_~16_combout\ & 
-- ((\CD|U02|Add0|auto_generated|result_int[14]~29\) # (GND)))))
-- \CD|U02|Add0|auto_generated|result_int[15]~31\ = CARRY((\CD|U01|o_RS1[14]~29_combout\ & (!\CD|U02|Add0|auto_generated|_~16_combout\ & !\CD|U02|Add0|auto_generated|result_int[14]~29\)) # (!\CD|U01|o_RS1[14]~29_combout\ & 
-- ((!\CD|U02|Add0|auto_generated|result_int[14]~29\) # (!\CD|U02|Add0|auto_generated|_~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|o_RS1[14]~29_combout\,
	datab => \CD|U02|Add0|auto_generated|_~16_combout\,
	datad => VCC,
	cin => \CD|U02|Add0|auto_generated|result_int[14]~29\,
	combout => \CD|U02|Add0|auto_generated|result_int[15]~30_combout\,
	cout => \CD|U02|Add0|auto_generated|result_int[15]~31\);

-- Location: LCCOMB_X22_Y22_N28
\CD|U02|Add0|auto_generated|op_1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|op_1~34_combout\ = (!\CC|IR|o_DATA\(14) & (!\CC|IR|o_DATA\(15) & (\CD|U02|Add0|auto_generated|result_int[15]~30_combout\ & \CC|IR|o_DATA\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(14),
	datab => \CC|IR|o_DATA\(15),
	datac => \CD|U02|Add0|auto_generated|result_int[15]~30_combout\,
	datad => \CC|IR|o_DATA\(13),
	combout => \CD|U02|Add0|auto_generated|op_1~34_combout\);

-- Location: FF_X24_Y22_N7
\CD|U01|U02|o_DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~34_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U02|o_DATA\(14));

-- Location: LCCOMB_X23_Y22_N20
\CD|U01|o_RS1[14]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[14]~28_combout\ = (\CC|IR|o_DATA\(8) & (((\CC|IR|o_DATA\(9))))) # (!\CC|IR|o_DATA\(8) & ((\CC|IR|o_DATA\(9) & ((\CD|U01|U03|o_DATA\(14)))) # (!\CC|IR|o_DATA\(9) & (\CD|U01|U01|o_DATA\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(8),
	datab => \CD|U01|U01|o_DATA\(14),
	datac => \CD|U01|U03|o_DATA\(14),
	datad => \CC|IR|o_DATA\(9),
	combout => \CD|U01|o_RS1[14]~28_combout\);

-- Location: LCCOMB_X23_Y22_N30
\CD|U01|o_RS1[14]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[14]~29_combout\ = (\CD|U01|o_RS1[14]~28_combout\ & (((\CD|U01|U04|o_DATA\(14)) # (!\CC|IR|o_DATA\(8))))) # (!\CD|U01|o_RS1[14]~28_combout\ & (\CD|U01|U02|o_DATA\(14) & (\CC|IR|o_DATA\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U02|o_DATA\(14),
	datab => \CD|U01|o_RS1[14]~28_combout\,
	datac => \CC|IR|o_DATA\(8),
	datad => \CD|U01|U04|o_DATA\(14),
	combout => \CD|U01|o_RS1[14]~29_combout\);

-- Location: FF_X23_Y22_N27
\CD|U03|o_DATA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U01|o_RS1[14]~29_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CC|o_WR_IO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U03|o_DATA\(14));

-- Location: FF_X22_Y22_N31
\CD|U01|U04|o_DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U02|Add0|auto_generated|op_1~35_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U04|o_DATA\(15));

-- Location: FF_X21_Y21_N25
\CD|U01|U02|o_DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~35_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U02|o_DATA\(15));

-- Location: FF_X22_Y21_N23
\CD|U01|U01|o_DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	asdata => \CD|U02|Add0|auto_generated|op_1~35_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	sload => VCC,
	ena => \CD|U01|w_WR1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U01|o_DATA\(15));

-- Location: LCCOMB_X22_Y21_N22
\CD|U01|o_RS2[15]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[15]~28_combout\ = (\CC|IR|o_DATA\(7) & (((\CC|IR|o_DATA\(6))))) # (!\CC|IR|o_DATA\(7) & ((\CC|IR|o_DATA\(6) & (\CD|U01|U02|o_DATA\(15))) # (!\CC|IR|o_DATA\(6) & ((\CD|U01|U01|o_DATA\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(7),
	datab => \CD|U01|U02|o_DATA\(15),
	datac => \CD|U01|U01|o_DATA\(15),
	datad => \CC|IR|o_DATA\(6),
	combout => \CD|U01|o_RS2[15]~28_combout\);

-- Location: LCCOMB_X22_Y21_N14
\CD|U01|o_RS2[15]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS2[15]~29_combout\ = (\CC|IR|o_DATA\(7) & ((\CD|U01|o_RS2[15]~28_combout\ & (\CD|U01|U04|o_DATA\(15))) # (!\CD|U01|o_RS2[15]~28_combout\ & ((\CD|U01|U03|o_DATA\(15)))))) # (!\CC|IR|o_DATA\(7) & (((\CD|U01|o_RS2[15]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U04|o_DATA\(15),
	datab => \CC|IR|o_DATA\(7),
	datac => \CD|U01|o_RS2[15]~28_combout\,
	datad => \CD|U01|U03|o_DATA\(15),
	combout => \CD|U01|o_RS2[15]~29_combout\);

-- Location: LCCOMB_X22_Y24_N18
\CD|U02|Add0|auto_generated|_~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|_~17_combout\ = \CD|U01|o_RS2[15]~29_combout\ $ (((!\CC|o_SEL_ULA~0_combout\ & \CC|IR|o_DATA\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CC|o_SEL_ULA~0_combout\,
	datac => \CC|IR|o_DATA\(12),
	datad => \CD|U01|o_RS2[15]~29_combout\,
	combout => \CD|U02|Add0|auto_generated|_~17_combout\);

-- Location: LCCOMB_X22_Y22_N16
\CD|U02|Add0|auto_generated|result_int[16]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|result_int[16]~32_combout\ = \CD|U01|o_RS1[15]~31_combout\ $ (\CD|U02|Add0|auto_generated|result_int[15]~31\ $ (!\CD|U02|Add0|auto_generated|_~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|o_RS1[15]~31_combout\,
	datad => \CD|U02|Add0|auto_generated|_~17_combout\,
	cin => \CD|U02|Add0|auto_generated|result_int[15]~31\,
	combout => \CD|U02|Add0|auto_generated|result_int[16]~32_combout\);

-- Location: LCCOMB_X22_Y22_N30
\CD|U02|Add0|auto_generated|op_1~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U02|Add0|auto_generated|op_1~35_combout\ = (\CC|IR|o_DATA\(13) & (!\CC|IR|o_DATA\(15) & (!\CC|IR|o_DATA\(14) & \CD|U02|Add0|auto_generated|result_int[16]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(13),
	datab => \CC|IR|o_DATA\(15),
	datac => \CC|IR|o_DATA\(14),
	datad => \CD|U02|Add0|auto_generated|result_int[16]~32_combout\,
	combout => \CD|U02|Add0|auto_generated|op_1~35_combout\);

-- Location: LCCOMB_X21_Y22_N30
\CD|U01|U03|o_DATA[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|U03|o_DATA[15]~feeder_combout\ = \CD|U02|Add0|auto_generated|op_1~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CD|U02|Add0|auto_generated|op_1~35_combout\,
	combout => \CD|U01|U03|o_DATA[15]~feeder_combout\);

-- Location: FF_X21_Y22_N31
\CD|U01|U03|o_DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U01|U03|o_DATA[15]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CD|U01|w_WR2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U01|U03|o_DATA\(15));

-- Location: LCCOMB_X21_Y21_N24
\CD|U01|o_RS1[15]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[15]~30_combout\ = (\CC|IR|o_DATA\(8) & ((\CC|IR|o_DATA\(9)) # ((\CD|U01|U02|o_DATA\(15))))) # (!\CC|IR|o_DATA\(8) & (!\CC|IR|o_DATA\(9) & ((\CD|U01|U01|o_DATA\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CC|IR|o_DATA\(8),
	datab => \CC|IR|o_DATA\(9),
	datac => \CD|U01|U02|o_DATA\(15),
	datad => \CD|U01|U01|o_DATA\(15),
	combout => \CD|U01|o_RS1[15]~30_combout\);

-- Location: LCCOMB_X21_Y21_N22
\CD|U01|o_RS1[15]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U01|o_RS1[15]~31_combout\ = (\CD|U01|o_RS1[15]~30_combout\ & (((\CD|U01|U04|o_DATA\(15)) # (!\CC|IR|o_DATA\(9))))) # (!\CD|U01|o_RS1[15]~30_combout\ & (\CD|U01|U03|o_DATA\(15) & (\CC|IR|o_DATA\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CD|U01|U03|o_DATA\(15),
	datab => \CD|U01|o_RS1[15]~30_combout\,
	datac => \CC|IR|o_DATA\(9),
	datad => \CD|U01|U04|o_DATA\(15),
	combout => \CD|U01|o_RS1[15]~31_combout\);

-- Location: LCCOMB_X21_Y21_N0
\CD|U03|o_DATA[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CD|U03|o_DATA[15]~feeder_combout\ = \CD|U01|o_RS1[15]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CD|U01|o_RS1[15]~31_combout\,
	combout => \CD|U03|o_DATA[15]~feeder_combout\);

-- Location: FF_X21_Y21_N1
\CD|U03|o_DATA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_i_CLK~inputclkctrl_outclk\,
	d => \CD|U03|o_DATA[15]~feeder_combout\,
	clrn => \ALT_INV_i_RST~inputclkctrl_outclk\,
	ena => \CC|o_WR_IO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CD|U03|o_DATA\(15));

ww_o_ADD_ROM(0) <= \o_ADD_ROM[0]~output_o\;

ww_o_ADD_ROM(1) <= \o_ADD_ROM[1]~output_o\;

ww_o_ADD_ROM(2) <= \o_ADD_ROM[2]~output_o\;

ww_o_ADD_ROM(3) <= \o_ADD_ROM[3]~output_o\;

ww_o_ADD_ROM(4) <= \o_ADD_ROM[4]~output_o\;

ww_o_ADD_ROM(5) <= \o_ADD_ROM[5]~output_o\;

ww_o_ADD_ROM(6) <= \o_ADD_ROM[6]~output_o\;

ww_o_ADD_ROM(7) <= \o_ADD_ROM[7]~output_o\;

ww_o_ADD_ROM(8) <= \o_ADD_ROM[8]~output_o\;

ww_o_ADD_ROM(9) <= \o_ADD_ROM[9]~output_o\;

ww_o_ADD_ROM(10) <= \o_ADD_ROM[10]~output_o\;

ww_o_ADD_ROM(11) <= \o_ADD_ROM[11]~output_o\;

ww_o_DATA_IO(0) <= \o_DATA_IO[0]~output_o\;

ww_o_DATA_IO(1) <= \o_DATA_IO[1]~output_o\;

ww_o_DATA_IO(2) <= \o_DATA_IO[2]~output_o\;

ww_o_DATA_IO(3) <= \o_DATA_IO[3]~output_o\;

ww_o_DATA_IO(4) <= \o_DATA_IO[4]~output_o\;

ww_o_DATA_IO(5) <= \o_DATA_IO[5]~output_o\;

ww_o_DATA_IO(6) <= \o_DATA_IO[6]~output_o\;

ww_o_DATA_IO(7) <= \o_DATA_IO[7]~output_o\;

ww_o_DATA_IO(8) <= \o_DATA_IO[8]~output_o\;

ww_o_DATA_IO(9) <= \o_DATA_IO[9]~output_o\;

ww_o_DATA_IO(10) <= \o_DATA_IO[10]~output_o\;

ww_o_DATA_IO(11) <= \o_DATA_IO[11]~output_o\;

ww_o_DATA_IO(12) <= \o_DATA_IO[12]~output_o\;

ww_o_DATA_IO(13) <= \o_DATA_IO[13]~output_o\;

ww_o_DATA_IO(14) <= \o_DATA_IO[14]~output_o\;

ww_o_DATA_IO(15) <= \o_DATA_IO[15]~output_o\;
END structure;



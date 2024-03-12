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

-- DATE "03/12/2024 17:27:15"

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

ENTITY 	RFID_NFC_Reader IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	vehicle_detected : IN std_logic;
	valid_identification : OUT std_logic;
	alarm : OUT std_logic
	);
END RFID_NFC_Reader;

-- Design Ports Information
-- clk	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle_detected	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valid_identification	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarm	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RFID_NFC_Reader IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_vehicle_detected : std_logic;
SIGNAL ww_valid_identification : std_logic;
SIGNAL ww_alarm : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \vehicle_detected~input_o\ : std_logic;
SIGNAL \valid_identification~output_o\ : std_logic;
SIGNAL \alarm~output_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_vehicle_detected <= vehicle_detected;
valid_identification <= ww_valid_identification;
alarm <= ww_alarm;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y27_N23
\valid_identification~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \valid_identification~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\alarm~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alarm~output_o\);

-- Location: IOIBUF_X41_Y9_N22
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X41_Y2_N1
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X41_Y25_N8
\vehicle_detected~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle_detected,
	o => \vehicle_detected~input_o\);

ww_valid_identification <= \valid_identification~output_o\;

ww_alarm <= \alarm~output_o\;
END structure;



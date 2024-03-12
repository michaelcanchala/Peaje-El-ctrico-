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

-- DATE "03/12/2024 17:29:29"

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

ENTITY 	TollGateControl IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	vehicle_detected : IN std_logic;
	valid_identification : IN std_logic;
	barrier_control : OUT std_logic;
	gate_control : OUT std_logic
	);
END TollGateControl;

-- Design Ports Information
-- barrier_control	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- gate_control	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valid_identification	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle_detected	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TollGateControl IS
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
SIGNAL ww_barrier_control : std_logic;
SIGNAL ww_gate_control : std_logic;
SIGNAL \barrier_control~output_o\ : std_logic;
SIGNAL \gate_control~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \vehicle_detected~input_o\ : std_logic;
SIGNAL \valid_identification~input_o\ : std_logic;
SIGNAL \gate_open~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \gate_open~q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_vehicle_detected <= vehicle_detected;
ww_valid_identification <= valid_identification;
barrier_control <= ww_barrier_control;
gate_control <= ww_gate_control;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: IOOBUF_X0_Y27_N9
\barrier_control~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gate_open~q\,
	devoe => ww_devoe,
	o => \barrier_control~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\gate_control~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gate_open~q\,
	devoe => ww_devoe,
	o => \gate_control~output_o\);

-- Location: IOIBUF_X0_Y26_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\vehicle_detected~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle_detected,
	o => \vehicle_detected~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\valid_identification~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_valid_identification,
	o => \valid_identification~input_o\);

-- Location: LCCOMB_X1_Y26_N0
\gate_open~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gate_open~0_combout\ = (\vehicle_detected~input_o\ & ((\valid_identification~input_o\))) # (!\vehicle_detected~input_o\ & (\gate_open~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vehicle_detected~input_o\,
	datac => \gate_open~q\,
	datad => \valid_identification~input_o\,
	combout => \gate_open~0_combout\);

-- Location: IOIBUF_X0_Y26_N22
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X1_Y26_N1
gate_open : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \gate_open~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gate_open~q\);

ww_barrier_control <= \barrier_control~output_o\;

ww_gate_control <= \gate_control~output_o\;
END structure;



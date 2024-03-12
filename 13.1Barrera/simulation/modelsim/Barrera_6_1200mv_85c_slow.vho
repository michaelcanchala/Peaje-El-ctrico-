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

-- DATE "03/12/2024 17:19:16"

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

ENTITY 	Barrera IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	semaforo_in : IN std_logic_vector(1 DOWNTO 0);
	barrera_control : OUT std_logic
	);
END Barrera;

-- Design Ports Information
-- clk	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- barrera_control	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_in[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_in[1]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Barrera IS
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
SIGNAL ww_semaforo_in : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_barrera_control : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \barrera_control~output_o\ : std_logic;
SIGNAL \semaforo_in[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \semaforo_in[1]~input_o\ : std_logic;
SIGNAL \barrera_control~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_semaforo_in <= semaforo_in;
barrera_control <= ww_barrera_control;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y23_N2
\barrera_control~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \barrera_control~0_combout\,
	devoe => ww_devoe,
	o => \barrera_control~output_o\);

-- Location: IOIBUF_X0_Y22_N8
\semaforo_in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_semaforo_in(0),
	o => \semaforo_in[0]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X0_Y22_N22
\semaforo_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_semaforo_in(1),
	o => \semaforo_in[1]~input_o\);

-- Location: LCCOMB_X1_Y23_N16
\barrera_control~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \barrera_control~0_combout\ = (!\reset~input_o\ & ((\semaforo_in[0]~input_o\) # (\semaforo_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \semaforo_in[0]~input_o\,
	datac => \reset~input_o\,
	datad => \semaforo_in[1]~input_o\,
	combout => \barrera_control~0_combout\);

-- Location: IOIBUF_X9_Y29_N8
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

ww_barrera_control <= \barrera_control~output_o\;
END structure;



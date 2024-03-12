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

-- DATE "03/12/2024 17:15:57"

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

ENTITY 	Semaphoro IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	semaforo_out : OUT std_logic_vector(1 DOWNTO 0);
	semaforo_in : OUT std_logic_vector(1 DOWNTO 0)
	);
END Semaphoro;

-- Design Ports Information
-- semaforo_out[0]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_out[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_in[0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo_in[1]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Semaphoro IS
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
SIGNAL ww_semaforo_out : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_semaforo_in : std_logic_vector(1 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \semaforo_out[0]~output_o\ : std_logic;
SIGNAL \semaforo_out[1]~output_o\ : std_logic;
SIGNAL \semaforo_in[0]~output_o\ : std_logic;
SIGNAL \semaforo_in[1]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \contador[0]~12_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \contador[1]~4_combout\ : std_logic;
SIGNAL \contador[1]~5\ : std_logic;
SIGNAL \contador[2]~6_combout\ : std_logic;
SIGNAL \contador[2]~7\ : std_logic;
SIGNAL \contador[3]~8_combout\ : std_logic;
SIGNAL \contador[3]~9\ : std_logic;
SIGNAL \contador[4]~10_combout\ : std_logic;
SIGNAL \semaforo_out~0_combout\ : std_logic;
SIGNAL \semaforo_out~1_combout\ : std_logic;
SIGNAL \semaforo_out[0]~reg0_q\ : std_logic;
SIGNAL contador : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
semaforo_out <= ww_semaforo_out;
semaforo_in <= ww_semaforo_in;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X30_Y29_N9
\semaforo_out[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \semaforo_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \semaforo_out[0]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\semaforo_out[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \semaforo_out[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\semaforo_in[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \semaforo_in[0]~output_o\);

-- Location: IOOBUF_X14_Y29_N23
\semaforo_in[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \semaforo_in[1]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X31_Y28_N30
\contador[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[0]~12_combout\ = !contador(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(0),
	combout => \contador[0]~12_combout\);

-- Location: IOIBUF_X0_Y14_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X31_Y28_N31
\contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[0]~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(0));

-- Location: LCCOMB_X31_Y28_N16
\contador[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[1]~4_combout\ = (contador(0) & (contador(1) $ (VCC))) # (!contador(0) & (contador(1) & VCC))
-- \contador[1]~5\ = CARRY((contador(0) & contador(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(1),
	datad => VCC,
	combout => \contador[1]~4_combout\,
	cout => \contador[1]~5\);

-- Location: FF_X31_Y28_N17
\contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[1]~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(1));

-- Location: LCCOMB_X31_Y28_N18
\contador[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[2]~6_combout\ = (contador(2) & (!\contador[1]~5\)) # (!contador(2) & ((\contador[1]~5\) # (GND)))
-- \contador[2]~7\ = CARRY((!\contador[1]~5\) # (!contador(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(2),
	datad => VCC,
	cin => \contador[1]~5\,
	combout => \contador[2]~6_combout\,
	cout => \contador[2]~7\);

-- Location: FF_X31_Y28_N19
\contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[2]~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(2));

-- Location: LCCOMB_X31_Y28_N20
\contador[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[3]~8_combout\ = (contador(3) & (\contador[2]~7\ $ (GND))) # (!contador(3) & (!\contador[2]~7\ & VCC))
-- \contador[3]~9\ = CARRY((contador(3) & !\contador[2]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(3),
	datad => VCC,
	cin => \contador[2]~7\,
	combout => \contador[3]~8_combout\,
	cout => \contador[3]~9\);

-- Location: FF_X31_Y28_N21
\contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[3]~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(3));

-- Location: LCCOMB_X31_Y28_N22
\contador[4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador[4]~10_combout\ = contador(4) $ (\contador[3]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(4),
	cin => \contador[3]~9\,
	combout => \contador[4]~10_combout\);

-- Location: FF_X31_Y28_N23
\contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador[4]~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(4));

-- Location: LCCOMB_X31_Y28_N28
\semaforo_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \semaforo_out~0_combout\ = (contador(4) & (((contador(2) & !contador(0))) # (!\semaforo_out[0]~reg0_q\))) # (!contador(4) & (!\semaforo_out[0]~reg0_q\ & ((contador(2)) # (contador(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(4),
	datab => \semaforo_out[0]~reg0_q\,
	datac => contador(2),
	datad => contador(0),
	combout => \semaforo_out~0_combout\);

-- Location: LCCOMB_X31_Y28_N24
\semaforo_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \semaforo_out~1_combout\ = (contador(3) & ((\semaforo_out[0]~reg0_q\) # ((contador(1) & !\semaforo_out~0_combout\)))) # (!contador(3) & (\semaforo_out[0]~reg0_q\ & ((contador(1)) # (!\semaforo_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(3),
	datab => contador(1),
	datac => \semaforo_out[0]~reg0_q\,
	datad => \semaforo_out~0_combout\,
	combout => \semaforo_out~1_combout\);

-- Location: FF_X31_Y28_N25
\semaforo_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \semaforo_out~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \semaforo_out[0]~reg0_q\);

ww_semaforo_out(0) <= \semaforo_out[0]~output_o\;

ww_semaforo_out(1) <= \semaforo_out[1]~output_o\;

ww_semaforo_in(0) <= \semaforo_in[0]~output_o\;

ww_semaforo_in(1) <= \semaforo_in[1]~output_o\;
END structure;



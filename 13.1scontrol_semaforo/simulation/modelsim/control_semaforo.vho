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

-- DATE "03/12/2024 17:51:01"

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

ENTITY 	control_semaforo IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	boton : IN std_logic;
	carro_pasando : IN std_logic;
	sensor_carro_10m : IN std_logic;
	luz_verde : BUFFER std_logic;
	luz_roja : BUFFER std_logic
	);
END control_semaforo;

-- Design Ports Information
-- luz_verde	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- luz_roja	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- boton	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sensor_carro_10m	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carro_pasando	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF control_semaforo IS
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
SIGNAL ww_boton : std_logic;
SIGNAL ww_carro_pasando : std_logic;
SIGNAL ww_sensor_carro_10m : std_logic;
SIGNAL ww_luz_verde : std_logic;
SIGNAL ww_luz_roja : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \luz_verde~output_o\ : std_logic;
SIGNAL \luz_roja~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \contador_verde[0]~24_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \contador_verde[0]~25\ : std_logic;
SIGNAL \contador_verde[1]~26_combout\ : std_logic;
SIGNAL \contador_verde[1]~27\ : std_logic;
SIGNAL \contador_verde[2]~28_combout\ : std_logic;
SIGNAL \contador_verde[2]~29\ : std_logic;
SIGNAL \contador_verde[3]~30_combout\ : std_logic;
SIGNAL \contador_verde[3]~31\ : std_logic;
SIGNAL \contador_verde[4]~32_combout\ : std_logic;
SIGNAL \contador_verde[4]~33\ : std_logic;
SIGNAL \contador_verde[5]~34_combout\ : std_logic;
SIGNAL \contador_verde[5]~35\ : std_logic;
SIGNAL \contador_verde[6]~36_combout\ : std_logic;
SIGNAL \contador_verde[6]~37\ : std_logic;
SIGNAL \contador_verde[7]~38_combout\ : std_logic;
SIGNAL \contador_verde[7]~39\ : std_logic;
SIGNAL \contador_verde[8]~40_combout\ : std_logic;
SIGNAL \contador_verde[8]~41\ : std_logic;
SIGNAL \contador_verde[9]~42_combout\ : std_logic;
SIGNAL \contador_verde[9]~43\ : std_logic;
SIGNAL \contador_verde[10]~44_combout\ : std_logic;
SIGNAL \contador_verde[10]~45\ : std_logic;
SIGNAL \contador_verde[11]~46_combout\ : std_logic;
SIGNAL \contador_verde[11]~47\ : std_logic;
SIGNAL \contador_verde[12]~48_combout\ : std_logic;
SIGNAL \contador_verde[12]~49\ : std_logic;
SIGNAL \contador_verde[13]~50_combout\ : std_logic;
SIGNAL \contador_verde[13]~51\ : std_logic;
SIGNAL \contador_verde[14]~52_combout\ : std_logic;
SIGNAL \contador_verde[14]~53\ : std_logic;
SIGNAL \contador_verde[15]~54_combout\ : std_logic;
SIGNAL \contador_verde[15]~55\ : std_logic;
SIGNAL \contador_verde[16]~56_combout\ : std_logic;
SIGNAL \contador_verde[16]~57\ : std_logic;
SIGNAL \contador_verde[17]~58_combout\ : std_logic;
SIGNAL \contador_verde[17]~59\ : std_logic;
SIGNAL \contador_verde[18]~60_combout\ : std_logic;
SIGNAL \contador_verde[18]~61\ : std_logic;
SIGNAL \contador_verde[19]~62_combout\ : std_logic;
SIGNAL \contador_verde[19]~63\ : std_logic;
SIGNAL \contador_verde[20]~64_combout\ : std_logic;
SIGNAL \contador_verde[20]~65\ : std_logic;
SIGNAL \contador_verde[21]~66_combout\ : std_logic;
SIGNAL \contador_verde[21]~67\ : std_logic;
SIGNAL \contador_verde[22]~68_combout\ : std_logic;
SIGNAL \contador_verde[22]~69\ : std_logic;
SIGNAL \contador_verde[23]~70_combout\ : std_logic;
SIGNAL \sensor_carro_10m~input_o\ : std_logic;
SIGNAL \boton~input_o\ : std_logic;
SIGNAL \carro_pasando~input_o\ : std_logic;
SIGNAL \proximo_estado~0_combout\ : std_logic;
SIGNAL \proximo_estado~q\ : std_logic;
SIGNAL \estado_actual~feeder_combout\ : std_logic;
SIGNAL \estado_actual~q\ : std_logic;
SIGNAL \luz_verde~0_combout\ : std_logic;
SIGNAL \luz_verde~1_combout\ : std_logic;
SIGNAL \luz_verde~3_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \luz_verde~4_combout\ : std_logic;
SIGNAL \luz_verde~5_combout\ : std_logic;
SIGNAL \luz_verde~2_combout\ : std_logic;
SIGNAL \luz_verde~6_combout\ : std_logic;
SIGNAL \luz_verde~reg0_q\ : std_logic;
SIGNAL \luz_roja~0_combout\ : std_logic;
SIGNAL \luz_roja~reg0_q\ : std_logic;
SIGNAL contador_verde : std_logic_vector(23 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_luz_verde~6_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_boton <= boton;
ww_carro_pasando <= carro_pasando;
ww_sensor_carro_10m <= sensor_carro_10m;
luz_verde <= ww_luz_verde;
luz_roja <= ww_luz_roja;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_luz_verde~6_combout\ <= NOT \luz_verde~6_combout\;

-- Location: IOOBUF_X0_Y20_N9
\luz_verde~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \luz_verde~reg0_q\,
	devoe => ww_devoe,
	o => \luz_verde~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\luz_roja~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \luz_roja~reg0_q\,
	devoe => ww_devoe,
	o => \luz_roja~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X2_Y24_N8
\contador_verde[0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_verde[0]~24_combout\ = contador_verde(0) $ (VCC)
-- \contador_verde[0]~25\ = CARRY(contador_verde(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador_verde(0),
	datad => VCC,
	combout => \contador_verde[0]~24_combout\,
	cout => \contador_verde[0]~25\);

-- Location: IOIBUF_X0_Y25_N1
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X2_Y24_N9
\contador_verde[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_verde[0]~24_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_luz_verde~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_verde(0));

-- Location: LCCOMB_X2_Y24_N10
\contador_verde[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_verde[1]~26_combout\ = (contador_verde(1) & (!\contador_verde[0]~25\)) # (!contador_verde(1) & ((\contador_verde[0]~25\) # (GND)))
-- \contador_verde[1]~27\ = CARRY((!\contador_verde[0]~25\) # (!contador_verde(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_verde(1),
	datad => VCC,
	cin => \contador_verde[0]~25\,
	combout => \contador_verde[1]~26_combout\,
	cout => \contador_verde[1]~27\);

-- Location: FF_X2_Y24_N11
\contador_verde[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_verde[1]~26_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_luz_verde~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_verde(1));

-- Location: LCCOMB_X2_Y24_N12
\contador_verde[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_verde[2]~28_combout\ = (contador_verde(2) & (\contador_verde[1]~27\ $ (GND))) # (!contador_verde(2) & (!\contador_verde[1]~27\ & VCC))
-- \contador_verde[2]~29\ = CARRY((contador_verde(2) & !\contador_verde[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_verde(2),
	datad => VCC,
	cin => \contador_verde[1]~27\,
	combout => \contador_verde[2]~28_combout\,
	cout => \contador_verde[2]~29\);

-- Location: FF_X2_Y24_N13
\contador_verde[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_verde[2]~28_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_luz_verde~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_verde(2));

-- Location: LCCOMB_X2_Y24_N14
\contador_verde[3]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_verde[3]~30_combout\ = (contador_verde(3) & (!\contador_verde[2]~29\)) # (!contador_verde(3) & ((\contador_verde[2]~29\) # (GND)))
-- \contador_verde[3]~31\ = CARRY((!\contador_verde[2]~29\) # (!contador_verde(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_verde(3),
	datad => VCC,
	cin => \contador_verde[2]~29\,
	combout => \contador_verde[3]~30_combout\,
	cout => \contador_verde[3]~31\);

-- Location: FF_X2_Y24_N15
\contador_verde[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_verde[3]~30_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_luz_verde~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_verde(3));

-- Location: LCCOMB_X2_Y24_N16
\contador_verde[4]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_verde[4]~32_combout\ = (contador_verde(4) & (\contador_verde[3]~31\ $ (GND))) # (!contador_verde(4) & (!\contador_verde[3]~31\ & VCC))
-- \contador_verde[4]~33\ = CARRY((contador_verde(4) & !\contador_verde[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_verde(4),
	datad => VCC,
	cin => \contador_verde[3]~31\,
	combout => \contador_verde[4]~32_combout\,
	cout => \contador_verde[4]~33\);

-- Location: FF_X2_Y24_N17
\contador_verde[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_verde[4]~32_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_luz_verde~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_verde(4));

-- Location: LCCOMB_X2_Y24_N18
\contador_verde[5]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_verde[5]~34_combout\ = (contador_verde(5) & (!\contador_verde[4]~33\)) # (!contador_verde(5) & ((\contador_verde[4]~33\) # (GND)))
-- \contador_verde[5]~35\ = CARRY((!\contador_verde[4]~33\) # (!contador_verde(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_verde(5),
	datad => VCC,
	cin => \contador_verde[4]~33\,
	combout => \contador_verde[5]~34_combout\,
	cout => \contador_verde[5]~35\);

-- Location: FF_X2_Y24_N19
\contador_verde[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_verde[5]~34_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_luz_verde~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_verde(5));

-- Location: LCCOMB_X2_Y24_N20
\contador_verde[6]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_verde[6]~36_combout\ = (contador_verde(6) & (\contador_verde[5]~35\ $ (GND))) # (!contador_verde(6) & (!\contador_verde[5]~35\ & VCC))
-- \contador_verde[6]~37\ = CARRY((contador_verde(6) & !\contador_verde[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_verde(6),
	datad => VCC,
	cin => \contador_verde[5]~35\,
	combout => \contador_verde[6]~36_combout\,
	cout => \contador_verde[6]~37\);

-- Location: FF_X2_Y24_N21
\contador_verde[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_verde[6]~36_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_luz_verde~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_verde(6));

-- Location: LCCOMB_X2_Y24_N22
\contador_verde[7]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_verde[7]~38_combout\ = (contador_verde(7) & (!\contador_verde[6]~37\)) # (!contador_verde(7) & ((\contador_verde[6]~37\) # (GND)))
-- \contador_verde[7]~39\ = CARRY((!\contador_verde[6]~37\) # (!contador_verde(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_verde(7),
	datad => VCC,
	cin => \contador_verde[6]~37\,
	combout => \contador_verde[7]~38_combout\,
	cout => \contador_verde[7]~39\);

-- Location: FF_X2_Y24_N23
\contador_verde[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_verde[7]~38_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_luz_verde~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_verde(7));

-- Location: LCCOMB_X2_Y24_N24
\contador_verde[8]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_verde[8]~40_combout\ = (contador_verde(8) & (\contador_verde[7]~39\ $ (GND))) # (!contador_verde(8) & (!\contador_verde[7]~39\ & VCC))
-- \contador_verde[8]~41\ = CARRY((contador_verde(8) & !\contador_verde[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_verde(8),
	datad => VCC,
	cin => \contador_verde[7]~39\,
	combout => \contador_verde[8]~40_combout\,
	cout => \contador_verde[8]~41\);

-- Location: FF_X2_Y24_N25
\contador_verde[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_verde[8]~40_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_luz_verde~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_verde(8));

-- Location: LCCOMB_X2_Y24_N26
\contador_verde[9]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_verde[9]~42_combout\ = (contador_verde(9) & (!\contador_verde[8]~41\)) # (!contador_verde(9) & ((\contador_verde[8]~41\) # (GND)))
-- \contador_verde[9]~43\ = CARRY((!\contador_verde[8]~41\) # (!contador_verde(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_verde(9),
	datad => VCC,
	cin => \contador_verde[8]~41\,
	combout => \contador_verde[9]~42_combout\,
	cout => \contador_verde[9]~43\);

-- Location: FF_X2_Y24_N27
\contador_verde[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_verde[9]~42_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_luz_verde~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_verde(9));

-- Location: LCCOMB_X2_Y24_N28
\contador_verde[10]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_verde[10]~44_combout\ = (contador_verde(10) & (\contador_verde[9]~43\ $ (GND))) # (!contador_verde(10) & (!\contador_verde[9]~43\ & VCC))
-- \contador_verde[10]~45\ = CARRY((contador_verde(10) & !\contador_verde[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_verde(10),
	datad => VCC,
	cin => \contador_verde[9]~43\,
	combout => \contador_verde[10]~44_combout\,
	cout => \contador_verde[10]~45\);

-- Location: FF_X2_Y24_N29
\contador_verde[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_verde[10]~44_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_luz_verde~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_verde(10));

-- Location: LCCOMB_X2_Y24_N30
\contador_verde[11]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_verde[11]~46_combout\ = (contador_verde(11) & (!\contador_verde[10]~45\)) # (!contador_verde(11) & ((\contador_verde[10]~45\) # (GND)))
-- \contador_verde[11]~47\ = CARRY((!\contador_verde[10]~45\) # (!contador_verde(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_verde(11),
	datad => VCC,
	cin => \contador_verde[10]~45\,
	combout => \contador_verde[11]~46_combout\,
	cout => \contador_verde[11]~47\);

-- Location: FF_X2_Y24_N31
\contador_verde[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_verde[11]~46_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_luz_verde~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_verde(11));

-- Location: LCCOMB_X2_Y23_N0
\contador_verde[12]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_verde[12]~48_combout\ = (contador_verde(12) & (\contador_verde[11]~47\ $ (GND))) # (!contador_verde(12) & (!\contador_verde[11]~47\ & VCC))
-- \contador_verde[12]~49\ = CARRY((contador_verde(12) & !\contador_verde[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_verde(12),
	datad => VCC,
	cin => \contador_verde[11]~47\,
	combout => \contador_verde[12]~48_combout\,
	cout => \contador_verde[12]~49\);

-- Location: FF_X2_Y23_N1
\contador_verde[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_verde[12]~48_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_luz_verde~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_verde(12));

-- Location: LCCOMB_X2_Y23_N2
\contador_verde[13]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_verde[13]~50_combout\ = (contador_verde(13) & (!\contador_verde[12]~49\)) # (!contador_verde(13) & ((\contador_verde[12]~49\) # (GND)))
-- \contador_verde[13]~51\ = CARRY((!\contador_verde[12]~49\) # (!contador_verde(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_verde(13),
	datad => VCC,
	cin => \contador_verde[12]~49\,
	combout => \contador_verde[13]~50_combout\,
	cout => \contador_verde[13]~51\);

-- Location: FF_X2_Y23_N3
\contador_verde[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_verde[13]~50_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_luz_verde~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_verde(13));

-- Location: LCCOMB_X2_Y23_N4
\contador_verde[14]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_verde[14]~52_combout\ = (contador_verde(14) & (\contador_verde[13]~51\ $ (GND))) # (!contador_verde(14) & (!\contador_verde[13]~51\ & VCC))
-- \contador_verde[14]~53\ = CARRY((contador_verde(14) & !\contador_verde[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_verde(14),
	datad => VCC,
	cin => \contador_verde[13]~51\,
	combout => \contador_verde[14]~52_combout\,
	cout => \contador_verde[14]~53\);

-- Location: FF_X2_Y23_N5
\contador_verde[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_verde[14]~52_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_luz_verde~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_verde(14));

-- Location: LCCOMB_X2_Y23_N6
\contador_verde[15]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_verde[15]~54_combout\ = (contador_verde(15) & (!\contador_verde[14]~53\)) # (!contador_verde(15) & ((\contador_verde[14]~53\) # (GND)))
-- \contador_verde[15]~55\ = CARRY((!\contador_verde[14]~53\) # (!contador_verde(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_verde(15),
	datad => VCC,
	cin => \contador_verde[14]~53\,
	combout => \contador_verde[15]~54_combout\,
	cout => \contador_verde[15]~55\);

-- Location: FF_X2_Y23_N7
\contador_verde[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_verde[15]~54_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_luz_verde~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_verde(15));

-- Location: LCCOMB_X2_Y23_N8
\contador_verde[16]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_verde[16]~56_combout\ = (contador_verde(16) & (\contador_verde[15]~55\ $ (GND))) # (!contador_verde(16) & (!\contador_verde[15]~55\ & VCC))
-- \contador_verde[16]~57\ = CARRY((contador_verde(16) & !\contador_verde[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_verde(16),
	datad => VCC,
	cin => \contador_verde[15]~55\,
	combout => \contador_verde[16]~56_combout\,
	cout => \contador_verde[16]~57\);

-- Location: FF_X2_Y23_N9
\contador_verde[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_verde[16]~56_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_luz_verde~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_verde(16));

-- Location: LCCOMB_X2_Y23_N10
\contador_verde[17]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_verde[17]~58_combout\ = (contador_verde(17) & (!\contador_verde[16]~57\)) # (!contador_verde(17) & ((\contador_verde[16]~57\) # (GND)))
-- \contador_verde[17]~59\ = CARRY((!\contador_verde[16]~57\) # (!contador_verde(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_verde(17),
	datad => VCC,
	cin => \contador_verde[16]~57\,
	combout => \contador_verde[17]~58_combout\,
	cout => \contador_verde[17]~59\);

-- Location: FF_X2_Y23_N11
\contador_verde[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_verde[17]~58_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_luz_verde~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_verde(17));

-- Location: LCCOMB_X2_Y23_N12
\contador_verde[18]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_verde[18]~60_combout\ = (contador_verde(18) & (\contador_verde[17]~59\ $ (GND))) # (!contador_verde(18) & (!\contador_verde[17]~59\ & VCC))
-- \contador_verde[18]~61\ = CARRY((contador_verde(18) & !\contador_verde[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_verde(18),
	datad => VCC,
	cin => \contador_verde[17]~59\,
	combout => \contador_verde[18]~60_combout\,
	cout => \contador_verde[18]~61\);

-- Location: FF_X2_Y23_N13
\contador_verde[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_verde[18]~60_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_luz_verde~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_verde(18));

-- Location: LCCOMB_X2_Y23_N14
\contador_verde[19]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_verde[19]~62_combout\ = (contador_verde(19) & (!\contador_verde[18]~61\)) # (!contador_verde(19) & ((\contador_verde[18]~61\) # (GND)))
-- \contador_verde[19]~63\ = CARRY((!\contador_verde[18]~61\) # (!contador_verde(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_verde(19),
	datad => VCC,
	cin => \contador_verde[18]~61\,
	combout => \contador_verde[19]~62_combout\,
	cout => \contador_verde[19]~63\);

-- Location: FF_X2_Y23_N15
\contador_verde[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_verde[19]~62_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_luz_verde~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_verde(19));

-- Location: LCCOMB_X2_Y23_N16
\contador_verde[20]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_verde[20]~64_combout\ = (contador_verde(20) & (\contador_verde[19]~63\ $ (GND))) # (!contador_verde(20) & (!\contador_verde[19]~63\ & VCC))
-- \contador_verde[20]~65\ = CARRY((contador_verde(20) & !\contador_verde[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_verde(20),
	datad => VCC,
	cin => \contador_verde[19]~63\,
	combout => \contador_verde[20]~64_combout\,
	cout => \contador_verde[20]~65\);

-- Location: FF_X2_Y23_N17
\contador_verde[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_verde[20]~64_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_luz_verde~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_verde(20));

-- Location: LCCOMB_X2_Y23_N18
\contador_verde[21]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_verde[21]~66_combout\ = (contador_verde(21) & (!\contador_verde[20]~65\)) # (!contador_verde(21) & ((\contador_verde[20]~65\) # (GND)))
-- \contador_verde[21]~67\ = CARRY((!\contador_verde[20]~65\) # (!contador_verde(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_verde(21),
	datad => VCC,
	cin => \contador_verde[20]~65\,
	combout => \contador_verde[21]~66_combout\,
	cout => \contador_verde[21]~67\);

-- Location: FF_X2_Y23_N19
\contador_verde[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_verde[21]~66_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_luz_verde~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_verde(21));

-- Location: LCCOMB_X2_Y23_N20
\contador_verde[22]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_verde[22]~68_combout\ = (contador_verde(22) & (\contador_verde[21]~67\ $ (GND))) # (!contador_verde(22) & (!\contador_verde[21]~67\ & VCC))
-- \contador_verde[22]~69\ = CARRY((contador_verde(22) & !\contador_verde[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_verde(22),
	datad => VCC,
	cin => \contador_verde[21]~67\,
	combout => \contador_verde[22]~68_combout\,
	cout => \contador_verde[22]~69\);

-- Location: FF_X2_Y23_N21
\contador_verde[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_verde[22]~68_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_luz_verde~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_verde(22));

-- Location: LCCOMB_X2_Y23_N22
\contador_verde[23]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_verde[23]~70_combout\ = contador_verde(23) $ (\contador_verde[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_verde(23),
	cin => \contador_verde[22]~69\,
	combout => \contador_verde[23]~70_combout\);

-- Location: FF_X2_Y23_N23
\contador_verde[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_verde[23]~70_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_luz_verde~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_verde(23));

-- Location: IOIBUF_X0_Y25_N22
\sensor_carro_10m~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sensor_carro_10m,
	o => \sensor_carro_10m~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\boton~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_boton,
	o => \boton~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\carro_pasando~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_carro_pasando,
	o => \carro_pasando~input_o\);

-- Location: LCCOMB_X1_Y23_N2
\proximo_estado~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \proximo_estado~0_combout\ = (\estado_actual~q\ & (((!\carro_pasando~input_o\)))) # (!\estado_actual~q\ & ((\sensor_carro_10m~input_o\) # ((\boton~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual~q\,
	datab => \sensor_carro_10m~input_o\,
	datac => \boton~input_o\,
	datad => \carro_pasando~input_o\,
	combout => \proximo_estado~0_combout\);

-- Location: FF_X1_Y23_N3
proximo_estado : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \proximo_estado~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \proximo_estado~q\);

-- Location: LCCOMB_X1_Y23_N6
\estado_actual~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado_actual~feeder_combout\ = \proximo_estado~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \proximo_estado~q\,
	combout => \estado_actual~feeder_combout\);

-- Location: FF_X1_Y23_N7
estado_actual : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado_actual~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_actual~q\);

-- Location: LCCOMB_X2_Y23_N30
\luz_verde~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \luz_verde~0_combout\ = (contador_verde(21)) # ((contador_verde(20)) # ((contador_verde(18) & contador_verde(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_verde(18),
	datab => contador_verde(19),
	datac => contador_verde(21),
	datad => contador_verde(20),
	combout => \luz_verde~0_combout\);

-- Location: LCCOMB_X2_Y23_N24
\luz_verde~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \luz_verde~1_combout\ = (!contador_verde(23) & (\estado_actual~q\ & ((!contador_verde(22)) # (!\luz_verde~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_verde(23),
	datab => \estado_actual~q\,
	datac => \luz_verde~0_combout\,
	datad => contador_verde(22),
	combout => \luz_verde~1_combout\);

-- Location: LCCOMB_X1_Y23_N24
\luz_verde~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \luz_verde~3_combout\ = (\estado_actual~q\ & (!contador_verde(20) & (!contador_verde(21) & !contador_verde(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_actual~q\,
	datab => contador_verde(20),
	datac => contador_verde(21),
	datad => contador_verde(23),
	combout => \luz_verde~3_combout\);

-- Location: LCCOMB_X2_Y24_N4
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (((!contador_verde(7) & !contador_verde(6))) # (!contador_verde(8))) # (!contador_verde(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_verde(7),
	datab => contador_verde(6),
	datac => contador_verde(9),
	datad => contador_verde(8),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X2_Y24_N2
\luz_verde~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \luz_verde~4_combout\ = (contador_verde(13)) # ((contador_verde(11) & ((contador_verde(10)) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_verde(11),
	datab => contador_verde(10),
	datac => \LessThan0~0_combout\,
	datad => contador_verde(13),
	combout => \luz_verde~4_combout\);

-- Location: LCCOMB_X2_Y23_N26
\luz_verde~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \luz_verde~5_combout\ = (\luz_verde~3_combout\ & (((!contador_verde(12) & !\luz_verde~4_combout\)) # (!contador_verde(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_verde(14),
	datab => contador_verde(12),
	datac => \luz_verde~3_combout\,
	datad => \luz_verde~4_combout\,
	combout => \luz_verde~5_combout\);

-- Location: LCCOMB_X3_Y23_N12
\luz_verde~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \luz_verde~2_combout\ = (!contador_verde(17) & (!contador_verde(15) & !contador_verde(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_verde(17),
	datac => contador_verde(15),
	datad => contador_verde(16),
	combout => \luz_verde~2_combout\);

-- Location: LCCOMB_X2_Y23_N28
\luz_verde~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \luz_verde~6_combout\ = (\luz_verde~1_combout\) # ((\luz_verde~5_combout\ & \luz_verde~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \luz_verde~1_combout\,
	datac => \luz_verde~5_combout\,
	datad => \luz_verde~2_combout\,
	combout => \luz_verde~6_combout\);

-- Location: FF_X2_Y23_N29
\luz_verde~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \luz_verde~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \luz_verde~reg0_q\);

-- Location: LCCOMB_X1_Y23_N28
\luz_roja~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \luz_roja~0_combout\ = !\luz_verde~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \luz_verde~6_combout\,
	combout => \luz_roja~0_combout\);

-- Location: FF_X1_Y23_N29
\luz_roja~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \luz_roja~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \luz_roja~reg0_q\);

ww_luz_verde <= \luz_verde~output_o\;

ww_luz_roja <= \luz_roja~output_o\;
END structure;



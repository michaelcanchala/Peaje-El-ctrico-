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

-- DATE "03/12/2024 17:12:18"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	ContadorCarrosPeaje IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	vehicle_detected : IN std_logic;
	vehicle_count : OUT STD.STANDARD.integer range 0 TO 65535
	);
END ContadorCarrosPeaje;

-- Design Ports Information
-- vehicle_count[0]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle_count[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle_count[2]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle_count[3]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle_count[4]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle_count[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle_count[6]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle_count[7]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle_count[8]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle_count[9]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle_count[10]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle_count[11]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle_count[12]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle_count[13]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle_count[14]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle_count[15]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vehicle_detected	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ContadorCarrosPeaje IS
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
SIGNAL ww_vehicle_count : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vehicle_count[0]~output_o\ : std_logic;
SIGNAL \vehicle_count[1]~output_o\ : std_logic;
SIGNAL \vehicle_count[2]~output_o\ : std_logic;
SIGNAL \vehicle_count[3]~output_o\ : std_logic;
SIGNAL \vehicle_count[4]~output_o\ : std_logic;
SIGNAL \vehicle_count[5]~output_o\ : std_logic;
SIGNAL \vehicle_count[6]~output_o\ : std_logic;
SIGNAL \vehicle_count[7]~output_o\ : std_logic;
SIGNAL \vehicle_count[8]~output_o\ : std_logic;
SIGNAL \vehicle_count[9]~output_o\ : std_logic;
SIGNAL \vehicle_count[10]~output_o\ : std_logic;
SIGNAL \vehicle_count[11]~output_o\ : std_logic;
SIGNAL \vehicle_count[12]~output_o\ : std_logic;
SIGNAL \vehicle_count[13]~output_o\ : std_logic;
SIGNAL \vehicle_count[14]~output_o\ : std_logic;
SIGNAL \vehicle_count[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \vehicle_detected~input_o\ : std_logic;
SIGNAL \count_reg[0]~15_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \count_reg[1]~16_combout\ : std_logic;
SIGNAL \count_reg[1]~17\ : std_logic;
SIGNAL \count_reg[2]~18_combout\ : std_logic;
SIGNAL \count_reg[2]~19\ : std_logic;
SIGNAL \count_reg[3]~20_combout\ : std_logic;
SIGNAL \count_reg[3]~21\ : std_logic;
SIGNAL \count_reg[4]~22_combout\ : std_logic;
SIGNAL \count_reg[4]~23\ : std_logic;
SIGNAL \count_reg[5]~24_combout\ : std_logic;
SIGNAL \count_reg[5]~25\ : std_logic;
SIGNAL \count_reg[6]~26_combout\ : std_logic;
SIGNAL \count_reg[6]~27\ : std_logic;
SIGNAL \count_reg[7]~28_combout\ : std_logic;
SIGNAL \count_reg[7]~29\ : std_logic;
SIGNAL \count_reg[8]~30_combout\ : std_logic;
SIGNAL \count_reg[8]~31\ : std_logic;
SIGNAL \count_reg[9]~32_combout\ : std_logic;
SIGNAL \count_reg[9]~33\ : std_logic;
SIGNAL \count_reg[10]~34_combout\ : std_logic;
SIGNAL \count_reg[10]~35\ : std_logic;
SIGNAL \count_reg[11]~36_combout\ : std_logic;
SIGNAL \count_reg[11]~37\ : std_logic;
SIGNAL \count_reg[12]~38_combout\ : std_logic;
SIGNAL \count_reg[12]~39\ : std_logic;
SIGNAL \count_reg[13]~40_combout\ : std_logic;
SIGNAL \count_reg[13]~41\ : std_logic;
SIGNAL \count_reg[14]~42_combout\ : std_logic;
SIGNAL \count_reg[14]~43\ : std_logic;
SIGNAL \count_reg[15]~44_combout\ : std_logic;
SIGNAL count_reg : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_vehicle_detected <= vehicle_detected;
vehicle_count <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_vehicle_count));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X0_Y8_N9
\vehicle_count[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count_reg(0),
	devoe => ww_devoe,
	o => \vehicle_count[0]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\vehicle_count[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count_reg(1),
	devoe => ww_devoe,
	o => \vehicle_count[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\vehicle_count[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count_reg(2),
	devoe => ww_devoe,
	o => \vehicle_count[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\vehicle_count[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count_reg(3),
	devoe => ww_devoe,
	o => \vehicle_count[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\vehicle_count[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count_reg(4),
	devoe => ww_devoe,
	o => \vehicle_count[4]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\vehicle_count[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count_reg(5),
	devoe => ww_devoe,
	o => \vehicle_count[5]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\vehicle_count[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count_reg(6),
	devoe => ww_devoe,
	o => \vehicle_count[6]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\vehicle_count[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count_reg(7),
	devoe => ww_devoe,
	o => \vehicle_count[7]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\vehicle_count[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count_reg(8),
	devoe => ww_devoe,
	o => \vehicle_count[8]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\vehicle_count[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count_reg(9),
	devoe => ww_devoe,
	o => \vehicle_count[9]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\vehicle_count[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count_reg(10),
	devoe => ww_devoe,
	o => \vehicle_count[10]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\vehicle_count[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count_reg(11),
	devoe => ww_devoe,
	o => \vehicle_count[11]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\vehicle_count[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count_reg(12),
	devoe => ww_devoe,
	o => \vehicle_count[12]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\vehicle_count[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count_reg(13),
	devoe => ww_devoe,
	o => \vehicle_count[13]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\vehicle_count[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count_reg(14),
	devoe => ww_devoe,
	o => \vehicle_count[14]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\vehicle_count[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count_reg(15),
	devoe => ww_devoe,
	o => \vehicle_count[15]~output_o\);

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

-- Location: IOIBUF_X0_Y7_N15
\vehicle_detected~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_vehicle_detected,
	o => \vehicle_detected~input_o\);

-- Location: LCCOMB_X1_Y8_N0
\count_reg[0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_reg[0]~15_combout\ = count_reg(0) $ (\vehicle_detected~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count_reg(0),
	datad => \vehicle_detected~input_o\,
	combout => \count_reg[0]~15_combout\);

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

-- Location: FF_X1_Y8_N1
\count_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_reg[0]~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(0));

-- Location: LCCOMB_X1_Y8_N2
\count_reg[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_reg[1]~16_combout\ = (count_reg(0) & (count_reg(1) $ (VCC))) # (!count_reg(0) & (count_reg(1) & VCC))
-- \count_reg[1]~17\ = CARRY((count_reg(0) & count_reg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_reg(0),
	datab => count_reg(1),
	datad => VCC,
	combout => \count_reg[1]~16_combout\,
	cout => \count_reg[1]~17\);

-- Location: FF_X1_Y8_N3
\count_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_reg[1]~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \vehicle_detected~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(1));

-- Location: LCCOMB_X1_Y8_N4
\count_reg[2]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_reg[2]~18_combout\ = (count_reg(2) & (!\count_reg[1]~17\)) # (!count_reg(2) & ((\count_reg[1]~17\) # (GND)))
-- \count_reg[2]~19\ = CARRY((!\count_reg[1]~17\) # (!count_reg(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_reg(2),
	datad => VCC,
	cin => \count_reg[1]~17\,
	combout => \count_reg[2]~18_combout\,
	cout => \count_reg[2]~19\);

-- Location: FF_X1_Y8_N5
\count_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_reg[2]~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \vehicle_detected~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(2));

-- Location: LCCOMB_X1_Y8_N6
\count_reg[3]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_reg[3]~20_combout\ = (count_reg(3) & (\count_reg[2]~19\ $ (GND))) # (!count_reg(3) & (!\count_reg[2]~19\ & VCC))
-- \count_reg[3]~21\ = CARRY((count_reg(3) & !\count_reg[2]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_reg(3),
	datad => VCC,
	cin => \count_reg[2]~19\,
	combout => \count_reg[3]~20_combout\,
	cout => \count_reg[3]~21\);

-- Location: FF_X1_Y8_N7
\count_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_reg[3]~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \vehicle_detected~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(3));

-- Location: LCCOMB_X1_Y8_N8
\count_reg[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_reg[4]~22_combout\ = (count_reg(4) & (!\count_reg[3]~21\)) # (!count_reg(4) & ((\count_reg[3]~21\) # (GND)))
-- \count_reg[4]~23\ = CARRY((!\count_reg[3]~21\) # (!count_reg(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_reg(4),
	datad => VCC,
	cin => \count_reg[3]~21\,
	combout => \count_reg[4]~22_combout\,
	cout => \count_reg[4]~23\);

-- Location: FF_X1_Y8_N9
\count_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_reg[4]~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \vehicle_detected~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(4));

-- Location: LCCOMB_X1_Y8_N10
\count_reg[5]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_reg[5]~24_combout\ = (count_reg(5) & (\count_reg[4]~23\ $ (GND))) # (!count_reg(5) & (!\count_reg[4]~23\ & VCC))
-- \count_reg[5]~25\ = CARRY((count_reg(5) & !\count_reg[4]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_reg(5),
	datad => VCC,
	cin => \count_reg[4]~23\,
	combout => \count_reg[5]~24_combout\,
	cout => \count_reg[5]~25\);

-- Location: FF_X1_Y8_N11
\count_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_reg[5]~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \vehicle_detected~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(5));

-- Location: LCCOMB_X1_Y8_N12
\count_reg[6]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_reg[6]~26_combout\ = (count_reg(6) & (!\count_reg[5]~25\)) # (!count_reg(6) & ((\count_reg[5]~25\) # (GND)))
-- \count_reg[6]~27\ = CARRY((!\count_reg[5]~25\) # (!count_reg(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_reg(6),
	datad => VCC,
	cin => \count_reg[5]~25\,
	combout => \count_reg[6]~26_combout\,
	cout => \count_reg[6]~27\);

-- Location: FF_X1_Y8_N13
\count_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_reg[6]~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \vehicle_detected~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(6));

-- Location: LCCOMB_X1_Y8_N14
\count_reg[7]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_reg[7]~28_combout\ = (count_reg(7) & (\count_reg[6]~27\ $ (GND))) # (!count_reg(7) & (!\count_reg[6]~27\ & VCC))
-- \count_reg[7]~29\ = CARRY((count_reg(7) & !\count_reg[6]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_reg(7),
	datad => VCC,
	cin => \count_reg[6]~27\,
	combout => \count_reg[7]~28_combout\,
	cout => \count_reg[7]~29\);

-- Location: FF_X1_Y8_N15
\count_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_reg[7]~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \vehicle_detected~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(7));

-- Location: LCCOMB_X1_Y8_N16
\count_reg[8]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_reg[8]~30_combout\ = (count_reg(8) & (!\count_reg[7]~29\)) # (!count_reg(8) & ((\count_reg[7]~29\) # (GND)))
-- \count_reg[8]~31\ = CARRY((!\count_reg[7]~29\) # (!count_reg(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_reg(8),
	datad => VCC,
	cin => \count_reg[7]~29\,
	combout => \count_reg[8]~30_combout\,
	cout => \count_reg[8]~31\);

-- Location: FF_X1_Y8_N17
\count_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_reg[8]~30_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \vehicle_detected~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(8));

-- Location: LCCOMB_X1_Y8_N18
\count_reg[9]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_reg[9]~32_combout\ = (count_reg(9) & (\count_reg[8]~31\ $ (GND))) # (!count_reg(9) & (!\count_reg[8]~31\ & VCC))
-- \count_reg[9]~33\ = CARRY((count_reg(9) & !\count_reg[8]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_reg(9),
	datad => VCC,
	cin => \count_reg[8]~31\,
	combout => \count_reg[9]~32_combout\,
	cout => \count_reg[9]~33\);

-- Location: FF_X1_Y8_N19
\count_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_reg[9]~32_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \vehicle_detected~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(9));

-- Location: LCCOMB_X1_Y8_N20
\count_reg[10]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_reg[10]~34_combout\ = (count_reg(10) & (!\count_reg[9]~33\)) # (!count_reg(10) & ((\count_reg[9]~33\) # (GND)))
-- \count_reg[10]~35\ = CARRY((!\count_reg[9]~33\) # (!count_reg(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_reg(10),
	datad => VCC,
	cin => \count_reg[9]~33\,
	combout => \count_reg[10]~34_combout\,
	cout => \count_reg[10]~35\);

-- Location: FF_X1_Y8_N21
\count_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_reg[10]~34_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \vehicle_detected~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(10));

-- Location: LCCOMB_X1_Y8_N22
\count_reg[11]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_reg[11]~36_combout\ = (count_reg(11) & (\count_reg[10]~35\ $ (GND))) # (!count_reg(11) & (!\count_reg[10]~35\ & VCC))
-- \count_reg[11]~37\ = CARRY((count_reg(11) & !\count_reg[10]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_reg(11),
	datad => VCC,
	cin => \count_reg[10]~35\,
	combout => \count_reg[11]~36_combout\,
	cout => \count_reg[11]~37\);

-- Location: FF_X1_Y8_N23
\count_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_reg[11]~36_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \vehicle_detected~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(11));

-- Location: LCCOMB_X1_Y8_N24
\count_reg[12]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_reg[12]~38_combout\ = (count_reg(12) & (!\count_reg[11]~37\)) # (!count_reg(12) & ((\count_reg[11]~37\) # (GND)))
-- \count_reg[12]~39\ = CARRY((!\count_reg[11]~37\) # (!count_reg(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_reg(12),
	datad => VCC,
	cin => \count_reg[11]~37\,
	combout => \count_reg[12]~38_combout\,
	cout => \count_reg[12]~39\);

-- Location: FF_X1_Y8_N25
\count_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_reg[12]~38_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \vehicle_detected~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(12));

-- Location: LCCOMB_X1_Y8_N26
\count_reg[13]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_reg[13]~40_combout\ = (count_reg(13) & (\count_reg[12]~39\ $ (GND))) # (!count_reg(13) & (!\count_reg[12]~39\ & VCC))
-- \count_reg[13]~41\ = CARRY((count_reg(13) & !\count_reg[12]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_reg(13),
	datad => VCC,
	cin => \count_reg[12]~39\,
	combout => \count_reg[13]~40_combout\,
	cout => \count_reg[13]~41\);

-- Location: FF_X1_Y8_N27
\count_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_reg[13]~40_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \vehicle_detected~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(13));

-- Location: LCCOMB_X1_Y8_N28
\count_reg[14]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_reg[14]~42_combout\ = (count_reg(14) & (!\count_reg[13]~41\)) # (!count_reg(14) & ((\count_reg[13]~41\) # (GND)))
-- \count_reg[14]~43\ = CARRY((!\count_reg[13]~41\) # (!count_reg(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_reg(14),
	datad => VCC,
	cin => \count_reg[13]~41\,
	combout => \count_reg[14]~42_combout\,
	cout => \count_reg[14]~43\);

-- Location: FF_X1_Y8_N29
\count_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_reg[14]~42_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \vehicle_detected~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(14));

-- Location: LCCOMB_X1_Y8_N30
\count_reg[15]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_reg[15]~44_combout\ = count_reg(15) $ (!\count_reg[14]~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_reg(15),
	cin => \count_reg[14]~43\,
	combout => \count_reg[15]~44_combout\);

-- Location: FF_X1_Y8_N31
\count_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_reg[15]~44_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \vehicle_detected~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_reg(15));

ww_vehicle_count(0) <= \vehicle_count[0]~output_o\;

ww_vehicle_count(1) <= \vehicle_count[1]~output_o\;

ww_vehicle_count(2) <= \vehicle_count[2]~output_o\;

ww_vehicle_count(3) <= \vehicle_count[3]~output_o\;

ww_vehicle_count(4) <= \vehicle_count[4]~output_o\;

ww_vehicle_count(5) <= \vehicle_count[5]~output_o\;

ww_vehicle_count(6) <= \vehicle_count[6]~output_o\;

ww_vehicle_count(7) <= \vehicle_count[7]~output_o\;

ww_vehicle_count(8) <= \vehicle_count[8]~output_o\;

ww_vehicle_count(9) <= \vehicle_count[9]~output_o\;

ww_vehicle_count(10) <= \vehicle_count[10]~output_o\;

ww_vehicle_count(11) <= \vehicle_count[11]~output_o\;

ww_vehicle_count(12) <= \vehicle_count[12]~output_o\;

ww_vehicle_count(13) <= \vehicle_count[13]~output_o\;

ww_vehicle_count(14) <= \vehicle_count[14]~output_o\;

ww_vehicle_count(15) <= \vehicle_count[15]~output_o\;
END structure;



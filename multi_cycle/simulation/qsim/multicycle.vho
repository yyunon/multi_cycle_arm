-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "04/28/2019 20:20:55"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	shifter IS
    PORT (
	shift : IN std_logic_vector(2 DOWNTO 0);
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(6 DOWNTO 0);
	\out\ : OUT std_logic_vector(7 DOWNTO 0)
	);
END shifter;

ARCHITECTURE structure OF shifter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_shift : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(6 DOWNTO 0);
SIGNAL \ww_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \out[0]~output_o\ : std_logic;
SIGNAL \out[1]~output_o\ : std_logic;
SIGNAL \out[2]~output_o\ : std_logic;
SIGNAL \out[3]~output_o\ : std_logic;
SIGNAL \out[4]~output_o\ : std_logic;
SIGNAL \out[5]~output_o\ : std_logic;
SIGNAL \out[6]~output_o\ : std_logic;
SIGNAL \out[7]~output_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \shift[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \shift[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \ShiftLeft0~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~1_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \ShiftLeft0~2_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \ShiftRight0~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \ShiftRight0~1_combout\ : std_logic;
SIGNAL \ShiftRight1~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \ShiftRight1~1_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \ShiftRight1~2_combout\ : std_logic;
SIGNAL \ShiftRight1~3_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \shift[2]~input_o\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \out[0]$latch~combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~4_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \out~0_combout\ : std_logic;
SIGNAL \out~1_combout\ : std_logic;
SIGNAL \out~2_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \out[1]$latch~combout\ : std_logic;
SIGNAL \ShiftLeft0~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~6_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~7_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \Mux2~10_combout\ : std_logic;
SIGNAL \out[2]$latch~combout\ : std_logic;
SIGNAL \ShiftLeft0~8_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \Mux3~10_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \out[3]$latch~combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~9_combout\ : std_logic;
SIGNAL \ShiftLeft0~10_combout\ : std_logic;
SIGNAL \ShiftLeft0~11_combout\ : std_logic;
SIGNAL \ShiftLeft0~12_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \out[4]$latch~combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~13_combout\ : std_logic;
SIGNAL \ShiftLeft0~14_combout\ : std_logic;
SIGNAL \ShiftLeft0~15_combout\ : std_logic;
SIGNAL \ShiftLeft0~16_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \out[5]$latch~combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~17_combout\ : std_logic;
SIGNAL \ShiftLeft0~18_combout\ : std_logic;
SIGNAL \ShiftLeft0~19_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \ShiftRight1~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~20_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \out[6]$latch~combout\ : std_logic;
SIGNAL \ShiftLeft0~21_combout\ : std_logic;
SIGNAL \ShiftLeft0~22_combout\ : std_logic;
SIGNAL \ShiftLeft0~23_combout\ : std_logic;
SIGNAL \ShiftLeft0~24_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \out[7]$latch~combout\ : std_logic;

BEGIN

ww_shift <= shift;
ww_A <= A;
ww_B <= B;
\out\ <= \ww_out\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out[0]$latch~combout\,
	devoe => ww_devoe,
	o => \out[0]~output_o\);

\out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out[1]$latch~combout\,
	devoe => ww_devoe,
	o => \out[1]~output_o\);

\out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out[2]$latch~combout\,
	devoe => ww_devoe,
	o => \out[2]~output_o\);

\out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out[3]$latch~combout\,
	devoe => ww_devoe,
	o => \out[3]~output_o\);

\out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out[4]$latch~combout\,
	devoe => ww_devoe,
	o => \out[4]~output_o\);

\out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out[5]$latch~combout\,
	devoe => ww_devoe,
	o => \out[5]~output_o\);

\out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out[6]$latch~combout\,
	devoe => ww_devoe,
	o => \out[6]~output_o\);

\out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out[7]$latch~combout\,
	devoe => ww_devoe,
	o => \out[7]~output_o\);

\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

\shift[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shift(0),
	o => \shift[0]~input_o\);

\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\shift[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shift(1),
	o => \shift[1]~input_o\);

\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\shift[0]~input_o\ & (((\shift[1]~input_o\)))) # (!\shift[0]~input_o\ & ((\shift[1]~input_o\ & (\A[1]~input_o\)) # (!\shift[1]~input_o\ & ((\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \shift[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Mux0~0_combout\);

\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

\ShiftLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~0_combout\ = (\B[3]~input_o\) # ((\B[4]~input_o\) # ((\B[5]~input_o\) # (\B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[6]~input_o\,
	combout => \ShiftLeft0~0_combout\);

\ShiftLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~1_combout\ = (!\B[2]~input_o\ & !\ShiftLeft0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \ShiftLeft0~0_combout\,
	combout => \ShiftLeft0~1_combout\);

\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

\ShiftLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~2_combout\ = (\A[0]~input_o\ & (\ShiftLeft0~1_combout\ & (!\B[1]~input_o\ & !\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \ShiftLeft0~1_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~2_combout\);

\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\shift[0]~input_o\ & ((\Mux0~0_combout\ & ((\ShiftLeft0~2_combout\))) # (!\Mux0~0_combout\ & (\A[7]~input_o\)))) # (!\shift[0]~input_o\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \shift[0]~input_o\,
	datac => \Mux0~0_combout\,
	datad => \ShiftLeft0~2_combout\,
	combout => \Mux0~1_combout\);

\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

\ShiftRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~0_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[7]~input_o\)) # (!\B[0]~input_o\ & ((\A[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[7]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight0~0_combout\);

\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

\ShiftRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~1_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[5]~input_o\)) # (!\B[0]~input_o\ & ((\A[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \A[4]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight0~1_combout\);

\ShiftRight1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~0_combout\ = (\B[2]~input_o\ & (!\ShiftLeft0~0_combout\ & ((\ShiftRight0~0_combout\) # (\ShiftRight0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftRight0~0_combout\,
	datac => \ShiftRight0~1_combout\,
	datad => \ShiftLeft0~0_combout\,
	combout => \ShiftRight1~0_combout\);

\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

\ShiftRight1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~1_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[2]~input_o\)) # (!\B[1]~input_o\ & ((\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight1~1_combout\);

\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

\ShiftRight1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~2_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[3]~input_o\)) # (!\B[1]~input_o\ & ((\A[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[3]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftRight1~2_combout\);

\ShiftRight1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~3_combout\ = (!\B[2]~input_o\ & (!\ShiftLeft0~0_combout\ & ((\ShiftRight1~1_combout\) # (\ShiftRight1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~1_combout\,
	datab => \ShiftRight1~2_combout\,
	datac => \B[2]~input_o\,
	datad => \ShiftLeft0~0_combout\,
	combout => \ShiftRight1~3_combout\);

\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\A[7]~input_o\ & !\shift[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datad => \shift[0]~input_o\,
	combout => \Mux5~2_combout\);

\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\ShiftRight1~0_combout\) # ((\ShiftRight1~3_combout\) # ((\ShiftLeft0~0_combout\ & \Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~0_combout\,
	datab => \ShiftRight1~3_combout\,
	datac => \ShiftLeft0~0_combout\,
	datad => \Mux5~2_combout\,
	combout => \Mux0~2_combout\);

\shift[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shift(2),
	o => \shift[2]~input_o\);

\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\shift[2]~input_o\ & (((\Mux0~2_combout\ & !\shift[1]~input_o\)))) # (!\shift[2]~input_o\ & (\Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Mux0~2_combout\,
	datac => \shift[2]~input_o\,
	datad => \shift[1]~input_o\,
	combout => \Mux0~3_combout\);

\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\shift[2]~input_o\ & \shift[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift[2]~input_o\,
	datab => \shift[1]~input_o\,
	combout => \Mux8~0_combout\);

\out[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out[0]$latch~combout\ = (\Mux8~0_combout\ & ((\out[0]$latch~combout\))) # (!\Mux8~0_combout\ & (\Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~3_combout\,
	datac => \out[0]$latch~combout\,
	datad => \Mux8~0_combout\,
	combout => \out[0]$latch~combout\);

\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\shift[1]~input_o\ & (((\shift[0]~input_o\)))) # (!\shift[1]~input_o\ & ((\shift[0]~input_o\ & (\A[0]~input_o\)) # (!\shift[0]~input_o\ & ((\A[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \shift[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Mux1~0_combout\);

\ShiftLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~3_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\)) # (!\B[0]~input_o\ & ((\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~3_combout\);

\ShiftLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~4_combout\ = (\ShiftLeft0~3_combout\ & (!\B[1]~input_o\ & (!\B[2]~input_o\ & !\ShiftLeft0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~3_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \ShiftLeft0~0_combout\,
	combout => \ShiftLeft0~4_combout\);

\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\shift[1]~input_o\ & ((\Mux1~0_combout\ & ((\ShiftLeft0~4_combout\))) # (!\Mux1~0_combout\ & (\A[2]~input_o\)))) # (!\shift[1]~input_o\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \shift[1]~input_o\,
	datac => \Mux1~0_combout\,
	datad => \ShiftLeft0~4_combout\,
	combout => \Mux1~1_combout\);

\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\A[7]~input_o\ & (\B[1]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	combout => \Mux1~2_combout\);

\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux1~2_combout\ & (((!\ShiftLeft0~0_combout\ & !\B[0]~input_o\)) # (!\shift[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \ShiftLeft0~0_combout\,
	datac => \B[0]~input_o\,
	datad => \shift[0]~input_o\,
	combout => \Mux1~3_combout\);

\out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out~0_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[6]~input_o\)) # (!\B[0]~input_o\ & ((\A[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \out~0_combout\);

\out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \out~1_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[4]~input_o\)) # (!\B[1]~input_o\ & ((\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[4]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \out~1_combout\);

\out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \out~2_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[3]~input_o\)) # (!\B[1]~input_o\ & ((\A[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \out~2_combout\);

\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\B[2]~input_o\ & (\out~0_combout\)) # (!\B[2]~input_o\ & (((\out~1_combout\) # (\out~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out~0_combout\,
	datab => \out~1_combout\,
	datac => \out~2_combout\,
	datad => \B[2]~input_o\,
	combout => \Mux1~4_combout\);

\Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\Mux1~3_combout\) # ((\ShiftLeft0~0_combout\ & (\Mux5~2_combout\)) # (!\ShiftLeft0~0_combout\ & ((\Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~3_combout\,
	datab => \Mux5~2_combout\,
	datac => \Mux1~4_combout\,
	datad => \ShiftLeft0~0_combout\,
	combout => \Mux1~5_combout\);

\Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (\shift[2]~input_o\ & (((\Mux1~5_combout\ & !\shift[1]~input_o\)))) # (!\shift[2]~input_o\ & (\Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux1~5_combout\,
	datac => \shift[2]~input_o\,
	datad => \shift[1]~input_o\,
	combout => \Mux1~6_combout\);

\out[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out[1]$latch~combout\ = (\Mux8~0_combout\ & ((\out[1]$latch~combout\))) # (!\Mux8~0_combout\ & (\Mux1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~6_combout\,
	datac => \out[1]$latch~combout\,
	datad => \Mux8~0_combout\,
	combout => \out[1]$latch~combout\);

\ShiftLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~5_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[0]~input_o\)) # (!\B[1]~input_o\ & ((\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~5_combout\);

\ShiftLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~6_combout\ = (\ShiftLeft0~5_combout\) # ((\A[1]~input_o\ & (\B[0]~input_o\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~5_combout\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~6_combout\);

\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\shift[0]~input_o\ & (((\ShiftLeft0~1_combout\ & \ShiftLeft0~6_combout\)))) # (!\shift[0]~input_o\ & (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift[0]~input_o\,
	datab => \A[3]~input_o\,
	datac => \ShiftLeft0~1_combout\,
	datad => \ShiftLeft0~6_combout\,
	combout => \Mux2~0_combout\);

\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\shift[0]~input_o\ & ((\A[1]~input_o\))) # (!\shift[0]~input_o\ & (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift[0]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[1]~input_o\,
	combout => \Mux2~1_combout\);

\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\shift[1]~input_o\ & (\Mux2~0_combout\)) # (!\shift[1]~input_o\ & ((\Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift[1]~input_o\,
	datab => \Mux2~0_combout\,
	datac => \Mux2~1_combout\,
	combout => \Mux2~2_combout\);

\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[4]~input_o\)) # (!\B[1]~input_o\ & ((\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mux2~3_combout\);

\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[5]~input_o\)) # (!\B[1]~input_o\ & ((\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[5]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mux2~4_combout\);

\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (!\B[2]~input_o\ & ((\Mux2~3_combout\) # (\Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \Mux2~4_combout\,
	datad => \B[2]~input_o\,
	combout => \Mux2~5_combout\);

\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\B[0]~input_o\ & (\A[7]~input_o\ & (\shift[0]~input_o\))) # (!\B[0]~input_o\ & (((\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \shift[0]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mux2~6_combout\);

\ShiftLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~7_combout\ = (\B[2]~input_o\ & !\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~7_combout\);

\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (!\ShiftLeft0~0_combout\ & ((\Mux2~5_combout\) # ((\Mux2~6_combout\ & \ShiftLeft0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~5_combout\,
	datab => \Mux2~6_combout\,
	datac => \ShiftLeft0~7_combout\,
	datad => \ShiftLeft0~0_combout\,
	combout => \Mux2~7_combout\);

\Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\) # (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	combout => \Mux2~8_combout\);

\Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (\Mux2~7_combout\) # ((\Mux5~2_combout\ & ((\ShiftLeft0~0_combout\) # (\Mux2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~7_combout\,
	datab => \Mux5~2_combout\,
	datac => \ShiftLeft0~0_combout\,
	datad => \Mux2~8_combout\,
	combout => \Mux2~9_combout\);

\Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~10_combout\ = (\shift[2]~input_o\ & (((\Mux2~9_combout\ & !\shift[1]~input_o\)))) # (!\shift[2]~input_o\ & (\Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux2~9_combout\,
	datac => \shift[2]~input_o\,
	datad => \shift[1]~input_o\,
	combout => \Mux2~10_combout\);

\out[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out[2]$latch~combout\ = (\Mux8~0_combout\ & ((\out[2]$latch~combout\))) # (!\Mux8~0_combout\ & (\Mux2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~10_combout\,
	datac => \out[2]$latch~combout\,
	datad => \Mux8~0_combout\,
	combout => \out[2]$latch~combout\);

\ShiftLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~8_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[2]~input_o\)) # (!\B[0]~input_o\ & ((\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~8_combout\);

\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\ShiftLeft0~1_combout\ & ((\ShiftLeft0~8_combout\) # ((\B[1]~input_o\ & \ShiftLeft0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \ShiftLeft0~3_combout\,
	datac => \ShiftLeft0~1_combout\,
	datad => \ShiftLeft0~8_combout\,
	combout => \Mux3~2_combout\);

\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\shift[0]~input_o\ & ((\A[2]~input_o\) # ((\shift[1]~input_o\)))) # (!\shift[0]~input_o\ & (((\A[3]~input_o\ & !\shift[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift[0]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[3]~input_o\,
	datad => \shift[1]~input_o\,
	combout => \Mux3~3_combout\);

\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\shift[1]~input_o\ & ((\Mux3~3_combout\ & ((\Mux3~2_combout\))) # (!\Mux3~3_combout\ & (\A[4]~input_o\)))) # (!\shift[1]~input_o\ & (((\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \Mux3~2_combout\,
	datac => \shift[1]~input_o\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~4_combout\);

\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\A[7]~input_o\ & (\shift[0]~input_o\ & (\ShiftLeft0~7_combout\ & !\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \shift[0]~input_o\,
	datac => \ShiftLeft0~7_combout\,
	datad => \B[0]~input_o\,
	combout => \Mux3~5_combout\);

\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[5]~input_o\)) # (!\B[1]~input_o\ & ((\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mux3~6_combout\);

\Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[6]~input_o\)) # (!\B[1]~input_o\ & ((\A[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mux3~7_combout\);

\Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\Mux3~5_combout\) # ((!\B[2]~input_o\ & ((\Mux3~6_combout\) # (\Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~5_combout\,
	datab => \Mux3~6_combout\,
	datac => \Mux3~7_combout\,
	datad => \B[2]~input_o\,
	combout => \Mux3~8_combout\);

\Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~10_combout\ = (\ShiftLeft0~0_combout\ & (((\Mux5~2_combout\)))) # (!\ShiftLeft0~0_combout\ & ((\Mux3~8_combout\) # ((\B[2]~input_o\ & \Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftLeft0~0_combout\,
	datac => \Mux3~8_combout\,
	datad => \Mux5~2_combout\,
	combout => \Mux3~10_combout\);

\Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (\shift[2]~input_o\ & (((\Mux3~10_combout\ & !\shift[1]~input_o\)))) # (!\shift[2]~input_o\ & (\Mux3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datab => \Mux3~10_combout\,
	datac => \shift[2]~input_o\,
	datad => \shift[1]~input_o\,
	combout => \Mux3~9_combout\);

\out[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out[3]$latch~combout\ = (\Mux8~0_combout\ & ((\out[3]$latch~combout\))) # (!\Mux8~0_combout\ & (\Mux3~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~9_combout\,
	datac => \out[3]$latch~combout\,
	datad => \Mux8~0_combout\,
	combout => \out[3]$latch~combout\);

\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\shift[0]~input_o\ & (((\shift[1]~input_o\)))) # (!\shift[0]~input_o\ & ((\shift[1]~input_o\ & (\A[5]~input_o\)) # (!\shift[1]~input_o\ & ((\A[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift[0]~input_o\,
	datab => \A[5]~input_o\,
	datac => \shift[1]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Mux4~0_combout\);

\ShiftLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~9_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[1]~input_o\)) # (!\B[0]~input_o\ & ((\A[2]~input_o\))))) # (!\B[1]~input_o\ & (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \ShiftLeft0~9_combout\);

\ShiftLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~10_combout\ = (\A[0]~input_o\ & (\B[2]~input_o\ & !\ShiftLeft0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[2]~input_o\,
	datac => \ShiftLeft0~0_combout\,
	combout => \ShiftLeft0~10_combout\);

\ShiftLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~11_combout\ = (\ShiftLeft0~9_combout\ & (((\ShiftLeft0~1_combout\)))) # (!\ShiftLeft0~9_combout\ & ((\ShiftLeft0~10_combout\) # ((\A[4]~input_o\ & \ShiftLeft0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \ShiftLeft0~1_combout\,
	datac => \ShiftLeft0~10_combout\,
	datad => \ShiftLeft0~9_combout\,
	combout => \ShiftLeft0~11_combout\);

\ShiftLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~12_combout\ = (\ShiftLeft0~11_combout\ & ((\B[1]~input_o\ & ((\ShiftLeft0~9_combout\))) # (!\B[1]~input_o\ & ((\A[3]~input_o\) # (!\ShiftLeft0~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[1]~input_o\,
	datac => \ShiftLeft0~9_combout\,
	datad => \ShiftLeft0~11_combout\,
	combout => \ShiftLeft0~12_combout\);

\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\shift[0]~input_o\ & ((\Mux4~0_combout\ & ((\ShiftLeft0~12_combout\))) # (!\Mux4~0_combout\ & (\A[3]~input_o\)))) # (!\shift[0]~input_o\ & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \shift[0]~input_o\,
	datac => \Mux4~0_combout\,
	datad => \ShiftLeft0~12_combout\,
	combout => \Mux4~1_combout\);

\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\ShiftLeft0~1_combout\ & (((\ShiftRight0~0_combout\) # (\ShiftRight0~1_combout\)))) # (!\ShiftLeft0~1_combout\ & (\Mux5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \ShiftLeft0~1_combout\,
	datac => \ShiftRight0~0_combout\,
	datad => \ShiftRight0~1_combout\,
	combout => \Mux4~2_combout\);

\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\shift[2]~input_o\ & (((\Mux4~2_combout\ & !\shift[1]~input_o\)))) # (!\shift[2]~input_o\ & (\Mux4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux4~2_combout\,
	datac => \shift[2]~input_o\,
	datad => \shift[1]~input_o\,
	combout => \Mux4~3_combout\);

\out[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out[4]$latch~combout\ = (\Mux8~0_combout\ & ((\out[4]$latch~combout\))) # (!\Mux8~0_combout\ & (\Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux4~3_combout\,
	datac => \out[4]$latch~combout\,
	datad => \Mux8~0_combout\,
	combout => \out[4]$latch~combout\);

\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\shift[1]~input_o\ & (((\shift[0]~input_o\)))) # (!\shift[1]~input_o\ & ((\shift[0]~input_o\ & (\A[4]~input_o\)) # (!\shift[0]~input_o\ & ((\A[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift[1]~input_o\,
	datab => \A[4]~input_o\,
	datac => \shift[0]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Mux5~3_combout\);

\ShiftLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~13_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[2]~input_o\)) # (!\B[1]~input_o\ & ((\A[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~13_combout\);

\ShiftLeft0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~14_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[3]~input_o\)) # (!\B[1]~input_o\ & ((\A[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~14_combout\);

\ShiftLeft0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~15_combout\ = (!\B[2]~input_o\ & (!\ShiftLeft0~0_combout\ & ((\ShiftLeft0~13_combout\) # (\ShiftLeft0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~13_combout\,
	datab => \ShiftLeft0~14_combout\,
	datac => \B[2]~input_o\,
	datad => \ShiftLeft0~0_combout\,
	combout => \ShiftLeft0~15_combout\);

\ShiftLeft0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~16_combout\ = (\ShiftLeft0~15_combout\) # ((\ShiftLeft0~3_combout\ & (\ShiftLeft0~7_combout\ & !\ShiftLeft0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~15_combout\,
	datab => \ShiftLeft0~3_combout\,
	datac => \ShiftLeft0~7_combout\,
	datad => \ShiftLeft0~0_combout\,
	combout => \ShiftLeft0~16_combout\);

\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\shift[1]~input_o\ & ((\Mux5~3_combout\ & ((\ShiftLeft0~16_combout\))) # (!\Mux5~3_combout\ & (\A[6]~input_o\)))) # (!\shift[1]~input_o\ & (((\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \shift[1]~input_o\,
	datac => \Mux5~3_combout\,
	datad => \ShiftLeft0~16_combout\,
	combout => \Mux5~4_combout\);

\Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\A[7]~input_o\ & (\B[1]~input_o\ & ((!\B[0]~input_o\) # (!\shift[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \shift[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mux5~7_combout\);

\Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\ShiftLeft0~1_combout\ & ((\out~0_combout\) # ((\Mux5~7_combout\)))) # (!\ShiftLeft0~1_combout\ & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out~0_combout\,
	datab => \ShiftLeft0~1_combout\,
	datac => \Mux5~2_combout\,
	datad => \Mux5~7_combout\,
	combout => \Mux5~5_combout\);

\Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\shift[2]~input_o\ & (((\Mux5~5_combout\ & !\shift[1]~input_o\)))) # (!\shift[2]~input_o\ & (\Mux5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~4_combout\,
	datab => \Mux5~5_combout\,
	datac => \shift[2]~input_o\,
	datad => \shift[1]~input_o\,
	combout => \Mux5~6_combout\);

\out[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out[5]$latch~combout\ = (\Mux8~0_combout\ & ((\out[5]$latch~combout\))) # (!\Mux8~0_combout\ & (\Mux5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux5~6_combout\,
	datac => \out[5]$latch~combout\,
	datad => \Mux8~0_combout\,
	combout => \out[5]$latch~combout\);

\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\shift[0]~input_o\ & (((\shift[1]~input_o\)))) # (!\shift[0]~input_o\ & ((\shift[1]~input_o\ & (\A[7]~input_o\)) # (!\shift[1]~input_o\ & ((\A[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift[0]~input_o\,
	datab => \A[7]~input_o\,
	datac => \shift[1]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Mux6~2_combout\);

\ShiftLeft0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~17_combout\ = (\B[1]~input_o\ & (((\A[3]~input_o\)) # (!\B[0]~input_o\))) # (!\B[1]~input_o\ & (\B[0]~input_o\ & ((\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[5]~input_o\,
	combout => \ShiftLeft0~17_combout\);

\ShiftLeft0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~18_combout\ = (\B[0]~input_o\ & (((\ShiftLeft0~17_combout\)))) # (!\B[0]~input_o\ & ((\ShiftLeft0~17_combout\ & (\A[4]~input_o\)) # (!\ShiftLeft0~17_combout\ & ((\A[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[6]~input_o\,
	datac => \B[0]~input_o\,
	datad => \ShiftLeft0~17_combout\,
	combout => \ShiftLeft0~18_combout\);

\ShiftLeft0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~19_combout\ = (!\ShiftLeft0~0_combout\ & ((\B[2]~input_o\ & (\ShiftLeft0~6_combout\)) # (!\B[2]~input_o\ & ((\ShiftLeft0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~6_combout\,
	datab => \ShiftLeft0~18_combout\,
	datac => \B[2]~input_o\,
	datad => \ShiftLeft0~0_combout\,
	combout => \ShiftLeft0~19_combout\);

\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\shift[0]~input_o\ & ((\Mux6~2_combout\ & ((\ShiftLeft0~19_combout\))) # (!\Mux6~2_combout\ & (\A[5]~input_o\)))) # (!\shift[0]~input_o\ & (((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \shift[0]~input_o\,
	datac => \Mux6~2_combout\,
	datad => \ShiftLeft0~19_combout\,
	combout => \Mux6~3_combout\);

\ShiftRight1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~4_combout\ = (\B[0]~input_o\ & (\A[7]~input_o\)) # (!\B[0]~input_o\ & ((\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \A[6]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftRight1~4_combout\);

\ShiftLeft0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~20_combout\ = (!\B[1]~input_o\ & (!\B[2]~input_o\ & !\ShiftLeft0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \ShiftLeft0~0_combout\,
	combout => \ShiftLeft0~20_combout\);

\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\ShiftLeft0~20_combout\ & (((\ShiftRight1~4_combout\)))) # (!\ShiftLeft0~20_combout\ & (\A[7]~input_o\ & (!\shift[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \shift[0]~input_o\,
	datac => \ShiftRight1~4_combout\,
	datad => \ShiftLeft0~20_combout\,
	combout => \Mux6~5_combout\);

\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\shift[2]~input_o\ & (((\Mux6~5_combout\ & !\shift[1]~input_o\)))) # (!\shift[2]~input_o\ & (\Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => \Mux6~5_combout\,
	datac => \shift[2]~input_o\,
	datad => \shift[1]~input_o\,
	combout => \Mux6~4_combout\);

\out[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out[6]$latch~combout\ = (\Mux8~0_combout\ & ((\out[6]$latch~combout\))) # (!\Mux8~0_combout\ & (\Mux6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~4_combout\,
	datac => \out[6]$latch~combout\,
	datad => \Mux8~0_combout\,
	combout => \out[6]$latch~combout\);

\ShiftLeft0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~21_combout\ = (\ShiftLeft0~8_combout\) # ((\B[1]~input_o\ & \ShiftLeft0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datab => \B[1]~input_o\,
	datac => \ShiftLeft0~3_combout\,
	combout => \ShiftLeft0~21_combout\);

\ShiftLeft0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~22_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[5]~input_o\)) # (!\B[1]~input_o\ & ((\A[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \ShiftLeft0~22_combout\);

\ShiftLeft0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~23_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[4]~input_o\)) # (!\B[1]~input_o\ & ((\A[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[4]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[1]~input_o\,
	combout => \ShiftLeft0~23_combout\);

\ShiftLeft0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~24_combout\ = (\B[2]~input_o\ & (\ShiftLeft0~21_combout\)) # (!\B[2]~input_o\ & (((\ShiftLeft0~22_combout\) # (\ShiftLeft0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~21_combout\,
	datab => \ShiftLeft0~22_combout\,
	datac => \ShiftLeft0~23_combout\,
	datad => \B[2]~input_o\,
	combout => \ShiftLeft0~24_combout\);

\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\shift[0]~input_o\ & (!\ShiftLeft0~0_combout\ & ((\ShiftLeft0~24_combout\)))) # (!\shift[0]~input_o\ & (((\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~0_combout\,
	datab => \shift[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \ShiftLeft0~24_combout\,
	combout => \Mux7~3_combout\);

\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\shift[0]~input_o\ & (((\A[6]~input_o\ & !\shift[2]~input_o\)))) # (!\shift[0]~input_o\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \A[6]~input_o\,
	datac => \shift[0]~input_o\,
	datad => \shift[2]~input_o\,
	combout => \Mux7~0_combout\);

\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\shift[2]~input_o\ & (\A[7]~input_o\ & (\shift[0]~input_o\ & !\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift[2]~input_o\,
	datab => \A[7]~input_o\,
	datac => \shift[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mux7~1_combout\);

\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (!\shift[1]~input_o\ & ((\Mux7~0_combout\) # ((\ShiftLeft0~20_combout\ & \Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \ShiftLeft0~20_combout\,
	datac => \Mux7~1_combout\,
	datad => \shift[1]~input_o\,
	combout => \Mux7~2_combout\);

\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux7~2_combout\) # ((!\shift[2]~input_o\ & (\Mux7~3_combout\ & \shift[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shift[2]~input_o\,
	datab => \Mux7~3_combout\,
	datac => \shift[1]~input_o\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~4_combout\);

\out[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \out[7]$latch~combout\ = (\Mux8~0_combout\ & ((\out[7]$latch~combout\))) # (!\Mux8~0_combout\ & (\Mux7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~4_combout\,
	datac => \out[7]$latch~combout\,
	datad => \Mux8~0_combout\,
	combout => \out[7]$latch~combout\);

\ww_out\(0) <= \out[0]~output_o\;

\ww_out\(1) <= \out[1]~output_o\;

\ww_out\(2) <= \out[2]~output_o\;

\ww_out\(3) <= \out[3]~output_o\;

\ww_out\(4) <= \out[4]~output_o\;

\ww_out\(5) <= \out[5]~output_o\;

\ww_out\(6) <= \out[6]~output_o\;

\ww_out\(7) <= \out[7]~output_o\;
END structure;



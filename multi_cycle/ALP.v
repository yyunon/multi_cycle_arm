// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"
// CREATED		"Thu Mar 21 07:30:59 2019"

module ALP(
	clk,
	load,
	comp,
	clr,
	data_in,
	op,
	ERRreg,
	css,
	ncss,
	OUT_0,
	OUT_1
);


input wire	clk;
input wire	load;
input wire	comp;
input wire	clr;
input wire	[3:0] data_in;
input wire	[2:0] op;
output wire	ERRreg;
output wire	[2:0] css;
output wire	[2:0] ncss;
output wire	[3:0] OUT_0;
output wire	[3:0] OUT_1;

wire	[3:0] accreg;
wire	[1:0] e;
wire	[1:0] ero;
wire	G;
wire	[3:0] inp;
wire	[1:0] mul;
wire	[3:0] outt;
wire	[3:0] Q;
wire	[0:0] SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	[3:0] SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	[3:0] SYNTHESIZED_WIRE_6;
wire	[2:0] SYNTHESIZED_WIRE_7;
wire	[3:0] SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	[3:0] SYNTHESIZED_WIRE_34;
wire	[3:0] SYNTHESIZED_WIRE_13;
wire	[1:0] SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	[1:0] SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	[3:0] SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	[3:0] SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	[3:0] SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_32;
wire	[3:0] SYNTHESIZED_WIRE_33;

assign	SYNTHESIZED_WIRE_5 = 0;




shift_reg	b2v_ACC(
	.clk(clk),
	.serial_left(SYNTHESIZED_WIRE_0),
	
	.ps(SYNTHESIZED_WIRE_1),
	.rl(SYNTHESIZED_WIRE_2),
	.reset(SYNTHESIZED_WIRE_3),
	.DATA(SYNTHESIZED_WIRE_4),
	.out(accreg));
	defparam	b2v_ACC.W = 4;


constant_value_generator	b2v_complement(
	.value(SYNTHESIZED_WIRE_13));
	defparam	b2v_complement.constant = 0;
	defparam	b2v_complement.W = 4;


constant_value_generator	b2v_complement5(
	.value(SYNTHESIZED_WIRE_21));
	defparam	b2v_complement5.constant = 0;
	defparam	b2v_complement5.W = 4;


ALP_Controller	b2v_Controller(
	.clk(clk),
	.LOAD(load),
	.COMP(comp),
	.CLR(clr),
	.r0(inp[3]),
	.r1(outt[3]),
	.DATA_IN(data_in),
	.multiplication_control(mul),
	.OP(op),
	.ERR(SYNTHESIZED_WIRE_23),
	.r1_inputmux_select(SYNTHESIZED_WIRE_11),
	.q_inputmux_select(SYNTHESIZED_WIRE_15),
	.acc_inputmux_select(SYNTHESIZED_WIRE_16),
	.rl_q(SYNTHESIZED_WIRE_25),
	.ps_q(SYNTHESIZED_WIRE_24),
	.ps_acc(SYNTHESIZED_WIRE_1),
	.rl_acc(SYNTHESIZED_WIRE_2),
	.clr_acc(SYNTHESIZED_WIRE_3),
	.clr_q(SYNTHESIZED_WIRE_26),
	.clr_r0(SYNTHESIZED_WIRE_28),
	.clr_r1(SYNTHESIZED_WIRE_31),
	.write_r0(SYNTHESIZED_WIRE_29),
	.write_r1(SYNTHESIZED_WIRE_32),
	.clr_g(SYNTHESIZED_WIRE_9),
	.write_g(SYNTHESIZED_WIRE_10),
	.serial_left_acc(SYNTHESIZED_WIRE_22),
	.R0_outputmux_select(SYNTHESIZED_WIRE_20),
	.alu_op(SYNTHESIZED_WIRE_7),
	.CS_mul(css),
	.CS_mul_new(ncss),
	.operation_mux_select(SYNTHESIZED_WIRE_14),
	.r0_inputmux_select(SYNTHESIZED_WIRE_19));
	defparam	b2v_Controller.W = 4;


simple_register	b2v_ERR(
	.clk(clk),
	.reset(SYNTHESIZED_WIRE_5),
	.DATA(e),
	.out(ero));
	defparam	b2v_ERR.W = 2;


ALU	b2v_inst(
	.A(SYNTHESIZED_WIRE_6),
	.ALU_Control(SYNTHESIZED_WIRE_7),
	.B(SYNTHESIZED_WIRE_8),
	
	.OVF(e[1]),
	
	
	.out(SYNTHESIZED_WIRE_34));
	defparam	b2v_inst.W = 4;


simple_register_write	b2v_inst1(
	.clk(clk),
	.reset(SYNTHESIZED_WIRE_9),
	.write(SYNTHESIZED_WIRE_10),
	.DATA(Q[0]),
	.out(G));
	defparam	b2v_inst1.W = 1;


mux_2_1	b2v_inst13(
	.select(SYNTHESIZED_WIRE_11),
	.in1(accreg),
	.in2(SYNTHESIZED_WIRE_34),
	.out(SYNTHESIZED_WIRE_33));
	defparam	b2v_inst13.W = 4;


mux_4_1	b2v_inst14(
	.in1(outt),
	.in2(SYNTHESIZED_WIRE_13),
	.in3(accreg),
	
	.select(SYNTHESIZED_WIRE_14),
	.out(SYNTHESIZED_WIRE_8));
	defparam	b2v_inst14.W = 4;


mux_2_1	b2v_inst17(
	.select(SYNTHESIZED_WIRE_15),
	.in1(Q),
	.in2(outt),
	.out(SYNTHESIZED_WIRE_27));
	defparam	b2v_inst17.W = 4;


mux_2_1	b2v_inst18(
	.select(SYNTHESIZED_WIRE_16),
	.in1(SYNTHESIZED_WIRE_34),
	.in2(accreg),
	.out(SYNTHESIZED_WIRE_4));
	defparam	b2v_inst18.W = 4;


mux_4_1	b2v_inst2(
	.in1(data_in),
	.in2(SYNTHESIZED_WIRE_34),
	
	.in4(Q),
	.select(SYNTHESIZED_WIRE_19),
	.out(SYNTHESIZED_WIRE_30));
	defparam	b2v_inst2.W = 4;

assign	mul[1] = Q[0];


assign	mul[0] = G;



mux_2_1	b2v_inst3(
	.select(SYNTHESIZED_WIRE_20),
	.in1(inp),
	.in2(SYNTHESIZED_WIRE_21),
	.out(SYNTHESIZED_WIRE_6));
	defparam	b2v_inst3.W = 4;



mux_2_1	b2v_inst5(
	.select(SYNTHESIZED_WIRE_22),
	.in1(accreg[3]),
	
	.out(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst5.W = 1;

assign	ERRreg = ero[1] & SYNTHESIZED_WIRE_23;


shift_reg	b2v_Q_reg(
	.clk(clk),
	.serial_left(accreg[0]),
	
	.ps(SYNTHESIZED_WIRE_24),
	.rl(SYNTHESIZED_WIRE_25),
	.reset(SYNTHESIZED_WIRE_26),
	.DATA(SYNTHESIZED_WIRE_27),
	.out(Q));
	defparam	b2v_Q_reg.W = 4;


simple_register_write	b2v_R0(
	.clk(clk),
	.reset(SYNTHESIZED_WIRE_28),
	.write(SYNTHESIZED_WIRE_29),
	.DATA(SYNTHESIZED_WIRE_30),
	.out(inp));
	defparam	b2v_R0.W = 4;


simple_register_write	b2v_R1(
	.clk(clk),
	.reset(SYNTHESIZED_WIRE_31),
	.write(SYNTHESIZED_WIRE_32),
	.DATA(SYNTHESIZED_WIRE_33),
	.out(outt));
	defparam	b2v_R1.W = 4;

assign	OUT_0 = inp;
assign	OUT_1 = outt;

endmodule

// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
// CREATED		"Mon Apr 29 11:17:44 2019"

module datapath(
	RegWrite,
	MemWrite,
	clk,
	reset,
	AdrSrc,
	PCWrite,
	IRWrite,
	AluSrcA,
	ALUControl,
	ALUSrcB,
	enhanced_op,
	ImmSrc,
	RegSrc,
	ResultSrc,
	ALUFlags,
	Cond,
	Funct,
	instr_out,
	Op,
	PC,
	writeback
);


input wire	RegWrite;
input wire	MemWrite;
input wire	clk;
input wire	reset;
input wire	AdrSrc;
input wire	PCWrite;
input wire	IRWrite;
input wire	AluSrcA;
input wire	[2:0] ALUControl;
input wire	[1:0] ALUSrcB;
input wire	[1:0] enhanced_op;
input wire	[1:0] ImmSrc;
input wire	[2:0] RegSrc;
input wire	[1:0] ResultSrc;
output wire	[3:0] ALUFlags;
output wire	[2:0] Cond;
output wire	[5:0] Funct;
output wire	[7:0] instr_out;
output wire	[1:0] Op;
output wire	[7:0] PC;
output wire	[7:0] writeback;

wire	[2:0] A1;
wire	[2:0] A2;
wire	[2:0] A3;
wire	[7:0] alu_f;
wire	[7:0] alu_out;
wire	[7:0] alu_result;
wire	[7:0] c;
wire	[2:0] constfiv;
wire	[25:0] d;
wire	[7:0] data;
wire	[1:0] en_op;
wire	[7:0] extension;
wire	[3:0] flags;
wire	[25:0] instr;
wire	[7:0] PC_reg;
wire	[7:0] PCout;
wire	[7:0] r1;
wire	[7:0] r2;
wire	[7:0] rd1;
wire	[7:0] rd2;
wire	reset_regs;
wire	[7:0] result;
wire	[7:0] shift_out;
wire	[7:0] srcA;
wire	[7:0] srcB;
wire	[7:0] wd;
wire	[2:0] SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_1 = 0;
assign	SYNTHESIZED_WIRE_2 = 0;
assign	SYNTHESIZED_WIRE_3 = 0;
assign	SYNTHESIZED_WIRE_4 = 0;




reg_file	b2v_inst(
	.clk(clk),
	.write_enable(RegWrite),
	.reset(reset_regs),
	.adr_dst(A3),
	.adr_src1(A1),
	.adr_src2(A2),
	.DATA_in(wd),
	.r15(result),
	.DATA_out_1(rd1)
	);
	defparam	b2v_inst.W = 8;


mux_2_1	b2v_inst1(
	.select(RegSrc[2]),
	.in1(instr[12:10]),
	.in2(SYNTHESIZED_WIRE_0),
	.out(A3));
	defparam	b2v_inst1.W = 3;


mux_2_1	b2v_inst10(
	.select(RegSrc[0]),
	.in1(instr[15:13]),
	.in2(constfiv),
	.out(A1));
	defparam	b2v_inst10.W = 3;


mux_2_1	b2v_inst11(
	.select(RegSrc[1]),
	.in1(instr[2:0]),
	.in2(instr[12:10]),
	.out(A2));
	defparam	b2v_inst11.W = 3;


mux_2_1	b2v_inst12(
	.select(AluSrcA),
	.in1(r1),
	.in2(PC_reg),
	.out(srcA));
	defparam	b2v_inst12.W = 8;


instr_data_memory	b2v_inst14(
	.clk(clk),
	.we(MemWrite),
	.adr(PCout),
	.wd(r2)
	);
	defparam	b2v_inst14.W = 26;


shifter	b2v_inst15(
	.A(r2),
	.B(instr[8:6]),
	.shift(instr[5:3]),
	.out(shift_out));
	defparam	b2v_inst15.W = 8;


constant_value_generator	b2v_inst16(
	.value(constfiv));
	defparam	b2v_inst16.constant = 7;
	defparam	b2v_inst16.W = 3;


simple_register	b2v_inst18(
	.clk(clk),
	.reset(SYNTHESIZED_WIRE_1),
	.DATA(alu_result),
	.out(alu_out));
	defparam	b2v_inst18.W = 8;


mux_4_1	b2v_inst19(
	.in1(alu_out),
	.in2(data),
	.in3(alu_result),
	.in4(alu_result),
	.select(ResultSrc),
	.out(result));
	defparam	b2v_inst19.W = 8;


mux_2_1	b2v_inst2(
	.select(RegSrc[2]),
	.in1(result),
	.in2(PC_reg),
	.out(wd));
	defparam	b2v_inst2.W = 8;


mux_4_1	b2v_inst20(
	.in1(alu_f),
	.in2(shift_out),
	.in3(srcB),
	.in4(shift_out),
	.select(en_op),
	.out(alu_result));
	defparam	b2v_inst20.W = 8;



simple_register	b2v_inst22(
	.clk(clk),
	.reset(SYNTHESIZED_WIRE_2),
	.DATA(rd1),
	.out(r1));
	defparam	b2v_inst22.W = 8;


simple_register	b2v_inst23(
	.clk(clk),
	.reset(SYNTHESIZED_WIRE_3),
	.DATA(rd1),
	.out(r2));
	defparam	b2v_inst23.W = 8;




simple_register_write	b2v_inst26(
	.clk(clk),
	.reset(reset_regs),
	.write(PCWrite),
	.DATA(result),
	.out(PC_reg));
	defparam	b2v_inst26.W = 8;


simple_register_write	b2v_inst27(
	.clk(clk),
	.reset(reset_regs),
	.write(IRWrite),
	.DATA(instr),
	.out(instr));
	defparam	b2v_inst27.W = 26;


mux_4_1	b2v_inst28(
	.in1(r2),
	.in2(extension),
	.in3(c),
	.in4(c),
	.select(ALUSrcB),
	.out(srcB));
	defparam	b2v_inst28.W = 8;


simple_register	b2v_inst29(
	.clk(clk),
	.reset(SYNTHESIZED_WIRE_4),
	.DATA(instr),
	.out(d));
	defparam	b2v_inst29.W = 26;


ALU	b2v_inst3(
	.A(srcA),
	.ALU_Control(ALUControl),
	.B(srcB),
	.CO(flags[1]),
	.OVF(flags[0]),
	.Z(flags[2]),
	.N(flags[3]),
	.out(alu_f));
	defparam	b2v_inst3.W = 8;


assign	data = d[7:0];



extension	b2v_inst4(
	.immsrc(ImmSrc),
	.instr(instr[17:0]),
	.extimm(extension));
	defparam	b2v_inst4.W = 8;


constant_value_generator	b2v_inst5(
	.value(SYNTHESIZED_WIRE_0));
	defparam	b2v_inst5.constant = 6;
	defparam	b2v_inst5.W = 3;


constant_value_generator	b2v_inst7(
	.value(c));
	defparam	b2v_inst7.constant = 4;
	defparam	b2v_inst7.W = 8;


mux_2_1	b2v_inst9(
	.select(AdrSrc),
	.in1(PC_reg),
	.in2(result),
	.out(PCout));
	defparam	b2v_inst9.W = 8;

assign	ALUFlags = flags;
assign	reset_regs = reset;
assign	en_op = enhanced_op;
assign	Cond[2:0] = instr[25:23];
assign	Funct[5:0] = instr[20:15];
assign	instr_out[7:0] = instr[7:0];
assign	Op[1:0] = instr[22:21];
assign	PC = PCout;
assign	writeback = result;

endmodule

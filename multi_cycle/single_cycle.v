module single_cycle(input clk, reset, 
				output [31:0] PC, 
				output [31:0] ALUResult,
				output wire [3:0] ALUFlags,
				//output wire RegWrite,ALUSrc, MemtoReg, PCSrc,MemWrite,
				//output wire [1:0] RegSrc, ImmSrc,
				//output wire [2:0] ALUControl
				output [31:0] writeback,
				output [31:0] instr_out);
				
				
				
//wire [3:0] ALUFlags;
wire RegWrite,ALUSrc, MemtoReg, PCSrc,MemWrite;
wire [1:0] RegSrc, ImmSrc;
wire [2:0] ALUControl;
wire [1:0] shift;

wire [1:0] Op;
wire [5:0] Funct;
wire [3:0] R;
wire [3:0] Cond;


Controller c(.clk(clk), .reset(reset), .ALUFlags(ALUFlags), .Op(Op), .Funct(Funct), .R(R),.Cond(Cond), .RegSrc(RegSrc), .RegWrite(RegWrite), .ImmSrc(ImmSrc), .ALUSrc(ALUSrc), .ALUControl(ALUControl), .MemWrite(MemWrite), .MemtoReg(MemtoReg), .PCSrc(PCSrc), .shift(shift));
datapath dp(.clk(clk),.reset(reset),.RegSrc(RegSrc), .RegWrite(RegWrite), .ImmSrc(ImmSrc), .ALUSrc(ALUSrc), .ALUControl(ALUControl), .MemtoReg(MemtoReg), .PCSrc(PCSrc), .ALUFlags(ALUFlags), .PC(PC), .ALUResult(ALUResult) ,.MemWrite(MemWrite) , .Op(Op), .Funct(Funct), .R(R),.Cond(Cond),.writeback(writeback),.instr_out(instr_out),.shift(shift));
				
endmodule 
module Controller(input clk,reset,
						input [3:0] ALUFlags,
						input [1:0] Op,
						input [5:0] Funct,
						input [3:0] R,
						input [3:0] Cond,
						output [1:0] RegSrc,
						output RegWrite, 
						output [1:0] ImmSrc, 
						output ALUSrc, 
						output [2:0] ALUControl, 
						output MemWrite, MemtoReg, 
						output PCSrc,
						output [1:0] shift);
							wire NoWrite;
							wire [1:0] FlagW;
							wire PCS,RegW,MemW;
	decoder_cond d(.Op(Op), .Funct(Funct), .Rd(R),
								.FlagW(FlagW), .PCS(PCS), .RegW(RegW), .MemW(MemW), 
								.MemtoReg(MemtoReg), .ALUSrc(ALUSrc), 
								.ImmSrc(ImmSrc), .RegSrc(RegSrc),
								.ALUControl(ALUControl),.shift(shift),.NoWrite(NoWrite));
								
		
	logic_cond c(.clk(clk), .reset(reset),.Cond(Cond), 
						.ALUFlags(ALUFlags), .FlagW(FlagW), 
						.PCS(PCS), .RegW(RegW), .MemW(MemW), 
						.PCSrc(PCSrc), .RegWrite(RegWrite), .MemWrite(MemWrite),.NoWrite(NoWrite));
endmodule 
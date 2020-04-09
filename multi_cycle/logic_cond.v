module logic_cond(input clk, reset, input [3:0] Cond, 
						input [3:0] ALUFlags, input [1:0] FlagW, 
						input PCS, RegW, MemW, 
						output PCSrc, RegWrite, MemWrite,
						input NoWrite);

						
						
	wire [1:0] FlagWrite;
	wire [3:0] Flags;
	wire CondEx;
	
	simple_register_write #(2) flag1(.clk(clk),.DATA(ALUFlags[3:2]),.reset(reset),.write(FlagWrite[1]),.out(Flags[3:2]));
	simple_register_write #(2) flag2(.clk(clk),.DATA(ALUFlags[1:0]),.reset(reset),.write(FlagWrite[0]),.out(Flags[1:0]));
	
	check_condition co(.Cond(Cond), .Flags(Flags), .CondEx(CondEx));
	
	assign FlagWrite = FlagW & {2{CondEx}}; 
	assign RegWrite = RegW & CondEx & ~NoWrite; 
	assign MemWrite = MemW & CondEx; 
	assign PCSrc = PCS & CondEx;
	
endmodule 
						
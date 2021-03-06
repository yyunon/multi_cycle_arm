module testbench;
reg clk;
reg reset;
reg [2:0] RegSrc;
reg AdrSrc;
reg RegWrite;
reg [1:0] ImmSrc;
reg AluSrcA;
reg [1:0]ALUSrcB;
reg [2:0]ALUControl ;
reg MemWrite;
reg PCWrite;
reg [1:0] ResultSrc;
wire [3:0] ALUFlags;
wire [7:0] PC;
reg IRWrite;
wire [1:0] Op;
wire [5:0]Funct;
wire [2:0] R;
wire [2:0]Cond;
wire [7:0]writeback;
wire [7:0]instr_out; //unnecessary
reg [1:0]enhanced_op;


datapath dut(.clk(clk),.reset(reset),.RegSrc(RegSrc),.AdrSrc(AdrSrc),
					.RegWrite(RegWrite), .ImmSrc(ImmSrc), .AluSrcA(AluSrcA),.ALUSrcB(ALUSrcB), 
					.ALUControl(ALUControl), .MemWrite(MemWrite), .PCWrite(PCWrite),.ResultSrc(ResultSrc),
					.ALUFlags(ALUFlags), .PC(PC), 
					.IRWrite(IRWrite) , .Op(Op), .Funct(Funct), 
					
					.Cond(Cond), .writeback(writeback), .instr_out(instr_out), .enhanced_op(enhanced_op));



always begin
 clk <= 1; #5 ;  clk<= 0; #5 ;
end

always @(posedge clk)
	begin 
		
	end

always @(negedge clk)
begin 

end

endmodule

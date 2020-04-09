module datapath_tb;
// This testbench is for LDR instr
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

parameter FETCH = 0 , DECODE =1 , MEMADR = 2, MEMRD = 3, MEMWB=4,
 MEMWR=5, EXECUTER=6, EXECUTEI=7, ALUWB=8, BRANCH=9,MEMDT=10;
wire [13:0] controls;
reg [3:0]state,nextstate;
assign {NextPC, Branch, MemW, RegW, IRWrite,
 AdrSrc, ResultSrc,
 ALUSrcA, ALUSrcB, ALUOp,enhanced_op} = controls; 
 
datapath dut(.clk(clk),.reset(reset),.RegSrc(RegSrc),.AdrSrc(AdrSrc),
					.RegWrite(RegWrite), .ImmSrc(ImmSrc), .AluSrcA(AluSrcA),.ALUSrcB(ALUSrcB), 
					.ALUControl(ALUControl), .MemWrite(MemWrite), .PCWrite(PCWrite),.ResultSrc(ResultSrc),
					.ALUFlags(ALUFlags), .PC(PC), 
					.IRWrite(IRWrite) , .Op(Op), .Funct(Funct), 
					
					.Cond(Cond), .writeback(writeback), .instr_out(instr_out), .enhanced_op(enhanced_op));



always begin
 clk <= 1; #5 ;  clk<= 0; #5 ;
end

always @(*)
begin // I use this for all instructions
	case(state)
		FETCH: controls = 14'b10001_010_110000;
		DECODE: controls = 14'b00000_010_110000;
		EXECUTER: controls = 14'b00000_000_000100;
		EXECUTEI: controls = 14'b00000_000_001110;
		ALUWB: controls = 14'b00010_000_000000; 
		MEMADR: controls = 14'b00000_000_001000;
		MEMWR: controls = 14'b00100_100_000000;
		MEMRD: controls = 14'b00000_100_000000;
		MEMWB: controls = 14'b00010_001_000000;
		BRANCH: controls = 14'b01000_010_001000;
		MEMDT: controls = 14'b00000_000_001010;
		default: controls = 14'bxxxxx_xxx_xxxxxx; 
	endcase 
	
end

always @(*)
begin
	case(state)
		FETCH: nextstate = DECODE;
		DECODE: nextstate = MEMDT;
		MEMDT: nextstate = MEMWB;
		MEMRD: nextstate = MEMWB;
		MEMWB: nextstate = FETCH;
		default: nextstate = FETCH; 
		endcase
always @(posedge clk)
begin
	state <= nextstate;
end

end
endmodule

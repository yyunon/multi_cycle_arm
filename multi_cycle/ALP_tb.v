module ALP_tb;
parameter W=4;

reg clk,reset_sim;

wire ee;
wire [W-1:0] OUT_0,OUT_1;
reg [W-1:0] DATA_IN;
reg [2:0] OP;
reg LOAD,COMP,CLR;
reg [31:0] vectornum, errors;


reg [W-1:0] out_expected;
wire [W-1:0] out;

reg [9:0] testvectors[100:0];

ALP dut(.clk(clk),.data_in(DATA_IN),.op(OP),.load(LOAD),.comp(COMP),.clr(CLR),.ERRreg(ee), .OUT_0(OUT_0),.OUT_1(OUT_1));


always begin
 clk <= 1; #5 ;  clk<= 0; #5 ;
end
initial 
	begin
		$readmemb("ALP.tv",testvectors);
		vectornum=0; errors=0;
		reset_sim=1; #30 ; reset_sim=0;
	end

always @(posedge clk)
	begin 
		#1; {DATA_IN,OP,LOAD,COMP,CLR} = testvectors[vectornum];
	end

always @(negedge clk)
begin 
	vectornum = vectornum+1;
end

endmodule

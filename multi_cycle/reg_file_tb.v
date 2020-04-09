module reg_file_tb;
parameter W = 3;
reg clk,reset,reset_sim,write_enable;
reg [1:0] adr_dst,adr_src1,adr_src2;
reg [W-1:0] DATA_in;
wire [W-1:0] DATA_out_1;
wire [W-1:0] DATA_out_2;
reg [W-1:0] out_expected;
wire [W-1:0] out;
reg [31:0] vectornum, errors;
reg [10:0] testvectors[100:0];
reg_file #(W) dut(.clk(clk ),.DATA_in(DATA_in),.DATA_out_1(DATA_out_1), .DATA_out_2(DATA_out_2),
											.adr_dst(adr_dst),.adr_src1(adr_src1),.adr_src2(adr_src2),
											.write_enable(write_enable),.reset(reset));

always begin
 clk <= 1; #5 ;  clk<= 0; #5 ;
end

initial 
	begin
		$readmemb("register_file.tv",testvectors);
		vectornum=0; errors=0;
		reset_sim=1; #30 ; reset_sim=0;
	end
	
always @(posedge clk)
	begin 
		#1; {DATA_in,adr_dst,adr_src1,adr_src2,write_enable,reset} = testvectors[vectornum];
	end
	
always @(negedge clk)
	begin 
	if(~reset_sim) begin 
		if(out != out_expected) begin 
			errors=errors+1;

		end
	vectornum = vectornum+1;
	if(testvectors[vectornum] === 4'bx) begin 
		$display("%d tests completed with %d errors", vectornum, errors);
		$stop;
		end
	end
	end
	

endmodule 
module mux_2_1_tb;

parameter width = 2;
reg clk,reset;
reg select;
reg [width-1:0] in1;
reg [width-1:0] in2;
reg [width-1:0] out_expected;
wire [width-1:0] out;
reg [31:0] vectornum, errors;
reg [6:0] testvectors[100:0];
mux_2_1 #(width) dut(.select(select),.in1(in1),.in2(in2),.out(out));

always begin
 clk <= 1; #5 ;  clk<= 0; #5 ;
end

initial 
	begin
		$readmemb("muxvectors.tv",testvectors);
		vectornum=0; errors=0;
		reset=1; #30 ; reset=0;
	end
	
always @(posedge clk)
	begin 
		#1; {select,in1,in2,out_expected} = testvectors[vectornum];
	end
	
always @(negedge clk)
	begin 
	if(~reset) begin 
		if(out != out_expected) begin 
			$display("Error: inputs = %b", select,in1,in2);
			$display(" outputs = %b (%b expected)",out,out_expected);
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
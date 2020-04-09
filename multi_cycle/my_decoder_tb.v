module my_decoder_tb;

reg clk,reset;
reg [1:0]in;
reg [3:0] out_expected;
wire [3:0] out;
reg [31:0] vectornum, errors;
reg [5:0] testvectors[100:0];
my_decoder dut(.in(in) , .out(out));

always begin
 clk <= 1; #5 ;  clk<= 0; #5 ;
end

initial 
	begin
		$readmemb("decodervectors.tv",testvectors);
		vectornum=0; errors=0;
		reset=1; #30 ; reset=0;
	end
	
always @(posedge clk)
	begin 
		#1; {in,out_expected} = testvectors[vectornum];
	end
	
always @(negedge clk)
	begin 
	if(~reset) begin 
		if(out != out_expected) begin 
			$display("Error: inputs = %b", in);
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
module shift_reg_tb;
parameter width = 2;
reg clk,reset,reset_sim,ps,rl,serial_right,serial_left;
reg [width-1:0] DATA;
reg [width-1:0] out_expected;
wire [width-1:0] out;
reg [31:0] vectornum, errors;
reg [8:0] testvectors[100:0];
shift_reg #(width) dut(.clk(clk), .serial_left(serial_left), .serial_right(serial_right),.DATA(DATA),.reset(reset),.ps(ps),.rl(rl),.out(out));

always begin
 clk <= 1; #5 ;  clk<= 0; #5 ;
end

initial 
	begin
		$readmemb("reg3.tv",testvectors);
		vectornum=0; errors=0;
		reset_sim=1; #30 ; reset_sim=0;
	end
	
always @(posedge clk)
	begin 
		#1; {serial_left,serial_right,DATA,reset,ps,rl,out_expected} = testvectors[vectornum];
	end
	
always @(negedge clk)
	begin 
	if(~reset_sim) begin 
		if(out != out_expected) begin 
			$display("Error: inputs = %b", DATA);
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
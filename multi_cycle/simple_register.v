module simple_register #(parameter W=4)(clk,DATA,reset,out);

	input clk,reset;
	input [W-1:0] DATA;
	output reg [W-1:0] out;

	always @(posedge clk)
		begin 
			if(reset) begin 
				out <= 'd0;
			end else begin 
				out <= DATA;
			end
		end 
endmodule 
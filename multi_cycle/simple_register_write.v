module simple_register_write #(parameter W=4)(clk,DATA,reset,write,out);

	input clk,reset,write;
	input [W-1:0] DATA;
	output reg [W-1:0] out;
	reg [W-1:0] prev_data; // to retain the value
	always @(posedge clk)
		begin 
			if(reset) begin 
				out <= 'd0;
				prev_data <= 'd0;
			end else begin
				if(write) begin
					out <= DATA;
					prev_data <= DATA;
				end else begin
					out <= prev_data;
				end
				
			end
		end 
endmodule 
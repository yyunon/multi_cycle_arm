module shift_reg #(parameter W=4)(clk,serial_left,serial_right,DATA,ps,rl,reset,out);
	
	input clk,reset,ps,rl,serial_left,serial_right;
	input [W-1:0] DATA;
	output reg [W-1:0] out;
	
	always @(posedge clk)
		begin 
			if(reset) begin 
				out <= 'd0;
				
			end else begin 
				if(ps) begin
					out <= DATA;
					
					end 
				else begin 
					if(rl) begin 
						out <= {serial_left,out[W-1:1]};
					end else begin 
						out <= {out[W-2:0],serial_right};
					end 
				
				end
			end
		end 
endmodule 
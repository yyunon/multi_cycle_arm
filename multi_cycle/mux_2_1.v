module mux_2_1 #(parameter W=4)(select,in1,in2,out);
	input select;
	input [W-1:0] in1,in2;
	output reg [W-1:0] out;
	always @(in1 or in2 or select) begin
		case(select)
			1'b0: out <= in1;
			1'b1: out <= in2;
		endcase
	end
endmodule 
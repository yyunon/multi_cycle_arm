module mux_4_1 #(parameter W=4)(select,in1,in2,in3,in4,out);
	input [1:0] select;
	input [W-1:0] in1,in2,in3,in4;
	output reg [W-1:0] out;
	always @(in1 or in2 or in3 or in4 or select) begin
		case(select)
			2'b00: out <= in1;
			2'b01: out <= in2;
			2'b10: out <= in3;
			2'b11: out <= in4;
		endcase
	end
endmodule
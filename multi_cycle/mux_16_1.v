module mux_16_1 #(parameter W=32)(select,in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16,out);
	input [3:0] select;
	input [W-1:0] in1,in2,in3,in4,in5,in6,in7,in8,in9,in10,in11,in12,in13,in14,in15,in16;
	output reg [W-1:0] out;
	always @(in1 or in2 or in3 or in4 or in5 or in6 or in7 or in8 or in9 or in10 or in11 or in12 or in13 or in14 or in15 or in16 or select) begin
		case(select)
			4'b0000: out <= in1;
			4'b0001: out <= in2;
			4'b0010: out <= in3;
			4'b0011: out <= in4;
			4'b0100: out <= in5;
			4'b0101: out <= in6;
			4'b0110: out <= in7;
			4'b0111: out <= in8;
			4'b1000: out <= in9;
			4'b1001: out <= in10;
			4'b1010: out <= in11;
			4'b1011: out <= in12;
			4'b1100: out <= in13;
			4'b1101: out <= in14;
			4'b1110: out <= in15;
			4'b1111: out <= in16;
		endcase
	end
endmodule
module my_decoder8(
	input [2:0] in,output reg [7:0] out
);

	always @(in)
	begin
		case (in )
		4'b000: out = 8'b00000001;
		4'b001: out = 8'b00000010;
		4'b010: out = 8'b00000100;
		4'b011: out = 8'b00001000;
		4'b100: out = 8'b00010000;
		4'b101: out = 8'b00100000;
		4'b110: out = 8'b01000000;
		4'b111: out = 8'b10000000;
		default:out = 8'bxxxxxxxx;
 endcase
	end

endmodule

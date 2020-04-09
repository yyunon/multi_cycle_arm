module ALU #(parameter W=4)(ALU_Control,A,B,out,CO,OVF,Z,N);
	input [2:0] ALU_Control;
	input [W-1:0] A,B;
	output reg [W-1:0] out;
	output CO,OVF,Z,N;
	assign CO = ~ALU_Control[2]  & (A[W-1] ^ B[W-1] & ~out[W-1] | A[W-1] & B[W-1]); // check if operation is arithmetic and carry generated, found from carry adder circuitry
	assign OVF = ~ALU_Control[2] & ~((ALU_Control[0] | ALU_Control[1]) ^ A[W-1] ^ B[W-1]) & ((ALU_Control[0] & (A[W-1] ^ out[W-1])) | (~ALU_Control[0] & (B[W-1] ^ out[W-1])) ); // check overflow,descriptions in report
	assign N = out[W-1];
	assign Z = ~|out;
	always @(ALU_Control or A or B) begin
		case(ALU_Control)
			3'b000: out <= A + B;
			3'b001: out <= A - B;
			3'b010: out <= B - A;
			3'b011: out <= A & ~B;
			3'b100: out <= A & B;
			3'b101: out <= A | B;
			3'b110: out <= A ^ B;
			3'b111: out <= ~(A^B);	
		endcase
	end
endmodule

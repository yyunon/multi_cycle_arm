module shifter #(parameter W=8) (shift,A,B,out);

input [2:0] shift;
input [W-1:0] A;
input [2:0] B;
output reg [W-1:0] out;
always @(*)
	begin 
		case(shift)
			3'b000:begin
						out <= A;
					end 
			3'b001:begin
						out = {A[W-2:0], A[W-1]};
					end 
			3'b010:begin
						out = {A[0], A[W-1:1]};				
					end 
			3'b011:begin
						out <= A << B;
					end
			3'b100:begin
						if(A[W-1] == 0) begin
							out <= A >> B;
						end else begin 
							out <= $signed(A )>>> B;
						end
					end 
			3'b101:begin
						out <= A >> B;
					end 	
		endcase 
	
	end 

endmodule 
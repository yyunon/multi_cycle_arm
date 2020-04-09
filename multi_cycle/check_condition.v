module check_condition(input [3:0] Cond, 
						input [3:0] Flags, 
						output reg CondEx);
						
	wire N, Z, CO, OVF, ge;	
	assign {N, Z, CO, OVF} = Flags;	
	assign ge = (N == OVF);
	
	always @(*)
		begin // This table is taken from Harris & Harris coursebook
			case(Cond)
				4'b0000: CondEx = Z; // EQ 
				4'b0001: CondEx = ~Z; // NE 
				4'b0010: CondEx = CO; // CS 
				4'b0011: CondEx = ~CO; // CC 
				4'b0100: CondEx = N; // MI 
				4'b0101: CondEx = ~N; // PL 
				4'b0110: CondEx = OVF; // VS 
				4'b0111: CondEx = ~OVF; // VC 
				4'b1000: CondEx = CO& ~Z; // HI 
				4'b1001: CondEx = ~(CO& ~Z); // LS 
				4'b1010: CondEx = ge; // GE 
				4'b1011: CondEx = ~ge; // LT 
				4'b1100: CondEx = ~Z& ge; // GT 
				4'b1101: CondEx = ~(~Z& ge); // LE 
				4'b1110: CondEx = 1'b1; // Always 
				default: CondEx = 1'bx; // undefined
		
			endcase 
		end 
endmodule 

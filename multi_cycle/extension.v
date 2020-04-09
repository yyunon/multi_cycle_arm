module extension #(parameter W= 32)(instr,immsrc,extimm);

	input [17:0] instr;
	input [1:0] immsrc;
	output reg [7:0] extimm;
	 
	always @(*)
		begin 
			case(immsrc)
			
				2'b00: begin 
							extimm = {instr[7:0]};
						 end 
				2'b01: begin 
							extimm = {instr[7:0]};
						 end 
				2'b10: begin
							extimm = {instr[17], instr[4:0],2'b00}; // first five bits of instr
						 end 
				default: begin 
							extimm = 8'bx;
							end 
			endcase 
		end 

endmodule 
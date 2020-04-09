module decoder_cond(input [1:0] Op, input [5:0] Funct, input [3:0] Rd,
								output reg [1:0] FlagW, output PCS, RegW, MemW, 
								output  MemtoReg, ALUSrc, 
								output  [1:0] ImmSrc, RegSrc,
								output reg [2:0] ALUControl,
								output reg [1:0] shift,output reg NoWrite);

	reg [9:0] controls;
	wire Branch,ALU_op;
	
	// Main decoder
	always @(*)
		begin 
			case(Op)
				
				
				2'b00: begin
						if(Funct[5]) begin 
								controls = 10'b0000101001; // data op imm
							end else begin 
								controls = 10'b0000001001; // // data op reg
							end 
						end 
						
				2'b01: begin
						if(Funct[0]) begin 
								controls = 10'b0001111000; //ldr
							end else begin 
								controls = 10'b1001110100; // str
							end 
						end 
						
				2'b10: begin 
							controls = 10'b0110100010; // branch
						end
				default: controls = 10'bx;
			
			endcase
		end 
		
	assign {RegSrc,ImmSrc,ALUSrc,MemtoReg,RegW,MemW,Branch,ALU_op} = controls;
		
		// ALU decoder
	always @(*)
		begin 
			if(ALU_op) begin
				case(Funct[4:1])
					4'b0100: begin 
								ALUControl = 3'b000; //add 
								shift = 2'b00;
								NoWrite = 1'b0;
								end
					4'b0010: begin 
								ALUControl = 3'b001; //sub
								shift = 2'b00;
								NoWrite = 1'b0;
								end
					4'b0000: begin 
								ALUControl = 3'b100; //and
								shift = 2'b00;
								NoWrite = 1'b0;
								end 
					4'b1100: begin 
								ALUControl = 3'b101; //orr
								shift = 2'b00;
								NoWrite = 1'b0;
								end
					4'b1101: begin
								ALUControl = 3'bxxx; //LSR
								shift = 2'b01;
								NoWrite = 1'b0;
								end
					4'b1110: begin
								ALUControl = 3'bxxx; //LSL
								shift = 2'b10;
								NoWrite = 1'b0;
								end
					4'b1010: begin 
								ALUControl = 3'b001; //CMP
								shift = 2'b00;
								NoWrite = 1'b1;
								end 
					default: begin
								ALUControl = 3'bxxx; // for other instructions such as LSR LSL
								shift = 2'b00;
								NoWrite = 1'b0;
								end
				endcase
				
				FlagW[1] = Funct[0];
				FlagW[0] = Funct[0] & ((ALUControl == 3'b000) | (ALUControl == 3'b001));
				
			end  else begin 
				FlagW = 2'b00; // do not update the flags
				ALUControl = 3'b000; // for non dp instructions 
			end 
		end 
	// PC logic implementation

	assign PCS = ((Rd == 4'b1111) & RegW) | Branch;
	
endmodule 
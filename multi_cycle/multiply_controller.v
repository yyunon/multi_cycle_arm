module multiply_controller#(parameter W=4)(clk,control,multiplication_control,r0_inputmux_select,operation_mux_select,clr_acc,
														rl_acc,rl_q,ps_acc,clr_g,acc_inputmux_select,r1_inputmux_select,clr_r1,write_r1,
														ps_q,clr_q,serial_left_acc,R0_outputmux_select,q_inputmux_select,clr_r0,write_r0,alu_op);
														
	input clk,control;
	input [1:0] multiplication_control;
	
	
	output reg clr_acc,rl_acc,rl_q,ps_acc,clr_g,acc_inputmux_select,r1_inputmux_select,clr_r1,write_r1,
														ps_q,clr_q,serial_left_acc,R0_outputmux_select,q_inputmux_select,clr_r0,write_r0;
														
	output reg [1:0] r0_inputmux_select,operation_mux_select;
	output reg [2:0] alu_op;

	integer count ; 
	

	parameter [2:0] start_mul = 0 ,state_mid_mul = 1, state_mul1 = 2, state_mul2 = 3, state_mul3 = 4,end_mul = 5;
	
	reg [2:0] CS_mul;
	
	
	always @(CS_mul)
	begin
		case(CS_mul)
			start_mul: begin 
					
					count <= 4;
					clr_acc <= 1'b1;
					clr_g <= 1'b1;
					acc_inputmux_select <= 1'b1;
					ps_q <= 1'b1;
					clr_q <= 1'b0;
					serial_left_acc <= 1'b0;
					R0_outputmux_select <= 1'b0;
					q_inputmux_select <= 1'b1;
			end 
			state_mid_mul: begin 
					count <= count -1;
					
			end 
			state_mul1: begin 
					operation_mux_select <= 2'b10;
					acc_inputmux_select <= 1'b0;
					clr_acc <= 1'b0;
					ps_acc <= 1'b1;
					alu_op <= 3'b000;
				
			end 
			state_mul2: begin 
					operation_mux_select <= 2'b10;
					alu_op <= 3'b010;
					acc_inputmux_select <= 1'b0;
					clr_acc<= 1'b0;
					ps_acc <= 1'b1;
					
			end 
			state_mul3: begin
					ps_acc<= 1'b0;
					ps_q <= 1'b0;
					rl_acc <= 1'b1;
					rl_q <= 1'b1;
				
			end
			end_mul: begin 
					//operation_mux_select = 2'b11;
					r0_inputmux_select <= 2'b11;
					clr_r0<=0;
					write_r0 <= 1'b1;
					r1_inputmux_select <= 1'b0;
					clr_r1<=0;
					write_r1 <= 1'b1;
			end
		endcase
	end
							
		always @(posedge clk) begin 
			case(CS_mul)
			start_mul: begin 
					CS_mul <= state_mid_mul;
					
			end 
			state_mid_mul: begin 
					if(multiplication_control == 2'b00 && multiplication_control == 2'b11) begin 
						CS_mul<= state_mul3;
					end else if(multiplication_control == 2'b01) begin 
						CS_mul <= state_mul1;
					end else if(multiplication_control == 2'b10) begin 
						CS_mul <= state_mul2;
					end
			end 
			state_mul1: begin 
				CS_mul <= state_mul3;
			end 
			
			state_mul2: begin 
				CS_mul <= state_mul3;
			end 
			state_mul3: begin
				if(count != 0) begin 
					CS_mul <= state_mid_mul;
				end else begin 
					CS_mul <= end_mul;
				end 
			end
			end_mul: begin 
					CS_mul <= start_mul;
			end 
			endcase 
			
		 end
		

endmodule 
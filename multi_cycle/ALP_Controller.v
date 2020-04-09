module ALP_Controller #(parameter W=4) (clk,DATA_IN,OP,LOAD,COMP,CLR,multiplication_control,r0,r1,
														ERR,
														operation_mux_select,alu_op,
														r1_inputmux_select,q_inputmux_select,acc_inputmux_select,
														rl_q,ps_q,ps_acc,rl_acc,
														clr_acc,clr_q,clr_r0,clr_r1,
														write_r0,write_r1,r0_inputmux_select,
														clr_g,write_g,serial_left_acc,R0_outputmux_select,
														CS_mul,CS_mul_new);
	
	input clk,r0,r1;
	input [W-1:0] DATA_IN;
	input [2:0] OP;
	input LOAD,COMP,CLR;
	input [1:0] multiplication_control;
	
	output  [2:0] alu_op;
	output  [1:0] operation_mux_select;
	output  [1:0] r0_inputmux_select;
	output  r1_inputmux_select,q_inputmux_select,acc_inputmux_select,rl_q,ps_q,ps_acc,rl_acc;
	output  clr_acc,clr_q,clr_r0,clr_r1,write_r0,write_r1,ERR,serial_left_acc,R0_outputmux_select,clr_g,write_g;
	
	
	reg [2:0] alu_opm;
	reg [1:0] operation_mux_selectm;
	reg [1:0] r0_inputmux_selectm;
	reg r1_inputmux_selectm,q_inputmux_selectm,acc_inputmux_selectm,rl_qm,ps_qm,ps_accm,rl_accm;
	reg clr_accm,clr_qm,clr_r0m,clr_r1m,write_r0m,write_r1m,ERRm,serial_left_accm,R0_outputmux_selectm,clr_gm,write_gm;

	integer count ; 

	
	parameter [2:0] start_mul = 0 ,state_mid_mul = 1, state_mul1 = 2, state_mul2 = 3, state_mul3 = 4,end_mul = 5;

	
	output reg [2:0] CS_mul,CS_mul_new;
	
	initial begin
	
		clr_accm=0;
		clr_qm=0;
		ps_qm = 0;
		clr_r0m=0;
		clr_r1m=0;
		write_r0m=0;
		write_r1m=0;
	end 
	
	always @(LOAD or COMP or CLR or CS_mul)
		begin 
			
			if(LOAD) begin 
				operation_mux_selectm = 2'b01;
				alu_opm = 3'b000;
				write_r0m = 1'b1;
				write_r1m = 1'b1;
				r1_inputmux_selectm = 1'b1;
				r0_inputmux_selectm = 2'b00;
				clr_r0m=0;
				clr_r1m=0;
				R0_outputmux_selectm = 1'b0;
				rl_accm = 0;
			end 
			else if(COMP) begin 
				
				if(OP ==3'b000) begin
							alu_opm <= 3'b000;
							operation_mux_selectm <= 2'b00;
							write_r0m <= 1'b1;
							clr_r1m <= 1'b1;
							clr_r0m<=0;
							r1_inputmux_selectm <= 1'b1;
							r0_inputmux_selectm <= 2'b01;
							R0_outputmux_selectm <= 1'b0;
							ERRm <= 1'b1;
							end
				else if(OP==3'b001) begin 
							alu_opm <= 3'b001;
							operation_mux_selectm <= 2'b00;
							write_r0m  <= 1'b1;
							clr_r1m <= 1'b1;
							clr_r0m<=0;
							r1_inputmux_selectm <= 1'b1;
							r0_inputmux_selectm <= 2'b01;
							R0_outputmux_selectm <= 1'b0;
							ERRm <= 1'b1;
						  end
				else if(OP==3'b010) begin 
							
							case(CS_mul)
								start_mul: begin 
										write_r0m = 0;
										write_r1m = 0;
										count = 4;
										clr_accm = 1'b1;
										clr_gm = 1'b1;
										ps_qm = 1'b1;
										clr_qm = 1'b0;
										R0_outputmux_selectm = 1'b0;
										q_inputmux_selectm = 1'b1;
										CS_mul_new = state_mid_mul;
								end
								
								state_mid_mul: begin 
										
										if(multiplication_control == 2'b00 || multiplication_control == 2'b11) begin 
										acc_inputmux_selectm = 1'b1;
											clr_accm = 1'b0;
											ps_accm = 1'b1;
											q_inputmux_selectm = 1'b0;
											clr_qm = 1'b0;
											ps_qm = 1'b1;
											CS_mul_new = state_mul3;
										end else if(multiplication_control == 2'b01) begin 
											acc_inputmux_selectm = 1'b1;
											clr_accm = 1'b0;
											ps_accm = 1'b1;
											q_inputmux_selectm = 1'b0;
											clr_qm = 1'b0;
											ps_qm = 1'b1;
											CS_mul_new = state_mul1;
										end else if(multiplication_control == 2'b10) begin
											acc_inputmux_selectm = 1'b1;	
											clr_accm = 1'b0;
											ps_accm = 1'b1;
											q_inputmux_selectm = 1'b0;
											clr_qm = 1'b0;
											ps_qm = 1'b1;
											CS_mul_new = state_mul2;
										end
										
								end 
								
								state_mul1: begin 
										write_r0m = 0;
										write_r1m = 0;
										operation_mux_selectm = 2'b10;
										acc_inputmux_selectm = 1'b0;
										q_inputmux_selectm = 1'b0;
										clr_accm = 1'b0;
										ps_accm = 1'b1;
										clr_qm = 1'b0;
										ps_qm = 1'b1;
										alu_opm = 3'b000;
										CS_mul_new = state_mul3;
									
								end 
								
								state_mul2: begin 
										write_r0m = 0;
										write_r1m = 0;
										operation_mux_selectm = 2'b10;
										alu_opm = 3'b010;
										q_inputmux_selectm = 1'b0;
										acc_inputmux_selectm = 1'b0;
										clr_accm= 1'b0;
										ps_accm= 1'b1;
										clr_qm = 1'b0;
										ps_qm = 1'b1;
										CS_mul_new = state_mul3;
								end
								
								state_mul3: begin
										write_r0m = 0;
										write_r1m = 0;
										serial_left_accm = 1'b0;
										ps_accm= 1'b0;
										ps_qm = 1'b0;
										rl_accm = 1'b1;
										rl_qm = 1'b1;
										clr_gm = 1'b0;
										write_gm = 1'b1;
										count = count -1;
										if(count == 0) begin 
											//acc_inputmux_selectm = 1'b1;
											//clr_accm = 1'b0;
											//ps_accm = 1'b1;
											//q_inputmux_selectm = 1'b0;
											//clr_qm = 1'b0;
											//ps_qm = 1'b1;
											CS_mul_new =end_mul;
										end else begin 
											CS_mul_new = state_mid_mul;
										end 
									
								end
								
								end_mul: begin 
										//operation_mux_select = 2'b11;
										acc_inputmux_selectm = 1'b1;
											clr_accm = 1'b0;
											ps_accm = 1'b1;
											q_inputmux_selectm = 1'b0;
											clr_qm = 1'b0;
											ps_qm = 1'b1;
										r0_inputmux_selectm = 2'b11;
										clr_r0m =0;
										write_r0m = 1'b1;
										r1_inputmux_selectm = 1'b0;
										clr_r1m =0;
										write_r1m = 1'b1;
										
								end
							endcase
							
						  end
				else if(OP==3'b011) begin 
						
							if(r1) begin 
								R0_outputmux_selectm = 1'b1;
								alu_opm = 3'b001;
								operation_mux_selectm = 2'b00;
								r1_inputmux_selectm = 1'b1;
								clr_r1m =0;
								write_r1m = 1'b1;
								clr_r0m =0;
								write_r0m = 1'b0;
								
							end 
							
				
							if(r0) begin 
								R0_outputmux_selectm = 1'b0;
								alu_opm = 3'b010;
								operation_mux_selectm = 2'b01;
								clr_r0m =0;
								write_r0m = 1'b1;
								r0_inputmux_selectm = 2'b01;
								
						
							end
						  end
				else if(OP==3'b100) begin 
							alu_opm <= 3'b100;
							operation_mux_selectm <= 2'b00;
							write_r0m <= 1'b1;
							clr_r1m <= 1'b1;
							clr_r0m<=0;
							r1_inputmux_selectm <= 1'b1;
							r0_inputmux_selectm <= 2'b01;
							R0_outputmux_selectm <= 1'b0;
						  end
				else if(OP==3'b101) begin 
							alu_opm <= 3'b101;
							operation_mux_selectm <= 2'b00;
							write_r0m <= 1'b1;
							clr_r1m <= 1'b1;
							clr_r0m <=0;
							r1_inputmux_selectm <= 1'b1;
							r0_inputmux_selectm  <= 2'b01;
							R0_outputmux_selectm <= 1'b0;
						  end
				else if(OP==3'b110) begin 
							alu_opm <= 3'b110;
							operation_mux_selectm <= 2'b00;
							write_r0m <= 1'b1;
							clr_r1m <= 1'b1;
							clr_r0m<=0;
							r1_inputmux_selectm <= 1'b1;
							r0_inputmux_selectm <= 2'b01;
							R0_outputmux_selectm <= 1'b0;
						  end
				else if(OP==3'b111) begin 
							alu_opm <= 3'b011;
							operation_mux_selectm <= 2'b00;
							write_r0m <= 1'b1;
							clr_r1m <= 1'b1;
							clr_r0m <=0;
							r1_inputmux_selectm <= 1'b1;
							r0_inputmux_selectm <= 2'b01;
							R0_outputmux_selectm <= 1'b0;
						  end
				
			end
			else if(CLR) begin
				clr_r0m <= 1'b1;
				clr_r1m <= 1'b1;
				clr_accm <= 1'b1;
				clr_qm <=1'b1;
			end 
			else begin 
				write_r0m <= 1'b0;
				write_r1m <= 1'b0;
				clr_accm=0;
				clr_qm=0;
				ps_qm = 0;
				clr_r0m=0;
				clr_r1m=0;		
			end 
		end 
		
	always @(posedge clk) begin 
	if(LOAD) begin
		CS_mul <= start_mul;
	end else begin 
		if(COMP && (OP==3'b010) ) begin
			CS_mul <= CS_mul_new;

		end
	end 
	end
	

		
		assign alu_op = alu_opm;
		assign operation_mux_select =operation_mux_selectm;
		assign r0_inputmux_select = r0_inputmux_selectm;
		assign r1_inputmux_select = r1_inputmux_selectm;
		assign q_inputmux_select =q_inputmux_selectm;
		assign acc_inputmux_select=acc_inputmux_selectm;
		assign rl_q=rl_qm;
		assign ps_q=ps_qm;
		assign ps_acc=ps_accm;
		assign rl_acc=rl_accm;
		assign clr_acc=clr_accm;
		assign clr_q=clr_qm;
		assign clr_r0=clr_r0m;
		assign clr_r1=clr_r1m;
		assign write_r0=write_r0m;
		assign write_r1=write_r1m;
		assign ERR=ERRm;
		assign serial_left_acc=serial_left_accm;
		assign R0_outputmux_select=R0_outputmux_selectm;
		assign clr_g=clr_gm;
		assign write_g=write_gm;
endmodule 

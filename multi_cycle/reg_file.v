module reg_file #(parameter W=8)(clk,DATA_in,DATA_out_1,DATA_out_2,r15,
											adr_dst,adr_src1,adr_src2,
											write_enable,reset);
											
	
	input clk,reset,write_enable;
	input [2:0] adr_dst,adr_src1,adr_src2;
	input [W-1:0] DATA_in,r15;
	output [W-1:0] DATA_out_1;
	output [W-1:0] DATA_out_2;
	
	wire w1,w2,w3,w4,w5,w6,w7,w0;
	wire [7:0] select_dst;
	wire [W-1:0] reg_1_out,reg_2_out,reg_3_out,reg_4_out,reg_5_out,reg_6_out,reg_7_out,reg_8_out,out1,out2;
	
	assign DATA_out_1 = out1;
	assign DATA_out_2 = out2;
	
	assign w0 = write_enable & select_dst[0];
	assign w1 = write_enable & select_dst[1];
	assign w2 = write_enable & select_dst[2];
	assign w3 = write_enable & select_dst[3];
	assign w4 = write_enable & select_dst[4];
	assign w5 = write_enable & select_dst[5];
	assign w6 = write_enable & select_dst[6];
	assign w7 = write_enable & select_dst[7];
	
	
	my_decoder8 dec(.in(adr_dst), .out(select_dst));
	
	mux_8_1 #(W) mux1(.select(adr_src1),.in1(reg_1_out),.in2(reg_2_out),.in3(reg_3_out),.in4(reg_4_out),.in5(reg_5_out),.in6(reg_6_out),.in7(reg_7_out),
							.in8(reg_8_out),.out(out1));
	
	mux_8_1 #(W) mux2(.select(adr_src2),.in1(reg_1_out),.in2(reg_2_out),.in3(reg_3_out),.in4(reg_4_out),.in5(reg_5_out),.in6(reg_6_out),.in7(reg_7_out),
							.in8(reg_8_out),.out(out2));
							
	
	simple_register_write #(W) R1(.clk(clk),.DATA(DATA_in),.reset(reset),.write(w0),.out(reg_1_out));
	
	simple_register_write #(W) R2(.clk(clk),.DATA(DATA_in),.reset(reset),.write(w1),.out(reg_2_out));
	
	simple_register_write #(W) R3(.clk(clk),.DATA(DATA_in),.reset(reset),.write(w2),.out(reg_3_out));
	
	simple_register_write #(W) R4(.clk(clk),.DATA(DATA_in),.reset(reset),.write(w3),.out(reg_4_out));
	
	simple_register_write #(W) R5(.clk(clk),.DATA(DATA_in),.reset(reset),.write(w4),.out(reg_5_out));

	simple_register_write #(W) R6(.clk(clk),.DATA(DATA_in),.reset(reset),.write(w5),.out(reg_6_out));
	
	simple_register_write #(W) LR(.clk(clk),.DATA(DATA_in),.reset(reset),.write(w14),.out(reg_7_out));
	
	simple_register_write #(W) PC(.clk(clk),.DATA(DATA_in),.reset(reset),.write(w15),.out(reg_8_out));
	
endmodule 
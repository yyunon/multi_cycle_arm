module adder #(parameter W = 4)(a,b,out);

input [W-1:0] a,b;
output [W-1:0] out;

assign out = a+b;

endmodule 

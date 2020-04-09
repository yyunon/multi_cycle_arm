module constant_value_generator#(parameter W = 4, constant = 5)(output [W-1:0]value);

	assign value = constant;

endmodule 
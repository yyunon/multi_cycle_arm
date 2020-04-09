module instruction_memory #(parameter W=32)(adr,rd);

input [W-1:0] adr;
output [W-1:0] rd;

reg [W-1:0] mem [1023:0];

initial begin 
	
	$readmemb("boot.tv",mem);
	
end 

assign rd = mem[adr[31:2]];

endmodule 
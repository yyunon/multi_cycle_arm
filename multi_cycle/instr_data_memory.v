module instr_data_memory #(parameter W=26)(clk,we,adr,wd,rd);

input clk,we;
input [7:0] adr;
input [7:0] wd;
output [W-1:0] rd;

reg [W-1:0] mem [63:0];

assign rd = mem[adr[7:2]];

initial begin 
	
	$readmemb("boot.tv",mem);
	
end 

always @(posedge clk) 
	begin 
		if(we) begin
			mem[adr[7:2]] <= wd;
		end
	end 

endmodule 
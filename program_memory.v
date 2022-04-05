module program_memory(
	input  [7:0] 	address,
	output [31:0] 	instruction
);


//instruction memory
reg [31:0] instrmem [255:0];

//initially load it with program instructions
initial
begin
$readmemb("instr.txt", instrmem);
end


endmodule


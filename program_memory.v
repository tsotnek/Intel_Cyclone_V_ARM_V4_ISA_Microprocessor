`timescale 1ns / 1ps
module program_memory(
	input 				program_increment,
	input  [7:0]	 	address,
	input  [7:0] 		program_counter,
	output reg [31:0] instruction
);


//instruction memory
reg [31:0] instrmem [255:0];


//initially load program memory it with program instructions from txt file
initial
begin
$readmemb("instr.txt", instrmem);
end

always @ (*)
	begin
		if(program_increment)
			instruction  <= instrmem[program_counter];
	end

endmodule


`timescale 1ns / 1ns
module program_memory(
	input					CLK,
	input 				program_increment,
	input  [7:0] 		program_counter,
	output [31:0] instruction
);


//instruction memory
reg [31:0] instrmem [0:127];
reg [31:0] outinstruction;

//initially load program memory it with program instructions from txt file
initial
begin
outinstruction = 0;
$readmemb("C:\\Users\\tsotn\\Documents\\QUARTUS_Intel_projects_FPGA\\instr.txt", instrmem);
end

assign instruction = outinstruction;

always @ (posedge CLK)
	begin
		if(program_increment)
			outinstruction  <= instrmem[program_counter];
	end

endmodule


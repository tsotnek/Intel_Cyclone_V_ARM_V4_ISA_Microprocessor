`timescale 1ns / 1ps
module main_module(
	input CLK
);






//Program memory
reg [7:0]  program_instruction_address;
wire [31:0] program_instruction;
program_memory program_memory(.address(program_instruction_address), .instruction(program_instruction));
//Initially we have to read programe instructions from .txt file into program memory


endmodule

`timescale 1ns / 1ps
module main_module(
	input CLK
);


//state machine
parameter RESET_STATE  = 2'b00,
			 FETCH_STATE  = 2'b01,
			 DECODE_STATE = 2'b10,
			 EXEC_STATE   = 2'b11;

reg [1:0] opcode;
initial 
begin
opcode<=RESET_STATE;
end


//program counter
reg program_increment_flag;
wire  [7:0] program_counter_reg; 
program_counter program_counter(.CLK(CLK),
										  .increment_flag(program_increment_flag),
										  .program_counter(program_counter_reg));


//Program memory
reg program_signal;
reg [7:0]  program_instruction_address;
wire [31:0] program_instruction;
program_memory program_memory(.program_increment(program_signal), 
										.address(program_instruction_address),
										.program_counter(program_counter_reg),
										.instruction(program_instruction));
//Initially we have to read programe instructions from .txt file into program memory

always @(CLK)
	begin
	if(opcode==EXEC_STATE)
		opcode<=RESET_STATE;
	else
		opcode<=opcode+1;
	end

always @ (*)
	begin
		case(opcode)
		
			RESET_STATE:
				begin
					program_increment_flag<=0;
					program_signal<=0;

				end
				
			FETCH_STATE:
				begin
					program_signal<=1;
				end
				
			DECODE_STATE:
				begin
				end
				
			EXEC_STATE:
				begin
					program_increment_flag<=1;
				end
				
		endcase
	end
endmodule

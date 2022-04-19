`timescale 1ns / 1ns
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
wire [31:0] program_instruction;
program_memory program_memory(.CLK(CLK),
										.program_increment(program_signal), 
										.program_counter(program_counter_reg),
										.instruction(program_instruction));
//Initially we have to read programe instructions from .txt file into program memory

always @(posedge CLK)
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
					program_increment_flag<=1;
				end
				
			DECODE_STATE:
				begin
					program_increment_flag<=0;
					program_signal<=0;
				end
				
			EXEC_STATE:
				begin
					
				end
				
		endcase
	end
endmodule

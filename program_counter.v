`timescale 1ns / 1ns

module program_counter(
	input CLK,
	input increment_flag,
	output reg [7:0] program_counter
);

initial
begin
program_counter <= 0;
end

always @ (posedge CLK)
	begin
		if(increment_flag)
			program_counter <= program_counter + 1;
	end



endmodule
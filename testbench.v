`timescale 1ns / 1ns
module testbench();
	
	reg CLK;

de0_nano_soc_baseline de0_nano_soc_baseline(
	.FPGA_CLK_50(CLK)
	);
	

always #5 CLK = ~CLK;	

initial
	begin
	#10
	CLK=0;
	end
		
		
endmodule


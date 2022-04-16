module testbench();
	
	reg CLK;

de0_nano_soc_baseline de0_nano_soc_baseline(
	.CLK(CLK)
	);
	

always #5 CLK = ~CLK;	

initial
	begin
	end
		
		
endmodule


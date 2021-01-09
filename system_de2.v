module system_de2(
	input CLOCK_50,
	output final
	);
	
	wire mod1tomod2;
	wire mod2tomod3;
	
	mod1 mymod1(
		.clk(CLOCK_50),
		.mod1_out(mod1tomod2)
		);
	
	mod2 mymod2(
		.clk(CLOCK_50),
		.mod2_in(mod1tomod2),
		.mod2_out(mod2tomod3)
		);
	mod3 mymod3(
		.clk(CLOCK_50),
		.mod3_in(mod2tomod3),
		.mod3_out(final)
		);
	
endmodule
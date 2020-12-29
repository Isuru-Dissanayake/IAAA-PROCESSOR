module system_de2(
	input [1:0]SW,
	output [1:0]LEDR,
	output [0:0]LEDG
	);
	
	assign LEDR = SW;
	
	system system1 (
		.a (SW[0]),
		.b (SW[1]),
		.out (LEDG)
	);
	
endmodule
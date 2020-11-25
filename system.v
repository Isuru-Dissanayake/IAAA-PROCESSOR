module system(
	input a,
	input b,
	output out
	);
	
	wire ANDtoInverter;
	
	myAND AND1(
		.a(a),
		.b(b),
		.out(ANDtoInverter)
		);
	
	myInverter Inverter1(
		.a(ANDtoInverter),
		.out(out)
		);
	
endmodule
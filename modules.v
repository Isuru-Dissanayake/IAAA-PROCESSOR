module mod1(
	input clk,
	output reg[4:0] mod1_out
	);
	initial mod1_out = 4'b0001;
	always @(posedge clk)
		begin
		mod1_out <= mod1_out + 1;
		end
endmodule

module mod2(
	input clk,
	input [4:0] mod2_in,
	output reg[4:0] mod2_out
	);
	always @(posedge clk)
		begin
		mod2_out <= mod2_in;
		end
endmodule

module mod3(
	input clk,
	input [4:0] mod3_in,
	output reg[4:0] mod3_out
	);
	always @(posedge clk)
		begin
		mod3_out <= mod3_in;
		end
endmodule


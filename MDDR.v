// input = 10101
// input = 11111


module MDDR(
input clock,
input [15:0] DataOut,
input [19:0] WRDec_out, // wr_dec eka bit 20i
input [19:0] R_Dec,     // wr_dec eka bit 19i
input [15:0] A_bus,     // bit 16i
output reg [15:0] MDDR_Out);

always @DataOut

begin
	if
		MDDR_Out <= DataOut;
		
	else if:

end

endmodule
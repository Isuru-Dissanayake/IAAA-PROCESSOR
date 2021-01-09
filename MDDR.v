module MDDR(
input clock,
input [15:0] DataOut,
input [19:0] WRDec_out,     // wr_dec eka bit 20i
input [18:0] RDec_out,     // wr_dec eka bit 19i
input [15:0] A_bus,         // bit 16i
output reg [15:0] MDDR);

always @DataOut

begin

	if (WRDec_out = 20'b00000000000000000010 || 20'b11111111111111111111 )
		MDDR <= A_bus;
		
	else if(RDec_out = 20'b0000000000000000001 || 20'b1111111111111111111 )
		MDDR <= 16'b0000000000000000;
	
end

endmodul
module MDDR(
input clock,
input [19:0] WRDec_out,     // wr_dec eka bit 20i
input [18:0] RDec_out,     // wr_dec eka bit 19i
input [15:0] A_bus,         // bit 16i
input [15:0] MDDR_in_data,

output reg [15:0] MDDR_out_core,
output reg [15:0] MDDR_out_data);

always @(posedge clock) 
begin

	if (WRDec_out == 20'b00000000000000000010 || WRDec_out ==20'b11111111111111111111 )
		//MDDR_out_core <= A_bus;
		MDDR_out_data <= A_bus;
		
	else if(RDec_out == 20'b0000000000000000001 || RDec_out ==20'b1111111111111111111 )
		MDDR_out_data <= 16'b0000000000000000;
		//MDDR_out_core <= 16'b0000000000000000;
	
	
end

always @(MDDR_in_data)
begin
	MDDR_out_core <= MDDR_in_data;
end 

endmodule
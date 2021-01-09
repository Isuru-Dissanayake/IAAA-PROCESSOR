module MIDR( 
input clock,
input [15:0] InstrOut,
output reg [15:0] MIDR_Out); 

always @InstrOut
begin
MIDR_Out <= InstrOut;
end


endmodule
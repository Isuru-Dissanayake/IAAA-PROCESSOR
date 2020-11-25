module RG1( 
input [15:0] MIDR_Out , 
output reg [4:0] RG1_out); 
 
always @(MIDR_Out)
begin
RG1_out <= MIDR_Out[8:4];
end

endmodule 
 
 
module RG2( 
input [15:0] MIDR_Out , 
output reg [4:0] RG1_out); 
 
always @(MIDR_Out)
begin
	RG1_out <= MIDR_Out[12:9];
end

 
endmodule 
//module RG1( 
//input [15:0] MIDR_Out , 
//output reg [4:0] RG1_out); 
// 
//always @(MIDR_Out)
//begin
//RG1_out <= MIDR_Out[8:4];
//end
//
//endmodule 
// 
// 
//module RG2( 
//input [15:0] MIDR_Out , 
//output reg [4:0] RG2_out); 
// 
//always @(MIDR_Out)
//begin
//	RG2_out <= MIDR_Out[12:9];
//end
//
// 
//endmodule 

module RG1( 
input [15:0] MIDR_out , 
output reg [4:0] RG1_out); 
 
always @(MIDR_out)
begin
  RG1_out <= MIDR_out[11:7];
end

endmodule 
 
 
module RG2( 
input [15:0] MIDR_out , 
output reg [4:0] RG2_out); 
 
always @(MIDR_out)
begin
  RG2_out <= MIDR_out[6:2];
end

endmodule 
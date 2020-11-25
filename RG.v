module RG1( 
input [4:0] MIDR_Out[5:8] , 
output reg [4:0] RG1_out); 
 
RG1_out <= MIDR_Out[4:8];
 
endmodule 
 
 
module RG2( 
input [4:0] MIDR_Out[9:12] , 
output reg [4:0] RG1_out); 
 
RG1_out <= MIDR_Out[9:12];
 
endmodule 
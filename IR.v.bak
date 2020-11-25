module IR( 
input Clock,
input WRDEC_IR,
input [3:0] MIDR_out[0:3], 
output reg [3:0] IR_out); 

always @(posedge clock) 
	begin 
	if (WRDEC_TR == 1) 
		TR_out <= RG2_out; 
	end  
 
endmodule
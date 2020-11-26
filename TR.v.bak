module TR( 
input Clock,
input WRDEC_TR,
input [4:0] RG2_out, 
output reg [4:0] TR_out); 

always @(posedge clock) 
	begin 
	if (WRDEC_TR == 1) 
		TR_out <= RG2_out; 
	end  
 
endmodule 
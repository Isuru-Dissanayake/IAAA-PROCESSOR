module IR( 
input Clock,
input WRDEC_IR,
input [15:0] MIDR_out, 
output reg [3:0] IR_out); 

always @(posedge Clock) 
	begin 
	if (WRDEC_IR == 1) 
		IR_out <= MIDR_out[3:0]; 
	end  
 
endmodule


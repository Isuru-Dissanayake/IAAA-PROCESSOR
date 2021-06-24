module Register( 
input Clock,
input WRDEC_R,
input RDEC_R,
input [15:0] A_BUS_out, 
output reg [15:0] R_out); 

always @(posedge Clock) 
	begin 
	if (WRDEC_R == 1) 
		R_out <= A_BUS_out; 
	else if (RDEC_R == 1)
		R_out <= 16'd0;
	
	end  
 
endmodule
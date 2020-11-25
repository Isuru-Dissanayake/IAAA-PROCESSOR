module Register( 
input Clock,
input WRDEC_R,
input RDEC_R,
input [15:0] A_BUS_out, 
output reg [15:0] R_out); 

always @(posedge clock) 
	begin 
	if (WRDEC_AR == 1) 
		R_out <= A_BUS_out; 
	if (RDEC_AR == 1)
		R_out <= 16'd0;
	
	end  
 
endmodule
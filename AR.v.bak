module AR( 
input clock,
input WRDEC_AR,
input RDEC_AR,
input [15:0] A_BUS_out, 
output reg [15:0] AR_out); 

always @(posedge clock) 
	
	begin
	
	if (WRDEC_AR == 1) 
		AR_out <= A_BUS_out; 
	
	if (RDEC_AR == 1)
		AR_out <= 16'd0;
	
	end  
 
endmodule
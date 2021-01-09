//`timescale 1ns/1ns
module AR( 
input Clock,
input [19:0] WRDec_out,
input [18:0] RDec_out,
input [15:0] A_BUS_out, 
output reg [15:0] AR_out,
output reg [15:0] AR_output); 

  
  always @(posedge Clock) 
	
	begin
	
      if (WRDec_out == 20'b00000000000000000100 | WRDec_out == 20'b11111111111111111111) 
		AR_out <= A_BUS_out; 
	
      if (RDec_out == 19'b0000000000000000010 | RDec_out==19'b1111111111111111111 )
		AR_out <= 16'd0;
	
	end  
 
 always @ (AR_out)
 begin
	AR_output<= AR_out;
 end
endmodule
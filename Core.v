module TR( 
	input Clock,
  	input [19:0] WRDec_out,
	input [4:0] RG2_out,  
  	output reg [4:0] TR_out);
  
always @(posedge Clock) 
	begin 
      if (WRDec_out == 20'b00001000000000000000) 
		TR_out <= RG2_out; 
	end  
  
endmodule

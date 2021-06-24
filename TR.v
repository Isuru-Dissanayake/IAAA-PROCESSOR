module TR( 
	input Clock,
  	input [19:0] WRDec_out,
	input [4:0] RG2_out,  
	input RDEC_TR,
  	output reg [4:0] TR_out);
  
always @(posedge Clock) 
	begin 
      if (WRDec_out == 20'b00000000000000010000) 
		TR_out <= RG2_out; 
		if (RDEC_TR ==1)
		TR_out <= 5'd0; 
	end  
  
endmodule

module PC( 
input Clock,
input [15:0] A_BUS_out, 
input [19:0] WRDec_out,
input [18:0] RDec_out,
input pcd,

output reg [15:0] PC_out); 

always @(posedge Clock)
    begin
		
      if (WRDec_out == 20'b00000000000000001000 | WRDec_out == 20'b11111111111111111111) 
		PC_out <= A_BUS_out; 
	
      if (RDec_out == 19'b0000000000000000100 | RDec_out==19'b1111111111111111111 )
		PC_out <= 16'd0;
		
		if (pcd==1)
		PC_out<= PC_out+16'b0000000000000001; 
		
    end
 
endmodule 





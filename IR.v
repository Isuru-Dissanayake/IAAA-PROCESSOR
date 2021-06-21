//module IR( 
//	input Clock,
//  	input [19:0] WRDec_out,
//	input [15:0] MIDR_out, 
//	output reg [3:0] IR_out); 
//
//always @(posedge Clock) 
//	begin 
//      if (WRDec_out == 20'b10000000000000000000 || WRDec_out == 20'b11111111111111111111) 
//		IR_out <= MIDR_out[3:0]; 
//	end  
// 
//endmodule

module IR( 
	input Clock,
  	input [19:0] WRDec_out,
	input [15:0] MIDR_out, 
	output reg [3:0] IR_out); 

always @(posedge Clock) 
	begin 
      if (WRDec_out == 20'b10000000000000000000 || WRDec_out == 20'b11111111111111111111) 
        IR_out <= MIDR_out[15:12]; 
	end  
 
endmodule
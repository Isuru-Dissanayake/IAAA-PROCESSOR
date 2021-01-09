//`timescale 1ns/1ns

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

module ALU(

input Clock,
input [15:0] In_1, // DATA PATH A(PRIMARY)
input [15:0] In_2, // DATA PATH B
input [3:0] ALUOp,
output reg [15:0] ALUOut,
output reg[0:0] Z = 0,
output reg[0:0] Y = 0);


  always @(posedge Clock)
begin


  if(ALUOp == 4'd1)  //ADD
	ALUOut <= In_1 + In_2;

  else if(ALUOp == 4'd2) //ADD1
	ALUOut <= In_1 + 16'b0000000000000001;//1;
	
  else if(ALUOp == 4'd3)  // SUB
	begin
	if(In_1 == In_2)
      begin
		Z<=1'b1;
      	ALUOut <= In_1 - In_2;
      end
	else if(In_1 >> In_2)
		Y<=1'b1;
	else
		ALUOut <= In_1 - In_2;
	end
	
  else if(ALUOp == 4'd4) // SUB1
	ALUOut <= In_1 - 16'b0000000000000001;//1;
  
  else if(ALUOp == 4'd5) //MUL
	ALUOut <= In_1 * In_2;

  // else if(ALUop == 4d'6) // ROOF
// 	ALUOut <= 

  else if(ALUOp == 4'd7) // FLOOR
	ALUOut <= In_1 / In_2;



  else if(ALUOp == 4'd8) // MOD
	ALUOut <= In_1 % In_2;

end

endmodule

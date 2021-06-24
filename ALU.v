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
	begin
	ALUOut <= In_1 + In_2;
	Z<=1'b0;
	Y<=1'b0;
	end
	
	
  else if(ALUOp == 4'd2) //ADD1
	begin
	ALUOut <= In_1 + 16'b0000000000000001;//1;
	Z<=1'b0;
	Y<=1'b0;
	end
	
  else if(ALUOp == 4'd3)  // SUB
	begin
	
	if(In_1 == In_2)
      begin
		Z<=1'b1;
		Y<=1'b0;
      ALUOut <= In_1 - In_2;
      end
		
	else if(In_1 < In_2)
	begin
		Y<=1'b1;
		Z<=1'b0;
	end
	
	else
	begin
		ALUOut <= In_1 - In_2;
		Z<=1'b0;
		Y<=1'b0;
	end
	
	end
	
	
  else if(ALUOp == 4'd4) // SUB1
	begin
	ALUOut <= In_1 - 16'b0000000000000001;//1;
	Z<=1'b0;
	Y<=1'b0;
	end
  
  else if(ALUOp == 4'd5) //MUL
	begin
	ALUOut <= In_1 * In_2;
	Z<=1'b0;
	Y<=1'b0;
	end

	else if(ALUOp == 4'd6) // ROOF
	begin 
		if (In_1 % In_2 != 0)
		begin
			ALUOut <= In_1 / In_2 + 16'b0000000000000001;
			Z<=1'b0;
			Y<=1'b0;
		end
		
		else
		begin
			ALUOut <= In_1 / In_2;
			Z<=1'b0;
			Y<=1'b0;
		end
	end
	
	
  else if(ALUOp == 4'd7) // FLOOR
	begin
	ALUOut <= In_1 / In_2;
	Z<=1'b0;
	Y<=1'b0;
	end


  else if(ALUOp == 4'd8) // MOD
	begin
	ALUOut <= In_1 % In_2;
	Z<=1'b0;
	Y<=1'b0;
	end

end

endmodule
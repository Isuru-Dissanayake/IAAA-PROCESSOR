


// ALU - arithmetic and logic unit
// DATA - 16bits
// INSTRUCTIONS 4bits

// 0000 - NOP
// 0001 - END
// 0010 - RST
// 0011 - MOV
// 0100 - LOAD
// 0101 - STO
// 0110 - LDI
// 0111 - ADD : In_1 + In_2 : 7
// 1000 - ADD1 : In_1 + 1 : 8
// 1001 - MUL : In_1 * In_2 : 9 
// 1010 - FLOOR : 10
// 1011 - SUB : 11
// 1100 - SUB1 : 12
// 1101 - ROOF : 13
// 1110 - MOD : 14
// 1111 - JMPZ


module ALU(

input clock,
input [15:0] In_1, // DATA PATH A(PRIMARY)
input [15:0] In_2, // DATA PATH B
input [3:0] ALUOp,
output reg [15:0] ALUOut,
output integer Z = 0,
output integer Y = 0);


always @(posedge clock)
begin


if(ALUOp == 4'd7)  //ADD
	ALUOut <= In_1 + In_2;

else if(ALUOp == 4'd8) //ADD1
	ALUOut <= In_1 + 1;

else if(ALUOp == 4'd9) //MUL
	ALUOut <= In_1 * In_2;

else if(ALUOp == 4'd10) // FLOOR
	ALUOut <= In_1 / In_2;

	
else if(ALUOp == 4'd11)  // SUB
	begin
	if(In_1 == In_2)
		Z<=1;
	else if(In_1 >> In_2)
		Y<=1;
	else
		ALUOut <= In_1 - In_2;
	end
	
	
else if(ALUOp == 4'd12) // SUB1
	ALUOut <= In_1 - 1;

// else if(ALUop == 4d'13) // ROOF
// 	ALUOut <= 

else if(ALUOp == 4'd14) // MOD
	ALUOut <= In_1 % In_2;

end

endmodule




//case(ALUOp)
//
//4'd7 : 
//ALUOut <= In_1 + In_2;  // ADD
//
//4'd8 : 
//ALUOut <= In_1 + 1;     // ADD1
//
//4'd9 : 
//ALUOut <= In_1 * In_2;  // MUL
//
//4d'10 : 
//ALUOut <= In_1 / In_2  // FLOOR
//
//4'd11 : 
//ALUOut <= In_1 - In_2; // SUB
//
//if(ALUOut == 0)
//z <=1
//
//4'd12 : 
//ALUOut <= In_1 - 1;    // SUB1
//
//4'd14 : 
//ALUOut <= In_1 % In_2;  // MOD
//
//
////4'd13 : ALUOut <=              // ROOF
//
//endcase


// FLOOR CAN BE CALCULATED AS FOLLOWS

//if (In_1 % In_2 != 0)
//ALUOut <= In_1 / In_2 + 1;
//else
//ALUOut <= In_1 / In_2;






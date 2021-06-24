`timescale 1ns/1ns
module State_machine(

input clock,
input [3:0] IR_Out,
input z,
input y,

output reg[1:0] mcontrol,
output reg[3:0] ALUOp,
output reg[4:0] Mux1D,
output reg[1:0] Mux1S,
output reg[4:0] Mux2D,
output reg[1:0] Mux2S,
output reg[4:0] Mux3D,
output reg[1:0] Mux3S,
output reg[4:0] Mux4D,
output reg[1:0] Mux4S,
output reg[0:0] PCD,
output reg [5:0] current_reg

); 


  
//reg [5:0] current_reg;
integer current;
integer mcontrolvar;
reg [46:0] ram[63:0];          


initial begin 
  
current_reg = 6'b000000;
current = 0;

ram[0] = 	47'b00000001000000000000000000000000000000000000001;
//ram[0] = 	47'b11111111111111111111111111111111111111111000110; /// a test sequence. uncomment the line above
ram[1] = 	47'b00000100000000000000000000000000000000001000010;
ram[2] = 	47'b00001000000000000000000000101100100000000111111; // branching decision

ram[3] = 	47'b00001100000000000000000000000000000000000000000;
ram[4] = 	47'b00010000000000000000000000000000000000000000100;
ram[5] = 	47'b00010100000000000000000000000000000000010000000;
ram[6] = 	47'b00011000000000000010000000000000000000000000111;
ram[7] = 	47'b00011100000000000000000000000001000000000000000;
ram[8] = 	47'b00100001000000000000000000100000100000000001001; //47'b00100001000000000000000000000001100000000001001; //////this line was wrong
ram[9] = 	47'b00100100000000000000000000000000000000001001010;
ram[10] = 	47'b00101000000010101100000000000000000000000001011;
ram[11] = 	47'b00101110000000000000000000100100100000000001100;
ram[12] = 	47'b00110000000000000000000000000000000000000001101;
ram[13] = 	47'b00110100000010011100000000000000000000000001110;
ram[14] = 	47'b00111000000000000000000000000001100000000000000;
ram[15] = 	47'b00111100000000000110000000000000000000000010000;
ram[16] = 	47'b01000000000000000000000000101010100000000010001;
ram[17] = 	47'b01000100000000000010000000000000000000000010010;
ram[18] = 	47'b01001011000000000000000000100100100000000000000;
ram[19] = 	47'b01001100000000000010000000000000000000000010100;
ram[20] = 	47'b01010010000000000000000000100100100000000010101;
ram[21] = 	47'b01010100000000000000000000000000000000000010110;
ram[22] = 	47'b01011000000010011100000000000000000000000010111;
ram[23] = 	47'b01011100000000000000000000000001000000000000000;
ram[24] = 	47'b01100000000000000010000001000000000000000011001;
ram[25] = 	47'b01100100000100000000000000000000000000000000000;
ram[26] = 	47'b01101000000000000010000000000000000000000011011;
ram[27] = 	47'b01101100001000000000000000000000000000000000000;
ram[28] = 	47'b01110000000000000010000001000000000000000011101;
ram[29] = 	47'b01110100010100000000000000000000000000000000000;
ram[30] = 	47'b01111000000000000010000001000000000000000011111;
ram[31] = 	47'b01111100011100000000000000000000000000000000000;
ram[32] = 	47'b10000000000000000010000001000000000000000100001;
ram[33] = 	47'b10000100001100000000000000000000000000000000000;
ram[34] = 	47'b10001000000000000010000000000000000000000100011;
ram[35] = 	47'b10001100010000000000000000000000000000000000000;
ram[36] = 	47'b10010000000000000010000001000000000000000100101;
ram[37] = 	47'b10010100011000000000000000000000000000000000000;
//ram[38] = 	47'b10011000000000000000000000000000000000000100111;
//ram[39] = 	47'b10011100000010101100000000000000000000000101000;
//ram[40] = 	47'b10100000000000000000000000100010100000000000000;
//ram[41] = 	47'b10100100000000000000000000000000000000001000000;
//ram[42] = 	47'b10101000000000000010000001000000000000000101011;
//ram[43] = 	47'b10101100100000000000000000000000000000000000000;


ram[38] = 	47'b10011001000000000000000000000000000000000100111;
ram[39] = 	47'b10011100000000000000000000000000000000000101000;
ram[40] = 	47'b10100000000010101100000000000000000000000101001;
ram[41] = 	47'b10100100000000000000000000100010100000000000000;
ram[42] = 	47'b10101000000000000000000000000000000000001000000;
ram[43] = 	47'b10101100000000000010000001000000000000000101100;
ram[44] = 	47'b10110000100000000000000000000000000000000000000;

end


always @(posedge clock)

begin

  if (current_reg == 6'b000100)
	begin
		mcontrol <= ram[current][40:39]; //40,39
        ALUOp <= ram[current][38:35];    // 38,37,36,35
        Mux1D <= ram[current][34:30];    // 34,33,32,31,30
        Mux1S <= ram[current][29:28];    // 29,28
        Mux2D <= ram[current][27:23];    // 27,26,25,24,23
        Mux2S <= ram[current][22:21];    // 22,21
        Mux3D <= ram[current][20:16];    // 20,19,18,17,16
        Mux3S <= ram[current][15:14];    // 15,14
        Mux4D <= ram[current][13:9];     // 13,12,11,10,9
        Mux4S <= ram[current][8:7];      // 8,7
        PCD <= ram[current][6];          // 6
        current_reg <= ram[current][5:0];
		  //current =current_reg[5]*32+current_reg[4]*16+current_reg[3]*8+current_reg[2]*4+current_reg[1]*2+current_reg[0] ;
	end
	
	else if (y==1)
	begin
		current_reg <= 6'b000100; // END 1
	end
	
  	else if(current_reg == 6'b111111) // brnaching decision
	begin

		if(IR_Out == 4'b0000)      // NOP 
			current_reg <= 6'b000011;   // only one NOP operation
		
		else if(IR_Out == 4'b0001) // END 
			current_reg <= 6'b000100;   // only one END operation

		else if(IR_Out == 4'b0010) // RST 
			current_reg <= 6'b000101;   // Only one RST operation
		
		else if(IR_Out == 4'b0011) // MOV 
			current_reg <= 6'b000110;   // two MOV operations
		
		else if(IR_Out == 4'b0100) // LOAD
			current_reg <= 6'b001000;   // 7 LOAD operations
		
		else if(IR_Out == 4'b0101) // STO
			current_reg <= 6'b001111;   // 4 STO operations
		
		else if(IR_Out == 4'b0110) // LOADR
			current_reg <= 6'b010011;   // 5 LOADR operations 
		
		else if(IR_Out == 4'b0111) // ADD
			current_reg <= 6'b011000;   // 2 ADD operations
		
		else if(IR_Out == 4'b1000) // ADDONE
			current_reg <= 6'b011010;   // 2 ADDONE operations
		
		else if(IR_Out == 4'b1001) // MUL
			current_reg <= 6'b011100;   // 2 MUL operations
		
		else if(IR_Out == 4'b1010) // FLOOR
			current_reg <= 6'b011110;   // 2 FLOOR operations
		
		else if(IR_Out == 4'b1011) // SUB
			current_reg <= 6'b100000;   // 2 SUB operations
		
		else if(IR_Out == 4'b1100) // SUBONE
			current_reg <= 6'b100010;   // 2 SUBONE operations
		
		else if(IR_Out == 4'b1101) // ROOF
			current_reg <= 6'b100100;   // 2 ROOF operations 
		
		else if(IR_Out == 4'b1110) // MOD
			//current_reg <= 6'b101010;   // 2 MOD operations
			current_reg <= 6'b101011;
		
		else if(IR_Out == 4'b1111) // JMPZ - should check the Z value
			begin
			
				if(z==0)             // for the JUMPZ Y1 and so on
					current_reg <= 6'b100110; //3 JMPZ Y operations
					
				else if (z==1)
					//current_reg <= 6'b101001; // 1 JMPZ N operations
					current_reg <= 6'b101010;
			end
		#30;
	
	
    end
  
  else
    begin
	 
//	 if (current==8)
//		begin
		 mcontrol <= 2'b00;
		 ALUOp <= ram[current][38:35];    // 38,37,36,35
		 
		 Mux1D <= ram[current][34:30];    // 34,33,32,31,30
		 Mux1S <= ram[current][29:28];    // 29,28
		 Mux2D <= ram[current][27:23];    // 27,26,25,24,23
		 Mux2S <= ram[current][22:21];    // 22,21
		 Mux3D <= ram[current][20:16];    // 20,19,18,17,16
		 Mux3S <= ram[current][15:14];    // 15,14
		 Mux4D <= ram[current][13:9];     // 13,12,11,10,9
		 Mux4S <= ram[current][8:7];      // 8,7
		 
		 PCD <= ram[current][6];  
		 mcontrolvar <= ram[current][40:39]; //40,39		 // 6
		 current_reg <= ram[current][5:0];
		 
		 #10;
		 
		 Mux1D <= 5'b00000;//ram[current][34:30];    // 34,33,32,31,30
		 Mux1S <= 2'b00;//ram[current][29:28];    // 29,28
		 Mux2D <= 5'b00000;//ram[current][27:23];    // 27,26,25,24,23
		 Mux2S <= 2'b00;//ram[current][22:21];    // 22,21
		 Mux3D <= 5'b00000;//ram[current][20:16];    // 20,19,18,17,16
		 Mux3S <= 2'b00;//ram[current][15:14];    // 15,14
		 Mux4D <= 5'b00000;//ram[current][13:9];     // 13,12,11,10,9
		 Mux4S <= 2'b00;//ram[current][8:7];      // 8,7

		 PCD <= 0;
		 #20;
		 mcontrol <= mcontrolvar; //40,39
		 #10;
		 
//		end
	 
//	 else
//		begin
//		 mcontrol <= ram[current][40:39]; //40,39
//		 ALUOp <= ram[current][38:35];    // 38,37,36,35
//		 Mux1D <= ram[current][34:30];    // 34,33,32,31,30
//		 Mux1S <= ram[current][29:28];    // 29,28
//		 Mux2D <= ram[current][27:23];    // 27,26,25,24,23
//		 Mux2S <= ram[current][22:21];    // 22,21
//		 Mux3D <= ram[current][20:16];    // 20,19,18,17,16
//		 Mux3S <= ram[current][15:14];    // 15,14
//		 Mux4D <= ram[current][13:9];     // 13,12,11,10,9
//		 Mux4S <= ram[current][8:7];      // 8,7
//		 PCD <= ram[current][6];          // 6
//		 current_reg <= ram[current][5:0];
//		 #10;
//		 PCD <= 0;
//		 #20;
//		 end
	 
    end
end

always @(negedge clock)
  current =current_reg[5]*32+current_reg[4]*16+current_reg[3]*8+current_reg[2]*4+current_reg[1]*2+current_reg[0] ;

endmodule



//`timescale 1ns/1ns
//module State_machine(
//
//input clock,
//input [3:0] IR_Out,
//input z,
//input y,
//
//output reg[1:0] mcontrol,
//output reg[3:0] ALUOp,
//output reg[4:0] Mux1D,
//output reg[1:0] Mux1S,
//output reg[4:0] Mux2D,
//output reg[1:0] Mux2S,
//output reg[4:0] Mux3D,
//output reg[1:0] Mux3S,
//output reg[4:0] Mux4D,
//output reg[1:0] Mux4S,
//output reg[0:0] PCD
////output reg [5:0] current_reg
//); 
//
//// reg [5:0] next;  
////integer next= 6'b000001;
//  
//// reg [5:0] current_reg;//=6'b000000;
//reg [5:0] current_reg;
//integer current;//= 0; 
//reg [46:0] ram[63:0];          // there must be 47 bits for each output
//
//
//initial begin 
//  
//// current = 6'b000000; //present address 
//// next = 6'b000001;    // Next address
//current_reg = 6'b000000;
//current = 0;
//
//ram[0] = 	47'b00000001000000000000000000000000000000000000001;
////ram[0] = 	47'b11111111111111111111111111111111111111111000110; /// a test sequence. uncomment the line above
//ram[1] = 	47'b00000100000000000000000000000000000000001000010;
//ram[2] = 	47'b00001001000000000000000000101100100000000111111; // branching decision
//
//ram[3] = 	47'b00001100000000000000000000000000000000000000000;
//ram[4] = 	47'b00010000000000000000000000000000000000000000100;
//ram[5] = 	47'b00010100000000000000000000000000000000010000000;
//ram[6] = 	47'b00011000000000000010000000000000000000000000111;
//ram[7] = 	47'b00011100000000000000000000000001000000000000000;
//ram[8] = 	47'b00100001000000000000000000000001100000000001001;
//ram[9] = 	47'b00100100000000000000000000000000000000001001010;
//ram[10] = 	47'b00101000000010010100000000000000000000000001011;
//ram[11] = 	47'b00101110000000000000000000100100100000000001100;
//ram[12] = 	47'b00110000000000000000000000000000000000000001101;
//ram[13] = 	47'b00110100000010011100000000000000000000000001110;
//ram[14] = 	47'b00111000000000000000000000000001100000000000000;
//ram[15] = 	47'b00111100000000000110000000000000000000000010000;
//ram[16] = 	47'b01000000000000000000000000101010100000000010001;
//ram[17] = 	47'b01000100000000000010000000000000000000000010010;
//ram[18] = 	47'b01001011000000000000000000100100100000000000000;
//ram[19] = 	47'b01001100000000000010000000000000000000000010100;
//ram[20] = 	47'b01010010000000000000000000100100100000000010101;
//ram[21] = 	47'b01010100000000000000000000000000000000000010110;
//ram[22] = 	47'b01011000000010011100000000000000000000000010111;
//ram[23] = 	47'b01011100000000000000000000000001000000000000000;
//ram[24] = 	47'b01100000000000000010000001000000000000000011001;
//ram[25] = 	47'b01100100000100000000000000000000000000000000000;
//ram[26] = 	47'b01101000000000000010000000000000000000000011011;
//ram[27] = 	47'b01101100001000000000000000000000000000000000000;
//ram[28] = 	47'b01110000000000000010000001000000000000000011101;
//ram[29] = 	47'b01110100010100000000000000000000000000000000000;
//ram[30] = 	47'b01111000000000000010000001000000000000000011111;
//ram[31] = 	47'b01111100011100000000000000000000000000000000000;
//ram[32] = 	47'b10000000000000000010000001000000000000000100001;
//ram[33] = 	47'b10000100001100000000000000000000000000000000000;
//ram[34] = 	47'b10001000000000000010000000000000000000000100011;
//ram[35] = 	47'b10001100010000000000000000000000000000000000000;
//ram[36] = 	47'b10010000000000000010000001000000000000000100101;
//ram[37] = 	47'b10010100011000000000000000000000000000000000000;
//ram[38] = 	47'b10011000000000000000000000000000000000000100111;
//ram[39] = 	47'b10011100000010101100000000000000000000000101000;
//ram[40] = 	47'b10100000000000000000000000100010100000000000000;
//ram[41] = 	47'b10100100000000000000000000000000000000001000000;
//ram[42] = 	47'b10101000000000000010000001000000000000000101011;
//ram[43] = 	47'b10101100100000000000000000000000000000000000000;
//
//end
//
//
//always @(posedge clock)
//
//begin
//  
//  if (current_reg == 6'b000100)
//	begin
//      mcontrol <= ram[4][40:39]; //40,39
//      ALUOp <= ram[4][38:35];    // 38,37,36,35
//      Mux1D <= ram[4][34:30];    // 34,33,32,31,30
//      Mux1S <= ram[4][29:28];    // 29,28
//      Mux2D <= ram[4][27:23];    // 27,26,25,24,23
//      Mux2S <= ram[4][22:21];    // 22,21
//      Mux3D <= ram[4][20:16];    // 20,19,18,17,16
//      Mux3S <= ram[4][15:14];    // 15,14
//      Mux4D <= ram[4][13:9];     // 13,12,11,10,9
//      Mux4S <= ram[4][8:7];      // 8,7
//      PCD <= ram[4][6];          // 6
//        //current_reg <= ram[current][5:0];
//      	//current<= 4;
//	end
//
//	else if (y==1)
//	begin
//		current_reg <= 6'b000100; // END 1
//      	current<= 4;
//	end
//	
//  	else if(current_reg == 6'b111111) // brnaching decision
//	begin
//
//		if(IR_Out == 4'b0000)      // NOP 
//			current_reg <= 6'b000011;   // only one NOP operation
//		
//		else if(IR_Out == 4'b0001) // END 
//			current_reg <= 6'b000100;   // only one END operation
//
//		else if(IR_Out == 4'b0010) // RST 
//			current_reg <= 6'b000101;   // Only one RST operation
//		
//		else if(IR_Out == 4'b0011) // MOV 
//			current_reg <= 6'b000110;   // two MOV operations
//		
//		else if(IR_Out == 4'b0100) // LOAD
//			current_reg <= 6'b001000;   // 7 LOAD operations
//		
//		else if(IR_Out == 4'b0101) // STO
//			current_reg <= 6'b001111;   // 4 STO operations
//		
//		else if(IR_Out == 4'b0110) // LOADR
//			current_reg <= 6'b010011;   // 5 LOADR operations 
//		
//		else if(IR_Out == 4'b0111) // ADD
//			current_reg <= 6'b011000;   // 2 ADD operations
//		
//		else if(IR_Out == 4'b1000) // ADDONE
//			current_reg <= 6'b011010;   // 2 ADDONE operations
//		
//		else if(IR_Out == 4'b1001) // MUL
//			current_reg <= 6'b011100;   // 2 MUL operations
//		
//		else if(IR_Out == 4'b1010) // FLOOR
//			current_reg <= 6'b011110;   // 2 FLOOR operations
//		
//		else if(IR_Out == 4'b1011) // SUB
//			current_reg <= 6'b100000;   // 2 SUB operations
//		
//		else if(IR_Out == 4'b1100) // SUBONE
//			current_reg <= 6'b100010;   // 2 SUBONE operations
//		
//		else if(IR_Out == 4'b1101) // ROOF
//			current_reg <= 6'b100100;   // 2 ROOF operations 
//		
//		else if(IR_Out == 4'b1110) // MOD
//			current_reg <= 6'b101010;   // 2 MOD operations
//		
//		else if(IR_Out == 4'b1111) // JMPZ - should check the Z value
//			begin
//			
//				if(z==1)             // for the JUMPZ Y1 and so on
//					current_reg <= 6'b100110; //3 JMPZ Y operations
//					
//				else if (z==0)
//					current_reg <= 6'b101001; // 1 JMPZ N operations
//			end
//	
//	
//    end
//
//  
//  else
//    begin
//    mcontrol <= ram[current][40:39]; //40,39
//    ALUOp <= ram[current][38:35];    // 38,37,36,35
//    Mux1D <= ram[current][34:30];    // 34,33,32,31,30
//    Mux1S <= ram[current][29:28];    // 29,28
//    Mux2D <= ram[current][27:23];    // 27,26,25,24,23
//    Mux2S <= ram[current][22:21];    // 22,21
//    Mux3D <= ram[current][20:16];    // 20,19,18,17,16
//    Mux3S <= ram[current][15:14];    // 15,14
//    Mux4D <= ram[current][13:9];     // 13,12,11,10,9
//    Mux4S <= ram[current][8:7];      // 8,7
//    PCD <= ram[current][6];          // 6
//    current_reg <= ram[current][5:0];
//    end
//end
//
//always @(negedge clock)
//  current =current_reg[5]*32+current_reg[4]*16+current_reg[3]*8+current_reg[2]*4+current_reg[1]*2+current_reg[0] ;
//
//
//endmodule



// read IRAM  - 01

module instruction_memory(
input clock,
input [1:0] Control1,
input [1:0] Control2,
input [1:0] Control3,
input [1:0] Control4,
input [1:0] Control5,
input [1:0] Control6,
input [1:0] Control7,
input [1:0] Control8,
input [1:0] Control9,
input [1:0] Control10,
input [1:0] Control11,
input [1:0] Control12,
input [1:0] Control13,
input [1:0] Control14,
input [1:0] Control15,
input [1:0] Control16,

input [15:0] InstrAddr1,
input [15:0] InstrAddr2,
input [15:0] InstrAddr3,
input [15:0] InstrAddr4,
input [15:0] InstrAddr5,
input [15:0] InstrAddr6,
input [15:0] InstrAddr7,
input [15:0] InstrAddr8,
input [15:0] InstrAddr9,
input [15:0] InstrAddr10,
input [15:0] InstrAddr11,
input [15:0] InstrAddr12,
input [15:0] InstrAddr13,
input [15:0] InstrAddr14,
input [15:0] InstrAddr15,
input [15:0] InstrAddr16,

output reg [15:0] InstrOut1,
output reg [15:0] InstrOut2,
output reg [15:0] InstrOut3,
output reg [15:0] InstrOut4,
output reg [15:0] InstrOut5,
output reg [15:0] InstrOut6,
output reg [15:0] InstrOut7,
output reg [15:0] InstrOut8,
output reg [15:0] InstrOut9,
output reg [15:0] InstrOut10,
output reg [15:0] InstrOut11,
output reg [15:0] InstrOut12,
output reg [15:0] InstrOut13,
output reg [15:0] InstrOut14,
output reg [15:0] InstrOut15,
output reg [15:0] InstrOut16);

reg [15:0] ram[63:0];  //????

// RG1 = 00000
// RG2 = 11111

//nOT USED IN THIS MODULE. ?????

parameter NOP = 4'd0;    // 0000
parameter END = 4'd1;    // 0001
parameter RST = 4'd2;    // 0010
parameter MOV = 4'd3;    // 0011
parameter LOAD = 4'd4;   // 0100
parameter STO = 4'd5;    // 0101 
parameter LDR = 4'd6;    // 0110
parameter ADD = 4'd7;    // 0111
parameter ADDONE = 4'd8; // 1000
parameter MUL = 4'd9;    // 1001
parameter FLOOR = 4'd10; // 1010
parameter SUB = 4'd11;   // 1011
parameter SUBONE = 4'd12;// 1100
parameter ROOF = 4'd13;  // 1101
parameter MOD = 4'd14;   // 1110
parameter JMPZ = 4'd15;  // 1111



initial begin

//Assembly code. convereted into Verilog code

//ram[0] = 16'd2079;   // RST ALL        0010 00000 11111  
//ram[1] = 16'd4097;   // LOAD 0 R1      0100 00000 00001
//ram[2] = 16'd0;      // 16'd0          
//ram[3] = 16'd4098;   // LOAD 1 R2      0100 00000 00010
//ram[4] = 16'd1;      // 16'd1
//ram[5] = 16'd4102;   // LOAD 2 R6      0100 00000 00110
//ram[6] = 16'd2;      // 16'd2
//ram[7] = 16'd4099;   // LOAD 3 R3      0100 00000 00011
//ram[8] = 16'd3;      // 16'd3
//ram[9] = 16'd11383;  // SUB R3 1       1011 00011 10111
//ram[10] = 16'd9250;  // MUL R1 R2      1001 00001 00010
//ram[11] = 16'd13955; // ROOF AC R3 	  1101 10100 00011
//ram[12] = 16'd3726;  // MOV AC R14 	  0011 10100 01110
//ram[13] = 16'd9635;  // MUL R13 R3     1001 01101 00011
//ram[14] = 16'd7831;  // ADD AC I       0111 10100 10111 
//ram[15] = 16'd3719;  // MOV AC R7 	  0011 10100 00111
//ram[16] = 16'd9250;  // MUL R1 R2      1001 00001 00010
//ram[17] = 16'd11911; // SUB AC R7      1011 10100 00111
//ram[18] = 16'd12512; // SUBONE R7      1100 00111 00000
//ram[19] = 16'd3716;  // MOV AC R4      0011 10100 00100
//ram[20] = 16'd7488;  // MOD AC R1      1110 10100 00001
//ram[21] = 16'd3717;  // MOV AC R5      0011 10100 00101
//ram[22] = 16'd10369; // FLOOR R4 R1    1010 00100 00001
//ram[23] = 16'd3716;  // MOV AC R4      0011 10100 00100
//ram[24] = 16'd9412;  // MUL R6 R4      1001 00110 00100
//ram[25] = 16'd4103;  // LOAD 4 R7      0100 00000 00111
//ram[26] = 16'd4;     // 16'd4
//ram[27] = 16'd4104;  // LOAD 5 R8      0100 00000 01000
//ram[28] = 16'd5;     // 16'd5 
//ram[29] = 16'd4105;  // LOAD 6 R9      0100 00000 01001
//ram[30] = 16'd6;     // 16'd6 
//ram[31] = 16'd7815;  // ADD AC R7      0111 10100 00111
//ram[32] = 16'd3719;  // MOV AC R7      0011 10100 00111
//ram[33] = 16'd7429;  // ADD R8 R5      0111 01000 00101
//ram[34] = 16'd3720;  // MOV AC R8      0011 10100 01000
//ram[35] = 16'd9252;  // MUL R1 R4      1001 00001 00100
//ram[36] = 16'd3906;  // ADD AC R5      0111 10100 00101
//ram[37] = 16'd7817;  // ADD AC R9      0111 10100 01001
//ram[38] = 16'd3721;  // MOV AC R9      0011 10100 01001
//ram[39] = 16'd6378;  // LOADR R7 R10   0110 00111 01010
//ram[40] = 16'd6411;  // LOADR R8 R11   0110 01000 01011
//ram[41] = 16'd19095; // MUL R10 R11 	  1001 01010 01011
//ram[42] = 16'd7823;  // ADD AC TOTR    0111 10100 01111
//ram[43] = 16'd3727;  // MOV AC TOTR    0011 10100 01111
//ram[44] = 16'd8416;  // ADDONE R7      1000 00111 00000
//ram[45] = 16'd3719;  // MOV AC R7      0011 10100 00111
//ram[46] = 16'd3712;  // ADD R8 R1      0111 01000 00001
//ram[47] = 16'd3720;  // MOV AC R8      0011 10100 01000
//ram[48] = 16'd8576;  // ADDONE R12     1000 01100 00000
//ram[49] = 16'd3724;  // MOV AC R12     0011 10100 01100
//ram[50] = 16'd11468; // SUB R6 R12     1011 00110 01100
//ram[51] = 16'd15360; // JMPZ 32        1111 00000 00000
//ram[52] = 16'd32;    // 16'd32
//ram[53] = 16'd5423;  // STORE R9 TOTR  0101 01001 01111
//ram[54] = 16'd2060;  // RST R12        0010 00000 01100
//ram[55] = 16'd2063;  // RST TOTR       0010 00000 01111
//ram[56] = 16'd8608;  // ADDONE R13     1000 01101 00000
//ram[57] = 16'd3725;  // MOV AC R13     0011 10100 01101
//ram[58] = 16'd11725; // SUB R14 R13 	  1011 01110 01101
//ram[59] = 16'd15360; // JMPZ 9         1111 00000 00000
//ram[60] = 16'd9;     // 16'd9
//ram[61] = 16'd1024;  // END            0001 00000 00000
////ram[62] = 16'd    // 
////ram[63] = 16'd    //



ram[0] = 16'b0010000001111100;   // RST ALL        0010 00000 11111
ram[1] = 16'b0100000000000100;   // LOAD 0 R1      0100 00000 00001
ram[2] = 16'b0000000000000000;      // 16'd0          
ram[3] = 16'b0100000000001000;   // LOAD 1 R2      0100 00000 00010
ram[4] = 16'b0000000000000001;      // 16'd1
ram[5] = 16'b0100000000011000;   // LOAD 2 R6      0100 00000 00110
ram[6] = 16'b0000000000000010;      // 16'd2
ram[7] = 16'b0100000000001100;   // LOAD 3 R3      0100 00000 00011
ram[8] = 16'b0000000000000011;      // 16'd3
ram[9] = 16'b1011000111011100;  // SUB R3 1       1011 00011 10111
ram[10] = 16'b1001000010001000;  // MUL R1 R2      1001 00001 00010
ram[11] = 16'b1101101000001100;  // ROOF AC R3 	  1101 10100 00011
ram[12] = 16'b0011101000111000;  // MOV AC R14 	  0011 10100 01110
ram[13] = 16'b1001011010001100;  // MUL R13 R3     1001 01101 00011
ram[14] = 16'b0111101001011100;  // ADD AC I       0111 10100 10111 
ram[15] = 16'b0011101000011100;  // MOV AC R7 	  0011 10100 00111
ram[16] = 16'b1001000010001000;  // MUL R1 R2      1001 00001 00010
ram[17] = 16'b1011101000011100; // SUB AC R7      1011 10100 00111
ram[18] = 16'b1100001110000000; // SUBONE R7      1100 00111 00000
ram[19] = 16'b0011101000010000;  // MOV AC R4      0011 10100 00100
ram[20] = 16'b1110101000000100;  // MOD AC R1      1110 10100 00001
ram[21] = 16'b0011101000010100;  // MOV AC R5      0011 10100 00101
ram[22] = 16'b1010001000000100; // FLOOR R4 R1    1010 00100 00001
ram[23] = 16'b0011101000010000;  // MOV AC R4      0011 10100 00100
ram[24] = 16'b1001001100010000;  // MUL R6 R4      1001 00110 00100
ram[25] = 16'b0100000000011100; // LOAD 4 R7      0100 00000 00111
ram[26] = 16'b0000000000000100;     // 16'd4
ram[27] = 16'b0100000000100000;  // LOAD 5 R8      0100 00000 01000
ram[28] = 16'b0000000000000101;     // 16'd5 
ram[29] = 16'b0100000000100100;  // LOAD 6 R9      0100 00000 01001
ram[30] = 16'b0000000000000110;     // 16'd6 
ram[31] = 16'b0111101000011100;  // ADD AC R7      0111 10100 00111
ram[32] = 16'b0011101000011100;  // MOV AC R7      0011 10100 00111
ram[33] = 16'b0111010000010100;  // ADD R8 R5      0111 01000 00101
ram[34] = 16'b0011101000100000;  // MOV AC R8      0011 10100 01000
ram[35] = 16'b1001000010010000;  // MUL R1 R4      1001 00001 00100
ram[36] = 16'b0111101000010100;  // ADD AC R5      0111 10100 00101
ram[37] = 16'b0111101000100100;  // ADD AC R9      0111 10100 01001
ram[38] = 16'b0011101000100100;  // MOV AC R9      0011 10100 01001
ram[39] = 16'b0110001110101000;  // LOADR R7 R10   0110 00111 01010
ram[40] = 16'b0110010000101100;  // LOADR R8 R11   0110 01000 01011
ram[41] = 16'b1001010100101100; // MUL R10 R11 	  1001 01010 01011
ram[42] = 16'b0111101000111100;  // ADD AC TOTR    0111 10100 01111
ram[43] = 16'b0011101000111100;  // MOV AC TOTR    0011 10100 01111
ram[44] = 16'b1000001110000000;  // ADDONE R7      1000 00111 00000
ram[45] = 16'b0011101000011100;  // MOV AC R7      0011 10100 00111
ram[46] = 16'b0111010000000100;  // ADD R8 R1      0111 01000 00001
ram[47] = 16'b0011101000100000;  // MOV AC R8      0011 10100 01000
ram[48] = 16'b1000011000000000;  // ADDONE R12     1000 01100 00000
ram[49] = 16'b0011101000110000;  // MOV AC R12     0011 10100 01100
ram[50] = 16'b1011001100110000; // SUB R6 R12     1011 00110 01100
ram[51] = 16'b1111000000000000; // JMPZ 32        1111 00000 00000
ram[52] = 16'b0000000000100000;    // 16'd32
ram[53] = 16'b0101010010111100;  // STORE R9 TOTR  0101 01001 01111
ram[54] = 16'b0010000000110000;  // RST R12        0010 00000 01100
ram[55] = 16'b0010000000111100;  // RST TOTR       0010 00000 01111
ram[56] = 16'b1000011010000000;  // ADDONE R13     1000 01101 00000
ram[57] = 16'b0011101000110100;  // MOV AC R13     0011 10100 01101
ram[58] = 16'b1011011100110100; // SUB R14 R13 	  1011 01110 01101
ram[59] = 16'b1111000000000000; // JMPZ 9         1111 00000 00000
ram[60] = 16'b0000000000001001;  // 16'd9
ram[61] = 16'b0001000000000000;  // END            0001 00000 00000
//ram[62] = 16'd    // 
//ram[63] = 16'd    //


end


always @(posedge clock) 

begin

//if (Control == 2'd1)
//
//	begin
//	InstrOut1 <= ram[InstrAddr1];
//	InstrOut2 <= ram[InstrAddr2];
//	InstrOut3 <= ram[InstrAddr3];
//	InstrOut4 <= ram[InstrAddr4];
//	InstrOut5 <= ram[InstrAddr5];
//	InstrOut6 <= ram[InstrAddr6];
//	InstrOut7 <= ram[InstrAddr7];
//	InstrOut8 <= ram[InstrAddr8];
//	InstrOut9 <= ram[InstrAddr9];
//	InstrOut10 <= ram[InstrAddr10];
//	InstrOut11 <= ram[InstrAddr11];
//	InstrOut12 <= ram[InstrAddr12];
//	InstrOut13 <= ram[InstrAddr13];
//	InstrOut14 <= ram[InstrAddr14];
//	InstrOut15 <= ram[InstrAddr15];
//	InstrOut16 <= ram[InstrAddr16];
//	end

if (Control1 == 2'd1)
	InstrOut1 <= ram[InstrAddr1];
if (Control2 == 2'd1)
	InstrOut2 <= ram[InstrAddr2];
if (Control3 == 2'd1)
	InstrOut3 <= ram[InstrAddr3];
if (Control4 == 2'd1)
	InstrOut4 <= ram[InstrAddr4];
if (Control5 == 2'd1)
	InstrOut5 <= ram[InstrAddr5];
if (Control6 == 2'd1)
	InstrOut6 <= ram[InstrAddr6];
if (Control7 == 2'd1)
	InstrOut7 <= ram[InstrAddr7];
if (Control8 == 2'd1)
	InstrOut8 <= ram[InstrAddr8];
if (Control9 == 2'd1)
	InstrOut9 <= ram[InstrAddr9];
if (Control10 == 2'd1)
	InstrOut10 <= ram[InstrAddr10];
if (Control11 == 2'd1)
	InstrOut11 <= ram[InstrAddr11];
if (Control12 == 2'd1)
	InstrOut12 <= ram[InstrAddr12];
if (Control13 == 2'd1)
	InstrOut13 <= ram[InstrAddr13];
if (Control14 == 2'd1)
	InstrOut14 <= ram[InstrAddr14];
if (Control15 == 2'd1)
	InstrOut15 <= ram[InstrAddr15];
if (Control16 == 2'd1)
	InstrOut16 <= ram[InstrAddr16];	
	
end

endmodule

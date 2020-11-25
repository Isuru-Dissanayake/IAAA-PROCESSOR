

module RG1( 
input [4:0] MIDR_Out[5:8] , 
output reg [4:0] RG1_out); 
 
RG1_out <= MIDR_Out[4:8];
 
endmodule 
 
 
module RG2( 
input [4:0] MIDR_Out[9:12] , 
output reg [4:0] RG1_out); 
 
RG1_out <= MIDR_Out[9:12];
 
endmodule 
 
 
module TR( 
input Clock,
input WRDEC_TR,
input [4:0] RG2_out, 
output reg [4:0] TR_out); 

always @(posedge clock) 
	begin 
	if (WRDEC_TR == 1) 
		TR_out <= RG2_out; 
	end  
 
endmodule 


/* 
module MIDR( 
input Clock,
input [15:0] InstrOut,
output reg [15:0] MIDR_Out); 

MIDR_Out <= InstrOut;
 
endmodule 
*/

 
module IR( 
input Clock,
input WRDEC_IR,
input [3:0] MIDR_out[0:3], 
output reg [3:0] IR_out); 

always @(posedge clock) 
	begin 
	if (WRDEC_TR == 1) 
		TR_out <= RG2_out; 
	end  
 
endmodule



module i( 
output reg [15:0] i_Out); 

assign i_out = 16'd1;
 
endmodule 

/*
module AR( 
input Clock,
input WRDEC_AR,
input RDEC_AR,
input [15:0] A_BUS_out, 
output reg [15:0] AR_out); 

always @(posedge clock) 
	begin 
	if (WRDEC_AR == 1) 
		AR_out <= A_BUS_out; 
	if (RDEC_AR == 1)
		AR_out <= 16'd0;
	
	end  
 
endmodule
*/


module Register( 
input Clock,
input WRDEC_R,
input RDEC_R,
input [15:0] A_BUS_out, 
output reg [15:0] R_out); 

always @(posedge clock) 
	begin 
	if (WRDEC_AR == 1) 
		R_out <= A_BUS_out; 
	if (RDEC_AR == 1)
		R_out <= 16'd0;
	
	end  
 
endmodule


module A_BUS_MUX( 
input Clock,
input [15:0] R1_out, 
input [15:0] R2_out, 
input [15:0] R3_out, 
input [15:0] R4_out, 
input [15:0] R5_out, 
input [15:0] R6_out, 
input [15:0] R7_out, 
input [15:0] R8_out, 
input [15:0] R9_out, 
input [15:0] R10_out, 
input [15:0] R11_out, 
input [15:0] R12_out, 
input [15:0] R13_out, 
input [15:0] R14_out, 
input [15:0] TOTR_out, 
input [15:0] TR_out, 
input [15:0] PC_out, 
input [15:0] AR_out, 
input [15:0] MDDR_out, 
input [15:0] AC_out, 
input [15:0] MIDR_out, 

input [4:0] RG1_out, 
input [4:0] RG2_out, 
input [1:0] MUX1S, 
input [4:0] MUX1D_out, 

output reg [15:0] A_BUS_out); 

always @(posedge clock) 
	begin 
	if (MUX1S == 2'd1)
		begin
			if RG1_out == 5'd1
				A_BUS_out <= R1_out;
			if RG1_out == 5'd2
				A_BUS_out <= R2_out;
			if RG1_out == 5'd3
				A_BUS_out <= R3_out;
			if RG1_out == 5'd4
				A_BUS_out <= R4_out;
			if RG1_out == 5'd5
				A_BUS_out <= R5_out;
			if RG1_out == 5'd6
				A_BUS_out <= R6_out;
			if RG1_out == 5'd7
				A_BUS_out <= R7_out;
			if RG1_out == 5'd8
				A_BUS_out <= R8_out;
			if RG1_out == 5'd9
				A_BUS_out <= R9_out;
			if RG1_out == 5'd10
				A_BUS_out <= R10_out;
			if RG1_out == 5'd11
				A_BUS_out <= R11_out;
			if RG1_out == 5'd12
				A_BUS_out <= R12_out;
			if RG1_out == 5'd13
				A_BUS_out <= R13_out;
			if RG1_out == 5'd14
				A_BUS_out <= R14_out;
			if RG1_out == 5'd15
				A_BUS_out <= TOTR_out;
			if RG1_out == 5'd18
				A_BUS_out <= AR_out;
			if RG1_out == 5'd19
				A_BUS_out <= MDDR_out;
			if RG1_out == 5'd20
				A_BUS_out <= AC_out;
			if RG1_out == 5'd21
				A_BUS_out <= MIDR_out;
		end 
		
	else if (MUX1S == 2'd2)
		begin
			if MUX1D_out == 5'd1
				A_BUS_out <= R1_out;
			if MUX1D_out == 5'd2
				A_BUS_out <= R2_out;
			if MUX1D_out == 5'd3
				A_BUS_out <= R3_out;
			if MUX1D_out == 5'd4
				A_BUS_out <= R4_out;
			if MUX1D_out == 5'd5
				A_BUS_out <= R5_out;
			if MUX1D_out == 5'd6
				A_BUS_out <= R6_out;
			if MUX1D_out == 5'd7
				A_BUS_out <= R7_out;
			if MUX1D_out == 5'd8
				A_BUS_out <= R8_out;
			if MUX1D_out == 5'd9
				A_BUS_out <= R9_out;
			if MUX1D_out == 5'd10
				A_BUS_out <= R10_out;
			if MUX1D_out == 5'd11
				A_BUS_out <= R11_out;
			if MUX1D_out == 5'd12
				A_BUS_out <= R12_out;
			if MUX1D_out == 5'd13
				A_BUS_out <= R13_out;
			if MUX1D_out == 5'd14
				A_BUS_out <= R14_out;
			if MUX1D_out == 5'd15
				A_BUS_out <= TOTR_out;
			if MUX1D_out == 5'd18
				A_BUS_out <= AR_out;
			if MUX1D_out == 5'd19
				A_BUS_out <= MDDR_out;
			if MUX1D_out == 5'd20
				A_BUS_out <= AC_out;
			if MUX1D_out == 5'd21
				A_BUS_out <= MIDR_out;
		end 
	else if (MUX1S == 2'd3)
		begin
			if RG2_out == 5'd1
				A_BUS_out <= R1_out;
			if RG2_out == 5'd2
				A_BUS_out <= R2_out;
			if RG2_out == 5'd3
				A_BUS_out <= R3_out;
			if RG2_out == 5'd4
				A_BUS_out <= R4_out;
			if RG2_out == 5'd5
				A_BUS_out <= R5_out;
			if RG2_out == 5'd6
				A_BUS_out <= R6_out;
			if RG2_out == 5'd7
				A_BUS_out <= R7_out;
			if RG2_out == 5'd8
				A_BUS_out <= R8_out;
			if RG2_out == 5'd9
				A_BUS_out <= R9_out;
			if RG2_out == 5'd10
				A_BUS_out <= R10_out;
			if RG2_out == 5'd11
				A_BUS_out <= R11_out;
			if RG2_out == 5'd12
				A_BUS_out <= R12_out;
			if RG2_out == 5'd13
				A_BUS_out <= R13_out;
			if RG2_out == 5'd14
				A_BUS_out <= R14_out;
			if RG2_out == 5'd15
				A_BUS_out <= TOTR_out;
			if RG2_out == 5'd18
				A_BUS_out <= AR_out;
			if RG2_out == 5'd19
				A_BUS_out <= MDDR_out;
			if RG2_out == 5'd20
				A_BUS_out <= AC_out;
			if RG2_out == 5'd21
				A_BUS_out <= MIDR_out;
		end 
	
	end  
 
endmodule



module B_BUS_MUX( 
input Clock,
input [15:0] i_out, 

input [15:0] R1_out, 
input [15:0] R2_out, 
input [15:0] R3_out, 
input [15:0] R4_out, 
input [15:0] R5_out, 
input [15:0] R6_out, 
input [15:0] R7_out, 
input [15:0] R8_out, 
input [15:0] R9_out, 
input [15:0] R10_out, 
input [15:0] R11_out, 
input [15:0] R12_out, 
input [15:0] R13_out, 
input [15:0] R14_out, 

input [15:0] TOTR_out, 

input [4:0] RG2_out, 
input [1:0] MUX2S, 
input [4:0] MUX2D_out, 

output reg [15:0] B_BUS_out); 

always @(posedge clock) 
	begin 
	if (MUX1S == 2'd1)
		begin
			if RG2_out == 5'd1
				B_BUS_out <= R1_out;
			if RG2_out == 5'd2
				B_BUS_out <= R2_out;
			if RG2_out == 5'd3
				B_BUS_out <= R3_out;
			if RG2_out == 5'd4
				B_BUS_out <= R4_out;
			if RG2_out == 5'd5
				B_BUS_out <= R5_out;
			if RG2_out == 5'd6
				B_BUS_out <= R6_out;
			if RG2_out == 5'd7
				B_BUS_out <= R7_out;
			if RG2_out == 5'd8
				B_BUS_out <= R8_out;
			if RG2_out == 5'd9
				B_BUS_out <= R9_out;
			if RG2_out == 5'd10
				B_BUS_out <= R10_out;
			if RG2_out == 5'd11
				B_BUS_out <= R11_out;
			if RG2_out == 5'd12
				B_BUS_out <= R12_out;
			if RG2_out == 5'd13
				B_BUS_out <= R13_out;
			if RG2_out == 5'd14
				B_BUS_out <= R14_out;
			if RG2_out == 5'd15
				B_BUS_out <= TOTR_out;
			if RG2_out == 5'd23
				B_BUS_out <= i_out;
		end 
		
	else if (MUX1S == 2'd2)
		begin
			if MUX2D_out == 5'd1
				B_BUS_out <= R1_out;
			if MUX2D_out == 5'd2
				B_BUS_out <= R2_out;
			if MUX2D_out == 5'd3
				B_BUS_out <= R3_out;
			if MUX2D_out == 5'd4
				B_BUS_out <= R4_out;
			if MUX2D_out == 5'd5
				B_BUS_out <= R5_out;
			if MUX2D_out == 5'd6
				B_BUS_out <= R6_out;
			if MUX2D_out == 5'd7
				B_BUS_out <= R7_out;
			if MUX2D_out == 5'd8
				B_BUS_out <= R8_out;
			if MUX2D_out == 5'd9
				B_BUS_out <= R9_out;
			if MUX2D_out == 5'd10
				B_BUS_out <= R10_out;
			if MUX2D_out == 5'd11
				B_BUS_out <= R11_out;
			if MUX2D_out == 5'd12
				B_BUS_out <= R12_out;
			if MUX2D_out == 5'd13
				B_BUS_out <= R13_out;
			if MUX2D_out == 5'd14
				B_BUS_out <= R14_out;
			if MUX2D_out == 5'd15
				B_BUS_out <= TOTR_out;
			if MUX2D_out == 5'd23
				B_BUS_out <= i_out;
		end 
	
	end  
 
endmodule



module WRDec( 
input Clock,
input [15:0] i_out, 

input [15:0] TR_out, 
input [15:0] RG2_out, 
input [1:0] MUX3S, 
input [4:0] MUX3D_out, 


output WRDec_R1
output WRDec_R2
output WRDec_R3
output WRDec_R4
output WRDec_R5
output WRDec_R6
output WRDec_R7
output WRDec_R8
output WRDec_R9
output WRDec_R10
output WRDec_R11
output WRDec_R12
output WRDec_R13
output WRDec_R14
output WRDec_PC
output WRDec_TOTR
output WRDec_MDDR
output WRDec_TR
output WRDec_AR
output WRDec_IR); 

always @(posedge clock) 
	begin 
	if (MUX3S == 2'd2)
		begin
			if RG2_out == 5'd1
				WRDec_R1 <= 1;
			else
				WRDec_R1 <= 0;
				
			if RG2_out == 5'd2
				WRDec_R2 <= 1;
			else
				WRDec_R2 <= 0;
				
			if RG2_out == 5'd3
				WRDec_R3 <= 1;
			else
				WRDec_R3 <= 0;
				
			if RG2_out == 5'd4
				WRDec_R4 <= 1;
			else
				WRDec_R4 <= 0;
				
			if RG2_out == 5'd5
				WRDec_R5 <= 1;
			else
				WRDec_R5 <= 0;
				
			if RG2_out == 5'd6
				WRDec_R6 <= 1;
			else
				WRDec_R6 <= 0;
				
			if RG2_out == 5'd7
				WRDec_R7 <= 1;
			else
				WRDec_R7 <= 0;
				
			if RG2_out == 5'd8
				WRDec_R8 <= 1;
			else
				WRDec_R8 <= 0;
				
			if RG2_out == 5'd9
				WRDec_R9 <= 1;
			else
				WRDec_R9 <= 0;
				
			if RG2_out == 5'd10
				WRDec_R10 <= 1;
			else
				WRDec_R10 <= 0;
				
			if RG2_out == 5'd11
				WRDec_R11 <= 1;
			else
				WRDec_R11 <= 0;
				
			if RG2_out == 5'd12
				WRDec_R12 <= 1;
			else
				WRDec_R12 <= 0;
				
			if RG2_out == 5'd13
				WRDec_R13 <= 1;
			else
				WRDec_R13 <= 0;
				
			if RG2_out == 5'd14
				WRDec_R14 <= 1;
			else
				WRDec_R14 <= 0;
				
			if RG2_out == 5'd15
				WRDec_TOTR <= 1;
			else
				WRDec_TOTR <= 0;
				
			if RG2_out == 5'd16
				WRDec_TR <= 1;
			else
				WRDec_TR <= 0;
				
			if RG2_out == 5'd17
				WRDec_PC <= 1;
			else
				WRDec_PC <= 0;
			
			if RG2_out == 5'd18
				WRDec_AR <= 1;
			else
				WRDec_AR <= 0;
				
			if RG2_out == 5'd21
				WRDec_MDDR <= 1;
			else
				WRDec_MDDR <= 0;
				
			if RG2_out == 5'd22
				WRDec_IR <= 1;
			else
				WRDec_IR <= 0;
				
			if RG2_out == 5'd31
				begin
					WRDec_R1 <= 1;
					WRDec_R2 <= 1;
					WRDec_R3 <= 1;
					WRDec_R4 <= 1;
					WRDec_R5 <= 1;
					WRDec_R6 <= 1;
					WRDec_R7 <= 1;
					WRDec_R8 <= 1;
					WRDec_R9 <= 1;
					WRDec_R10 <= 1;
					WRDec_R11 <= 1;
					WRDec_R12 <= 1;
					WRDec_R13 <= 1;
					WRDec_R14 <= 1;
					WRDec_TOTR <= 1;
					WRDec_TR <= 1;
					WRDec_PC <= 1;
					WRDec_AR <= 1;
					WRDec_MDDR <= 1;
					WRDec_IR <= 1;
				end
		end 
			
		
	if (MUX3S == 2'd1)
		begin
			if MUX3D_out == 5'd1
				WRDec_R1 <= 1;
			else
				WRDec_R1 <= 0;
				
			if MUX3D_out == 5'd2
				WRDec_R2 <= 1;
			else
				WRDec_R2 <= 0;
				
			if MUX3D_out == 5'd3
				WRDec_R3 <= 1;
			else
				WRDec_R3 <= 0;
				
			if MUX3D_out == 5'd4
				WRDec_R4 <= 1;
			else
				WRDec_R4 <= 0;
				
			if MUX3D_out == 5'd5
				WRDec_R5 <= 1;
			else
				WRDec_R5 <= 0;
				
			if MUX3D_out == 5'd6
				WRDec_R6 <= 1;
			else
				WRDec_R6 <= 0;
				
			if MUX3D_out == 5'd7
				WRDec_R7 <= 1;
			else
				WRDec_R7 <= 0;
				
			if MUX3D_out == 5'd8
				WRDec_R8 <= 1;
			else
				WRDec_R8 <= 0;
				
			if MUX3D_out == 5'd9
				WRDec_R9 <= 1;
			else
				WRDec_R9 <= 0;
				
			if MUX3D_out == 5'd10
				WRDec_R10 <= 1;
			else
				WRDec_R10 <= 0;
				
			if MUX3D_out == 5'd11
				WRDec_R11 <= 1;
			else
				WRDec_R11 <= 0;
				
			if MUX3D_out == 5'd12
				WRDec_R12 <= 1;
			else
				WRDec_R12 <= 0;
				
			if MUX3D_out == 5'd13
				WRDec_R13 <= 1;
			else
				WRDec_R13 <= 0;
				
			if MUX3D_out == 5'd14
				WRDec_R14 <= 1;
			else
				WRDec_R14 <= 0;
				
			if MUX3D_out == 5'd15
				WRDec_TOTR <= 1;
			else
				WRDec_TOTR <= 0;
				
			if MUX3D_out == 5'd16
				WRDec_TR <= 1;
			else
				WRDec_TR <= 0;
				
			if MUX3D_out == 5'd17
				WRDec_PC <= 1;
			else
				WRDec_PC <= 0;
			
			if MUX3D_out == 5'd18
				WRDec_AR <= 1;
			else
				WRDec_AR <= 0;
				
			if MUX3D_out == 5'd21
				WRDec_MDDR <= 1;
			else
				WRDec_MDDR <= 0;
				
			if MUX3D_out == 5'd22
				WRDec_IR <= 1;
			else
				WRDec_IR <= 0;
				
			if MUX3D_out == 5'd31
				begin
					WRDec_R1 <= 1;
					WRDec_R2 <= 1;
					WRDec_R3 <= 1;
					WRDec_R4 <= 1;
					WRDec_R5 <= 1;
					WRDec_R6 <= 1;
					WRDec_R7 <= 1;
					WRDec_R8 <= 1;
					WRDec_R9 <= 1;
					WRDec_R10 <= 1;
					WRDec_R11 <= 1;
					WRDec_R12 <= 1;
					WRDec_R13 <= 1;
					WRDec_R14 <= 1;
					WRDec_TOTR <= 1;
					WRDec_TR <= 1;
					WRDec_PC <= 1;
					WRDec_AR <= 1;
					WRDec_MDDR <= 1;
					WRDec_IR <= 1;
				
				end 
		end
		
	if (MUX3S == 2'd3)
		begin
			if TR_out == 5'd1
				WRDec_R1 <= 1;
			else
				WRDec_R1 <= 0;
				
			if TR_out == 5'd2
				WRDec_R2 <= 1;
			else
				WRDec_R2 <= 0;
				
			if TR_out == 5'd3
				WRDec_R3 <= 1;
			else
				WRDec_R3 <= 0;
				
			if TR_out == 5'd4
				WRDec_R4 <= 1;
			else
				WRDec_R4 <= 0;
				
			if TR_out == 5'd5
				WRDec_R5 <= 1;
			else
				WRDec_R5 <= 0;
				
			if TR_out == 5'd6
				WRDec_R6 <= 1;
			else
				WRDec_R6 <= 0;
				
			if TR_out == 5'd7
				WRDec_R7 <= 1;
			else
				WRDec_R7 <= 0;
				
			if TR_out == 5'd8
				WRDec_R8 <= 1;
			else
				WRDec_R8 <= 0;
				
			if TR_out == 5'd9
				WRDec_R9 <= 1;
			else
				WRDec_R9 <= 0;
				
			if TR_out == 5'd10
				WRDec_R10 <= 1;
			else
				WRDec_R10 <= 0;
				
			if TR_out == 5'd11
				WRDec_R11 <= 1;
			else
				WRDec_R11 <= 0;
				
			if TR_out == 5'd12
				WRDec_R12 <= 1;
			else
				WRDec_R12 <= 0;
				
			if TR_out == 5'd13
				WRDec_R13 <= 1;
			else
				WRDec_R13 <= 0;
				
			if TR_out == 5'd14
				WRDec_R14 <= 1;
			else
				WRDec_R14 <= 0;
				
			if TR_out == 5'd15
				WRDec_TOTR <= 1;
			else
				WRDec_TOTR <= 0;
				
			if TR_out == 5'd16
				WRDec_TR <= 1;
			else
				WRDec_TR <= 0;
				
			if TR_out == 5'd17
				WRDec_PC <= 1;
			else
				WRDec_PC <= 0;
			
			if TR_out == 5'd18
				WRDec_AR <= 1;
			else
				WRDec_AR <= 0;
				
			if TR_out == 5'd21
				WRDec_MDDR <= 1;
			else
				WRDec_MDDR <= 0;
				
			if TR_out == 5'd22
				WRDec_IR <= 1;
			else
				WRDec_IR <= 0;
				
			if TR_out == 5'd31
				begin
					WRDec_R1 <= 1;
					WRDec_R2 <= 1;
					WRDec_R3 <= 1;
					WRDec_R4 <= 1;
					WRDec_R5 <= 1;
					WRDec_R6 <= 1;
					WRDec_R7 <= 1;
					WRDec_R8 <= 1;
					WRDec_R9 <= 1;
					WRDec_R10 <= 1;
					WRDec_R11 <= 1;
					WRDec_R12 <= 1;
					WRDec_R13 <= 1;
					WRDec_R14 <= 1;
					WRDec_TOTR <= 1;
					WRDec_TR <= 1;
					WRDec_PC <= 1;
					WRDec_AR <= 1;
					WRDec_MDDR <= 1;
					WRDec_IR <= 1;
				
				end 
		end
		
	end	
 
endmodule


module RDec( 
input Clock,
input [15:0] RG2_out, 
input [1:0] MUX4S, 
input [4:0] MUX4D_out, 


output RDec_R1
output RDec_R2
output RDec_R3
output RDec_R4
output RDec_R5
output RDec_R6
output RDec_R7
output RDec_R8
output RDec_R9
output RDec_R10
output RDec_R11
output RDec_R12
output RDec_R13
output RDec_R14
output RDec_PC
output RDec_TOTR
output RDec_MDDR
output RDec_TR
output RDec_AR); 

always @(posedge clock) 
	begin 
	if (MUX4S == 2'd1)
		begin
			if RG2_out == 5'd1
				RDec_R1 <= 1;
			else
				RDec_R1 <= 0;
				
			if RG2_out == 5'd2
				RDec_R2 <= 1;
			else
				RDec_R2 <= 0;
				
			if RG2_out == 5'd3
				RDec_R3 <= 1;
			else
				RDec_R3 <= 0;
				
			if RG2_out == 5'd4
				RDec_R4 <= 1;
			else
				RDec_R4 <= 0;
				
			if RG2_out == 5'd5
				RDec_R5 <= 1;
			else
				RDec_R5 <= 0;
				
			if RG2_out == 5'd6
				RDec_R6 <= 1;
			else
				RDec_R6 <= 0;
				
			if RG2_out == 5'd7
				RDec_R7 <= 1;
			else
				RDec_R7 <= 0;
				
			if RG2_out == 5'd8
				RDec_R8 <= 1;
			else
				RDec_R8 <= 0;
				
			if RG2_out == 5'd9
				RDec_R9 <= 1;
			else
				RDec_R9 <= 0;
				
			if RG2_out == 5'd10
				RDec_R10 <= 1;
			else
				RDec_R10 <= 0;
				
			if RG2_out == 5'd11
				RDec_R11 <= 1;
			else
				RDec_R11 <= 0;
				
			if RG2_out == 5'd12
				RDec_R12 <= 1;
			else
				RDec_R12 <= 0;
				
			if RG2_out == 5'd13
				RDec_R13 <= 1;
			else
				RDec_R13 <= 0;
				
			if RG2_out == 5'd14
				RDec_R14 <= 1;
			else
				RDec_R14 <= 0;
				
			if RG2_out == 5'd15
				RDec_TOTR <= 1;
			else
				RDec_TOTR <= 0;
				
			if RG2_out == 5'd16
				RDec_TR <= 1;
			else
				RDec_TR <= 0;
				
			if RG2_out == 5'd17
				RDec_PC <= 1;
			else
				RDec_PC <= 0;
			
			if RG2_out == 5'd18
				RDec_AR <= 1;
			else
				RDec_AR <= 0;
				
			if RG2_out == 5'd19
				RDec_MDDR <= 1;
			else
				RDec_MDDR <= 0;
				
			if RG2_out == 5'd31
				begin
					RDec_R1 <= 1;
					RDec_R2 <= 1;
					RDec_R3 <= 1;
					RDec_R4 <= 1;
					RDec_R5 <= 1;
					RDec_R6 <= 1;
					RDec_R7 <= 1;
					RDec_R8 <= 1;
					RDec_R9 <= 1;
					RDec_R10 <= 1;
					RDec_R11 <= 1;
					RDec_R12 <= 1;
					RDec_R13 <= 1;
					RDec_R14 <= 1;
					RDec_TOTR <= 1;
					RDec_TR <= 1;
					RDec_PC <= 1;
					RDec_AR <= 1;
					RDec_MDDR <= 1;
					RDec_IR <= 1;
				end
		end 
			
		
	if (MUX4S == 2'd2)
		begin
			if MUX4D_out == 5'd1
				RDec_R1 <= 1;
			else
				RDec_R1 <= 0;
				
			if MUX4D_out == 5'd2
				RDec_R2 <= 1;
			else
				RDec_R2 <= 0;
				
			if MUX4D_out == 5'd3
				RDec_R3 <= 1;
			else
				RDec_R3 <= 0;
				
			if MUX4D_out == 5'd4
				RDec_R4 <= 1;
			else
				RDec_R4 <= 0;
				
			if MUX4D_out == 5'd5
				RDec_R5 <= 1;
			else
				RDec_R5 <= 0;
				
			if MUX4D_out == 5'd6
				RDec_R6 <= 1;
			else
				RDec_R6 <= 0;
				
			if MUX4D_out == 5'd7
				RDec_R7 <= 1;
			else
				RDec_R7 <= 0;
				
			if MUX4D_out == 5'd8
				RDec_R8 <= 1;
			else
				RDec_R8 <= 0;
				
			if MUX4D_out == 5'd9
				RDec_R9 <= 1;
			else
				RDec_R9 <= 0;
				
			if MUX4D_out == 5'd10
				RDec_R10 <= 1;
			else
				RDec_R10 <= 0;
				
			if MUX4D_out == 5'd11
				RDec_R11 <= 1;
			else
				RDec_R11 <= 0;
				
			if MUX4D_out == 5'd12
				RDec_R12 <= 1;
			else
				RDec_R12 <= 0;
				
			if MUX4D_out == 5'd13
				RDec_R13 <= 1;
			else
				RDec_R13 <= 0;
				
			if MUX4D_out == 5'd14
				RDec_R14 <= 1;
			else
				RDec_R14 <= 0;
				
			if MUX4D_out == 5'd15
				RDec_TOTR <= 1;
			else
				RDec_TOTR <= 0;
				
			if MUX4D_out == 5'd16
				RDec_TR <= 1;
			else
				RDec_TR <= 0;
				
			if MUX4D_out == 5'd17
				RDec_PC <= 1;
			else
				RDec_PC <= 0;
			
			if MUX4D_out == 5'd18
				RDec_AR <= 1;
			else
				RDec_AR <= 0;
				
			if MUX4D_out == 5'd19
				RDec_MDDR <= 1;
			else
				RDec_MDDR <= 0;
				
			if MUX4D_out == 5'd31
				begin
					RDec_R1 <= 1;
					RDec_R2 <= 1;
					RDec_R3 <= 1;
					RDec_R4 <= 1;
					RDec_R5 <= 1;
					RDec_R6 <= 1;
					RDec_R7 <= 1;
					RDec_R8 <= 1;
					RDec_R9 <= 1;
					RDec_R10 <= 1;
					RDec_R11 <= 1;
					RDec_R12 <= 1;
					RDec_R13 <= 1;
					RDec_R14 <= 1;
					RDec_TOTR <= 1;
					RDec_TR <= 1;
					RDec_PC <= 1;
					RDec_AR <= 1;
					RDec_MDDR <= 1;
					RDec_IR <= 1;
				
				end 
		end
		
	end	
 
endmodule





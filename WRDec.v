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
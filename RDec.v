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





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

always @(posedge Clock) 
	begin 
	if (MUX1S == 2'd1)
		begin
			if (RG1_out == 5'd1)
				A_BUS_out <= R1_out;
			if (RG1_out == 5'd2)
				A_BUS_out <= R2_out;
			if (RG1_out == 5'd3)
				A_BUS_out <= R3_out;
			if (RG1_out == 5'd4)
				A_BUS_out <= R4_out;
			if (RG1_out == 5'd5)
				A_BUS_out <= R5_out;
			if (RG1_out == 5'd6)
				A_BUS_out <= R6_out;
			if (RG1_out == 5'd7)
				A_BUS_out <= R7_out;
			if (RG1_out == 5'd8)
				A_BUS_out <= R8_out;
			if (RG1_out == 5'd9)
				A_BUS_out <= R9_out;
			if (RG1_out == 5'd10)
				A_BUS_out <= R10_out;
			if (RG1_out == 5'd11)
				A_BUS_out <= R11_out;
			if (RG1_out == 5'd12)
				A_BUS_out <= R12_out;
			if (RG1_out == 5'd13)
				A_BUS_out <= R13_out;
			if (RG1_out == 5'd14)
				A_BUS_out <= R14_out;
			if (RG1_out == 5'd15)
				A_BUS_out <= TOTR_out;
			if (RG1_out == 5'd18)
				A_BUS_out <= AR_out;
			if (RG1_out == 5'd19)
				A_BUS_out <= MDDR_out;
			if (RG1_out == 5'd20)
				A_BUS_out <= AC_out;
			if (RG1_out == 5'd21)
				A_BUS_out <= MIDR_out;
		end 
		
	else if (MUX1S == 2'd2)
		begin
			if (MUX1D_out == 5'd1)
				A_BUS_out <= R1_out;
			if (MUX1D_out == 5'd2)
				A_BUS_out <= R2_out;
			if (MUX1D_out == 5'd3)
				A_BUS_out <= R3_out;
			if (MUX1D_out == 5'd4)
				A_BUS_out <= R4_out;
			if (MUX1D_out == 5'd5)
				A_BUS_out <= R5_out;
			if (MUX1D_out == 5'd6)
				A_BUS_out <= R6_out;
			if (MUX1D_out == 5'd7)
				A_BUS_out <= R7_out;
			if (MUX1D_out == 5'd8)
				A_BUS_out <= R8_out;
			if (MUX1D_out == 5'd9)
				A_BUS_out <= R9_out;
			if (MUX1D_out == 5'd10)
				A_BUS_out <= R10_out;
			if (MUX1D_out == 5'd11)
				A_BUS_out <= R11_out;
			if (MUX1D_out == 5'd12)
				A_BUS_out <= R12_out;
			if (MUX1D_out == 5'd13)
				A_BUS_out <= R13_out;
			if (MUX1D_out == 5'd14)
				A_BUS_out <= R14_out;
			if (MUX1D_out == 5'd15)
				A_BUS_out <= TOTR_out;
			if (MUX1D_out == 5'd18)
				A_BUS_out <= AR_out;
			if (MUX1D_out == 5'd19)
				A_BUS_out <= MDDR_out;
			if (MUX1D_out == 5'd20)
				A_BUS_out <= AC_out;
			if (MUX1D_out == 5'd21)
				A_BUS_out <= MIDR_out;
		end 
	else if (MUX1S == 2'd3)
		begin
			if (RG2_out == 5'd1)
				A_BUS_out <= R1_out;
			if (RG2_out == 5'd2)
				A_BUS_out <= R2_out;
			if (RG2_out == 5'd3)
				A_BUS_out <= R3_out;
			if (RG2_out == 5'd4)
				A_BUS_out <= R4_out;
			if (RG2_out == 5'd5)
				A_BUS_out <= R5_out;
			if (RG2_out == 5'd6)
				A_BUS_out <= R6_out;
			if (RG2_out == 5'd7)
				A_BUS_out <= R7_out;
			if (RG2_out == 5'd8)
				A_BUS_out <= R8_out;
			if (RG2_out == 5'd9)
				A_BUS_out <= R9_out;
			if (RG2_out == 5'd10)
				A_BUS_out <= R10_out;
			if (RG2_out == 5'd11)
				A_BUS_out <= R11_out;
			if (RG2_out == 5'd12)
				A_BUS_out <= R12_out;
			if (RG2_out == 5'd13)
				A_BUS_out <= R13_out;
			if (RG2_out == 5'd14)
				A_BUS_out <= R14_out;
			if (RG2_out == 5'd15)
				A_BUS_out <= TOTR_out;
			if (RG2_out == 5'd18)
				A_BUS_out <= AR_out;
			if (RG2_out == 5'd19)
				A_BUS_out <= MDDR_out;
			if (RG2_out == 5'd20)
				A_BUS_out <= AC_out;
			if (RG2_out == 5'd21)
				A_BUS_out <= MIDR_out;
		end 
	
	end  
 
endmodule

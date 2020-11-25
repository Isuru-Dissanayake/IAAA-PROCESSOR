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
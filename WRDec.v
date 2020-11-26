module WRDec( 
input Clock,
input [15:0] i_out, 

input [15:0] TR_out, 
input [15:0] RG2_out, 
input [1:0] MUX3S, 
input [4:0] MUX3D_out, 

output reg [19:0] WRDec_out

/*output WRDec_R1
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
output WRDec_IR*/); 

always @(posedge Clock) 
	begin 
	if (MUX3S == 2'd2)
		begin
			if (RG2_out == 5'd1)
				WRDec_out <= 20'b00000000000000000001;
				
			if (RG2_out == 5'd2)
				WRDec_out <= 20'b00000000000000000010;
				
			if (RG2_out == 5'd3)
				WRDec_out <= 20'b00000000000000000100;
				
			if (RG2_out == 5'd4)
				WRDec_out <= 20'b00000000000000001000;
				
			if (RG2_out == 5'd5)
				WRDec_out <= 20'b00000000000000010000;
				
			if (RG2_out == 5'd6)
				WRDec_out <= 20'b00000000000000100000;
				
			if (RG2_out == 5'd7)
				WRDec_out <= 20'b00000000000001000000;
				
			if (RG2_out == 5'd8)
				WRDec_out <= 20'b00000000000010000000;
				
			if (RG2_out == 5'd9)
				WRDec_out <= 20'b00000000000100000000;
				
			if (RG2_out == 5'd10)
				WRDec_out <= 20'b00000000001000000000;
				
			if (RG2_out == 5'd11)
				WRDec_out <= 20'b00000000010000000000;
				
			if (RG2_out == 5'd12)
				WRDec_out <= 20'b00000000100000000000;
				
			if (RG2_out == 5'd13)
				WRDec_out <= 20'b00000001000000000000;
				
			if (RG2_out == 5'd14)
				WRDec_out <= 20'b00000010000000000000;
				
			if (RG2_out == 5'd15)
				WRDec_out <= 20'b00000100000000000000;
				
			if (RG2_out == 5'd16)
				WRDec_out <= 20'b00001000000000000000;
				
			if (RG2_out == 5'd17)
				WRDec_out <= 20'b00010000000000000000;
			
			if (RG2_out == 5'd18)
				WRDec_out <= 20'b00100000000000000000;
				
			if (RG2_out == 5'd21)
				WRDec_out <= 20'b01000000000000000000;
				
			if (RG2_out == 5'd22)
				WRDec_out <= 20'b10000000000000000000;
				
			if (RG2_out == 5'd31)
				WRDec_out <= 20'b11111111111111111111;
				
		end 
			
		
	if (MUX3S == 2'd1)
			
		begin
			if (MUX3D_out == 5'd1)
				WRDec_out <= 20'b00000000000000000001;
				
			if (MUX3D_out == 5'd2)
				WRDec_out <= 20'b00000000000000000010;
				
			if (MUX3D_out == 5'd3)
				WRDec_out <= 20'b00000000000000000100;
				
			if (MUX3D_out == 5'd4)
				WRDec_out <= 20'b00000000000000001000;
				
			if (MUX3D_out == 5'd5)
				WRDec_out <= 20'b00000000000000010000;
				
			if (MUX3D_out == 5'd6)
				WRDec_out <= 20'b00000000000000100000;
				
			if (MUX3D_out == 5'd7)
				WRDec_out <= 20'b00000000000001000000;
				
			if (MUX3D_out == 5'd8)
				WRDec_out <= 20'b00000000000010000000;
				
			if (MUX3D_out == 5'd9)
				WRDec_out <= 20'b00000000000100000000;
				
			if (MUX3D_out == 5'd10)
				WRDec_out <= 20'b00000000001000000000;
				
			if (MUX3D_out == 5'd11)
				WRDec_out <= 20'b00000000010000000000;
				
			if (MUX3D_out == 5'd12)
				WRDec_out <= 20'b00000000100000000000;
				
			if (MUX3D_out == 5'd13)
				WRDec_out <= 20'b00000001000000000000;
				
			if (MUX3D_out == 5'd14)
				WRDec_out <= 20'b00000010000000000000;
				
			if (MUX3D_out == 5'd15)
				WRDec_out <= 20'b00000100000000000000;
				
			if (MUX3D_out == 5'd16)
				WRDec_out <= 20'b00001000000000000000;
				
			if (MUX3D_out == 5'd17)
				WRDec_out <= 20'b00010000000000000000;
			
			if (MUX3D_out == 5'd18)
				WRDec_out <= 20'b00100000000000000000;
				
			if (MUX3D_out == 5'd21)
				WRDec_out <= 20'b01000000000000000000;
				
			if (MUX3D_out == 5'd22)
				WRDec_out <= 20'b10000000000000000000;
				
			if (MUX3D_out == 5'd31)
				WRDec_out <= 20'b11111111111111111111;
				
		end 
		
	if (MUX3S == 2'd3)

				
		begin
			if (TR_out == 5'd1)
				WRDec_out <= 20'b00000000000000000001;
				
			if (TR_out == 5'd2)
				WRDec_out <= 20'b00000000000000000010;
				
			if (TR_out == 5'd3)
				WRDec_out <= 20'b00000000000000000100;
				
			if (TR_out == 5'd4)
				WRDec_out <= 20'b00000000000000001000;
				
			if (TR_out == 5'd5)
				WRDec_out <= 20'b00000000000000010000;
				
			if (TR_out == 5'd6)
				WRDec_out <= 20'b00000000000000100000;
				
			if (TR_out == 5'd7)
				WRDec_out <= 20'b00000000000001000000;
				
			if (TR_out == 5'd8)
				WRDec_out <= 20'b00000000000010000000;
				
			if (TR_out == 5'd9)
				WRDec_out <= 20'b00000000000100000000;
				
			if (TR_out == 5'd10)
				WRDec_out <= 20'b00000000001000000000;
				
			if (TR_out == 5'd11)
				WRDec_out <= 20'b00000000010000000000;
				
			if (TR_out == 5'd12)
				WRDec_out <= 20'b00000000100000000000;
				
			if (TR_out == 5'd13)
				WRDec_out <= 20'b00000001000000000000;
				
			if (TR_out == 5'd14)
				WRDec_out <= 20'b00000010000000000000;
				
			if (TR_out == 5'd15)
				WRDec_out <= 20'b00000100000000000000;
				
			if (TR_out == 5'd16)
				WRDec_out <= 20'b00001000000000000000;
				
			if (TR_out == 5'd17)
				WRDec_out <= 20'b00010000000000000000;
			
			if (TR_out == 5'd18)
				WRDec_out <= 20'b00100000000000000000;
				
			if (TR_out == 5'd21)
				WRDec_out <= 20'b01000000000000000000;
				
			if (TR_out == 5'd22)
				WRDec_out <= 20'b10000000000000000000;
				
			if (TR_out == 5'd31)
				WRDec_out <= 20'b11111111111111111111;
				
		end
		
	end	
 
endmodule

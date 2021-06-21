module RDec( 
input Clock,
input [4:0] RG2_out, 
input [1:0] MUX4S, 
input [4:0] MUX4D_out, 

output reg [18:0] RDec_out

/*output RDec_R1
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
output RDec_AR*/
); 

always @(posedge Clock) 
	begin 
	if (MUX4S == 2'd0)
		begin
		RDec_out <= 19'b0000000000000000000;
		end
		
	if (MUX4S == 2'd1)
		begin
			if (RG2_out == 5'd1)
				RDec_out <= 19'b0000000000000000001;
				
			if (RG2_out == 5'd2)
				RDec_out <= 19'b0000000000000000010;
				
			if (RG2_out == 5'd3)
				RDec_out <= 19'b0000000000000000100;
				
			if (RG2_out == 5'd4)
				RDec_out <= 19'b0000000000000001000;
				
			if (RG2_out == 5'd5)
				RDec_out <= 19'b0000000000000010000;
				
			if (RG2_out == 5'd6)
				RDec_out <= 19'b0000000000000100000;
				
			if (RG2_out == 5'd7)
				RDec_out <= 19'b0000000000001000000;
				
			if (RG2_out == 5'd8)
				RDec_out <= 19'b0000000000010000000;
				
			if (RG2_out == 5'd9)
				RDec_out <= 19'b0000000000100000000;
				
			if (RG2_out == 5'd10)
				RDec_out <= 19'b0000000001000000000;
				
			if (RG2_out == 5'd11)
				RDec_out <= 19'b0000000010000000000;
				
			if (RG2_out == 5'd12)
				RDec_out <= 19'b0000000100000000000;
				
			if (RG2_out == 5'd13)
				RDec_out <= 19'b0000001000000000000;
				
			if (RG2_out == 5'd14)
				RDec_out <= 19'b0000010000000000000;
				
			if (RG2_out == 5'd15)
				RDec_out <= 19'b0000100000000000000;
				
			if (RG2_out == 5'd16)
				RDec_out <= 19'b0001000000000000000;
				
			if (RG2_out == 5'd17)
				RDec_out <= 19'b0010000000000000000;
			
			if (RG2_out == 5'd18)
				RDec_out <= 19'b0100000000000000000;
				
			if (RG2_out == 5'd19)
				RDec_out <= 19'b1000000000000000000;
				
			if (RG2_out == 5'd31)
				RDec_out <= 19'b1111111111111111111;
				
		end 
	
		
	if (MUX4S == 2'd2)
		begin
			if (MUX4D_out == 5'd1)
				RDec_out <= 19'b0000000000000000001;
				
			if (MUX4D_out == 5'd2)
				RDec_out <= 19'b0000000000000000010;
				
			if (MUX4D_out == 5'd3)
				RDec_out <= 19'b0000000000000000100;
				
			if (MUX4D_out == 5'd4)
				RDec_out <= 19'b0000000000000001000;
				
			if (MUX4D_out == 5'd5)
				RDec_out <= 19'b0000000000000010000;
				
			if (MUX4D_out == 5'd6)
				RDec_out <= 19'b0000000000000100000;
				
			if (MUX4D_out == 5'd7)
				RDec_out <= 19'b0000000000001000000;
				
			if (MUX4D_out == 5'd8)
				RDec_out <= 19'b0000000000010000000;
				
			if (MUX4D_out == 5'd9)
				RDec_out <= 19'b0000000000100000000;
				
			if (MUX4D_out == 5'd10)
				RDec_out <= 19'b0000000001000000000;
				
			if (MUX4D_out == 5'd11)
				RDec_out <= 19'b0000000010000000000;
				
			if (MUX4D_out == 5'd12)
				RDec_out <= 19'b0000000100000000000;
				
			if (MUX4D_out == 5'd13)
				RDec_out <= 19'b0000001000000000000;
				
			if (MUX4D_out == 5'd14)
				RDec_out <= 19'b0000010000000000000;
				
			if (MUX4D_out == 5'd15)
				RDec_out <= 19'b0000100000000000000;
				
			if (MUX4D_out == 5'd16)
				RDec_out <= 19'b0001000000000000000;
				
			if (MUX4D_out == 5'd17)
				RDec_out <= 19'b0010000000000000000;
			
			if (MUX4D_out == 5'd18)
				RDec_out <= 19'b0100000000000000000;
				
			if (MUX4D_out == 5'd19)
				RDec_out <= 19'b1000000000000000000;
				
			if (MUX4D_out == 5'd31)
				RDec_out <= 19'b1111111111111111111;
			
			
		end 
		
		
	end

	
 
endmodule





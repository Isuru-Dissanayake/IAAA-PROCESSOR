module i( 
input [15:0] i,
output reg [15:0] i_out); 

always @(i)
    begin
		i_out <= i;
    end
 
endmodule 
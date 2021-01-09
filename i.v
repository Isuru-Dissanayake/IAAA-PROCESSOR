module i( 
input [15:0] core_id,
output reg [15:0] i_out); 

always @(core_id)
    begin
		i_out <= core_id;
    end
 
endmodule 
`timescale 1ns/1ns

module testbench();
  reg clk;
  reg [19:0] WRDec_out;
  reg [15:0] MIDR_out;
  wire [3:0] IR_out;
  
  IR ir(
    .Clock (clk), 
    .WRDec_out(WRDec_out), 
    .MIDR_out(MIDR_out), 
    .IR_out(IR_out));
  
  always #5 clk= ~clk;
  
  initial begin
    clk=0; 
    WRDec_out=20'b00000000000000000000; 
    MIDR_out=16'b0101010101010101;
    #10 $display("ir_out=%b", IR_out);
    
    WRDec_out=20'b10000000000000000000; 
    MIDR_out=16'b0101010101010101;
    #10 $display("ir_out=%b", IR_out);
    
    WRDec_out=20'b11111111111111111111; 
    MIDR_out=16'b0000000000000000;
	#10 $display("ir_out=%b", IR_out);
    
    WRDec_out=20'b00000000000000000000;  
    MIDR_out=16'b0101010101010101;
	#10 $display("ir_out=%b", IR_out);
    
  end
endmodule
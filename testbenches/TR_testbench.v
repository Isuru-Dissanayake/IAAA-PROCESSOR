`timescale 1ns/1ns

module testbench();
  reg clk;
  reg [19:0] WRDec_out;
  reg [4:0] RG2_out;
  wire [4:0] TR_out;
  
  TR ir(
    .Clock (clk), 
    .WRDec_out(WRDec_out), 
    .RG2_out(RG2_out), 
    .TR_out(TR_out));
  
  always #5 clk= ~clk;
  
  initial begin
    clk=0; 
    WRDec_out=20'b00000000000000000000; 
    RG2_out=4'b0101;
    #10 $display("ir_out=%b", TR_out);
    
    WRDec_out=20'b00001000000000000000; 
    RG2_out=4'b0101;
    #10 $display("ir_out=%b", TR_out);
    
    WRDec_out=20'b11111111111111111111; 
    RG2_out=4'b0000;
    #10 $display("ir_out=%b", TR_out);
    
    WRDec_out=20'b00001000000000000000;  
    RG2_out=4'b0000;
    #10 $display("ir_out=%b", TR_out);
    
  end
endmodule
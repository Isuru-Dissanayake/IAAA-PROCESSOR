// Code your testbench here
// or browse Examples
`timescale 1ns/1ns
module testbench();
  reg clk;
  reg [19:0] WRDec_out;
  reg [18:0] RDec_out;
  //reg [15:0] MIDR_out;
  reg [15:0] A_BUS_out;
  //wire [3:0] IR_out;
  wire [15:0] AR_out;
  
  /*IR ir(
    .Clock (clk), 
    .WRDec_out(WRDec_out), 
    .MIDR_out(MIDR_out), 
    .IR_out(IR_out));*/
  
  AR ar(
    .Clock(clk),
    .WRDec_out(WRDec_out),
    .RDec_out(RDec_out),
    .A_BUS_out(A_BUS_out),
    .AR_out(AR_out));
  
  always #5 clk= ~clk;
  
  initial begin
    clk=0; 
    WRDec_out=20'b00000000000000000000; 
    A_BUS_out=16'b0101010101010101;
    #10 $display("ar_out=%b", AR_out);
    
    WRDec_out=20'b00000000000000000100; 
    A_BUS_out=16'b0101010101010101;
    #10 $display("ar_out=%b", AR_out);
    
    WRDec_out=20'b00000000000000000000;
    RDec_out=19'b0000000000000000010; 
    A_BUS_out=16'b0101010101010101;
    #10 $display("ar_out=%b", AR_out);
    
    WRDec_out=20'b11111111111111111111; 
    A_BUS_out=16'b0000000000000000;
	#10 $display("ar_out=%b", AR_out);
    
    WRDec_out=20'b00000000000000000100;  
    RDec_out=19'b0000000000000000000;  
    A_BUS_out=16'b0101010101010101;
	#10 $display("ar_out=%b", AR_out);
    
  end
endmodule
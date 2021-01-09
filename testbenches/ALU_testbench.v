// Code your testbench here
// or browse Examples
`timescale 1ns/1ns

module testbench();
  reg clk;
  reg [19:0] WRDec_out;
  reg [15:0] MIDR_out;
  wire [3:0] IR_out;
  
  reg [15:0] A_BUS;
  reg [15:0] B_BUS;
  reg [3:0] ALUOp;
  wire [15:0] ALUOut;
  wire [0:0] Z;
  wire [0:0] Y;
  

  ALU alu(
    .Clock(clk),
    .In_1(A_BUS),
    .In_2(B_BUS),
    .ALUOp(ALUOp),
    .ALUOut(ALUOut),
    .Z(Z),
    .Y(Y)
  );
  
  always #5 clk= ~clk;
  
  initial begin
    
    clk=0; 
    
    A_BUS=16'b0000000000000101;
    B_BUS=16'b0000000000000011;
    ALUOp=4'd1;
    #10 
    $display("ALUOp=%b", ALUOp);
    $display("ALUOut=%b", ALUOut);
    $display("Z=%b", Z);
    $display("Y=%b", Y);
    
    ALUOp=4'd2;
    #10 
    $display("ALUOp=%b", ALUOp);
    $display("ALUOut=%b", ALUOut);
    $display("Z=%b", Z);
    $display("Y=%b", Y);
        
    ALUOp=4'd3;
    #10 
    $display("ALUOp=%b", ALUOp);
    $display("ALUOut=%b", ALUOut);
    $display("Z=%b", Z);
    $display("Y=%b", Y);

    ALUOp=4'd4;
    #10 
    $display("ALUOp=%b", ALUOp);
    $display("ALUOut=%b", ALUOut);
    $display("Z=%b", Z);
    $display("Y=%b", Y);
        
    ALUOp=4'd5;
    #10 
    $display("ALUOp=%b", ALUOp);
    $display("ALUOut=%b", ALUOut);
    $display("Z=%b", Z);
    $display("Y=%b", Y);

    ALUOp=4'd7;
    #10 
    $display("ALUOp=%b", ALUOp);
    $display("ALUOut=%b", ALUOut);
    $display("Z=%b", Z);
    $display("Y=%b", Y);
        
    ALUOp=4'd8;
    #10 
    $display("ALUOp=%b", ALUOp);
    $display("ALUOut=%b", ALUOut);
    $display("Z=%b", Z);
    $display("Y=%b", Y);
    
    /*WRDec_out=20'b00000000000000000000; 
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
	#10 $display("ir_out=%b", IR_out);*/
    
    
  end
endmodule
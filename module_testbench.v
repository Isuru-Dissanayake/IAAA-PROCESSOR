`timescale 1ns/1ns

module testbench();
  reg [15:0] a1;
  wire [15:0] y1;
  
  i i1(a1, y1);
  
  initial begin
    a1= 16'b0001000000000001;
    $display("i=%b", a1);
    #10
    $display("i_out=%b", y1);
  end
  
  
endmodule



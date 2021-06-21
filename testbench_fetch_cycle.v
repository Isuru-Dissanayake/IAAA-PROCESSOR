// Code your testbench here
// or browse Examples
`timescale 1ns/1ns

module testbench_fetch_cycle();
  reg clk;
  reg [19:0] WRDec_out;
  wire [15:0] MIDR_out;
  
  reg [15:0] A_BUS_out; 
  reg [18:0] RDec_out;
  reg pcd;
  
  reg [1:0] Control1;
  reg [1:0] Control2;
  reg [1:0] Control3;
  reg [1:0] Control4;
  reg [1:0] Control5;
  reg [1:0] Control6;
  reg [1:0] Control7;
  reg [1:0] Control8;
  reg [1:0] Control9;
  reg [1:0] Control10;
  reg [1:0] Control11;
  reg [1:0] Control12;
  reg [1:0] Control13;
  reg [1:0] Control14;
  reg [1:0] Control15;
  reg [1:0] Control16;

  reg [15:0] InstrAddr1;
  reg [15:0] InstrAddr2;
  reg [15:0] InstrAddr3;
  reg [15:0] InstrAddr4;
  reg [15:0] InstrAddr5;
  reg [15:0] InstrAddr6;
  reg [15:0] InstrAddr7;
  reg [15:0] InstrAddr8;
  reg [15:0] InstrAddr9;
  reg [15:0] InstrAddr10;
  reg [15:0] InstrAddr11;
  reg [15:0] InstrAddr12;
  reg [15:0] InstrAddr13;
  reg [15:0] InstrAddr14;
  reg [15:0] InstrAddr15;
  reg [15:0] InstrAddr16;
  
  wire [3:0] IR_out;
  wire [4:0] RG1_out;
  wire [4:0] RG2_out;
  wire [15:0] InstrOut1;
  wire [15:0] InstrOut2;
  wire [15:0] InstrOut3;
  wire [15:0] InstrOut4;
  wire [15:0] InstrOut5;
  wire [15:0] InstrOut6;
  wire [15:0] InstrOut7;
  wire [15:0] InstrOut8;
  wire [15:0] InstrOut9;
  wire [15:0] InstrOut10;
  wire [15:0] InstrOut11;
  wire [15:0] InstrOut12;
  wire [15:0] InstrOut13;
  wire [15:0] InstrOut14;
  wire [15:0] InstrOut15;
  wire [15:0] InstrOut16;
  
  wire [15:0] PC_out;
  
  MIDR midr(
    .clock (clk),
    .InstrOut(InstrOut1),
    .MIDR_Out(MIDR_out)
  );
  
  IR ir(
    .Clock (clk), 
    .WRDec_out(WRDec_out), 
    .MIDR_out(MIDR_out), 
    .IR_out(IR_out));
  
  RG1 rg1(
    .MIDR_out(MIDR_out),
    .RG1_out(RG1_out)
  );
  
  RG2 rg2(
    .MIDR_out(MIDR_out),
    .RG2_out(RG2_out)
  );
   
  PC pc(
  	.Clock (clk),
    .A_BUS_out(A_BUS_out), 
    .WRDec_out(WRDec_out),
    .RDec_out(RDec_out),
    .pcd(pcd),
    .PC_out(PC_out)
  );
  
  instruction_memory instr_mem(
    .clock (clk),
    .Control1(Control1),
    .Control2(Control2),
    .Control3(Control3),
    .Control4(Control4),
    .Control5(Control5),
    .Control6(Control6),
    .Control7(Control7),
    .Control8(Control8),
    .Control9(Control9),
    .Control10(Control10),
    .Control11(Control11),
    .Control12(Control12),
    .Control13(Control13),
    .Control14(Control14),
    .Control15(Control15),
    .Control16(Control16),
    .InstrAddr1(PC_out),
    .InstrAddr2(InstrAddr2),
    .InstrAddr3(InstrAddr3),
    .InstrAddr4(InstrAddr4),
    .InstrAddr5(InstrAddr5),
    .InstrAddr6(InstrAddr6),
    .InstrAddr7(InstrAddr7),
    .InstrAddr8(InstrAddr8),
    .InstrAddr9(InstrAddr9),
    .InstrAddr10(InstrAddr10),
    .InstrAddr11(InstrAddr11),
    .InstrAddr12(InstrAddr12),
    .InstrAddr13(InstrAddr13),
    .InstrAddr14(InstrAddr14),
    .InstrAddr15(InstrAddr15),
    .InstrAddr16(InstrAddr16),
    .InstrOut1(InstrOut1),
    .InstrOut2(InstrOut2),
    .InstrOut3(InstrOut3),
    .InstrOut4(InstrOut4),
    .InstrOut5(InstrOut5),
    .InstrOut6(InstrOut6),
    .InstrOut7(InstrOut7),
    .InstrOut8(InstrOut8),
    .InstrOut9(InstrOut9),
    .InstrOut10(InstrOut10),
    .InstrOut11(InstrOut11),
    .InstrOut12(InstrOut12),
    .InstrOut13(InstrOut13),
    .InstrOut14(InstrOut14),
    .InstrOut15(InstrOut15),
    .InstrOut16(InstrOut16)
  );
  

  always #5 clk= ~clk;
  
  initial begin
    clk=0; 
    pcd=0;
    Control1=2'b1;
    WRDec_out=20'b00000000000000000000;
    #10 
    $display("instr_out=%b", InstrOut1);
    $display("----------------");
    

    pcd=1;
    Control1=2'b0;
    WRDec_out=20'b00000000000000000000;
    #10 
    $display("MIDR_out=%b", MIDR_out);
    $display("----------------");
    
    pcd=0;
    Control1=2'b0;
    WRDec_out=20'b10000000000000000000;
	#10 $display("ir_out=%b", IR_out);
    $display("rg1_out=%b", RG1_out);
    $display("rg2_out=%b", RG2_out);
    $display("instr_out=%b", InstrOut1);
    $display("----------------");
    
        pcd=0;
    Control1=2'b1;
    WRDec_out=20'b00000000000000000000;
    #10 
    $display("instr_out=%b", InstrOut1);
    $display("----------------");
    

    pcd=1;
    Control1=2'b0;
    WRDec_out=20'b00000000000000000000;
    #10 
    $display("MIDR_out=%b", MIDR_out);
    $display("----------------");
    
    pcd=0;
    Control1=2'b0;
    WRDec_out=20'b10000000000000000000;
	#10 $display("ir_out=%b", IR_out);
    $display("rg1_out=%b", RG1_out);
    $display("rg2_out=%b", RG2_out);
    $display("instr_out=%b", InstrOut1);
    $display("----------------");
    
        pcd=0;
    Control1=2'b1;
    WRDec_out=20'b00000000000000000000;
    #10 
    $display("instr_out=%b", InstrOut1);
    $display("----------------");
    

    pcd=1;
    Control1=2'b0;
    WRDec_out=20'b00000000000000000000;
    #10 
    $display("MIDR_out=%b", MIDR_out);
    $display("----------------");
    
    pcd=0;
    Control1=2'b0;
    WRDec_out=20'b10000000000000000000;
	#10 $display("ir_out=%b", IR_out);
    $display("rg1_out=%b", RG1_out);
    $display("rg2_out=%b", RG2_out);
    $display("instr_out=%b", InstrOut1);
    $display("----------------");

    
  end
endmodule
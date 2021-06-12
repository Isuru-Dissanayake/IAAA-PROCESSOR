`timescale 1ns/1ns

module data_memory_tb();
  reg clk;
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

  reg [15:0] DataAddr1;
  reg [15:0] DataAddr2;
  reg [15:0] DataAddr3;
  reg [15:0] DataAddr4;
  reg [15:0] DataAddr5;
  reg [15:0] DataAddr6;
  reg [15:0] DataAddr7;
  reg [15:0] DataAddr8;
  reg [15:0] DataAddr9;
  reg [15:0] DataAddr10;
  reg [15:0] DataAddr11;
  reg [15:0] DataAddr12;
  reg [15:0] DataAddr13;
  reg [15:0] DataAddr14;
  reg [15:0] DataAddr15;
  reg [15:0] DataAddr16;

  reg [15:0] DataIn1;
  reg [15:0] DataIn2;
  reg [15:0] DataIn3;
  reg [15:0] DataIn4;
  reg [15:0] DataIn5;
  reg [15:0] DataIn6;
  reg [15:0] DataIn7;
  reg [15:0] DataIn8;
  reg [15:0] DataIn9;
  reg [15:0] DataIn10;
  reg [15:0] DataIn11;
  reg [15:0] DataIn12;
  reg [15:0] DataIn13;
  reg [15:0] DataIn14;
  reg [15:0] DataIn15;
  reg [15:0] DataIn16;

  wire [15:0] DataOut1;
  wire [15:0] DataOut2;
  wire [15:0] DataOut3;
  wire [15:0] DataOut4;
  wire [15:0] DataOut5;
  wire [15:0] DataOut6;
  wire [15:0] DataOut7;
  wire [15:0] DataOut8;
  wire [15:0] DataOut9;
  wire [15:0] DataOut10;
  wire [15:0] DataOut11;
  wire [15:0] DataOut12;
  wire [15:0] DataOut13;
  wire [15:0] DataOut14;
  wire [15:0] DataOut15;
  wire [15:0] DataOut16;
  
  data_memory datamemory(
    .Clock (clk),
    .Control1 (Control1),
    .Control2 (Control2),
    .Control3 (Control3),
    .Control4 (Control4),
    .Control5 (Control5),
    .Control6 (Control6),
    .Control7 (Control7),
    .Control8 (Control8),
    .Control9 (Control9),
    .Control10 (Control10),
    .Control11 (Control11),
    .Control12 (Control12),
    .Control13 (Control13),
    .Control14 (Control14),
    .Control15 (Control15),
    .Control16 (Control16),
    .DataAddr1 (DataAddr1),
    .DataAddr2 (DataAddr2),
    .DataAddr3 (DataAddr3),
    .DataAddr4 (DataAddr4),
    .DataAddr5 (DataAddr5),
    .DataAddr6 (DataAddr6),
    .DataAddr7 (DataAddr7),
    .DataAddr8 (DataAddr8),
    .DataAddr9 (DataAddr9),
    .DataAddr10 (DataAddr10),
    .DataAddr11 (DataAddr11),
    .DataAddr12 (DataAddr12),
    .DataAddr13 (DataAddr13),
    .DataAddr14 (DataAddr14),
    .DataAddr15 (DataAddr15),
    .DataAddr16 (DataAddr16),
    .DataIn1 (DataIn1),
    .DataIn2 (DataIn2),
    .DataIn3 (DataIn3),
    .DataIn4 (DataIn4),
    .DataIn5 (DataIn5),
    .DataIn6 (DataIn6),
    .DataIn7 (DataIn7),
    .DataIn8 (DataIn8),
    .DataIn9 (DataIn9),
    .DataIn10 (DataIn10),
    .DataIn11 (DataIn11),
    .DataIn12 (DataIn12),
    .DataIn13 (DataIn13),
    .DataIn14 (DataIn14),
    .DataIn15 (DataIn15),
    .DataIn16 (DataIn16),
    .DataOut1 (DataOut1),
    .DataOut2 (DataOut2),
    .DataOut3 (DataOut3),
    .DataOut4 (DataOut4),
    .DataOut5 (DataOut5),
    .DataOut6 (DataOut6),
    .DataOut7 (DataOut7),
    .DataOut8 (DataOut8),
    .DataOut9 (DataOut9),
    .DataOut10 (DataOut10),
    .DataOut11 (DataOut11),
    .DataOut12 (DataOut12),
    .DataOut13 (DataOut13),
    .DataOut14 (DataOut14),
    .DataOut15 (DataOut15),
    .DataOut16 (DataOut16));
  
  reg [15:0] ram[255:0];
  
//   initial begin
//   ram[0]= 16'd3;
//   ram[1]= 16'd2;
//   ram[2]= 16'd2;
//   ram[3]= 16'd1;
//   ram[4]= 16'd7;
//   ram[5]= 16'd11;
//   ram[6]= 16'd17;
//   ram[7]= 16'd1;
//   ram[8]= 16'd2;
//   ram[9]= 16'd3;
//   ram[10]= 16'd4;
//   ram[11]= 16'd1;
//   ram[12]= 16'd2;
//   ram[13]= 16'd3;
//   ram[14]= 16'd4;
//   ram[15]= 16'd5;
//   ram[16]= 16'd6;
//   end
  
  always #5 clk= ~clk;
  
  initial begin
  	clk=0;
    Control1 = 2'd2;
    DataAddr1 = 16'd3;
    #10 $display("Data_Out1=%b", DataOut1);
    
    Control1 = 2'd3;
    DataIn1 = 16'd3;
    DataAddr1 = 16'd3;
    #10
    Control1 = 2'd2;
    DataAddr1 = 16'd3;
    #10 $display("Data_Out1=%b", DataOut1);
    
    Control2 = 2'd2;
    DataAddr2 = 16'd6;
    #10 $display("Data_Out2=%b", DataOut2);
    
    Control2 = 2'd3;
    DataIn2 = 16'd6;
    DataAddr2 = 16'd6;
    #10
    Control2 = 2'd2;
    DataAddr2 = 16'd6;
    #10 $display("Data_Out2=%b", DataOut2);
    
    Control3 = 2'd2;
    DataAddr3 = 16'd9;
    #10 $display("Data_Out3=%b", DataOut3);
    
    Control3 = 2'd3;
    DataIn3 = 16'd9;
    DataAddr3 = 16'd9;
    #10
    Control3 = 2'd2;
    DataAddr3 = 16'd9;
    #10 $display("Data_Out3=%b", DataOut3);
    
    Control4 = 2'd2;
    DataAddr4 = 16'd12;
    #10 $display("Data_Out4=%b", DataOut4);
    
    Control4 = 2'd3;
    DataIn4 = 16'd12;
    DataAddr4 = 16'd12;
    #10
    Control4 = 2'd2;
    DataAddr4 = 16'd12;
    #10 $display("Data_Out4=%b", DataOut4);
    
    Control5 = 2'd2;
    DataAddr5 = 16'd15;
    #10 $display("Data_Out5=%b", DataOut5);
    
    Control5 = 2'd3;
    DataIn5 = 16'd15;
    DataAddr5 = 16'd15;
    #10
    Control5 = 2'd2;
    DataAddr5 = 16'd15;
    #10 $display("Data_Out5=%b", DataOut5);
    
    Control6 = 2'd2;
    DataAddr6 = 16'd2;
    #10 $display("Data_Out6=%b", DataOut6);
    
    Control6 = 2'd3;
    DataIn6 = 16'd2;
    DataAddr6 = 16'd2;
    #10
    Control6 = 2'd2;
    DataAddr6 = 16'd2;
    #10 $display("Data_Out6=%b", DataOut6);
    
    Control7 = 2'd2;
    DataAddr7 = 16'd5;
    #10 $display("Data_Out7=%b", DataOut7);
    
    Control7 = 2'd3;
    DataIn7 = 16'd5;
    DataAddr7 = 16'd5;
    #10
    Control7 = 2'd2;
    DataAddr7 = 16'd5;
    #10 $display("Data_Out7=%b", DataOut7);
    
    Control8 = 2'd2;
    DataAddr8 = 16'd8;
    #10 $display("Data_Out8=%b", DataOut8);
    
    Control8 = 2'd3;
    DataIn8 = 16'd8;
    DataAddr8 = 16'd8;
    #10
    Control8 = 2'd2;
    DataAddr8 = 16'd8;
    #10 $display("Data_Out8=%b", DataOut8);
    
    Control9 = 2'd2;
    DataAddr9 = 16'd11;
    #10 $display("Data_Out9=%b", DataOut9);
    
    Control9 = 2'd3;
    DataIn9 = 16'd11;
    DataAddr9 = 16'd11;
    #10
    Control9 = 2'd2;
    DataAddr9 = 16'd11;
    #10 $display("Data_Out9=%b", DataOut9);
    
    Control10 = 2'd2;
    DataAddr10 = 16'd14;
    #10 $display("Data_Out10=%b", DataOut10);
    
    Control10 = 2'd3;
    DataIn10 = 16'd14;
    DataAddr10 = 16'd14;
    #10
    Control10 = 2'd2;
    DataAddr10 = 16'd14;
    #10 $display("Data_Out10=%b", DataOut10);
    
    Control11 = 2'd2;
    DataAddr11 = 16'd1;
    #10 $display("Data_Out11=%b", DataOut11);
    
    Control11 = 2'd3;
    DataIn11 = 16'd1;
    DataAddr11 = 16'd1;
    #10
    Control11 = 2'd2;
    DataAddr11 = 16'd1;
    #10 $display("Data_Out11=%b", DataOut11);
    
    Control12 = 2'd2;
    DataAddr12 = 16'd4;
    #10 $display("Data_Out12=%b", DataOut12);
    
    Control12 = 2'd3;
    DataIn12 = 16'd4;
    DataAddr12 = 16'd4;
    #10
    Control12 = 2'd2;
    DataAddr12 = 16'd4;
    #10 $display("Data_Out12=%b", DataOut12);
    
    Control13 = 2'd2;
    DataAddr13 = 16'd7;
    #10 $display("Data_Out13=%b", DataOut13);
    
    Control13 = 2'd3;
    DataIn13 = 16'd7;
    DataAddr13 = 16'd7;
    #10
    Control13 = 2'd2;
    DataAddr13 = 16'd7;
    #10 $display("Data_Out13=%b", DataOut13);
    
    Control14 = 2'd2;
    DataAddr14 = 16'd10;
    #10 $display("Data_Out14=%b", DataOut14);
    
    Control14 = 2'd3;
    DataIn14 = 16'd10;
    DataAddr14 = 16'd10;
    #10
    Control14 = 2'd2;
    DataAddr14 = 16'd10;
    #10 $display("Data_Out14=%b", DataOut14);
    
    Control15 = 2'd2;
    DataAddr15 = 16'd13;
    #10 $display("Data_Out15=%b", DataOut15);
    
    Control15 = 2'd3;
    DataIn15 = 16'd13;
    DataAddr15 = 16'd13;
    #10
    Control15 = 2'd2;
    DataAddr15 = 16'd13;
    #10 $display("Data_Out15=%b", DataOut15);
    
    Control16 = 2'd2;
    DataAddr16 = 16'd0;
    #10 $display("Data_Out16=%b", DataOut16);
    
    Control16 = 2'd3;
    DataIn16 = 16'd0;
    DataAddr16 = 16'd0;
    #10
    Control16 = 2'd2;
    DataAddr16 = 16'd0;
    #10 $display("Data_Out16=%b", DataOut16);
    
    
  end 
endmodule
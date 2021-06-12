module data_memory(
input Clock,
input [1:0] Control1,
input [1:0] Control2,
input [1:0] Control3,
input [1:0] Control4,
input [1:0] Control5,
input [1:0] Control6,
input [1:0] Control7,
input [1:0] Control8,
input [1:0] Control9,
input [1:0] Control10,
input [1:0] Control11,
input [1:0] Control12,
input [1:0] Control13,
input [1:0] Control14,
input [1:0] Control15,
input [1:0] Control16,

input [15:0] DataAddr1,
input [15:0] DataAddr2,
input [15:0] DataAddr3,
input [15:0] DataAddr4,
input [15:0] DataAddr5,
input [15:0] DataAddr6,
input [15:0] DataAddr7,
input [15:0] DataAddr8,
input [15:0] DataAddr9,
input [15:0] DataAddr10,
input [15:0] DataAddr11,
input [15:0] DataAddr12,
input [15:0] DataAddr13,
input [15:0] DataAddr14,
input [15:0] DataAddr15,
input [15:0] DataAddr16,

input [15:0] DataIn1,
input [15:0] DataIn2,
input [15:0] DataIn3,
input [15:0] DataIn4,
input [15:0] DataIn5,
input [15:0] DataIn6,
input [15:0] DataIn7,
input [15:0] DataIn8,
input [15:0] DataIn9,
input [15:0] DataIn10,
input [15:0] DataIn11,
input [15:0] DataIn12,
input [15:0] DataIn13,
input [15:0] DataIn14,
input [15:0] DataIn15,
input [15:0] DataIn16,

output reg [15:0] DataOut1,
output reg [15:0] DataOut2,
output reg [15:0] DataOut3,
output reg [15:0] DataOut4,
output reg [15:0] DataOut5,
output reg [15:0] DataOut6,
output reg [15:0] DataOut7,
output reg [15:0] DataOut8,
output reg [15:0] DataOut9,
output reg [15:0] DataOut10,
output reg [15:0] DataOut11,
output reg [15:0] DataOut12,
output reg [15:0] DataOut13,
output reg [15:0] DataOut14,
output reg [15:0] DataOut15,
output reg [15:0] DataOut16
);

reg [15:0] ram[255:0];
  
initial begin
ram[0]= 16'd3;
ram[1]= 16'd2;
ram[2]= 16'd2;
ram[3]= 16'd1;
ram[4]= 16'd7;
ram[5]= 16'd11;
ram[6]= 16'd17;
ram[7]= 16'd1;
ram[8]= 16'd2;
ram[9]= 16'd3;
ram[10]= 16'd4;
ram[11]= 16'd1;
ram[12]= 16'd2;
ram[13]= 16'd3;
ram[14]= 16'd4;
ram[15]= 16'd5;
ram[16]= 16'd6;
end

always @(posedge Clock)
begin

if(Control1 == 2'd2)
DataOut1 <= ram[DataAddr1];
else if(Control1 == 2'd3)
ram[DataAddr1] <= DataIn1;

if(Control2 == 2'd2)
DataOut2 <= ram[DataAddr2];
else if(Control2 == 2'd3)
ram[DataAddr2] <= DataIn2;

if(Control3 == 2'd2)
DataOut3 <= ram[DataAddr3];
else if(Control3 == 2'd3)
ram[DataAddr3] <= DataIn3;

if(Control4 == 2'd2)
DataOut4 <= ram[DataAddr4];
else if(Control4 == 2'd3)
ram[DataAddr4] <= DataIn4;

if(Control5 == 2'd2)
DataOut5 <= ram[DataAddr5];
else if(Control5 == 2'd3)
ram[DataAddr5] <= DataIn5;

if(Control6 == 2'd2)
DataOut6 <= ram[DataAddr6];
else if(Control6 == 2'd3)
ram[DataAddr6] <= DataIn6;

if(Control7 == 2'd2)
DataOut7 <= ram[DataAddr7];
else if(Control7 == 2'd3)
ram[DataAddr7] <= DataIn7;

if(Control8 == 2'd2)
DataOut8 <= ram[DataAddr8];
else if(Control8 == 2'd3)
ram[DataAddr8] <= DataIn8;

if(Control9 == 2'd2)
DataOut9 <= ram[DataAddr9];
else if(Control9 == 2'd3)
ram[DataAddr9] <= DataIn9;

if(Control10 == 2'd2)
DataOut10 <= ram[DataAddr10];
else if(Control10 == 2'd3)
ram[DataAddr10] <= DataIn10;

if(Control11 == 2'd2)
DataOut11 <= ram[DataAddr11];
else if(Control11 == 2'd3)
ram[DataAddr11] <= DataIn11;

if(Control12 == 2'd2)
DataOut12 <= ram[DataAddr12];
else if(Control12 == 2'd3)
ram[DataAddr12] <= DataIn12;

if(Control13 == 2'd2)
DataOut13 <= ram[DataAddr13];
else if(Control13 == 2'd3)
ram[DataAddr13] <= DataIn13;

if(Control14 == 2'd2)
DataOut14 <= ram[DataAddr14];
else if(Control14 == 2'd3)
ram[DataAddr14] <= DataIn14;

if(Control15 == 2'd2)
DataOut15 <= ram[DataAddr15];
else if(Control15 == 2'd3)
ram[DataAddr15] <= DataIn15;

if(Control16 == 2'd2)
DataOut16 <= ram[DataAddr16];

else if(Control16 == 2'd3)
ram[DataAddr16] <= DataIn16;
end

endmodule



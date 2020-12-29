// 00 - ---
// 01 - read iram  // instruction memory
// 10 - read dram   // data memory read
// 11 - write dram // data memory write


module data_memory(
input clock,
input [1:0] Control,

input [15:0] DataAddr1,
//input [15:0] DataAddr2,
//input [15:0] DataAddr3,
//input [15:0] DataAddr4,
//input [15:0] DataAddr5,
//input [15:0] DataAddr6,
//input [15:0] DataAddr7,
//input [15:0] DataAddr8,
//input [15:0] DataAddr9,
//input [15:0] DataAddr10,
//input [15:0] DataAddr11,
//input [15:0] DataAddr12,
//input [15:0] DataAddr13,
//input [15:0] DataAddr14,
//input [15:0] DataAddr15,
//input [15:0] DataAddr16,

input [15:0] DataIn1,
//input [15:0] DataIn2,
//input [15:0] DataIn3,
//input [15:0] DataIn4,
//input [15:0] DataIn5,
//input [15:0] DataIn6,
//input [15:0] DataIn7,
//input [15:0] DataIn8,
//input [15:0] DataIn9,
//input [15:0] DataIn10,
//input [15:0] DataIn11,
//input [15:0] DataIn12,
//input [15:0] DataIn13,
//input [15:0] DataIn14,
//input [15:0] DataIn15,
//input [15:0] DataIn16,

output reg [15:0] DataOut);

reg [15:0] ram[256];

always @(posedge clock)
begin

if(Control == 2'd2)
DataOut <= ram[DataAddr1];

else if(Control == 2'd3)
ram[DataAddr1] <= DataIn1;

end

endmodule



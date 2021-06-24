`timescale 1ns/1ns
module processor(
	input CLOCK_50,
	
	output [15:0] datain1,
	output [15:0] dataout1,
	output [15:0] instrout1,
	output [1:0] memcontrol1,
	output [15:0] pc1,
	output [15:0] addr1,

	//output [15:0] ar_output,
	//output [15:0] rpc_output,
	//output [15:0] MDDR_out,
	//output [1:0] memcontrol,
	output [3:0] ir_out,
	output [15:0] r1_out,
	output [15:0] r2_out,
	output [15:0] r3_out,
	output [15:0] r4_out,
	output [15:0] r5_out,
	output [15:0] r6_out,
	output [15:0] r7_out,
	output [15:0] r8_out,
	output [15:0] r9_out,
	output [15:0] r10_out,
	output [15:0] r11_out,
	output [15:0] r12_out,
	output [15:0] r13_out,
	output [15:0] r14_out,
//	output [15:0] rpc_out,
	output [15:0] i_out,
	output [15:0] totr_out,
//	output [15:0] ar_out,
//	output [15:0] mddr_out,
//	output [15:0] midr_out,
	output [4:0] rg1_out,
	output [4:0] rg2_out,
	output [4:0] tr_out,	
	output [15:0] abus_out,
	output [15:0] bbus_out,
	output [19:0] wrdec_out,
	output [18:0] rdec_out,
	output [15:0] ac_out,

	//control signals from the state machine
	output [3:0] ALUOp,
//	output [1:0] MUX1S,
//	output [4:0] MUX1D,
//	output [1:0] MUX2S,
//	output [4:0] MUX2D,
//	output [1:0] MUX3S,
//	output [4:0] MUX3D,
//	output [1:0] MUX4S,
//	output [4:0] MUX4D,
	output pcd,
	
	output [5:0] current_reg,

	//additional data paths
	output Z,
	output Y
);

//wire [15:0] addr1;		//wire [15:0] addr2;wire [15:0] addr3;wire [15:0] addr4;wire [15:0] addr5;wire [15:0] addr6;wire [15:0] addr7;wire [15:0] addr8;wire [15:0] addr9;wire [15:0] addr10;wire [15:0] addr11;wire [15:0] addr12;wire [15:0] addr13;wire [15:0] addr14;wire [15:0] addr15;wire [15:0] addr16;
//wire [15:0] pc1;			//wire [15:0] pc2;wire [15:0] pc3;wire [15:0] pc4;wire [15:0] pc5;wire [15:0] pc6;wire [15:0] pc7;wire [15:0] pc8;wire [15:0] pc9;wire [15:0] pc10;wire [15:0] pc11;wire [15:0] pc12;wire [15:0] pc13;wire [15:0] pc14;wire [15:0] pc15;wire [15:0] pc16;
//wire [1:0] memcontrol1;	//wire [1:0] memcontrol2;wire [1:0] memcontrol3;wire [1:0] memcontrol4;wire [1:0] memcontrol5;wire [1:0] memcontrol6;wire [1:0] memcontrol7;wire [1:0] memcontrol8;wire [1:0] memcontrol9;wire [1:0] memcontrol10;wire [1:0] memcontrol11;wire [1:0] memcontrol12;wire [1:0] memcontrol13;wire [1:0] memcontrol14;wire [1:0] memcontrol15;wire [1:0] memcontrol16;
//wire [15:0] dataout1;	//wire [15:0] dataout2;wire [15:0] dataout3;wire [15:0] dataout4;wire [15:0] dataout5;wire [15:0] dataout6;wire [15:0] dataout7;wire [15:0] dataout8;wire [15:0] dataout9;wire [15:0] dataout10;wire [15:0] dataout11;wire [15:0] dataout12;wire [15:0] dataout13;wire [15:0] dataout14;wire [15:0] dataout15;wire [15:0] dataout16;
//wire [15:0] instrout1;	//wire [15:0] instrout2;wire [15:0] instrout3;wire [15:0] instrout4;wire [15:0] instrout5;wire [15:0] instrout6;wire [15:0] instrout7;wire [15:0] instrout8;wire [15:0] instrout9;wire [15:0] instrout10;wire [15:0] instrout11;wire [15:0] instrout12;wire [15:0] instrout13;wire [15:0] instrout14;wire [15:0] instrout15;wire [15:0] instrout16;
//wire [15:0] datain1;		//wire [15:0] datain2;wire [15:0] datain3;wire [15:0] datain4;wire [15:0] datain5;wire [15:0] datain6;wire [15:0] datain7;wire [15:0] datain8;wire [15:0] datain9;wire [15:0] datain10;wire [15:0] datain11;wire [15:0] datain12;wire [15:0] datain13;wire [15:0] datain14;wire [15:0] datain15;wire [15:0] datain16;

Core core1 (.Clock(CLOCK_50),.core_id(16'b0000000000000001),.MDDR_in(dataout1), .MIDR_in(instrout1), .ar_output(addr1), .rpc_output(pc1), .MDDR_out(datain1), .memcontrol(memcontrol1), 
// from inside core
//.MDDR_out(MDDR_out),
//.memcontrol(memcontrol),
.ir_out(ir_out),
.r1_out(r1_out),
.r2_out(r2_out),
.r3_out(r3_out),
.r4_out(r4_out),
.r5_out(r5_out),
.r6_out(r6_out),
.r7_out(r7_out),
.r8_out(r8_out),
.r9_out(r9_out),
.r10_out(r10_out),
.r11_out(r11_out),
.r12_out(r12_out),
.r13_out(r13_out),
.r14_out(r14_out),
//.rpc_out(rpc_out),
.i_out(i_out),
.totr_out(totr_out),
//.ar_out(ar_out),
//.mddr_out(mddr_out),
//.midr_out(midr_out),
.rg1_out(rg1_out),
.rg2_out(rg2_out),
.tr_out(tr_out),	
.abus_out(abus_out),
.bbus_out(bbus_out),
.wrdec_out(wrdec_out),
.rdec_out(rdec_out),
.ac_out(ac_out),
//control signals from the state machine
.ALUOp(ALUOp),
//.MUX1S(MUX1S),
//.MUX1D(MUX1D),
//.MUX2S(MUX2S),
//.MUX2D(MUX2D),
//.MUX3S(MUX3S),
//.MUX3D(MUX3D),
//.MUX4S(MUX4S),
//.MUX4D(MUX4D),
.pcd(pcd),
//additional data paths
.Z(Z),
.Y(Y),
.current_reg(current_reg)
);
//Core core2 (.Clock(CLOCK_50),.core_id(16'b0000000000000010),.MDDR_in(dataout2), .MIDR_in(instrout2), .ar_output(addr2), .rpc_output(pc2), .MDDR_out(datain2), .memcontrol(memcontrol2));
//Core core3 (.Clock(CLOCK_50),.core_id(16'b0000000000000011),.MDDR_in(dataout3), .MIDR_in(instrout3), .ar_output(addr3), .rpc_output(pc3), .MDDR_out(datain3), .memcontrol(memcontrol3));
//Core core4 (.Clock(CLOCK_50),.core_id(16'b0000000000000100),.MDDR_in(dataout4), .MIDR_in(instrout4), .ar_output(addr4), .rpc_output(pc4), .MDDR_out(datain4), .memcontrol(memcontrol4));
//Core core5 (.Clock(CLOCK_50),.core_id(16'b0000000000000101),.MDDR_in(dataout5), .MIDR_in(instrout5), .ar_output(addr5), .rpc_output(pc5), .MDDR_out(datain5), .memcontrol(memcontrol5));
//Core core6 (.Clock(CLOCK_50),.core_id(16'b0000000000000110),.MDDR_in(dataout6), .MIDR_in(instrout6), .ar_output(addr6), .rpc_output(pc6), .MDDR_out(datain6), .memcontrol(memcontrol6));
//Core core7 (.Clock(CLOCK_50),.core_id(16'b0000000000000111),.MDDR_in(dataout7), .MIDR_in(instrout7), .ar_output(addr7), .rpc_output(pc7), .MDDR_out(datain7), .memcontrol(memcontrol7));
//Core core8 (.Clock(CLOCK_50),.core_id(16'b0000000000001000),.MDDR_in(dataout8), .MIDR_in(instrout8), .ar_output(addr8), .rpc_output(pc8), .MDDR_out(datain8), .memcontrol(memcontrol8));
//Core core9 (.Clock(CLOCK_50),.core_id(16'b0000000000001001),.MDDR_in(dataout9), .MIDR_in(instrout9), .ar_output(addr9), .rpc_output(pc9), .MDDR_out(datain9), .memcontrol(memcontrol9));
//Core core10(.Clock(CLOCK_50),.core_id(16'b0000000000001010),.MDDR_in(dataout10),.MIDR_in(instrout10),.ar_output(addr10),.rpc_output(pc10),.MDDR_out(datain10),.memcontrol(memcontrol10));
//Core core11(.Clock(CLOCK_50),.core_id(16'b0000000000001011),.MDDR_in(dataout11),.MIDR_in(instrout11),.ar_output(addr11),.rpc_output(pc11),.MDDR_out(datain11),.memcontrol(memcontrol11));
//Core core12(.Clock(CLOCK_50),.core_id(16'b0000000000001100),.MDDR_in(dataout12),.MIDR_in(instrout12),.ar_output(addr12),.rpc_output(pc12),.MDDR_out(datain12),.memcontrol(memcontrol12));
//Core core13(.Clock(CLOCK_50),.core_id(16'b0000000000001101),.MDDR_in(dataout13),.MIDR_in(instrout13),.ar_output(addr13),.rpc_output(pc13),.MDDR_out(datain13),.memcontrol(memcontrol13));
//Core core14(.Clock(CLOCK_50),.core_id(16'b0000000000001110),.MDDR_in(dataout14),.MIDR_in(instrout14),.ar_output(addr14),.rpc_output(pc14),.MDDR_out(datain14),.memcontrol(memcontrol14));
//Core core15(.Clock(CLOCK_50),.core_id(16'b0000000000001111),.MDDR_in(dataout15),.MIDR_in(instrout15),.ar_output(addr15),.rpc_output(pc15),.MDDR_out(datain15),.memcontrol(memcontrol15));
//Core core16(.Clock(CLOCK_50),.core_id(16'b0000000000010000),.MDDR_in(dataout16),.MIDR_in(instrout16),.ar_output(addr16),.rpc_output(pc16),.MDDR_out(datain16),.memcontrol(memcontrol16));

instruction_memory instruction_memory(.clock(CLOCK_50),
.Control1(memcontrol1),//.Control2(memcontrol2),.Control3(memcontrol3),.Control4(memcontrol4),.Control5(memcontrol5),.Control6(memcontrol6),.Control7(memcontrol7),.Control8(memcontrol8),.Control9(memcontrol9),.Control10(memcontrol10),.Control11(memcontrol11),.Control12(memcontrol12),.Control13(memcontrol13),.Control14(memcontrol14),.Control15(memcontrol15),.Control16(memcontrol16),
.InstrAddr1(pc1),//.InstrAddr2(pc2),.InstrAddr3(pc3),.InstrAddr4(pc4),.InstrAddr5(pc5),.InstrAddr6(pc6),.InstrAddr7(pc7),.InstrAddr8(pc8),.InstrAddr9(pc9),.InstrAddr10(pc10),.InstrAddr11(pc11),.InstrAddr12(pc12),.InstrAddr13(pc13),.InstrAddr14(pc14),.InstrAddr15(pc15),.InstrAddr16(pc16),
.InstrOut1(instrout1)//,.InstrOut2(instrout2),.InstrOut3(instrout3),.InstrOut4(instrout4),.InstrOut5(instrout5),.InstrOut6(instrout6),.InstrOut7(instrout7),.InstrOut8(instrout8),.InstrOut9(instrout9),.InstrOut10(instrout10),.InstrOut11(instrout11),.InstrOut12(instrout12),.InstrOut13(instrout13),.InstrOut14(instrout14),.InstrOut15(instrout15),.InstrOut16(instrout16)
);

data_memory data_memory(.clock(CLOCK_50),
.Control1(memcontrol1),//.Control2(memcontrol2),.Control3(memcontrol3),.Control4(memcontrol4),.Control5(memcontrol5),.Control6(memcontrol6),.Control7(memcontrol7),.Control8(memcontrol8),.Control9(memcontrol9),.Control10(memcontrol10),.Control11(memcontrol11),.Control12(memcontrol12),.Control13(memcontrol13),.Control14(memcontrol14),.Control15(memcontrol15),.Control16(memcontrol16),
.DataAddr1(addr1),//.DataAddr2(addr2),.DataAddr3(addr3),.DataAddr4(addr4),.DataAddr5(addr5),.DataAddr6(addr6),.DataAddr7(addr7),.DataAddr8(addr8),.DataAddr9(addr9),.DataAddr10(addr10),.DataAddr11(addr11),.DataAddr12(addr12),.DataAddr13(addr13),.DataAddr14(addr14),.DataAddr15(addr15),.DataAddr16(addr16),
.DataIn1(datain1),//.DataIn2(datain2),.DataIn3(datain3),.DataIn4(datain4),.DataIn5(datain5),.DataIn6(datain6),.DataIn7(datain7),.DataIn8(datain8),.DataIn9(datain9),.DataIn10(datain10),.DataIn11(datain11),.DataIn12(datain12),.DataIn13(datain13),.DataIn14(datain14),.DataIn15(datain15),.DataIn16(datain16),
.DataOut1(dataout1)//,.DataOut2(dataout2),.DataOut3(dataout3),.DataOut4(dataout4),.DataOut5(dataout5),.DataOut6(dataout6),.DataOut7(dataout7),.DataOut8(dataout8),.DataOut9(dataout9),.DataOut10(dataout10),.DataOut11(dataout11),.DataOut12(dataout12),.DataOut13(dataout13),.DataOut14(dataout14),.DataOut15(dataout15),.DataOut16(dataout16)
);

endmodule
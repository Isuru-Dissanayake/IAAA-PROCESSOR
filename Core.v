//`timescale 1ns/1ns

module core (
input Clock,
input [15:0] core_id,
input MDDR,
input MIDR,

output ar_output,
output rpc_output);

wire [15:0] r1_out;
wire [15:0] r2_out;
wire [15:0] r3_out;
wire [15:0] r4_out;
wire [15:0] r5_out;
wire [15:0] r6_out;
wire [15:0] r7_out;
wire [15:0] r8_out;
wire [15:0] r9_out;
wire [15:0] r10_out;
wire [15:0] r11_out;
wire [15:0] r12_out;
wire [15:0] r13_out;
wire [15:0] r14_out;
wire [15:0] rpc_out;
wire [15:0] i_out;
wire [15:0] totr_out;
wire [15:0] ar_out;
wire [15:0] mddr_out;
wire [15:0] midr_out;
wire [4:0] rg1_out;
wire [4:0] rg2_out;
wire [4:0] tr_out;
wire [3:0] ir_out;		
wire [15:0] abus_out;
wire [15:0] bbus_out;
wire [19:0] wrdec_out;
wire [18:0] rdec_out;
wire [15:0] ac_out;

//control signals from the state machine
wire [1:0] MEM;
wire [3:0] ALUOp;
wire [1:0] MUX1S;
wire [4:0] MUX1D;
wire [1:0] MUX2S;
wire [4:0] MUX2D;
wire [1:0] MUX3S;
wire [4:0] MUX3D;
wire [1:0] MUX4S;
wire [4:0] MUX4D;
wire pcd;

//additional data paths
wire Z;
wire Y;

Register R1(.Clock(Clock), .WRDEC_R(wrdec_out[1]), .RDEC_R(rdec_out[1]), .A_BUS_out(abus_out), .R_out(r1_out)); 
Register R2(.Clock(Clock), .WRDEC_R(wrdec_out[2]), .RDEC_R(rdec_out[2]), .A_BUS_out(abus_out), .R_out(r2_out)); 
Register R3(.Clock(Clock), .WRDEC_R(wrdec_out[3]), .RDEC_R(rdec_out[3]), .A_BUS_out(abus_out), .R_out(r3_out)); 
Register R4(.Clock(Clock), .WRDEC_R(wrdec_out[4]), .RDEC_R(rdec_out[4]), .A_BUS_out(abus_out), .R_out(r4_out)); 
Register R5(.Clock(Clock), .WRDEC_R(wrdec_out[5]), .RDEC_R(rdec_out[5]), .A_BUS_out(abus_out), .R_out(r5_out)); 
Register R6(.Clock(Clock), .WRDEC_R(wrdec_out[6]), .RDEC_R(rdec_out[6]), .A_BUS_out(abus_out), .R_out(r6_out)); 
Register R7(.Clock(Clock), .WRDEC_R(wrdec_out[7]), .RDEC_R(rdec_out[7]), .A_BUS_out(abus_out), .R_out(r7_out)); 
Register R8(.Clock(Clock), .WRDEC_R(wrdec_out[8]), .RDEC_R(rdec_out[8]), .A_BUS_out(abus_out), .R_out(r8_out)); 
Register R9(.Clock(Clock), .WRDEC_R(wrdec_out[9]), .RDEC_R(rdec_out[9]), .A_BUS_out(abus_out), .R_out(r9_out)); 
Register R10(.Clock(Clock), .WRDEC_R(wrdec_out[10]), .RDEC_R(rdec_out[10]), .A_BUS_out(abus_out), .R_out(r10_out)); 
Register R11(.Clock(Clock), .WRDEC_R(wrdec_out[11]), .RDEC_R(rdec_out[11]), .A_BUS_out(abus_out), .R_out(r11_out)); 
Register R12(.Clock(Clock), .WRDEC_R(wrdec_out[12]), .RDEC_R(rdec_out[12]), .A_BUS_out(abus_out), .R_out(r12_out)); 
Register R13(.Clock(Clock), .WRDEC_R(wrdec_out[13]), .RDEC_R(rdec_out[13]), .A_BUS_out(abus_out), .R_out(r13_out)); 
Register R14(.Clock(Clock), .WRDEC_R(wrdec_out[14]), .RDEC_R(rdec_out[14]), .A_BUS_out(abus_out), .R_out(r14_out)); 
Register TOTR(.Clock(Clock), .WRDEC_R(wrdec_out[15]), .RDEC_R(rdec_out[15]), .A_BUS_out(abus_out), .R_out(totr_out)); 
TR TR(.Clock(Clock), .WRDec_out(wrdec_out), .RG2_out(rg2_out), .RDEC_TR(rdec_out[16]),.TR_out(tr_out));
//PC PC(.Clock(Clock), .WRDec_out(wrdec_out[17]), .RDEC_PC(rdec_out[17]),.PC_out(rpc_out));
AR AR(.Clock(Clock), .WRDec_out(wrdec_out), .RDec_out(rdec_out), .A_BUS_out(abus_out), .AR_out(ar_out)); 
//MDDR MDDR();
//MIDR MIDR();
IR IR( .Clock(Clock), .WRDec_out(wrdec_out), .MIDR_out(midr_out), .IR_out(ir_out)); 
ALU ALU(.Clock(Clock), .In_1(abus_out), .In_2(bbus_out), .ALUOp(ALUOp), .ALUOut(ac_out), .Z(Z), .Y(Y));
i i( .core_id(core_id),.i_out(i_out)); 
RG1 RG1( .MIDR_Out(midr_out), .RG1_out(rg1_out));
RG2 RG2( .MIDR_Out(midr_out), .RG2_out(rg2_out));
WRDec WRDec( .Clock(Clock), .i_out(i_out), .TR_out(tr_out), .RG2_out(rg2_out), .MUX3S(MUX3S), .MUX3D_out(MUX3D), .WRDec_out(wrdec_out));
RDec RDec(.Clock(Clock),.RG2_out(rg2_out), .MUX4S(MUX4S), .MUX4D_out(MUX4D), .RDec_out(rdec_out));
A_BUS_MUX A_BUS_MUX( .Clock(Clock),.R1_out(r1_out), .R2_out(r2_out),.R3_out(r3_out),.R4_out(r4_out),.R5_out(r5_out),.R6_out(r6_out),.R7_out(r7_out),.R8_out(r8_out),.R9_out(r9_out),.R10_out(r10_out),.R11_out(r11_out),.R12_out(r12_out),.R13_out(r13_out),.R14_out(r14_out),.TOTR_out(totr_out), .R_out(tr_out), .PC_out(rpc_out), .AR_out(ar_out), .MDDR_out(mddr_out), .AC_out(ac_out), .MIDR_out(midr_out),.RG1_out(rg1_out), .RG2_out(rg2_out), .MUX1S(MUX1S), .MUX1D_out(MUX1D), .A_BUS_out(abus_out)); 
B_BUS_MUX B_BUS_MUX( .Clock(Clock),.i_out(i_out), .R1_out(r1_out), .R2_out(r2_out), .R3_out(r3_out), .R4_out(r4_out), .R5_out(r5_out), .R6_out(r6_out), .R7_out(r7_out), .R8_out(r8_out), .R9_out(r9_out), .R10_out(r10_out), .R11_out(r11_out), .R12_out(r12_out), .R13_out(r13_out), .R14_out(r14_out), .TOTR_out(totr_out), .RG2_out(rg2_out), .MUX2S(MUX2S), .MUX2D_out(MUX2D), .B_BUS_out(bbus_out)); 

endmodule 
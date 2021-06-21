`timescale 1ns/1ns
module testbench_ir();

reg Clock;
	
wire [15:0] datain1;
wire [15:0] dataout1;
wire [15:0] instrout1;
wire [1:0] memcontrol1;
wire [15:0] pc1;
wire [15:0] addr1;

//wire [15:0] ar_output;
//wire [15:0] rpc_output;
//wire [15:0] MDDR_out;
//wire [1:0] memcontrol;
wire [3:0] ir_out;
//wire [15:0] r1_out;
//wire [15:0] r2_out;
//wire [15:0] r3_out;
//wire [15:0] r4_out;
//wire [15:0] r5_out;
//wire [15:0] r6_out;
//wire [15:0] r7_out;
//wire [15:0] r8_out;
//wire [15:0] r9_out;
//wire [15:0] r10_out;
//wire [15:0] r11_out;
//wire [15:0] r12_out;
//wire [15:0] r13_out;
//wire [15:0] r14_out;
wire [15:0] rpc_out;
wire [15:0] i_out;
wire [15:0] totr_out;
wire [15:0] ar_out;
wire [15:0] mddr_out;
wire [15:0] midr_out;
wire [4:0] rg1_out;
wire [4:0] rg2_out;
wire [4:0] tr_out;	
wire [15:0] abus_out;
wire [15:0] bbus_out;
wire [19:0] wrdec_out;
wire [18:0] rdec_out;
wire [15:0] ac_out;

	//control signals from the state machine
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

wire [5:0] current_reg;

	//additional data paths
wire Z;
wire Y;

processor processor(.CLOCK_50(Clock),.datain1(datain1),.dataout1(dataout1),
.instrout1(instrout1),
.memcontrol1(memcontrol1),
.pc1(pc1),
.addr1(addr1),

//.ar_output(ar_output),
//.rpc_output(rpc_output),
//.MDDR_out(MDDR_out),
//.memcontrol(memcontrol),
.ir_out(ir_out),
//.r1_out(r1_out),
//.r2_out(r2_out),
//.r3_out(r3_out),
//.r4_out(r4_out),
//.r5_out(r5_out),
//.r6_out(r6_out),
//.r7_out(r7_out),
//.r8_out(r8_out),
//.r9_out(r9_out),
//.r10_out(r10_out),
//.r11_out(r11_out),
//.r12_out(r12_out),
//.r13_out(r13_out),
//.r14_out(r14_out),
//.rpc_out(rpc_out),
.i_out(i_out),
.totr_out(totr_out),
.ar_out(ar_out),
.mddr_out(mddr_out),
.midr_out(midr_out),
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
.MUX1S(MUX1S),
.MUX1D(MUX1D),
.MUX2S(MUX2S),
.MUX2D(MUX2D),
.MUX3S(MUX3S),
.MUX3D(MUX3D),
.MUX4S(MUX4S),
.MUX4D(MUX4D),
.pcd(pcd),
//additional data paths
.Z(Z),
.Y(Y),
.current_reg(current_reg)
);

always #5 Clock= ~Clock;

initial begin
    Clock=0; 
    #10 
    $display("ir_out=%b", ir_out);
	 $display("mddr_out=%b", datain1);
    $display("----------------");
	 
	     #10 
    $display("ir_out=%b", ir_out);
	 $display("mddr_out=%b", datain1);
    $display("----------------");
	 
	     #10 
    $display("ir_out=%b", ir_out);
	 $display("mddr_out=%b", datain1);
    $display("----------------");
	 
	     #10 
    $display("ir_out=%b", ir_out);
	 $display("mddr_out=%b", datain1);
    $display("----------------");
	 
	     #10 
    $display("ir_out=%b", ir_out);
	 $display("mddr_out=%b", datain1);
    $display("----------------");
	 
	     #10 
    $display("ir_out=%b", ir_out);
	 $display("mddr_out=%b", datain1);
    $display("----------------");
	 
	     #10 
    $display("ir_out=%b", ir_out);
	 $display("mddr_out=%b", datain1);
    $display("----------------");    
	 
	 #10 
    $display("ir_out=%b", ir_out);
	 $display("mddr_out=%b", datain1);
    $display("----------------");
	 
	     #10 
    $display("ir_out=%b", ir_out);
	 $display("mddr_out=%b", datain1);
    $display("----------------");
	 
	     #10 
    $display("ir_out=%b", ir_out);
	 $display("mddr_out=%b", datain1);
    $display("----------------");
	 
	     #10 
    $display("ir_out=%b", ir_out);
	 $display("mddr_out=%b", datain1);
    $display("----------------");
	 
	     #10 
    $display("ir_out=%b", ir_out);
	 $display("mddr_out=%b", datain1);
    $display("----------------");
	 
	     #10 
    $display("ir_out=%b", ir_out);
	 $display("mddr_out=%b", datain1);
    $display("----------------");
	 
	     #10 
    $display("ir_out=%b", ir_out);
	 $display("mddr_out=%b", datain1);
    $display("----------------");
	 
	     #10 
    $display("ir_out=%b", ir_out);
	 $display("mddr_out=%b", datain1);
    $display("----------------");
	 
	     #10 
    $display("ir_out=%b", ir_out);
	 $display("mddr_out=%b", datain1);
    $display("----------------");
	 
	     #10 
    $display("ir_out=%b", ir_out);
	 $display("mddr_out=%b", datain1);
    $display("----------------");
	 
	 end
	 
endmodule 
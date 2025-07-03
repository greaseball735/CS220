// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Jan 27 16:05:34 2025
// Host        : csews205 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /users/btech/rohitv23/assignment3_monday2/assignment3_monday2.sim/sim_1/impl/timing/xsim/test_time_impl.v
// Design      : fms
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "e4615d6e" *) (* sa = "0" *) (* sb = "1" *) 
(* sc = "2" *) (* sd = "3" *) (* se = "4" *) 
(* sf = "5" *) (* sg = "6" *) (* sh = "7" *) 
(* si = "8" *) (* sj = "9" *) 
(* NotValidForBitStream *)
module fms
   (clk,
    rst,
    in,
    z);
  input clk;
  input rst;
  input in;
  output z;

  wire \FSM_sequential_curr[1]_i_1_n_0 ;
  wire \FSM_sequential_curr[2]_i_1_n_0 ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]curr;
  wire in;
  wire in_IBUF;
  wire [3:0]next__0;
  wire p_0_in;
  wire rst;
  wire rst_IBUF;
  wire z;
  wire z_OBUF;
  wire z_i_2_n_0;

initial begin
 $sdf_annotate("test_time_impl.sdf",,,,"tool_control");
end
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFBEB0410)) 
    \FSM_sequential_curr[0]_i_1 
       (.I0(curr[3]),
        .I1(curr[0]),
        .I2(curr[2]),
        .I3(curr[1]),
        .I4(in_IBUF),
        .O(next__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00003508)) 
    \FSM_sequential_curr[1]_i_1 
       (.I0(in_IBUF),
        .I1(curr[1]),
        .I2(curr[2]),
        .I3(curr[0]),
        .I4(curr[3]),
        .O(\FSM_sequential_curr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00001E30)) 
    \FSM_sequential_curr[2]_i_1 
       (.I0(in_IBUF),
        .I1(curr[1]),
        .I2(curr[2]),
        .I3(curr[0]),
        .I4(curr[3]),
        .O(\FSM_sequential_curr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00008898)) 
    \FSM_sequential_curr[3]_i_1 
       (.I0(curr[3]),
        .I1(in_IBUF),
        .I2(curr[1]),
        .I3(curr[2]),
        .I4(curr[0]),
        .O(next__0[3]));
  (* FSM_ENCODED_STATES = "sd:1000,se:1001,sc:0010,sb:0001,sa:0000,sh:0100,sj:0110,sg:0111,si:0101,sf:0011" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(next__0[0]),
        .Q(curr[0]));
  (* FSM_ENCODED_STATES = "sd:1000,se:1001,sc:0010,sb:0001,sa:0000,sh:0100,sj:0110,sg:0111,si:0101,sf:0011" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\FSM_sequential_curr[1]_i_1_n_0 ),
        .Q(curr[1]));
  (* FSM_ENCODED_STATES = "sd:1000,se:1001,sc:0010,sb:0001,sa:0000,sh:0100,sj:0110,sg:0111,si:0101,sf:0011" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\FSM_sequential_curr[2]_i_1_n_0 ),
        .Q(curr[2]));
  (* FSM_ENCODED_STATES = "sd:1000,se:1001,sc:0010,sb:0001,sa:0000,sh:0100,sj:0110,sg:0111,si:0101,sf:0011" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(next__0[3]),
        .Q(curr[3]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF #(
    .CCIO_EN("TRUE")) 
    clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    in_IBUF_inst
       (.I(in),
        .O(in_IBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF z_OBUF_inst
       (.I(z_OBUF),
        .O(z));
  LUT1 #(
    .INIT(2'h1)) 
    z_i_1
       (.I0(rst_IBUF),
        .O(p_0_in));
  LUT5 #(
    .INIT(32'h00CC1200)) 
    z_i_2
       (.I0(curr[1]),
        .I1(in_IBUF),
        .I2(curr[2]),
        .I3(curr[0]),
        .I4(curr[3]),
        .O(z_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    z_reg
       (.C(clk_IBUF_BUFG),
        .CE(p_0_in),
        .D(z_i_2_n_0),
        .Q(z_OBUF),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

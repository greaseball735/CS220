// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Jan 27 16:11:41 2025
// Host        : csews205 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /users/btech/rohitv23/assignment3_monday1/assignment3_monday1.sim/sim_1/impl/timing/xsim/test_time_impl.v
// Design      : gray_FSM
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "bc54e261" *) (* S0 = "3'b000" *) (* S1 = "3'b001" *) 
(* S2 = "3'b011" *) (* S3 = "3'b010" *) (* S4 = "3'b110" *) 
(* S5 = "3'b111" *) (* S6 = "3'b101" *) (* S7 = "3'b100" *) 
(* NotValidForBitStream *)
module gray_FSM
   (clk,
    reset,
    gray_code,
    z);
  input clk;
  input reset;
  output [2:0]gray_code;
  output z;

  wire \FSM_onehot_gray_code_reg[0]_lopt_replica_1 ;
  wire \FSM_onehot_gray_code_reg_n_0_[1] ;
  wire \FSM_onehot_gray_code_reg_n_0_[2] ;
  wire \FSM_onehot_gray_code_reg_n_0_[3] ;
  wire \FSM_onehot_gray_code_reg_n_0_[4] ;
  wire \FSM_onehot_gray_code_reg_n_0_[5] ;
  wire \FSM_onehot_gray_code_reg_n_0_[6] ;
  wire \FSM_onehot_gray_code_reg_n_0_[7] ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]gray_code;
  wire [2:0]gray_code_OBUF;
  wire reset;
  wire reset_IBUF;
  wire z;
  wire z_OBUF;

initial begin
 $sdf_annotate("test_time_impl.sdf",,,,"tool_control");
end
  (* FSM_ENCODED_STATES = "S0:00000001,S1:00000010,S2:00000100,S3:00001000,S4:00010000,S5:00100000,S6:01000000,S7:10000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_gray_code_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_gray_code_reg_n_0_[7] ),
        .PRE(reset_IBUF),
        .Q(z_OBUF));
  (* FSM_ENCODED_STATES = "S0:00000001,S1:00000010,S2:00000100,S3:00001000,S4:00010000,S5:00100000,S6:01000000,S7:10000000" *) 
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_gray_code_reg[0]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_gray_code_reg_n_0_[7] ),
        .PRE(reset_IBUF),
        .Q(\FSM_onehot_gray_code_reg[0]_lopt_replica_1 ));
  (* FSM_ENCODED_STATES = "S0:00000001,S1:00000010,S2:00000100,S3:00001000,S4:00010000,S5:00100000,S6:01000000,S7:10000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_gray_code_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(z_OBUF),
        .Q(\FSM_onehot_gray_code_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "S0:00000001,S1:00000010,S2:00000100,S3:00001000,S4:00010000,S5:00100000,S6:01000000,S7:10000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_gray_code_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_gray_code_reg_n_0_[1] ),
        .Q(\FSM_onehot_gray_code_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "S0:00000001,S1:00000010,S2:00000100,S3:00001000,S4:00010000,S5:00100000,S6:01000000,S7:10000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_gray_code_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_gray_code_reg_n_0_[2] ),
        .Q(\FSM_onehot_gray_code_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "S0:00000001,S1:00000010,S2:00000100,S3:00001000,S4:00010000,S5:00100000,S6:01000000,S7:10000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_gray_code_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_gray_code_reg_n_0_[3] ),
        .Q(\FSM_onehot_gray_code_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "S0:00000001,S1:00000010,S2:00000100,S3:00001000,S4:00010000,S5:00100000,S6:01000000,S7:10000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_gray_code_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_gray_code_reg_n_0_[4] ),
        .Q(\FSM_onehot_gray_code_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "S0:00000001,S1:00000010,S2:00000100,S3:00001000,S4:00010000,S5:00100000,S6:01000000,S7:10000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_gray_code_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_gray_code_reg_n_0_[5] ),
        .Q(\FSM_onehot_gray_code_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "S0:00000001,S1:00000010,S2:00000100,S3:00001000,S4:00010000,S5:00100000,S6:01000000,S7:10000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_gray_code_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_onehot_gray_code_reg_n_0_[6] ),
        .Q(\FSM_onehot_gray_code_reg_n_0_[7] ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF #(
    .CCIO_EN("TRUE")) 
    clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \gray_code_OBUF[0]_inst 
       (.I(gray_code_OBUF[0]),
        .O(gray_code[0]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gray_code_OBUF[0]_inst_i_1 
       (.I0(\FSM_onehot_gray_code_reg_n_0_[6] ),
        .I1(\FSM_onehot_gray_code_reg_n_0_[5] ),
        .I2(\FSM_onehot_gray_code_reg_n_0_[1] ),
        .I3(\FSM_onehot_gray_code_reg_n_0_[2] ),
        .O(gray_code_OBUF[0]));
  OBUF \gray_code_OBUF[1]_inst 
       (.I(gray_code_OBUF[1]),
        .O(gray_code[1]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gray_code_OBUF[1]_inst_i_1 
       (.I0(\FSM_onehot_gray_code_reg_n_0_[5] ),
        .I1(\FSM_onehot_gray_code_reg_n_0_[4] ),
        .I2(\FSM_onehot_gray_code_reg_n_0_[2] ),
        .I3(\FSM_onehot_gray_code_reg_n_0_[3] ),
        .O(gray_code_OBUF[1]));
  OBUF \gray_code_OBUF[2]_inst 
       (.I(gray_code_OBUF[2]),
        .O(gray_code[2]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gray_code_OBUF[2]_inst_i_1 
       (.I0(\FSM_onehot_gray_code_reg_n_0_[7] ),
        .I1(\FSM_onehot_gray_code_reg_n_0_[6] ),
        .I2(\FSM_onehot_gray_code_reg_n_0_[4] ),
        .I3(\FSM_onehot_gray_code_reg_n_0_[5] ),
        .O(gray_code_OBUF[2]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF z_OBUF_inst
       (.I(\FSM_onehot_gray_code_reg[0]_lopt_replica_1 ),
        .O(z));
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

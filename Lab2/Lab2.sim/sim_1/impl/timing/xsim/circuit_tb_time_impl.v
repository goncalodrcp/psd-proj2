// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Mon Nov 19 00:35:14 2018
// Host        : coelhopc running 64-bit Ubuntu 18.10
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/josecoelho/Documents/IST/PSD/Labs/Lab2/psd-proj2/Lab2/Lab2.sim/sim_1/impl/timing/xsim/circuit_tb_time_impl.v
// Design      : circuit
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "d082d5b1" *) 
(* NotValidForBitStream *)
module circuit
   (Q00,
    Q01,
    Q10,
    Q11,
    x,
    x0,
    y,
    y0,
    clk,
    reset,
    P,
    done);
  input [9:0]Q00;
  input [9:0]Q01;
  input [9:0]Q10;
  input [9:0]Q11;
  input [7:0]x;
  input [7:0]x0;
  input [7:0]y;
  input [7:0]y0;
  input clk;
  input reset;
  output [9:0]P;
  output done;

  wire [9:0]P;
  wire [9:0]P_OBUF;
  wire [9:0]Q00;
  wire [9:0]Q00_IBUF;
  wire [9:0]Q01;
  wire [9:0]Q01_IBUF;
  wire [9:0]Q10;
  wire [9:0]Q10_IBUF;
  wire [9:0]Q11;
  wire [9:0]Q11_IBUF;
  wire [10:8]RB;
  wire [7:1]Rx;
  wire [7:1]Ry;
  wire [10:8]adder2_entry_a;
  wire [10:1]adder2_entry_b;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire done;
  wire [4:2]enables;
  wire inst_control_n_0;
  wire inst_control_n_1;
  wire inst_control_n_10;
  wire inst_control_n_11;
  wire inst_control_n_12;
  wire inst_control_n_13;
  wire inst_control_n_15;
  wire inst_control_n_16;
  wire inst_control_n_2;
  wire inst_control_n_21;
  wire inst_control_n_22;
  wire inst_control_n_23;
  wire inst_control_n_24;
  wire inst_control_n_25;
  wire inst_control_n_26;
  wire inst_control_n_27;
  wire inst_control_n_28;
  wire inst_control_n_29;
  wire inst_control_n_3;
  wire inst_control_n_30;
  wire inst_control_n_31;
  wire inst_control_n_32;
  wire inst_control_n_33;
  wire inst_control_n_34;
  wire inst_control_n_35;
  wire inst_control_n_36;
  wire inst_control_n_37;
  wire inst_control_n_38;
  wire inst_control_n_39;
  wire inst_control_n_4;
  wire inst_control_n_40;
  wire inst_control_n_41;
  wire inst_control_n_42;
  wire inst_control_n_46;
  wire inst_control_n_47;
  wire inst_control_n_48;
  wire inst_control_n_49;
  wire inst_control_n_5;
  wire inst_control_n_54;
  wire inst_control_n_55;
  wire inst_control_n_56;
  wire inst_control_n_57;
  wire inst_control_n_58;
  wire inst_control_n_59;
  wire inst_control_n_6;
  wire inst_control_n_7;
  wire inst_control_n_8;
  wire inst_control_n_9;
  wire inst_datapath_n_0;
  wire inst_datapath_n_1;
  wire inst_datapath_n_10;
  wire inst_datapath_n_11;
  wire inst_datapath_n_12;
  wire inst_datapath_n_13;
  wire inst_datapath_n_14;
  wire inst_datapath_n_15;
  wire inst_datapath_n_16;
  wire inst_datapath_n_17;
  wire inst_datapath_n_18;
  wire inst_datapath_n_19;
  wire inst_datapath_n_2;
  wire inst_datapath_n_20;
  wire inst_datapath_n_21;
  wire inst_datapath_n_22;
  wire inst_datapath_n_23;
  wire inst_datapath_n_24;
  wire inst_datapath_n_28;
  wire inst_datapath_n_29;
  wire inst_datapath_n_3;
  wire inst_datapath_n_30;
  wire inst_datapath_n_31;
  wire inst_datapath_n_32;
  wire inst_datapath_n_33;
  wire inst_datapath_n_34;
  wire inst_datapath_n_35;
  wire inst_datapath_n_36;
  wire inst_datapath_n_37;
  wire inst_datapath_n_38;
  wire inst_datapath_n_4;
  wire inst_datapath_n_5;
  wire inst_datapath_n_6;
  wire inst_datapath_n_7;
  wire inst_datapath_n_8;
  wire inst_datapath_n_9;
  wire [0:0]operation_selector;
  wire [7:1]p_0_in;
  wire reset;
  wire reset_IBUF;
  wire [1:1]truncate_selector;
  wire [7:0]x;
  wire [7:0]x0;
  wire [7:0]x0_IBUF;
  wire [7:0]x_IBUF;
  wire [7:0]y;
  wire [7:0]y0;
  wire [7:0]y0_IBUF;
  wire [7:0]y_IBUF;

initial begin
 $sdf_annotate("circuit_tb_time_impl.sdf",,,,"tool_control");
end
  OBUF \P_OBUF[0]_inst 
       (.I(P_OBUF[0]),
        .O(P[0]));
  OBUF \P_OBUF[1]_inst 
       (.I(P_OBUF[1]),
        .O(P[1]));
  OBUF \P_OBUF[2]_inst 
       (.I(P_OBUF[2]),
        .O(P[2]));
  OBUF \P_OBUF[3]_inst 
       (.I(P_OBUF[3]),
        .O(P[3]));
  OBUF \P_OBUF[4]_inst 
       (.I(P_OBUF[4]),
        .O(P[4]));
  OBUF \P_OBUF[5]_inst 
       (.I(P_OBUF[5]),
        .O(P[5]));
  OBUF \P_OBUF[6]_inst 
       (.I(P_OBUF[6]),
        .O(P[6]));
  OBUF \P_OBUF[7]_inst 
       (.I(P_OBUF[7]),
        .O(P[7]));
  OBUF \P_OBUF[8]_inst 
       (.I(P_OBUF[8]),
        .O(P[8]));
  OBUF \P_OBUF[9]_inst 
       (.I(P_OBUF[9]),
        .O(P[9]));
  IBUF \Q00_IBUF[0]_inst 
       (.I(Q00[0]),
        .O(Q00_IBUF[0]));
  IBUF \Q00_IBUF[1]_inst 
       (.I(Q00[1]),
        .O(Q00_IBUF[1]));
  IBUF \Q00_IBUF[2]_inst 
       (.I(Q00[2]),
        .O(Q00_IBUF[2]));
  IBUF \Q00_IBUF[3]_inst 
       (.I(Q00[3]),
        .O(Q00_IBUF[3]));
  IBUF \Q00_IBUF[4]_inst 
       (.I(Q00[4]),
        .O(Q00_IBUF[4]));
  IBUF \Q00_IBUF[5]_inst 
       (.I(Q00[5]),
        .O(Q00_IBUF[5]));
  IBUF \Q00_IBUF[6]_inst 
       (.I(Q00[6]),
        .O(Q00_IBUF[6]));
  IBUF \Q00_IBUF[7]_inst 
       (.I(Q00[7]),
        .O(Q00_IBUF[7]));
  IBUF \Q00_IBUF[8]_inst 
       (.I(Q00[8]),
        .O(Q00_IBUF[8]));
  IBUF \Q00_IBUF[9]_inst 
       (.I(Q00[9]),
        .O(Q00_IBUF[9]));
  IBUF \Q01_IBUF[0]_inst 
       (.I(Q01[0]),
        .O(Q01_IBUF[0]));
  IBUF \Q01_IBUF[1]_inst 
       (.I(Q01[1]),
        .O(Q01_IBUF[1]));
  IBUF \Q01_IBUF[2]_inst 
       (.I(Q01[2]),
        .O(Q01_IBUF[2]));
  IBUF \Q01_IBUF[3]_inst 
       (.I(Q01[3]),
        .O(Q01_IBUF[3]));
  IBUF \Q01_IBUF[4]_inst 
       (.I(Q01[4]),
        .O(Q01_IBUF[4]));
  IBUF \Q01_IBUF[5]_inst 
       (.I(Q01[5]),
        .O(Q01_IBUF[5]));
  IBUF \Q01_IBUF[6]_inst 
       (.I(Q01[6]),
        .O(Q01_IBUF[6]));
  IBUF \Q01_IBUF[7]_inst 
       (.I(Q01[7]),
        .O(Q01_IBUF[7]));
  IBUF \Q01_IBUF[8]_inst 
       (.I(Q01[8]),
        .O(Q01_IBUF[8]));
  IBUF \Q01_IBUF[9]_inst 
       (.I(Q01[9]),
        .O(Q01_IBUF[9]));
  IBUF \Q10_IBUF[0]_inst 
       (.I(Q10[0]),
        .O(Q10_IBUF[0]));
  IBUF \Q10_IBUF[1]_inst 
       (.I(Q10[1]),
        .O(Q10_IBUF[1]));
  IBUF \Q10_IBUF[2]_inst 
       (.I(Q10[2]),
        .O(Q10_IBUF[2]));
  IBUF \Q10_IBUF[3]_inst 
       (.I(Q10[3]),
        .O(Q10_IBUF[3]));
  IBUF \Q10_IBUF[4]_inst 
       (.I(Q10[4]),
        .O(Q10_IBUF[4]));
  IBUF \Q10_IBUF[5]_inst 
       (.I(Q10[5]),
        .O(Q10_IBUF[5]));
  IBUF \Q10_IBUF[6]_inst 
       (.I(Q10[6]),
        .O(Q10_IBUF[6]));
  IBUF \Q10_IBUF[7]_inst 
       (.I(Q10[7]),
        .O(Q10_IBUF[7]));
  IBUF \Q10_IBUF[8]_inst 
       (.I(Q10[8]),
        .O(Q10_IBUF[8]));
  IBUF \Q10_IBUF[9]_inst 
       (.I(Q10[9]),
        .O(Q10_IBUF[9]));
  IBUF \Q11_IBUF[0]_inst 
       (.I(Q11[0]),
        .O(Q11_IBUF[0]));
  IBUF \Q11_IBUF[1]_inst 
       (.I(Q11[1]),
        .O(Q11_IBUF[1]));
  IBUF \Q11_IBUF[2]_inst 
       (.I(Q11[2]),
        .O(Q11_IBUF[2]));
  IBUF \Q11_IBUF[3]_inst 
       (.I(Q11[3]),
        .O(Q11_IBUF[3]));
  IBUF \Q11_IBUF[4]_inst 
       (.I(Q11[4]),
        .O(Q11_IBUF[4]));
  IBUF \Q11_IBUF[5]_inst 
       (.I(Q11[5]),
        .O(Q11_IBUF[5]));
  IBUF \Q11_IBUF[6]_inst 
       (.I(Q11[6]),
        .O(Q11_IBUF[6]));
  IBUF \Q11_IBUF[7]_inst 
       (.I(Q11[7]),
        .O(Q11_IBUF[7]));
  IBUF \Q11_IBUF[8]_inst 
       (.I(Q11[8]),
        .O(Q11_IBUF[8]));
  IBUF \Q11_IBUF[9]_inst 
       (.I(Q11[9]),
        .O(Q11_IBUF[9]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF done_OBUF_inst
       (.I(inst_control_n_0),
        .O(done));
  control inst_control
       (.A({inst_control_n_32,inst_control_n_33,inst_control_n_34,inst_control_n_35,inst_control_n_36,inst_control_n_37,inst_control_n_38,inst_control_n_39,inst_control_n_40,inst_control_n_41}),
        .CLK(clk_IBUF_BUFG),
        .D({inst_control_n_7,inst_control_n_8,inst_control_n_9}),
        .DI({p_0_in[3:1],operation_selector}),
        .E(inst_control_n_16),
        .\FSM_onehot_currstate_reg[2]_0 ({inst_datapath_n_28,inst_datapath_n_29,inst_datapath_n_30,inst_datapath_n_31}),
        .\FSM_onehot_currstate_reg[5]_0 ({inst_datapath_n_12,inst_datapath_n_13,inst_datapath_n_14,inst_datapath_n_15,inst_datapath_n_16,inst_datapath_n_17,inst_datapath_n_18,inst_datapath_n_19,inst_datapath_n_20,inst_datapath_n_21,inst_datapath_n_22}),
        .\FSM_onehot_currstate_reg[5]_1 ({inst_datapath_n_10,inst_datapath_n_11}),
        .\FSM_onehot_currstate_reg[5]_2 ({inst_datapath_n_23,inst_datapath_n_24}),
        .O({inst_datapath_n_32,inst_datapath_n_33,inst_datapath_n_34,inst_datapath_n_35}),
        .P({inst_datapath_n_0,inst_datapath_n_1,inst_datapath_n_2,inst_datapath_n_3,inst_datapath_n_4,inst_datapath_n_5,inst_datapath_n_6,inst_datapath_n_7,inst_datapath_n_8,inst_datapath_n_9}),
        .Q(RB),
        .\RB_reg[10] (adder2_entry_b),
        .\RB_reg[9] ({inst_control_n_22,inst_control_n_23,inst_control_n_24,inst_control_n_25,inst_control_n_26,inst_control_n_27,inst_control_n_28,inst_control_n_29,inst_control_n_30,inst_control_n_31}),
        .RC_reg(inst_control_n_21),
        .RC_reg_0(adder2_entry_a),
        .\RD_reg[10] (inst_control_n_10),
        .\RD_reg[10]_0 ({inst_control_n_11,inst_control_n_12,inst_control_n_13}),
        .\RD_reg[10]_1 (inst_control_n_15),
        .\RD_reg[10]_2 (p_0_in[7:4]),
        .\RD_reg[10]_3 ({inst_control_n_57,inst_control_n_58,inst_control_n_59}),
        .\RP_reg[3] (inst_control_n_42),
        .\RP_reg[3]_0 ({inst_control_n_54,inst_control_n_55,inst_control_n_56}),
        .\RQ00_reg[9] ({inst_datapath_n_36,inst_datapath_n_37,inst_datapath_n_38}),
        .\Rx_reg[7] (Rx),
        .\Ry_reg[7] (Ry),
        .S({inst_control_n_46,inst_control_n_47,inst_control_n_48,inst_control_n_49}),
        .SR(reset_IBUF),
        .enables(enables),
        .out({inst_control_n_0,inst_control_n_1,inst_control_n_2,inst_control_n_3,inst_control_n_4,inst_control_n_5,inst_control_n_6}),
        .truncate_selector(truncate_selector));
  datapath inst_datapath
       (.A({inst_control_n_32,inst_control_n_33,inst_control_n_34,inst_control_n_35,inst_control_n_36,inst_control_n_37,inst_control_n_38,inst_control_n_39,inst_control_n_40,inst_control_n_41}),
        .CLK(clk_IBUF_BUFG),
        .D({inst_control_n_11,inst_control_n_12,inst_control_n_13}),
        .DI(operation_selector),
        .E(inst_control_n_16),
        .\FSM_onehot_currstate_reg[1] ({inst_control_n_22,inst_control_n_23,inst_control_n_24,inst_control_n_25,inst_control_n_26,inst_control_n_27,inst_control_n_28,inst_control_n_29,inst_control_n_30,inst_control_n_31}),
        .\FSM_onehot_currstate_reg[2] (inst_control_n_42),
        .\FSM_onehot_currstate_reg[2]_0 (inst_control_n_21),
        .\FSM_onehot_currstate_reg[5] ({inst_control_n_57,inst_control_n_58,inst_control_n_59}),
        .\FSM_onehot_currstate_reg[6] (inst_control_n_10),
        .\FSM_onehot_currstate_reg[6]_0 (inst_control_n_15),
        .O({inst_datapath_n_32,inst_datapath_n_33,inst_datapath_n_34,inst_datapath_n_35}),
        .P({inst_datapath_n_0,inst_datapath_n_1,inst_datapath_n_2,inst_datapath_n_3,inst_datapath_n_4,inst_datapath_n_5,inst_datapath_n_6,inst_datapath_n_7,inst_datapath_n_8,inst_datapath_n_9}),
        .\P[9] (P_OBUF),
        .Q(adder2_entry_a),
        .\Q00[9] (Q00_IBUF),
        .\Q01[9] (Q01_IBUF),
        .\Q10[9] (Q10_IBUF),
        .\Q11[9] (Q11_IBUF),
        .\RB_reg[10]_0 ({inst_control_n_7,inst_control_n_8,inst_control_n_9}),
        .\RB_reg[3]_0 ({inst_datapath_n_28,inst_datapath_n_29,inst_datapath_n_30,inst_datapath_n_31}),
        .RC_reg_0({inst_datapath_n_36,inst_datapath_n_37,inst_datapath_n_38}),
        .RC_reg_1(RB),
        .RC_reg_2({inst_control_n_54,inst_control_n_55,inst_control_n_56}),
        .\RD_reg[10]_0 ({inst_datapath_n_12,inst_datapath_n_13,inst_datapath_n_14,inst_datapath_n_15,inst_datapath_n_16,inst_datapath_n_17,inst_datapath_n_18,inst_datapath_n_19,inst_datapath_n_20,inst_datapath_n_21,inst_datapath_n_22}),
        .\RD_reg[10]_1 (Rx),
        .\RD_reg[10]_2 (Ry),
        .\RD_reg[10]_3 (adder2_entry_b),
        .\RP_reg[1]_0 ({inst_datapath_n_10,inst_datapath_n_11}),
        .\RP_reg[4]_0 ({inst_datapath_n_23,inst_datapath_n_24}),
        .S({inst_control_n_46,inst_control_n_47,inst_control_n_48,inst_control_n_49}),
        .SR(reset_IBUF),
        .enables(enables),
        .out({inst_control_n_1,inst_control_n_2,inst_control_n_3,inst_control_n_4,inst_control_n_5,inst_control_n_6}),
        .p_0_in(p_0_in),
        .truncate_selector(truncate_selector),
        .\x0[7] (x0_IBUF),
        .\x[7] (x_IBUF),
        .\y0[7] (y0_IBUF),
        .\y[7] (y_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF \x0_IBUF[0]_inst 
       (.I(x0[0]),
        .O(x0_IBUF[0]));
  IBUF \x0_IBUF[1]_inst 
       (.I(x0[1]),
        .O(x0_IBUF[1]));
  IBUF \x0_IBUF[2]_inst 
       (.I(x0[2]),
        .O(x0_IBUF[2]));
  IBUF \x0_IBUF[3]_inst 
       (.I(x0[3]),
        .O(x0_IBUF[3]));
  IBUF \x0_IBUF[4]_inst 
       (.I(x0[4]),
        .O(x0_IBUF[4]));
  IBUF \x0_IBUF[5]_inst 
       (.I(x0[5]),
        .O(x0_IBUF[5]));
  IBUF \x0_IBUF[6]_inst 
       (.I(x0[6]),
        .O(x0_IBUF[6]));
  IBUF \x0_IBUF[7]_inst 
       (.I(x0[7]),
        .O(x0_IBUF[7]));
  IBUF \x_IBUF[0]_inst 
       (.I(x[0]),
        .O(x_IBUF[0]));
  IBUF \x_IBUF[1]_inst 
       (.I(x[1]),
        .O(x_IBUF[1]));
  IBUF \x_IBUF[2]_inst 
       (.I(x[2]),
        .O(x_IBUF[2]));
  IBUF \x_IBUF[3]_inst 
       (.I(x[3]),
        .O(x_IBUF[3]));
  IBUF \x_IBUF[4]_inst 
       (.I(x[4]),
        .O(x_IBUF[4]));
  IBUF \x_IBUF[5]_inst 
       (.I(x[5]),
        .O(x_IBUF[5]));
  IBUF \x_IBUF[6]_inst 
       (.I(x[6]),
        .O(x_IBUF[6]));
  IBUF \x_IBUF[7]_inst 
       (.I(x[7]),
        .O(x_IBUF[7]));
  IBUF \y0_IBUF[0]_inst 
       (.I(y0[0]),
        .O(y0_IBUF[0]));
  IBUF \y0_IBUF[1]_inst 
       (.I(y0[1]),
        .O(y0_IBUF[1]));
  IBUF \y0_IBUF[2]_inst 
       (.I(y0[2]),
        .O(y0_IBUF[2]));
  IBUF \y0_IBUF[3]_inst 
       (.I(y0[3]),
        .O(y0_IBUF[3]));
  IBUF \y0_IBUF[4]_inst 
       (.I(y0[4]),
        .O(y0_IBUF[4]));
  IBUF \y0_IBUF[5]_inst 
       (.I(y0[5]),
        .O(y0_IBUF[5]));
  IBUF \y0_IBUF[6]_inst 
       (.I(y0[6]),
        .O(y0_IBUF[6]));
  IBUF \y0_IBUF[7]_inst 
       (.I(y0[7]),
        .O(y0_IBUF[7]));
  IBUF \y_IBUF[0]_inst 
       (.I(y[0]),
        .O(y_IBUF[0]));
  IBUF \y_IBUF[1]_inst 
       (.I(y[1]),
        .O(y_IBUF[1]));
  IBUF \y_IBUF[2]_inst 
       (.I(y[2]),
        .O(y_IBUF[2]));
  IBUF \y_IBUF[3]_inst 
       (.I(y[3]),
        .O(y_IBUF[3]));
  IBUF \y_IBUF[4]_inst 
       (.I(y[4]),
        .O(y_IBUF[4]));
  IBUF \y_IBUF[5]_inst 
       (.I(y[5]),
        .O(y_IBUF[5]));
  IBUF \y_IBUF[6]_inst 
       (.I(y[6]),
        .O(y_IBUF[6]));
  IBUF \y_IBUF[7]_inst 
       (.I(y[7]),
        .O(y_IBUF[7]));
endmodule

module control
   (out,
    D,
    \RD_reg[10] ,
    \RD_reg[10]_0 ,
    truncate_selector,
    \RD_reg[10]_1 ,
    E,
    DI,
    RC_reg,
    \RB_reg[9] ,
    A,
    \RP_reg[3] ,
    enables,
    S,
    \RD_reg[10]_2 ,
    \RP_reg[3]_0 ,
    \RD_reg[10]_3 ,
    Q,
    \Rx_reg[7] ,
    O,
    \FSM_onehot_currstate_reg[2]_0 ,
    \RQ00_reg[9] ,
    P,
    \FSM_onehot_currstate_reg[5]_0 ,
    \FSM_onehot_currstate_reg[5]_1 ,
    \FSM_onehot_currstate_reg[5]_2 ,
    \Ry_reg[7] ,
    \RB_reg[10] ,
    RC_reg_0,
    SR,
    CLK);
  output [6:0]out;
  output [2:0]D;
  output \RD_reg[10] ;
  output [2:0]\RD_reg[10]_0 ;
  output [0:0]truncate_selector;
  output \RD_reg[10]_1 ;
  output [0:0]E;
  output [3:0]DI;
  output [0:0]RC_reg;
  output [9:0]\RB_reg[9] ;
  output [9:0]A;
  output \RP_reg[3] ;
  output [2:0]enables;
  output [3:0]S;
  output [3:0]\RD_reg[10]_2 ;
  output [2:0]\RP_reg[3]_0 ;
  output [2:0]\RD_reg[10]_3 ;
  input [2:0]Q;
  input [6:0]\Rx_reg[7] ;
  input [3:0]O;
  input [3:0]\FSM_onehot_currstate_reg[2]_0 ;
  input [2:0]\RQ00_reg[9] ;
  input [9:0]P;
  input [10:0]\FSM_onehot_currstate_reg[5]_0 ;
  input [1:0]\FSM_onehot_currstate_reg[5]_1 ;
  input [1:0]\FSM_onehot_currstate_reg[5]_2 ;
  input [6:0]\Ry_reg[7] ;
  input [9:0]\RB_reg[10] ;
  input [2:0]RC_reg_0;
  input [0:0]SR;
  input CLK;

  wire [9:0]A;
  wire CLK;
  wire [2:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire \FSM_onehot_currstate[7]_i_1_n_0 ;
  wire [3:0]\FSM_onehot_currstate_reg[2]_0 ;
  wire [10:0]\FSM_onehot_currstate_reg[5]_0 ;
  wire [1:0]\FSM_onehot_currstate_reg[5]_1 ;
  wire [1:0]\FSM_onehot_currstate_reg[5]_2 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_currstate_reg_n_0_[0] ;
  wire [3:0]O;
  wire [9:0]P;
  wire [2:0]Q;
  wire [9:0]\RB_reg[10] ;
  wire [9:0]\RB_reg[9] ;
  wire [0:0]RC_reg;
  wire [2:0]RC_reg_0;
  wire \RD_reg[10] ;
  wire [2:0]\RD_reg[10]_0 ;
  wire \RD_reg[10]_1 ;
  wire [3:0]\RD_reg[10]_2 ;
  wire [2:0]\RD_reg[10]_3 ;
  wire \RP_reg[3] ;
  wire [2:0]\RP_reg[3]_0 ;
  wire [2:0]\RQ00_reg[9] ;
  wire [6:0]\Rx_reg[7] ;
  wire [6:0]\Ry_reg[7] ;
  wire [3:0]S;
  wire [0:0]SR;
  wire [2:0]enables;
  wire i__carry__0_i_10_n_0;
  wire i__carry__0_i_11_n_0;
  wire i__carry__0_i_12_n_0;
  wire i__carry__0_i_9_n_0;
  wire i__carry_i_11_n_0;
  wire i__carry_i_12_n_0;
  wire i__carry_i_13_n_0;
  (* RTL_KEEP = "yes" *) wire [6:0]out;
  wire [0:0]truncate_selector;

  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_currstate[7]_i_1 
       (.I0(out[5]),
        .I1(out[6]),
        .O(\FSM_onehot_currstate[7]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s_cycle2:00000100,s_cycle3:00001000,s_cycle4:00010000,s_cycle5:00100000,s_cycle6:01000000,s_cycle1:00000010,s_end:10000000,s_initial:00000001" *) 
  (* KEEP = "yes" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_currstate_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .Q(\FSM_onehot_currstate_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "s_cycle2:00000100,s_cycle3:00001000,s_cycle4:00010000,s_cycle5:00100000,s_cycle6:01000000,s_cycle1:00000010,s_end:10000000,s_initial:00000001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currstate_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_currstate_reg_n_0_[0] ),
        .Q(out[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "s_cycle2:00000100,s_cycle3:00001000,s_cycle4:00010000,s_cycle5:00100000,s_cycle6:01000000,s_cycle1:00000010,s_end:10000000,s_initial:00000001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currstate_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(out[0]),
        .Q(out[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "s_cycle2:00000100,s_cycle3:00001000,s_cycle4:00010000,s_cycle5:00100000,s_cycle6:01000000,s_cycle1:00000010,s_end:10000000,s_initial:00000001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currstate_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(out[1]),
        .Q(out[2]),
        .R(SR));
  (* FSM_ENCODED_STATES = "s_cycle2:00000100,s_cycle3:00001000,s_cycle4:00010000,s_cycle5:00100000,s_cycle6:01000000,s_cycle1:00000010,s_end:10000000,s_initial:00000001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currstate_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(out[2]),
        .Q(out[3]),
        .R(SR));
  (* FSM_ENCODED_STATES = "s_cycle2:00000100,s_cycle3:00001000,s_cycle4:00010000,s_cycle5:00100000,s_cycle6:01000000,s_cycle1:00000010,s_end:10000000,s_initial:00000001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currstate_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(out[3]),
        .Q(out[4]),
        .R(SR));
  (* FSM_ENCODED_STATES = "s_cycle2:00000100,s_cycle3:00001000,s_cycle4:00010000,s_cycle5:00100000,s_cycle6:01000000,s_cycle1:00000010,s_end:10000000,s_initial:00000001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currstate_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(out[4]),
        .Q(out[5]),
        .R(SR));
  (* FSM_ENCODED_STATES = "s_cycle2:00000100,s_cycle3:00001000,s_cycle4:00010000,s_cycle5:00100000,s_cycle6:01000000,s_cycle1:00000010,s_end:10000000,s_initial:00000001" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_currstate_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_currstate[7]_i_1_n_0 ),
        .Q(out[6]),
        .R(SR));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \RB[0]_i_1 
       (.I0(\FSM_onehot_currstate_reg[5]_0 [0]),
        .I1(out[0]),
        .I2(O[1]),
        .I3(out[1]),
        .I4(\FSM_onehot_currstate_reg[2]_0 [0]),
        .O(\RB_reg[9] [0]));
  LUT2 #(
    .INIT(4'hE)) 
    \RB[10]_i_1 
       (.I0(out[0]),
        .I1(out[2]),
        .O(enables[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \RB[1]_i_1 
       (.I0(\FSM_onehot_currstate_reg[5]_0 [1]),
        .I1(out[0]),
        .I2(O[2]),
        .I3(out[1]),
        .I4(\FSM_onehot_currstate_reg[2]_0 [1]),
        .O(\RB_reg[9] [1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \RB[2]_i_1 
       (.I0(\FSM_onehot_currstate_reg[5]_0 [2]),
        .I1(out[0]),
        .I2(O[3]),
        .I3(out[1]),
        .I4(\FSM_onehot_currstate_reg[2]_0 [2]),
        .O(\RB_reg[9] [2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \RB[3]_i_1 
       (.I0(\FSM_onehot_currstate_reg[5]_0 [3]),
        .I1(out[0]),
        .I2(\RQ00_reg[9] [0]),
        .I3(out[1]),
        .I4(\FSM_onehot_currstate_reg[2]_0 [3]),
        .O(\RB_reg[9] [3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \RB[4]_i_1 
       (.I0(\FSM_onehot_currstate_reg[5]_0 [4]),
        .I1(out[0]),
        .I2(\RQ00_reg[9] [1]),
        .I3(out[1]),
        .I4(O[0]),
        .O(\RB_reg[9] [4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \RB[5]_i_1 
       (.I0(\FSM_onehot_currstate_reg[5]_0 [5]),
        .I1(out[0]),
        .I2(\RQ00_reg[9] [2]),
        .I3(out[1]),
        .I4(O[1]),
        .O(\RB_reg[9] [5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \RB[6]_i_1 
       (.I0(\FSM_onehot_currstate_reg[5]_0 [6]),
        .I1(out[0]),
        .I2(\RQ00_reg[9] [2]),
        .I3(out[1]),
        .I4(O[2]),
        .O(\RB_reg[9] [6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \RB[7]_i_1 
       (.I0(\FSM_onehot_currstate_reg[5]_0 [7]),
        .I1(out[0]),
        .I2(\RQ00_reg[9] [2]),
        .I3(out[1]),
        .I4(O[3]),
        .O(\RB_reg[9] [7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \RB[8]_i_1 
       (.I0(\FSM_onehot_currstate_reg[5]_0 [8]),
        .I1(out[0]),
        .I2(\RQ00_reg[9] [2]),
        .I3(out[1]),
        .I4(\RQ00_reg[9] [0]),
        .O(\RB_reg[9] [8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \RB[9]_i_1 
       (.I0(\FSM_onehot_currstate_reg[5]_0 [9]),
        .I1(out[0]),
        .I2(\RQ00_reg[9] [2]),
        .I3(out[1]),
        .I4(\RQ00_reg[9] [1]),
        .O(\RB_reg[9] [9]));
  LUT3 #(
    .INIT(8'hFE)) 
    RC_reg_i_1
       (.I0(out[0]),
        .I1(out[3]),
        .I2(out[1]),
        .O(enables[2]));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    RC_reg_i_15
       (.I0(\FSM_onehot_currstate_reg[5]_0 [10]),
        .I1(out[3]),
        .I2(\RQ00_reg[9] [2]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(\RQ00_reg[9] [1]),
        .O(A[9]));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    RC_reg_i_16
       (.I0(\FSM_onehot_currstate_reg[5]_0 [10]),
        .I1(out[3]),
        .I2(\RQ00_reg[9] [2]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(\RQ00_reg[9] [0]),
        .O(A[8]));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    RC_reg_i_17
       (.I0(\FSM_onehot_currstate_reg[5]_0 [10]),
        .I1(out[3]),
        .I2(\RQ00_reg[9] [2]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(O[3]),
        .O(A[7]));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    RC_reg_i_18
       (.I0(\FSM_onehot_currstate_reg[5]_0 [10]),
        .I1(out[3]),
        .I2(\RQ00_reg[9] [2]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(O[2]),
        .O(A[6]));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    RC_reg_i_19
       (.I0(\FSM_onehot_currstate_reg[5]_0 [10]),
        .I1(out[3]),
        .I2(\RQ00_reg[9] [2]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(O[1]),
        .O(A[5]));
  LUT3 #(
    .INIT(8'hFE)) 
    RC_reg_i_2
       (.I0(out[4]),
        .I1(out[2]),
        .I2(out[1]),
        .O(enables[0]));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    RC_reg_i_20
       (.I0(\FSM_onehot_currstate_reg[5]_2 [1]),
        .I1(out[3]),
        .I2(\RQ00_reg[9] [1]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(O[0]),
        .O(A[4]));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    RC_reg_i_21
       (.I0(\FSM_onehot_currstate_reg[5]_2 [0]),
        .I1(out[3]),
        .I2(\RQ00_reg[9] [0]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(\FSM_onehot_currstate_reg[2]_0 [3]),
        .O(A[3]));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    RC_reg_i_22
       (.I0(\FSM_onehot_currstate_reg[5]_0 [2]),
        .I1(out[3]),
        .I2(O[3]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(\FSM_onehot_currstate_reg[2]_0 [2]),
        .O(A[2]));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    RC_reg_i_23
       (.I0(\FSM_onehot_currstate_reg[5]_1 [1]),
        .I1(out[3]),
        .I2(O[2]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(\FSM_onehot_currstate_reg[2]_0 [1]),
        .O(A[1]));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    RC_reg_i_24
       (.I0(\FSM_onehot_currstate_reg[5]_1 [0]),
        .I1(out[3]),
        .I2(O[1]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(\FSM_onehot_currstate_reg[2]_0 [0]),
        .O(A[0]));
  LUT3 #(
    .INIT(8'h57)) 
    \adder1_entry_a_reg[10]_i_2 
       (.I0(out[1]),
        .I1(out[2]),
        .I2(out[3]),
        .O(RC_reg));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAB800)) 
    \adder2_entry_a_reg[10]_i_1 
       (.I0(P[9]),
        .I1(out[1]),
        .I2(\RQ00_reg[9] [2]),
        .I3(out[3]),
        .I4(out[6]),
        .I5(out[5]),
        .O(\RD_reg[10]_0 [2]));
  LUT3 #(
    .INIT(8'h01)) 
    \adder2_entry_a_reg[10]_i_2 
       (.I0(out[5]),
        .I1(out[6]),
        .I2(out[3]),
        .O(\RD_reg[10] ));
  LUT6 #(
    .INIT(64'h00000000E2FFE200)) 
    \adder2_entry_a_reg[8]_i_1 
       (.I0(\RQ00_reg[9] [0]),
        .I1(truncate_selector),
        .I2(\RQ00_reg[9] [2]),
        .I3(\RD_reg[10]_1 ),
        .I4(P[7]),
        .I5(\RD_reg[10] ),
        .O(\RD_reg[10]_0 [0]));
  LUT6 #(
    .INIT(64'h00000000E2FFE200)) 
    \adder2_entry_a_reg[9]_i_1 
       (.I0(\RQ00_reg[9] [1]),
        .I1(truncate_selector),
        .I2(\RQ00_reg[9] [2]),
        .I3(\RD_reg[10]_1 ),
        .I4(P[8]),
        .I5(\RD_reg[10] ),
        .O(\RD_reg[10]_0 [1]));
  LUT2 #(
    .INIT(4'hE)) 
    \adder2_entry_a_reg[9]_i_2 
       (.I0(out[1]),
        .I1(out[0]),
        .O(truncate_selector));
  LUT3 #(
    .INIT(8'h01)) 
    \adder2_entry_a_reg[9]_i_3 
       (.I0(out[5]),
        .I1(out[6]),
        .I2(out[1]),
        .O(\RD_reg[10]_1 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \adder2_entry_b_reg[10]_i_1 
       (.I0(Q[2]),
        .I1(out[3]),
        .I2(out[6]),
        .I3(out[5]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h01FF)) 
    \adder2_entry_b_reg[10]_i_2 
       (.I0(out[3]),
        .I1(out[6]),
        .I2(out[5]),
        .I3(out[1]),
        .O(E));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \adder2_entry_b_reg[8]_i_1 
       (.I0(Q[0]),
        .I1(out[3]),
        .I2(out[6]),
        .I3(out[5]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \adder2_entry_b_reg[9]_i_1 
       (.I0(Q[1]),
        .I1(out[3]),
        .I2(out[6]),
        .I3(out[5]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    i__carry__0_i_1
       (.I0(out[4]),
        .I1(out[2]),
        .I2(out[3]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(\RB_reg[10] [6]),
        .O(\RD_reg[10]_2 [3]));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    i__carry__0_i_10
       (.I0(\Rx_reg[7] [5]),
        .I1(\RD_reg[10] ),
        .I2(\RQ00_reg[9] [2]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(O[2]),
        .O(i__carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    i__carry__0_i_11
       (.I0(\Rx_reg[7] [4]),
        .I1(\RD_reg[10] ),
        .I2(\RQ00_reg[9] [2]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(O[1]),
        .O(i__carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    i__carry__0_i_12
       (.I0(\Rx_reg[7] [3]),
        .I1(\RD_reg[10] ),
        .I2(\RQ00_reg[9] [1]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(O[0]),
        .O(i__carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    i__carry__0_i_2
       (.I0(out[4]),
        .I1(out[2]),
        .I2(out[3]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(\RB_reg[10] [5]),
        .O(\RD_reg[10]_2 [2]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    i__carry__0_i_3
       (.I0(out[4]),
        .I1(out[2]),
        .I2(out[3]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(\RB_reg[10] [4]),
        .O(\RD_reg[10]_2 [1]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    i__carry__0_i_4
       (.I0(out[4]),
        .I1(out[2]),
        .I2(out[3]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(\RB_reg[10] [3]),
        .O(\RD_reg[10]_2 [0]));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    i__carry__0_i_5
       (.I0(\RD_reg[10]_2 [3]),
        .I1(P[6]),
        .I2(\RD_reg[10] ),
        .I3(\Ry_reg[7] [6]),
        .I4(\RD_reg[10]_1 ),
        .I5(i__carry__0_i_9_n_0),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    i__carry__0_i_6
       (.I0(\RD_reg[10]_2 [2]),
        .I1(P[5]),
        .I2(\RD_reg[10] ),
        .I3(\Ry_reg[7] [5]),
        .I4(\RD_reg[10]_1 ),
        .I5(i__carry__0_i_10_n_0),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    i__carry__0_i_7
       (.I0(\RD_reg[10]_2 [1]),
        .I1(P[4]),
        .I2(\RD_reg[10] ),
        .I3(\Ry_reg[7] [4]),
        .I4(\RD_reg[10]_1 ),
        .I5(i__carry__0_i_11_n_0),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    i__carry__0_i_8
       (.I0(\RD_reg[10]_2 [0]),
        .I1(P[3]),
        .I2(\RD_reg[10] ),
        .I3(\Ry_reg[7] [3]),
        .I4(\RD_reg[10]_1 ),
        .I5(i__carry__0_i_12_n_0),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    i__carry__0_i_9
       (.I0(\Rx_reg[7] [6]),
        .I1(\RD_reg[10] ),
        .I2(\RQ00_reg[9] [2]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(O[3]),
        .O(i__carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'hFFFE00010001FFFE)) 
    i__carry__1_i_1
       (.I0(out[4]),
        .I1(out[2]),
        .I2(out[3]),
        .I3(truncate_selector),
        .I4(RC_reg_0[2]),
        .I5(\RB_reg[10] [9]),
        .O(\RD_reg[10]_3 [2]));
  LUT6 #(
    .INIT(64'hAAAAAAA955555556)) 
    i__carry__1_i_2
       (.I0(\RB_reg[10] [8]),
        .I1(truncate_selector),
        .I2(out[3]),
        .I3(out[2]),
        .I4(out[4]),
        .I5(RC_reg_0[1]),
        .O(\RD_reg[10]_3 [1]));
  LUT6 #(
    .INIT(64'hAAAAAAA955555556)) 
    i__carry__1_i_3
       (.I0(\RB_reg[10] [7]),
        .I1(truncate_selector),
        .I2(out[3]),
        .I3(out[2]),
        .I4(out[4]),
        .I5(RC_reg_0[0]),
        .O(\RD_reg[10]_3 [0]));
  LUT4 #(
    .INIT(16'hABA8)) 
    i__carry_i_10
       (.I0(O[1]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(\FSM_onehot_currstate_reg[2]_0 [0]),
        .O(\RP_reg[3] ));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    i__carry_i_11
       (.I0(\Rx_reg[7] [2]),
        .I1(\RD_reg[10] ),
        .I2(\RQ00_reg[9] [0]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(\FSM_onehot_currstate_reg[2]_0 [3]),
        .O(i__carry_i_11_n_0));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    i__carry_i_12
       (.I0(\Rx_reg[7] [1]),
        .I1(\RD_reg[10] ),
        .I2(O[3]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(\FSM_onehot_currstate_reg[2]_0 [2]),
        .O(i__carry_i_12_n_0));
  LUT6 #(
    .INIT(64'hB8B8B8BBB8B8B888)) 
    i__carry_i_13
       (.I0(\Rx_reg[7] [0]),
        .I1(\RD_reg[10] ),
        .I2(O[2]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(\FSM_onehot_currstate_reg[2]_0 [1]),
        .O(i__carry_i_13_n_0));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    i__carry_i_2
       (.I0(out[4]),
        .I1(out[2]),
        .I2(out[3]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(\RB_reg[10] [2]),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    i__carry_i_3
       (.I0(out[4]),
        .I1(out[2]),
        .I2(out[3]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(\RB_reg[10] [1]),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    i__carry_i_4
       (.I0(out[4]),
        .I1(out[2]),
        .I2(out[3]),
        .I3(out[1]),
        .I4(out[0]),
        .I5(\RB_reg[10] [0]),
        .O(DI[1]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    i__carry_i_5
       (.I0(out[0]),
        .I1(out[1]),
        .I2(out[3]),
        .I3(out[2]),
        .I4(out[4]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    i__carry_i_6
       (.I0(DI[3]),
        .I1(P[2]),
        .I2(\RD_reg[10] ),
        .I3(\Ry_reg[7] [2]),
        .I4(\RD_reg[10]_1 ),
        .I5(i__carry_i_11_n_0),
        .O(\RP_reg[3]_0 [2]));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    i__carry_i_7
       (.I0(DI[2]),
        .I1(P[1]),
        .I2(\RD_reg[10] ),
        .I3(\Ry_reg[7] [1]),
        .I4(\RD_reg[10]_1 ),
        .I5(i__carry_i_12_n_0),
        .O(\RP_reg[3]_0 [1]));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    i__carry_i_8
       (.I0(DI[1]),
        .I1(P[0]),
        .I2(\RD_reg[10] ),
        .I3(\Ry_reg[7] [0]),
        .I4(\RD_reg[10]_1 ),
        .I5(i__carry_i_13_n_0),
        .O(\RP_reg[3]_0 [0]));
endmodule

module datapath
   (P,
    \RP_reg[1]_0 ,
    \RD_reg[10]_0 ,
    \RP_reg[4]_0 ,
    Q,
    \RB_reg[3]_0 ,
    O,
    RC_reg_0,
    RC_reg_1,
    \RD_reg[10]_1 ,
    \RD_reg[10]_2 ,
    \RD_reg[10]_3 ,
    \P[9] ,
    enables,
    CLK,
    SR,
    A,
    p_0_in,
    DI,
    RC_reg_2,
    S,
    \FSM_onehot_currstate_reg[5] ,
    truncate_selector,
    out,
    \FSM_onehot_currstate_reg[6] ,
    \FSM_onehot_currstate_reg[2] ,
    \FSM_onehot_currstate_reg[6]_0 ,
    D,
    \RB_reg[10]_0 ,
    E,
    \FSM_onehot_currstate_reg[2]_0 ,
    \y[7] ,
    \x[7] ,
    \y0[7] ,
    \x0[7] ,
    \FSM_onehot_currstate_reg[1] ,
    \Q11[9] ,
    \Q10[9] ,
    \Q01[9] ,
    \Q00[9] );
  output [9:0]P;
  output [1:0]\RP_reg[1]_0 ;
  output [10:0]\RD_reg[10]_0 ;
  output [1:0]\RP_reg[4]_0 ;
  output [2:0]Q;
  output [3:0]\RB_reg[3]_0 ;
  output [3:0]O;
  output [2:0]RC_reg_0;
  output [2:0]RC_reg_1;
  output [6:0]\RD_reg[10]_1 ;
  output [6:0]\RD_reg[10]_2 ;
  output [9:0]\RD_reg[10]_3 ;
  output [9:0]\P[9] ;
  input [2:0]enables;
  input CLK;
  input [0:0]SR;
  input [9:0]A;
  input [6:0]p_0_in;
  input [0:0]DI;
  input [2:0]RC_reg_2;
  input [3:0]S;
  input [2:0]\FSM_onehot_currstate_reg[5] ;
  input [0:0]truncate_selector;
  input [5:0]out;
  input \FSM_onehot_currstate_reg[6] ;
  input \FSM_onehot_currstate_reg[2] ;
  input \FSM_onehot_currstate_reg[6]_0 ;
  input [2:0]D;
  input [2:0]\RB_reg[10]_0 ;
  input [0:0]E;
  input [0:0]\FSM_onehot_currstate_reg[2]_0 ;
  input [7:0]\y[7] ;
  input [7:0]\x[7] ;
  input [7:0]\y0[7] ;
  input [7:0]\x0[7] ;
  input [9:0]\FSM_onehot_currstate_reg[1] ;
  input [9:0]\Q11[9] ;
  input [9:0]\Q10[9] ;
  input [9:0]\Q01[9] ;
  input [9:0]\Q00[9] ;

  wire [9:0]A;
  wire CLK;
  wire [2:0]D;
  wire [0:0]DI;
  wire [0:0]E;
  wire [9:0]\FSM_onehot_currstate_reg[1] ;
  wire \FSM_onehot_currstate_reg[2] ;
  wire [0:0]\FSM_onehot_currstate_reg[2]_0 ;
  wire [2:0]\FSM_onehot_currstate_reg[5] ;
  wire \FSM_onehot_currstate_reg[6] ;
  wire \FSM_onehot_currstate_reg[6]_0 ;
  wire [3:0]O;
  wire [9:0]P;
  wire [9:0]\P[9] ;
  wire [2:0]Q;
  wire [9:0]\Q00[9] ;
  wire [9:0]\Q01[9] ;
  wire [9:0]\Q10[9] ;
  wire [9:0]\Q11[9] ;
  wire [7:0]RB;
  wire \RB[10]_i_2_n_0 ;
  wire [2:0]\RB_reg[10]_0 ;
  wire [3:0]\RB_reg[3]_0 ;
  wire [2:0]RC_reg_0;
  wire [2:0]RC_reg_1;
  wire [2:0]RC_reg_2;
  wire RC_reg_i_10_n_0;
  wire RC_reg_i_11_n_0;
  wire RC_reg_i_12_n_0;
  wire RC_reg_i_13_n_0;
  wire RC_reg_i_14_n_0;
  wire RC_reg_i_25_n_0;
  wire RC_reg_i_26_n_0;
  wire RC_reg_i_27_n_0;
  wire RC_reg_i_28_n_0;
  wire RC_reg_i_29_n_0;
  wire RC_reg_i_30_n_0;
  wire RC_reg_i_31_n_0;
  wire RC_reg_i_32_n_0;
  wire RC_reg_i_33_n_0;
  wire RC_reg_i_34_n_0;
  wire RC_reg_i_3_n_0;
  wire RC_reg_i_4_n_0;
  wire RC_reg_i_5_n_0;
  wire RC_reg_i_6_n_0;
  wire RC_reg_i_7_n_0;
  wire RC_reg_i_8_n_0;
  wire RC_reg_i_9_n_0;
  wire RC_reg_n_105;
  wire [10:0]RD;
  wire [10:0]\RD_reg[10]_0 ;
  wire [6:0]\RD_reg[10]_1 ;
  wire [6:0]\RD_reg[10]_2 ;
  wire [9:0]\RD_reg[10]_3 ;
  wire [1:0]\RP_reg[1]_0 ;
  wire [1:0]\RP_reg[4]_0 ;
  wire [9:0]RQ00;
  wire [9:0]RQ01;
  wire [9:0]RQ10;
  wire [9:0]RQ11;
  wire [0:0]Rx;
  wire [7:0]Rx0;
  wire [0:0]Ry;
  wire [7:0]Ry0;
  wire [3:0]S;
  wire [0:0]SR;
  wire \_inferred__0/i__carry__0_n_0 ;
  wire \_inferred__0/i__carry__0_n_4 ;
  wire \_inferred__0/i__carry__0_n_7 ;
  wire \_inferred__0/i__carry_n_0 ;
  wire \_inferred__0/i__carry_n_4 ;
  wire \_inferred__0/i__carry_n_5 ;
  wire \_inferred__0/i__carry_n_6 ;
  wire \_inferred__0/i__carry_n_7 ;
  wire [10:0]adder1_entry_a;
  wire \adder1_entry_a_reg[0]_i_1_n_0 ;
  wire \adder1_entry_a_reg[10]_i_1_n_0 ;
  wire \adder1_entry_a_reg[1]_i_1_n_0 ;
  wire \adder1_entry_a_reg[2]_i_1_n_0 ;
  wire \adder1_entry_a_reg[3]_i_1_n_0 ;
  wire \adder1_entry_a_reg[4]_i_1_n_0 ;
  wire \adder1_entry_a_reg[5]_i_1_n_0 ;
  wire \adder1_entry_a_reg[6]_i_1_n_0 ;
  wire \adder1_entry_a_reg[7]_i_1_n_0 ;
  wire \adder1_entry_a_reg[8]_i_1_n_0 ;
  wire \adder1_entry_a_reg[9]_i_1_n_0 ;
  wire \adder2_entry_a_reg[10]_i_4_n_0 ;
  wire \adder2_entry_a_reg[10]_i_5_n_0 ;
  wire \adder2_entry_a_reg[10]_i_6_n_0 ;
  wire [0:0]adder2_entry_b;
  wire \adder2_entry_b_reg[0]_i_1_n_0 ;
  wire \adder2_entry_b_reg[1]_i_1_n_0 ;
  wire \adder2_entry_b_reg[2]_i_1_n_0 ;
  wire \adder2_entry_b_reg[3]_i_1_n_0 ;
  wire \adder2_entry_b_reg[4]_i_1_n_0 ;
  wire \adder2_entry_b_reg[5]_i_1_n_0 ;
  wire \adder2_entry_b_reg[6]_i_1_n_0 ;
  wire \adder2_entry_b_reg[7]_i_1_n_0 ;
  wire [2:0]enables;
  wire i__carry_i_1_n_0;
  wire [5:0]out;
  wire [6:0]p_0_in;
  wire [0:0]truncate_selector;
  wire [7:0]\x0[7] ;
  wire [7:0]\x[7] ;
  wire [7:0]\y0[7] ;
  wire [7:0]\y[7] ;
  wire NLW_RC_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_RC_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_RC_reg_OVERFLOW_UNCONNECTED;
  wire NLW_RC_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_RC_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_RC_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_RC_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_RC_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_RC_reg_CARRYOUT_UNCONNECTED;
  wire [47:11]NLW_RC_reg_P_UNCONNECTED;
  wire [47:0]NLW_RC_reg_PCOUT_UNCONNECTED;
  wire [2:0]NLW_RC_reg_i_25_CO_UNCONNECTED;
  wire [2:0]NLW_RC_reg_i_26_CO_UNCONNECTED;
  wire [2:0]\NLW__inferred__0/i__carry_CO_UNCONNECTED ;
  wire [2:0]\NLW__inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW__inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:3]\NLW__inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_adder2_entry_a_reg[10]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_adder2_entry_a_reg[10]_i_3_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hB8)) 
    \RB[10]_i_2 
       (.I0(\RD_reg[10]_0 [10]),
        .I1(out[0]),
        .I2(RC_reg_0[2]),
        .O(\RB[10]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RB_reg[0] 
       (.C(CLK),
        .CE(enables[1]),
        .D(\FSM_onehot_currstate_reg[1] [0]),
        .Q(RB[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RB_reg[10] 
       (.C(CLK),
        .CE(enables[1]),
        .D(\RB[10]_i_2_n_0 ),
        .Q(RC_reg_1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RB_reg[1] 
       (.C(CLK),
        .CE(enables[1]),
        .D(\FSM_onehot_currstate_reg[1] [1]),
        .Q(RB[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RB_reg[2] 
       (.C(CLK),
        .CE(enables[1]),
        .D(\FSM_onehot_currstate_reg[1] [2]),
        .Q(RB[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RB_reg[3] 
       (.C(CLK),
        .CE(enables[1]),
        .D(\FSM_onehot_currstate_reg[1] [3]),
        .Q(RB[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RB_reg[4] 
       (.C(CLK),
        .CE(enables[1]),
        .D(\FSM_onehot_currstate_reg[1] [4]),
        .Q(RB[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RB_reg[5] 
       (.C(CLK),
        .CE(enables[1]),
        .D(\FSM_onehot_currstate_reg[1] [5]),
        .Q(RB[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RB_reg[6] 
       (.C(CLK),
        .CE(enables[1]),
        .D(\FSM_onehot_currstate_reg[1] [6]),
        .Q(RB[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RB_reg[7] 
       (.C(CLK),
        .CE(enables[1]),
        .D(\FSM_onehot_currstate_reg[1] [7]),
        .Q(RB[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RB_reg[8] 
       (.C(CLK),
        .CE(enables[1]),
        .D(\FSM_onehot_currstate_reg[1] [8]),
        .Q(RC_reg_1[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RB_reg[9] 
       (.C(CLK),
        .CE(enables[1]),
        .D(\FSM_onehot_currstate_reg[1] [9]),
        .Q(RC_reg_1[1]),
        .R(SR));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    RC_reg
       (.A({RC_reg_i_14_n_0,RC_reg_i_14_n_0,RC_reg_i_14_n_0,RC_reg_i_14_n_0,RC_reg_i_14_n_0,RC_reg_i_14_n_0,RC_reg_i_14_n_0,RC_reg_i_14_n_0,RC_reg_i_14_n_0,RC_reg_i_14_n_0,RC_reg_i_14_n_0,RC_reg_i_14_n_0,RC_reg_i_14_n_0,RC_reg_i_14_n_0,RC_reg_i_14_n_0,RC_reg_i_14_n_0,RC_reg_i_14_n_0,RC_reg_i_14_n_0,RC_reg_i_14_n_0,RC_reg_i_14_n_0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_RC_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({RC_reg_i_3_n_0,RC_reg_i_3_n_0,RC_reg_i_3_n_0,RC_reg_i_3_n_0,RC_reg_i_3_n_0,RC_reg_i_3_n_0,RC_reg_i_3_n_0,RC_reg_i_3_n_0,RC_reg_i_4_n_0,RC_reg_i_5_n_0,RC_reg_i_6_n_0,RC_reg_i_7_n_0,RC_reg_i_8_n_0,RC_reg_i_9_n_0,RC_reg_i_10_n_0,RC_reg_i_11_n_0,RC_reg_i_12_n_0,RC_reg_i_13_n_0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_RC_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_RC_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_RC_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(enables[2]),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(enables[0]),
        .CLK(CLK),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_RC_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_RC_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_RC_reg_P_UNCONNECTED[47:11],P,RC_reg_n_105}),
        .PATTERNBDETECT(NLW_RC_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_RC_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_RC_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(SR),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(SR),
        .UNDERFLOW(NLW_RC_reg_UNDERFLOW_UNCONNECTED));
  LUT3 #(
    .INIT(8'hB8)) 
    RC_reg_i_10
       (.I0(RD[3]),
        .I1(out[4]),
        .I2(RB[3]),
        .O(RC_reg_i_10_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    RC_reg_i_11
       (.I0(RD[2]),
        .I1(out[4]),
        .I2(RB[2]),
        .O(RC_reg_i_11_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    RC_reg_i_12
       (.I0(RD[1]),
        .I1(out[4]),
        .I2(RB[1]),
        .O(RC_reg_i_12_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    RC_reg_i_13
       (.I0(RD[0]),
        .I1(out[4]),
        .I2(RB[0]),
        .O(RC_reg_i_13_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    RC_reg_i_14
       (.I0(\RD_reg[10]_0 [10]),
        .I1(out[3]),
        .I2(RC_reg_0[2]),
        .O(RC_reg_i_14_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 RC_reg_i_25
       (.CI(RC_reg_i_26_n_0),
        .CO({RC_reg_i_25_n_0,NLW_RC_reg_i_25_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI(adder1_entry_a[7:4]),
        .O(O),
        .S({RC_reg_i_27_n_0,RC_reg_i_28_n_0,RC_reg_i_29_n_0,RC_reg_i_30_n_0}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 RC_reg_i_26
       (.CI(1'b0),
        .CO({RC_reg_i_26_n_0,NLW_RC_reg_i_26_CO_UNCONNECTED[2:0]}),
        .CYINIT(truncate_selector),
        .DI(adder1_entry_a[3:0]),
        .O(\RB_reg[3]_0 ),
        .S({RC_reg_i_31_n_0,RC_reg_i_32_n_0,RC_reg_i_33_n_0,RC_reg_i_34_n_0}));
  LUT6 #(
    .INIT(64'hAAA95559A5A65A56)) 
    RC_reg_i_27
       (.I0(adder1_entry_a[7]),
        .I1(RQ00[7]),
        .I2(out[1]),
        .I3(out[3]),
        .I4(RQ01[7]),
        .I5(out[0]),
        .O(RC_reg_i_27_n_0));
  LUT6 #(
    .INIT(64'hAAA95559A5A65A56)) 
    RC_reg_i_28
       (.I0(adder1_entry_a[6]),
        .I1(RQ00[6]),
        .I2(out[1]),
        .I3(out[3]),
        .I4(RQ01[6]),
        .I5(out[0]),
        .O(RC_reg_i_28_n_0));
  LUT6 #(
    .INIT(64'hAAA95559A5A65A56)) 
    RC_reg_i_29
       (.I0(adder1_entry_a[5]),
        .I1(RQ00[5]),
        .I2(out[1]),
        .I3(out[3]),
        .I4(RQ01[5]),
        .I5(out[0]),
        .O(RC_reg_i_29_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    RC_reg_i_3
       (.I0(RD[10]),
        .I1(out[4]),
        .I2(RC_reg_1[2]),
        .O(RC_reg_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAA95559A5A65A56)) 
    RC_reg_i_30
       (.I0(adder1_entry_a[4]),
        .I1(RQ00[4]),
        .I2(out[1]),
        .I3(out[3]),
        .I4(RQ01[4]),
        .I5(out[0]),
        .O(RC_reg_i_30_n_0));
  LUT6 #(
    .INIT(64'hAAA95559A5A65A56)) 
    RC_reg_i_31
       (.I0(adder1_entry_a[3]),
        .I1(RQ00[3]),
        .I2(out[1]),
        .I3(out[3]),
        .I4(RQ01[3]),
        .I5(out[0]),
        .O(RC_reg_i_31_n_0));
  LUT6 #(
    .INIT(64'hAAA95559A5A65A56)) 
    RC_reg_i_32
       (.I0(adder1_entry_a[2]),
        .I1(RQ00[2]),
        .I2(out[1]),
        .I3(out[3]),
        .I4(RQ01[2]),
        .I5(out[0]),
        .O(RC_reg_i_32_n_0));
  LUT6 #(
    .INIT(64'hAAA95559A5A65A56)) 
    RC_reg_i_33
       (.I0(adder1_entry_a[1]),
        .I1(RQ00[1]),
        .I2(out[1]),
        .I3(out[3]),
        .I4(RQ01[1]),
        .I5(out[0]),
        .O(RC_reg_i_33_n_0));
  LUT6 #(
    .INIT(64'hAAA95559A5A65A56)) 
    RC_reg_i_34
       (.I0(adder1_entry_a[0]),
        .I1(RQ00[0]),
        .I2(out[1]),
        .I3(out[3]),
        .I4(RQ01[0]),
        .I5(out[0]),
        .O(RC_reg_i_34_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    RC_reg_i_4
       (.I0(RD[9]),
        .I1(out[4]),
        .I2(RC_reg_1[1]),
        .O(RC_reg_i_4_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    RC_reg_i_5
       (.I0(RD[8]),
        .I1(out[4]),
        .I2(RC_reg_1[0]),
        .O(RC_reg_i_5_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    RC_reg_i_6
       (.I0(RD[7]),
        .I1(out[4]),
        .I2(RB[7]),
        .O(RC_reg_i_6_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    RC_reg_i_7
       (.I0(RD[6]),
        .I1(out[4]),
        .I2(RB[6]),
        .O(RC_reg_i_7_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    RC_reg_i_8
       (.I0(RD[5]),
        .I1(out[4]),
        .I2(RB[5]),
        .O(RC_reg_i_8_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    RC_reg_i_9
       (.I0(RD[4]),
        .I1(out[4]),
        .I2(RB[4]),
        .O(RC_reg_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \RD_reg[0] 
       (.C(CLK),
        .CE(out[1]),
        .D(\RD_reg[10]_0 [0]),
        .Q(RD[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RD_reg[10] 
       (.C(CLK),
        .CE(out[1]),
        .D(\RD_reg[10]_0 [10]),
        .Q(RD[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RD_reg[1] 
       (.C(CLK),
        .CE(out[1]),
        .D(\RD_reg[10]_0 [1]),
        .Q(RD[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RD_reg[2] 
       (.C(CLK),
        .CE(out[1]),
        .D(\RD_reg[10]_0 [2]),
        .Q(RD[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RD_reg[3] 
       (.C(CLK),
        .CE(out[1]),
        .D(\RD_reg[10]_0 [3]),
        .Q(RD[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RD_reg[4] 
       (.C(CLK),
        .CE(out[1]),
        .D(\RD_reg[10]_0 [4]),
        .Q(RD[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RD_reg[5] 
       (.C(CLK),
        .CE(out[1]),
        .D(\RD_reg[10]_0 [5]),
        .Q(RD[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RD_reg[6] 
       (.C(CLK),
        .CE(out[1]),
        .D(\RD_reg[10]_0 [6]),
        .Q(RD[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RD_reg[7] 
       (.C(CLK),
        .CE(out[1]),
        .D(\RD_reg[10]_0 [7]),
        .Q(RD[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RD_reg[8] 
       (.C(CLK),
        .CE(out[1]),
        .D(\RD_reg[10]_0 [8]),
        .Q(RD[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RD_reg[9] 
       (.C(CLK),
        .CE(out[1]),
        .D(\RD_reg[10]_0 [9]),
        .Q(RD[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'hFE02)) 
    \RP[0]_i_1 
       (.I0(\_inferred__0/i__carry_n_7 ),
        .I1(out[4]),
        .I2(out[3]),
        .I3(\RP_reg[1]_0 [0]),
        .O(\RD_reg[10]_0 [0]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \RP[1]_i_1 
       (.I0(\_inferred__0/i__carry_n_6 ),
        .I1(out[4]),
        .I2(out[3]),
        .I3(\RP_reg[1]_0 [1]),
        .O(\RD_reg[10]_0 [1]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \RP[2]_i_1 
       (.I0(\_inferred__0/i__carry_n_5 ),
        .I1(out[4]),
        .I2(out[3]),
        .I3(\_inferred__0/i__carry__0_n_4 ),
        .O(\RD_reg[10]_0 [2]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \RP[3]_i_1 
       (.I0(\_inferred__0/i__carry_n_4 ),
        .I1(out[4]),
        .I2(out[3]),
        .I3(\RP_reg[4]_0 [0]),
        .O(\RD_reg[10]_0 [3]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \RP[4]_i_1 
       (.I0(\_inferred__0/i__carry__0_n_7 ),
        .I1(out[4]),
        .I2(out[3]),
        .I3(\RP_reg[4]_0 [1]),
        .O(\RD_reg[10]_0 [4]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \RP[5]_i_1 
       (.I0(\RP_reg[1]_0 [0]),
        .I1(out[4]),
        .I2(out[3]),
        .I3(\RD_reg[10]_0 [10]),
        .O(\RD_reg[10]_0 [5]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \RP[6]_i_1 
       (.I0(\RP_reg[1]_0 [1]),
        .I1(out[4]),
        .I2(out[3]),
        .I3(\RD_reg[10]_0 [10]),
        .O(\RD_reg[10]_0 [6]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \RP[7]_i_1 
       (.I0(\_inferred__0/i__carry__0_n_4 ),
        .I1(out[4]),
        .I2(out[3]),
        .I3(\RD_reg[10]_0 [10]),
        .O(\RD_reg[10]_0 [7]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \RP[8]_i_1 
       (.I0(\RP_reg[4]_0 [0]),
        .I1(out[4]),
        .I2(out[3]),
        .I3(\RD_reg[10]_0 [10]),
        .O(\RD_reg[10]_0 [8]));
  LUT4 #(
    .INIT(16'hFE02)) 
    \RP[9]_i_1 
       (.I0(\RP_reg[4]_0 [1]),
        .I1(out[4]),
        .I2(out[3]),
        .I3(\RD_reg[10]_0 [10]),
        .O(\RD_reg[10]_0 [9]));
  FDRE #(
    .INIT(1'b0)) 
    \RP_reg[0] 
       (.C(CLK),
        .CE(out[5]),
        .D(\RD_reg[10]_0 [0]),
        .Q(\P[9] [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RP_reg[1] 
       (.C(CLK),
        .CE(out[5]),
        .D(\RD_reg[10]_0 [1]),
        .Q(\P[9] [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RP_reg[2] 
       (.C(CLK),
        .CE(out[5]),
        .D(\RD_reg[10]_0 [2]),
        .Q(\P[9] [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RP_reg[3] 
       (.C(CLK),
        .CE(out[5]),
        .D(\RD_reg[10]_0 [3]),
        .Q(\P[9] [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RP_reg[4] 
       (.C(CLK),
        .CE(out[5]),
        .D(\RD_reg[10]_0 [4]),
        .Q(\P[9] [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RP_reg[5] 
       (.C(CLK),
        .CE(out[5]),
        .D(\RD_reg[10]_0 [5]),
        .Q(\P[9] [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RP_reg[6] 
       (.C(CLK),
        .CE(out[5]),
        .D(\RD_reg[10]_0 [6]),
        .Q(\P[9] [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RP_reg[7] 
       (.C(CLK),
        .CE(out[5]),
        .D(\RD_reg[10]_0 [7]),
        .Q(\P[9] [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RP_reg[8] 
       (.C(CLK),
        .CE(out[5]),
        .D(\RD_reg[10]_0 [8]),
        .Q(\P[9] [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RP_reg[9] 
       (.C(CLK),
        .CE(out[5]),
        .D(\RD_reg[10]_0 [9]),
        .Q(\P[9] [9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \RQ00_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q00[9] [0]),
        .Q(RQ00[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ00_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q00[9] [1]),
        .Q(RQ00[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ00_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q00[9] [2]),
        .Q(RQ00[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ00_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q00[9] [3]),
        .Q(RQ00[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ00_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q00[9] [4]),
        .Q(RQ00[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ00_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q00[9] [5]),
        .Q(RQ00[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ00_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q00[9] [6]),
        .Q(RQ00[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ00_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q00[9] [7]),
        .Q(RQ00[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ00_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q00[9] [8]),
        .Q(RQ00[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ00_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q00[9] [9]),
        .Q(RQ00[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ01_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q01[9] [0]),
        .Q(RQ01[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ01_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q01[9] [1]),
        .Q(RQ01[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ01_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q01[9] [2]),
        .Q(RQ01[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ01_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q01[9] [3]),
        .Q(RQ01[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ01_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q01[9] [4]),
        .Q(RQ01[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ01_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q01[9] [5]),
        .Q(RQ01[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ01_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q01[9] [6]),
        .Q(RQ01[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ01_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q01[9] [7]),
        .Q(RQ01[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ01_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q01[9] [8]),
        .Q(RQ01[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ01_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q01[9] [9]),
        .Q(RQ01[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ10_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q10[9] [0]),
        .Q(RQ10[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ10_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q10[9] [1]),
        .Q(RQ10[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ10_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q10[9] [2]),
        .Q(RQ10[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ10_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q10[9] [3]),
        .Q(RQ10[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ10_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q10[9] [4]),
        .Q(RQ10[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ10_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q10[9] [5]),
        .Q(RQ10[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ10_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q10[9] [6]),
        .Q(RQ10[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ10_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q10[9] [7]),
        .Q(RQ10[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ10_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q10[9] [8]),
        .Q(RQ10[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ10_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q10[9] [9]),
        .Q(RQ10[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ11_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q11[9] [0]),
        .Q(RQ11[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ11_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q11[9] [1]),
        .Q(RQ11[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ11_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q11[9] [2]),
        .Q(RQ11[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ11_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q11[9] [3]),
        .Q(RQ11[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ11_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q11[9] [4]),
        .Q(RQ11[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ11_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q11[9] [5]),
        .Q(RQ11[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ11_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q11[9] [6]),
        .Q(RQ11[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ11_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q11[9] [7]),
        .Q(RQ11[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ11_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q11[9] [8]),
        .Q(RQ11[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RQ11_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\Q11[9] [9]),
        .Q(RQ11[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx0_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\x0[7] [0]),
        .Q(Rx0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx0_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\x0[7] [1]),
        .Q(Rx0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx0_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\x0[7] [2]),
        .Q(Rx0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx0_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\x0[7] [3]),
        .Q(Rx0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx0_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\x0[7] [4]),
        .Q(Rx0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx0_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\x0[7] [5]),
        .Q(Rx0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx0_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\x0[7] [6]),
        .Q(Rx0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx0_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\x0[7] [7]),
        .Q(Rx0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\x[7] [0]),
        .Q(Rx),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\x[7] [1]),
        .Q(\RD_reg[10]_1 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\x[7] [2]),
        .Q(\RD_reg[10]_1 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\x[7] [3]),
        .Q(\RD_reg[10]_1 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\x[7] [4]),
        .Q(\RD_reg[10]_1 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\x[7] [5]),
        .Q(\RD_reg[10]_1 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\x[7] [6]),
        .Q(\RD_reg[10]_1 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\x[7] [7]),
        .Q(\RD_reg[10]_1 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Ry0_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\y0[7] [0]),
        .Q(Ry0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Ry0_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\y0[7] [1]),
        .Q(Ry0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Ry0_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\y0[7] [2]),
        .Q(Ry0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Ry0_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\y0[7] [3]),
        .Q(Ry0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Ry0_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\y0[7] [4]),
        .Q(Ry0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Ry0_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\y0[7] [5]),
        .Q(Ry0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Ry0_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\y0[7] [6]),
        .Q(Ry0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Ry0_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\y0[7] [7]),
        .Q(Ry0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Ry_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\y[7] [0]),
        .Q(Ry),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Ry_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\y[7] [1]),
        .Q(\RD_reg[10]_2 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Ry_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\y[7] [2]),
        .Q(\RD_reg[10]_2 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Ry_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\y[7] [3]),
        .Q(\RD_reg[10]_2 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Ry_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\y[7] [4]),
        .Q(\RD_reg[10]_2 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Ry_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\y[7] [5]),
        .Q(\RD_reg[10]_2 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Ry_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\y[7] [6]),
        .Q(\RD_reg[10]_2 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Ry_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\y[7] [7]),
        .Q(\RD_reg[10]_2 [6]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\NLW__inferred__0/i__carry_CO_UNCONNECTED [2:0]}),
        .CYINIT(i__carry_i_1_n_0),
        .DI({p_0_in[2:0],DI}),
        .O({\_inferred__0/i__carry_n_4 ,\_inferred__0/i__carry_n_5 ,\_inferred__0/i__carry_n_6 ,\_inferred__0/i__carry_n_7 }),
        .S({RC_reg_2,adder2_entry_b}));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\_inferred__0/i__carry__0_n_0 ,\NLW__inferred__0/i__carry__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(p_0_in[6:3]),
        .O({\_inferred__0/i__carry__0_n_4 ,\RP_reg[1]_0 ,\_inferred__0/i__carry__0_n_7 }),
        .S(S));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__0/i__carry__1 
       (.CI(\_inferred__0/i__carry__0_n_0 ),
        .CO(\NLW__inferred__0/i__carry__1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[1:0]}),
        .O({\NLW__inferred__0/i__carry__1_O_UNCONNECTED [3],\RD_reg[10]_0 [10],\RP_reg[4]_0 }),
        .S({1'b0,\FSM_onehot_currstate_reg[5] }));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \adder1_entry_a_reg[0] 
       (.CLR(1'b0),
        .D(\adder1_entry_a_reg[0]_i_1_n_0 ),
        .G(\FSM_onehot_currstate_reg[2]_0 ),
        .GE(1'b1),
        .Q(adder1_entry_a[0]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \adder1_entry_a_reg[0]_i_1 
       (.I0(RC_reg_n_105),
        .I1(out[3]),
        .I2(out[2]),
        .I3(RQ11[0]),
        .I4(out[1]),
        .I5(RQ10[0]),
        .O(\adder1_entry_a_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \adder1_entry_a_reg[10] 
       (.CLR(1'b0),
        .D(\adder1_entry_a_reg[10]_i_1_n_0 ),
        .G(\FSM_onehot_currstate_reg[2]_0 ),
        .GE(1'b1),
        .Q(adder1_entry_a[10]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \adder1_entry_a_reg[10]_i_1 
       (.I0(P[9]),
        .I1(out[3]),
        .I2(out[2]),
        .I3(RQ11[9]),
        .I4(out[1]),
        .I5(RQ10[9]),
        .O(\adder1_entry_a_reg[10]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \adder1_entry_a_reg[1] 
       (.CLR(1'b0),
        .D(\adder1_entry_a_reg[1]_i_1_n_0 ),
        .G(\FSM_onehot_currstate_reg[2]_0 ),
        .GE(1'b1),
        .Q(adder1_entry_a[1]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \adder1_entry_a_reg[1]_i_1 
       (.I0(P[0]),
        .I1(out[3]),
        .I2(out[2]),
        .I3(RQ11[1]),
        .I4(out[1]),
        .I5(RQ10[1]),
        .O(\adder1_entry_a_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \adder1_entry_a_reg[2] 
       (.CLR(1'b0),
        .D(\adder1_entry_a_reg[2]_i_1_n_0 ),
        .G(\FSM_onehot_currstate_reg[2]_0 ),
        .GE(1'b1),
        .Q(adder1_entry_a[2]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \adder1_entry_a_reg[2]_i_1 
       (.I0(P[1]),
        .I1(out[3]),
        .I2(out[2]),
        .I3(RQ11[2]),
        .I4(out[1]),
        .I5(RQ10[2]),
        .O(\adder1_entry_a_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \adder1_entry_a_reg[3] 
       (.CLR(1'b0),
        .D(\adder1_entry_a_reg[3]_i_1_n_0 ),
        .G(\FSM_onehot_currstate_reg[2]_0 ),
        .GE(1'b1),
        .Q(adder1_entry_a[3]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \adder1_entry_a_reg[3]_i_1 
       (.I0(P[2]),
        .I1(out[3]),
        .I2(out[2]),
        .I3(RQ11[3]),
        .I4(out[1]),
        .I5(RQ10[3]),
        .O(\adder1_entry_a_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \adder1_entry_a_reg[4] 
       (.CLR(1'b0),
        .D(\adder1_entry_a_reg[4]_i_1_n_0 ),
        .G(\FSM_onehot_currstate_reg[2]_0 ),
        .GE(1'b1),
        .Q(adder1_entry_a[4]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \adder1_entry_a_reg[4]_i_1 
       (.I0(P[3]),
        .I1(out[3]),
        .I2(out[2]),
        .I3(RQ11[4]),
        .I4(out[1]),
        .I5(RQ10[4]),
        .O(\adder1_entry_a_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \adder1_entry_a_reg[5] 
       (.CLR(1'b0),
        .D(\adder1_entry_a_reg[5]_i_1_n_0 ),
        .G(\FSM_onehot_currstate_reg[2]_0 ),
        .GE(1'b1),
        .Q(adder1_entry_a[5]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \adder1_entry_a_reg[5]_i_1 
       (.I0(P[4]),
        .I1(out[3]),
        .I2(out[2]),
        .I3(RQ11[5]),
        .I4(out[1]),
        .I5(RQ10[5]),
        .O(\adder1_entry_a_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \adder1_entry_a_reg[6] 
       (.CLR(1'b0),
        .D(\adder1_entry_a_reg[6]_i_1_n_0 ),
        .G(\FSM_onehot_currstate_reg[2]_0 ),
        .GE(1'b1),
        .Q(adder1_entry_a[6]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \adder1_entry_a_reg[6]_i_1 
       (.I0(P[5]),
        .I1(out[3]),
        .I2(out[2]),
        .I3(RQ11[6]),
        .I4(out[1]),
        .I5(RQ10[6]),
        .O(\adder1_entry_a_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \adder1_entry_a_reg[7] 
       (.CLR(1'b0),
        .D(\adder1_entry_a_reg[7]_i_1_n_0 ),
        .G(\FSM_onehot_currstate_reg[2]_0 ),
        .GE(1'b1),
        .Q(adder1_entry_a[7]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \adder1_entry_a_reg[7]_i_1 
       (.I0(P[6]),
        .I1(out[3]),
        .I2(out[2]),
        .I3(RQ11[7]),
        .I4(out[1]),
        .I5(RQ10[7]),
        .O(\adder1_entry_a_reg[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \adder1_entry_a_reg[8] 
       (.CLR(1'b0),
        .D(\adder1_entry_a_reg[8]_i_1_n_0 ),
        .G(\FSM_onehot_currstate_reg[2]_0 ),
        .GE(1'b1),
        .Q(adder1_entry_a[8]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \adder1_entry_a_reg[8]_i_1 
       (.I0(P[7]),
        .I1(out[3]),
        .I2(out[2]),
        .I3(RQ11[8]),
        .I4(out[1]),
        .I5(RQ10[8]),
        .O(\adder1_entry_a_reg[8]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \adder1_entry_a_reg[9] 
       (.CLR(1'b0),
        .D(\adder1_entry_a_reg[9]_i_1_n_0 ),
        .G(\FSM_onehot_currstate_reg[2]_0 ),
        .GE(1'b1),
        .Q(adder1_entry_a[9]));
  LUT6 #(
    .INIT(64'hABA8ABABABA8A8A8)) 
    \adder1_entry_a_reg[9]_i_1 
       (.I0(P[8]),
        .I1(out[3]),
        .I2(out[2]),
        .I3(RQ11[9]),
        .I4(out[1]),
        .I5(RQ10[9]),
        .O(\adder1_entry_a_reg[9]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \adder2_entry_a_reg[10] 
       (.CLR(\FSM_onehot_currstate_reg[6] ),
        .D(D[2]),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[2]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \adder2_entry_a_reg[10]_i_3 
       (.CI(RC_reg_i_25_n_0),
        .CO(\NLW_adder2_entry_a_reg[10]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,adder1_entry_a[9:8]}),
        .O({\NLW_adder2_entry_a_reg[10]_i_3_O_UNCONNECTED [3],RC_reg_0}),
        .S({1'b0,\adder2_entry_a_reg[10]_i_4_n_0 ,\adder2_entry_a_reg[10]_i_5_n_0 ,\adder2_entry_a_reg[10]_i_6_n_0 }));
  LUT6 #(
    .INIT(64'hAAA95559A5A65A56)) 
    \adder2_entry_a_reg[10]_i_4 
       (.I0(adder1_entry_a[10]),
        .I1(RQ00[9]),
        .I2(out[1]),
        .I3(out[3]),
        .I4(RQ01[9]),
        .I5(out[0]),
        .O(\adder2_entry_a_reg[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAA95559A5A65A56)) 
    \adder2_entry_a_reg[10]_i_5 
       (.I0(adder1_entry_a[9]),
        .I1(RQ00[9]),
        .I2(out[1]),
        .I3(out[3]),
        .I4(RQ01[9]),
        .I5(out[0]),
        .O(\adder2_entry_a_reg[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAA95559A5A65A56)) 
    \adder2_entry_a_reg[10]_i_6 
       (.I0(adder1_entry_a[8]),
        .I1(RQ00[8]),
        .I2(out[1]),
        .I3(out[3]),
        .I4(RQ01[8]),
        .I5(out[0]),
        .O(\adder2_entry_a_reg[10]_i_6_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \adder2_entry_a_reg[8] 
       (.CLR(\FSM_onehot_currstate_reg[6] ),
        .D(D[0]),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \adder2_entry_a_reg[9] 
       (.CLR(\FSM_onehot_currstate_reg[6] ),
        .D(D[1]),
        .G(1'b1),
        .GE(1'b1),
        .Q(Q[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \adder2_entry_b_reg[0] 
       (.CLR(1'b0),
        .D(\adder2_entry_b_reg[0]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(adder2_entry_b));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \adder2_entry_b_reg[0]_i_1 
       (.I0(Ry0[0]),
        .I1(out[1]),
        .I2(Rx0[0]),
        .I3(\FSM_onehot_currstate_reg[6] ),
        .I4(RB[0]),
        .O(\adder2_entry_b_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \adder2_entry_b_reg[10] 
       (.CLR(\FSM_onehot_currstate_reg[6] ),
        .D(\RB_reg[10]_0 [2]),
        .G(E),
        .GE(1'b1),
        .Q(\RD_reg[10]_3 [9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \adder2_entry_b_reg[1] 
       (.CLR(1'b0),
        .D(\adder2_entry_b_reg[1]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(\RD_reg[10]_3 [0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \adder2_entry_b_reg[1]_i_1 
       (.I0(Ry0[1]),
        .I1(out[1]),
        .I2(Rx0[1]),
        .I3(\FSM_onehot_currstate_reg[6] ),
        .I4(RB[1]),
        .O(\adder2_entry_b_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \adder2_entry_b_reg[2] 
       (.CLR(1'b0),
        .D(\adder2_entry_b_reg[2]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(\RD_reg[10]_3 [1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \adder2_entry_b_reg[2]_i_1 
       (.I0(Ry0[2]),
        .I1(out[1]),
        .I2(Rx0[2]),
        .I3(\FSM_onehot_currstate_reg[6] ),
        .I4(RB[2]),
        .O(\adder2_entry_b_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \adder2_entry_b_reg[3] 
       (.CLR(1'b0),
        .D(\adder2_entry_b_reg[3]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(\RD_reg[10]_3 [2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \adder2_entry_b_reg[3]_i_1 
       (.I0(Ry0[3]),
        .I1(out[1]),
        .I2(Rx0[3]),
        .I3(\FSM_onehot_currstate_reg[6] ),
        .I4(RB[3]),
        .O(\adder2_entry_b_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \adder2_entry_b_reg[4] 
       (.CLR(1'b0),
        .D(\adder2_entry_b_reg[4]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(\RD_reg[10]_3 [3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \adder2_entry_b_reg[4]_i_1 
       (.I0(Ry0[4]),
        .I1(out[1]),
        .I2(Rx0[4]),
        .I3(\FSM_onehot_currstate_reg[6] ),
        .I4(RB[4]),
        .O(\adder2_entry_b_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \adder2_entry_b_reg[5] 
       (.CLR(1'b0),
        .D(\adder2_entry_b_reg[5]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(\RD_reg[10]_3 [4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \adder2_entry_b_reg[5]_i_1 
       (.I0(Ry0[5]),
        .I1(out[1]),
        .I2(Rx0[5]),
        .I3(\FSM_onehot_currstate_reg[6] ),
        .I4(RB[5]),
        .O(\adder2_entry_b_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \adder2_entry_b_reg[6] 
       (.CLR(1'b0),
        .D(\adder2_entry_b_reg[6]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(\RD_reg[10]_3 [5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \adder2_entry_b_reg[6]_i_1 
       (.I0(Ry0[6]),
        .I1(out[1]),
        .I2(Rx0[6]),
        .I3(\FSM_onehot_currstate_reg[6] ),
        .I4(RB[6]),
        .O(\adder2_entry_b_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \adder2_entry_b_reg[7] 
       (.CLR(1'b0),
        .D(\adder2_entry_b_reg[7]_i_1_n_0 ),
        .G(E),
        .GE(1'b1),
        .Q(\RD_reg[10]_3 [6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \adder2_entry_b_reg[7]_i_1 
       (.I0(Ry0[7]),
        .I1(out[1]),
        .I2(Rx0[7]),
        .I3(\FSM_onehot_currstate_reg[6] ),
        .I4(RB[7]),
        .O(\adder2_entry_b_reg[7]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \adder2_entry_b_reg[8] 
       (.CLR(\FSM_onehot_currstate_reg[6] ),
        .D(\RB_reg[10]_0 [0]),
        .G(E),
        .GE(1'b1),
        .Q(\RD_reg[10]_3 [7]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \adder2_entry_b_reg[9] 
       (.CLR(\FSM_onehot_currstate_reg[6] ),
        .D(\RB_reg[10]_0 [1]),
        .G(E),
        .GE(1'b1),
        .Q(\RD_reg[10]_3 [8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    i__carry_i_1
       (.I0(Rx),
        .I1(\FSM_onehot_currstate_reg[2] ),
        .I2(\FSM_onehot_currstate_reg[6]_0 ),
        .I3(Ry),
        .I4(\FSM_onehot_currstate_reg[6] ),
        .I5(RC_reg_n_105),
        .O(i__carry_i_1_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif

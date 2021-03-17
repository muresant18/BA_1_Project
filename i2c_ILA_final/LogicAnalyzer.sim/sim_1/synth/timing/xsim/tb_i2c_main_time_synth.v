// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Feb 10 11:13:54 2021
// Host        : DESKTOP-4A9L7PJ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Bachelor1/i2c/LA_i2c_nILA/LogicAnalyzer.sim/sim_1/synth/timing/xsim/tb_i2c_main_time_synth.v
// Design      : i2c_main
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module debouncer
   (E,
    button_stb,
    temp_sig2_reg,
    \FSM_onehot_state_reg[3] ,
    reset_btn_IBUF,
    CLK,
    Q,
    new_byte_reg,
    scl_in_IBUF,
    temp_sig2,
    \FSM_onehot_next_state_reg[0] ,
    \FSM_onehot_next_state_reg[0]_0 ,
    sda_in_IBUF,
    temp_sda_reg,
    new_byte_reg_0);
  output [0:0]E;
  output button_stb;
  output temp_sig2_reg;
  output \FSM_onehot_state_reg[3] ;
  input reset_btn_IBUF;
  input CLK;
  input [6:0]Q;
  input new_byte_reg;
  input scl_in_IBUF;
  input temp_sig2;
  input \FSM_onehot_next_state_reg[0] ;
  input \FSM_onehot_next_state_reg[0]_0 ;
  input sda_in_IBUF;
  input temp_sda_reg;
  input new_byte_reg_0;

  wire CLK;
  wire [0:0]E;
  wire \FSM_onehot_next_state[7]_i_3_n_0 ;
  wire \FSM_onehot_next_state[7]_i_5_n_0 ;
  wire \FSM_onehot_next_state[7]_i_6_n_0 ;
  wire \FSM_onehot_next_state_reg[0] ;
  wire \FSM_onehot_next_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[3] ;
  wire [6:0]Q;
  wire button_q0;
  wire button_q1;
  wire button_q2;
  wire button_q2_i_1_n_0;
  wire button_q3;
  wire button_stb;
  wire clear;
  wire \cnt[0]_i_3_n_0 ;
  wire \cnt[0]_i_4_n_0 ;
  wire \cnt[0]_i_5_n_0 ;
  wire \cnt[0]_i_6_n_0 ;
  wire [19:0]cnt_reg;
  wire \cnt_reg[0]_i_2_n_0 ;
  wire \cnt_reg[0]_i_2_n_1 ;
  wire \cnt_reg[0]_i_2_n_2 ;
  wire \cnt_reg[0]_i_2_n_3 ;
  wire \cnt_reg[0]_i_2_n_4 ;
  wire \cnt_reg[0]_i_2_n_5 ;
  wire \cnt_reg[0]_i_2_n_6 ;
  wire \cnt_reg[0]_i_2_n_7 ;
  wire \cnt_reg[12]_i_1_n_0 ;
  wire \cnt_reg[12]_i_1_n_1 ;
  wire \cnt_reg[12]_i_1_n_2 ;
  wire \cnt_reg[12]_i_1_n_3 ;
  wire \cnt_reg[12]_i_1_n_4 ;
  wire \cnt_reg[12]_i_1_n_5 ;
  wire \cnt_reg[12]_i_1_n_6 ;
  wire \cnt_reg[12]_i_1_n_7 ;
  wire \cnt_reg[16]_i_1_n_1 ;
  wire \cnt_reg[16]_i_1_n_2 ;
  wire \cnt_reg[16]_i_1_n_3 ;
  wire \cnt_reg[16]_i_1_n_4 ;
  wire \cnt_reg[16]_i_1_n_5 ;
  wire \cnt_reg[16]_i_1_n_6 ;
  wire \cnt_reg[16]_i_1_n_7 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_1 ;
  wire \cnt_reg[4]_i_1_n_2 ;
  wire \cnt_reg[4]_i_1_n_3 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_1 ;
  wire \cnt_reg[8]_i_1_n_2 ;
  wire \cnt_reg[8]_i_1_n_3 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire new_byte_reg;
  wire new_byte_reg_0;
  wire reset_btn_IBUF;
  wire scl_in_IBUF;
  wire sda_in_IBUF;
  wire temp_sda_reg;
  wire temp_sig2;
  wire temp_sig2_reg;
  wire [3:3]\NLW_cnt_reg[16]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEAAAA)) 
    \FSM_onehot_next_state[7]_i_1 
       (.I0(\FSM_onehot_next_state[7]_i_3_n_0 ),
        .I1(Q[2]),
        .I2(new_byte_reg),
        .I3(Q[4]),
        .I4(\FSM_onehot_next_state[7]_i_5_n_0 ),
        .I5(\FSM_onehot_next_state[7]_i_6_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h00F0E0000000E000)) 
    \FSM_onehot_next_state[7]_i_3 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(\FSM_onehot_next_state[7]_i_5_n_0 ),
        .I3(scl_in_IBUF),
        .I4(temp_sig2),
        .I5(Q[6]),
        .O(\FSM_onehot_next_state[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_next_state[7]_i_5 
       (.I0(button_q2),
        .I1(button_q3),
        .O(\FSM_onehot_next_state[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFC00000E0E00000)) 
    \FSM_onehot_next_state[7]_i_6 
       (.I0(temp_sig2),
        .I1(\FSM_onehot_next_state_reg[0] ),
        .I2(Q[3]),
        .I3(\FSM_onehot_next_state_reg[0]_0 ),
        .I4(\FSM_onehot_next_state[7]_i_5_n_0 ),
        .I5(scl_in_IBUF),
        .O(\FSM_onehot_next_state[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(button_q3),
        .I1(button_q2),
        .O(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    button_q0_reg
       (.C(CLK),
        .CE(1'b1),
        .D(reset_btn_IBUF),
        .Q(button_q0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    button_q1_reg
       (.C(CLK),
        .CE(1'b1),
        .D(button_q0),
        .Q(button_q1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    button_q2_i_1
       (.I0(button_q1),
        .I1(clear),
        .I2(button_q2),
        .O(button_q2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    button_q2_reg
       (.C(CLK),
        .CE(1'b1),
        .D(button_q2_i_1_n_0),
        .Q(button_q2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    button_q3_reg
       (.C(CLK),
        .CE(1'b1),
        .D(button_q2),
        .Q(button_q3),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h80000000)) 
    \cnt[0]_i_1 
       (.I0(\cnt[0]_i_3_n_0 ),
        .I1(\cnt[0]_i_4_n_0 ),
        .I2(\cnt[0]_i_5_n_0 ),
        .I3(cnt_reg[0]),
        .I4(cnt_reg[1]),
        .O(clear));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \cnt[0]_i_3 
       (.I0(cnt_reg[16]),
        .I1(cnt_reg[17]),
        .I2(cnt_reg[14]),
        .I3(cnt_reg[15]),
        .I4(cnt_reg[19]),
        .I5(cnt_reg[18]),
        .O(\cnt[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \cnt[0]_i_4 
       (.I0(cnt_reg[4]),
        .I1(cnt_reg[5]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[3]),
        .I4(cnt_reg[7]),
        .I5(cnt_reg[6]),
        .O(\cnt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \cnt[0]_i_5 
       (.I0(cnt_reg[10]),
        .I1(cnt_reg[11]),
        .I2(cnt_reg[9]),
        .I3(cnt_reg[8]),
        .I4(cnt_reg[13]),
        .I5(cnt_reg[12]),
        .O(\cnt[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_6 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_7 ),
        .Q(cnt_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_2_n_0 ,\cnt_reg[0]_i_2_n_1 ,\cnt_reg[0]_i_2_n_2 ,\cnt_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_2_n_4 ,\cnt_reg[0]_i_2_n_5 ,\cnt_reg[0]_i_2_n_6 ,\cnt_reg[0]_i_2_n_7 }),
        .S({cnt_reg[3:1],\cnt[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(cnt_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(cnt_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_7 ),
        .Q(cnt_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[12]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CO({\cnt_reg[12]_i_1_n_0 ,\cnt_reg[12]_i_1_n_1 ,\cnt_reg[12]_i_1_n_2 ,\cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_1_n_4 ,\cnt_reg[12]_i_1_n_5 ,\cnt_reg[12]_i_1_n_6 ,\cnt_reg[12]_i_1_n_7 }),
        .S(cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_6 ),
        .Q(cnt_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_5 ),
        .Q(cnt_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[12]_i_1_n_4 ),
        .Q(cnt_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_7 ),
        .Q(cnt_reg[16]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[16]_i_1 
       (.CI(\cnt_reg[12]_i_1_n_0 ),
        .CO({\NLW_cnt_reg[16]_i_1_CO_UNCONNECTED [3],\cnt_reg[16]_i_1_n_1 ,\cnt_reg[16]_i_1_n_2 ,\cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[16]_i_1_n_4 ,\cnt_reg[16]_i_1_n_5 ,\cnt_reg[16]_i_1_n_6 ,\cnt_reg[16]_i_1_n_7 }),
        .S(cnt_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_6 ),
        .Q(cnt_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_5 ),
        .Q(cnt_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[16]_i_1_n_4 ),
        .Q(cnt_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_6 ),
        .Q(cnt_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_5 ),
        .Q(cnt_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[0]_i_2_n_4 ),
        .Q(cnt_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(cnt_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_2_n_0 ),
        .CO({\cnt_reg[4]_i_1_n_0 ,\cnt_reg[4]_i_1_n_1 ,\cnt_reg[4]_i_1_n_2 ,\cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S(cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(cnt_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(cnt_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(cnt_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(cnt_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\cnt_reg[8]_i_1_n_0 ,\cnt_reg[8]_i_1_n_1 ,\cnt_reg[8]_i_1_n_2 ,\cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S(cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(cnt_reg[9]),
        .R(clear));
  LUT6 #(
    .INIT(64'hF1FFF1F1F000F0F0)) 
    new_byte_i_1
       (.I0(new_byte_reg),
        .I1(Q[2]),
        .I2(Q[6]),
        .I3(button_q2),
        .I4(button_q3),
        .I5(new_byte_reg_0),
        .O(\FSM_onehot_state_reg[3] ));
  LUT6 #(
    .INIT(64'hFBFFFFFF40000000)) 
    temp_sda_i_1
       (.I0(temp_sig2),
        .I1(scl_in_IBUF),
        .I2(sda_in_IBUF),
        .I3(\FSM_onehot_next_state[7]_i_5_n_0 ),
        .I4(Q[0]),
        .I5(temp_sda_reg),
        .O(temp_sig2_reg));
endmodule

(* NotValidForBitStream *)
module i2c_main
   (sda_in,
    scl_in,
    clk,
    reset_btn,
    led);
  input sda_in;
  input scl_in;
  input clk;
  input reset_btn;
  output [15:0]led;

  wire \FSM_onehot_next_state[1]_i_1_n_0 ;
  wire \FSM_onehot_next_state[2]_i_1_n_0 ;
  wire \FSM_onehot_next_state[3]_i_1_n_0 ;
  wire \FSM_onehot_next_state[4]_i_1_n_0 ;
  wire \FSM_onehot_next_state[4]_i_2_n_0 ;
  wire \FSM_onehot_next_state[7]_i_10_n_0 ;
  wire \FSM_onehot_next_state[7]_i_11_n_0 ;
  wire \FSM_onehot_next_state[7]_i_12_n_0 ;
  wire \FSM_onehot_next_state[7]_i_13_n_0 ;
  wire \FSM_onehot_next_state[7]_i_14_n_0 ;
  wire \FSM_onehot_next_state[7]_i_15_n_0 ;
  wire \FSM_onehot_next_state[7]_i_2_n_0 ;
  wire \FSM_onehot_next_state[7]_i_4_n_0 ;
  wire \FSM_onehot_next_state[7]_i_7_n_0 ;
  wire \FSM_onehot_next_state[7]_i_8_n_0 ;
  wire \FSM_onehot_next_state[7]_i_9_n_0 ;
  wire \FSM_onehot_next_state_reg_n_0_[0] ;
  wire \FSM_onehot_next_state_reg_n_0_[1] ;
  wire \FSM_onehot_next_state_reg_n_0_[2] ;
  wire \FSM_onehot_next_state_reg_n_0_[3] ;
  wire \FSM_onehot_next_state_reg_n_0_[4] ;
  wire \FSM_onehot_next_state_reg_n_0_[5] ;
  wire \FSM_onehot_next_state_reg_n_0_[6] ;
  wire \FSM_onehot_next_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire RST_BTN_n_0;
  wire RST_BTN_n_2;
  wire RST_BTN_n_3;
  wire bit_cnt;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[10]_i_1_n_0 ;
  wire \bit_cnt[11]_i_1_n_0 ;
  wire \bit_cnt[12]_i_1_n_0 ;
  wire \bit_cnt[12]_i_3_n_0 ;
  wire \bit_cnt[12]_i_4_n_0 ;
  wire \bit_cnt[12]_i_5_n_0 ;
  wire \bit_cnt[12]_i_6_n_0 ;
  wire \bit_cnt[13]_i_1_n_0 ;
  wire \bit_cnt[14]_i_1_n_0 ;
  wire \bit_cnt[15]_i_1_n_0 ;
  wire \bit_cnt[16]_i_1_n_0 ;
  wire \bit_cnt[16]_i_3_n_0 ;
  wire \bit_cnt[16]_i_4_n_0 ;
  wire \bit_cnt[16]_i_5_n_0 ;
  wire \bit_cnt[16]_i_6_n_0 ;
  wire \bit_cnt[17]_i_1_n_0 ;
  wire \bit_cnt[18]_i_1_n_0 ;
  wire \bit_cnt[19]_i_1_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[20]_i_1_n_0 ;
  wire \bit_cnt[20]_i_3_n_0 ;
  wire \bit_cnt[20]_i_4_n_0 ;
  wire \bit_cnt[20]_i_5_n_0 ;
  wire \bit_cnt[20]_i_6_n_0 ;
  wire \bit_cnt[21]_i_1_n_0 ;
  wire \bit_cnt[22]_i_1_n_0 ;
  wire \bit_cnt[23]_i_1_n_0 ;
  wire \bit_cnt[24]_i_1_n_0 ;
  wire \bit_cnt[24]_i_3_n_0 ;
  wire \bit_cnt[24]_i_4_n_0 ;
  wire \bit_cnt[24]_i_5_n_0 ;
  wire \bit_cnt[24]_i_6_n_0 ;
  wire \bit_cnt[25]_i_1_n_0 ;
  wire \bit_cnt[26]_i_1_n_0 ;
  wire \bit_cnt[27]_i_1_n_0 ;
  wire \bit_cnt[28]_i_1_n_0 ;
  wire \bit_cnt[28]_i_3_n_0 ;
  wire \bit_cnt[28]_i_4_n_0 ;
  wire \bit_cnt[28]_i_5_n_0 ;
  wire \bit_cnt[28]_i_6_n_0 ;
  wire \bit_cnt[29]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire \bit_cnt[30]_i_2_n_0 ;
  wire \bit_cnt[30]_i_4_n_0 ;
  wire \bit_cnt[30]_i_5_n_0 ;
  wire \bit_cnt[3]_i_1_n_0 ;
  wire \bit_cnt[4]_i_1_n_0 ;
  wire \bit_cnt[4]_i_3_n_0 ;
  wire \bit_cnt[4]_i_4_n_0 ;
  wire \bit_cnt[4]_i_5_n_0 ;
  wire \bit_cnt[4]_i_6_n_0 ;
  wire \bit_cnt[5]_i_1_n_0 ;
  wire \bit_cnt[6]_i_1_n_0 ;
  wire \bit_cnt[7]_i_1_n_0 ;
  wire \bit_cnt[8]_i_1_n_0 ;
  wire \bit_cnt[8]_i_3_n_0 ;
  wire \bit_cnt[8]_i_4_n_0 ;
  wire \bit_cnt[8]_i_5_n_0 ;
  wire \bit_cnt[8]_i_6_n_0 ;
  wire \bit_cnt[9]_i_1_n_0 ;
  wire \bit_cnt_reg[12]_i_2_n_0 ;
  wire \bit_cnt_reg[12]_i_2_n_1 ;
  wire \bit_cnt_reg[12]_i_2_n_2 ;
  wire \bit_cnt_reg[12]_i_2_n_3 ;
  wire \bit_cnt_reg[16]_i_2_n_0 ;
  wire \bit_cnt_reg[16]_i_2_n_1 ;
  wire \bit_cnt_reg[16]_i_2_n_2 ;
  wire \bit_cnt_reg[16]_i_2_n_3 ;
  wire \bit_cnt_reg[20]_i_2_n_0 ;
  wire \bit_cnt_reg[20]_i_2_n_1 ;
  wire \bit_cnt_reg[20]_i_2_n_2 ;
  wire \bit_cnt_reg[20]_i_2_n_3 ;
  wire \bit_cnt_reg[24]_i_2_n_0 ;
  wire \bit_cnt_reg[24]_i_2_n_1 ;
  wire \bit_cnt_reg[24]_i_2_n_2 ;
  wire \bit_cnt_reg[24]_i_2_n_3 ;
  wire \bit_cnt_reg[28]_i_2_n_0 ;
  wire \bit_cnt_reg[28]_i_2_n_1 ;
  wire \bit_cnt_reg[28]_i_2_n_2 ;
  wire \bit_cnt_reg[28]_i_2_n_3 ;
  wire \bit_cnt_reg[30]_i_3_n_3 ;
  wire \bit_cnt_reg[4]_i_2_n_0 ;
  wire \bit_cnt_reg[4]_i_2_n_1 ;
  wire \bit_cnt_reg[4]_i_2_n_2 ;
  wire \bit_cnt_reg[4]_i_2_n_3 ;
  wire \bit_cnt_reg[8]_i_2_n_0 ;
  wire \bit_cnt_reg[8]_i_2_n_1 ;
  wire \bit_cnt_reg[8]_i_2_n_2 ;
  wire \bit_cnt_reg[8]_i_2_n_3 ;
  wire \bit_cnt_reg_n_0_[0] ;
  wire \bit_cnt_reg_n_0_[10] ;
  wire \bit_cnt_reg_n_0_[11] ;
  wire \bit_cnt_reg_n_0_[12] ;
  wire \bit_cnt_reg_n_0_[13] ;
  wire \bit_cnt_reg_n_0_[14] ;
  wire \bit_cnt_reg_n_0_[15] ;
  wire \bit_cnt_reg_n_0_[16] ;
  wire \bit_cnt_reg_n_0_[17] ;
  wire \bit_cnt_reg_n_0_[18] ;
  wire \bit_cnt_reg_n_0_[19] ;
  wire \bit_cnt_reg_n_0_[1] ;
  wire \bit_cnt_reg_n_0_[20] ;
  wire \bit_cnt_reg_n_0_[21] ;
  wire \bit_cnt_reg_n_0_[22] ;
  wire \bit_cnt_reg_n_0_[23] ;
  wire \bit_cnt_reg_n_0_[24] ;
  wire \bit_cnt_reg_n_0_[25] ;
  wire \bit_cnt_reg_n_0_[26] ;
  wire \bit_cnt_reg_n_0_[27] ;
  wire \bit_cnt_reg_n_0_[28] ;
  wire \bit_cnt_reg_n_0_[29] ;
  wire \bit_cnt_reg_n_0_[2] ;
  wire \bit_cnt_reg_n_0_[30] ;
  wire \bit_cnt_reg_n_0_[3] ;
  wire \bit_cnt_reg_n_0_[4] ;
  wire \bit_cnt_reg_n_0_[5] ;
  wire \bit_cnt_reg_n_0_[6] ;
  wire \bit_cnt_reg_n_0_[7] ;
  wire \bit_cnt_reg_n_0_[8] ;
  wire \bit_cnt_reg_n_0_[9] ;
  wire button_stb;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [30:1]in12;
  wire [15:0]led;
  wire [15:0]led_OBUF;
  wire new_byte_reg_n_0;
  wire \pack_cnt[0]_i_2_n_0 ;
  wire pack_cnt_en_i_1_n_0;
  wire pack_cnt_en_reg_n_0;
  wire [15:0]pack_cnt_reg;
  wire \pack_cnt_reg[0]_i_1_n_0 ;
  wire \pack_cnt_reg[0]_i_1_n_1 ;
  wire \pack_cnt_reg[0]_i_1_n_2 ;
  wire \pack_cnt_reg[0]_i_1_n_3 ;
  wire \pack_cnt_reg[0]_i_1_n_4 ;
  wire \pack_cnt_reg[0]_i_1_n_5 ;
  wire \pack_cnt_reg[0]_i_1_n_6 ;
  wire \pack_cnt_reg[0]_i_1_n_7 ;
  wire \pack_cnt_reg[12]_i_1_n_1 ;
  wire \pack_cnt_reg[12]_i_1_n_2 ;
  wire \pack_cnt_reg[12]_i_1_n_3 ;
  wire \pack_cnt_reg[12]_i_1_n_4 ;
  wire \pack_cnt_reg[12]_i_1_n_5 ;
  wire \pack_cnt_reg[12]_i_1_n_6 ;
  wire \pack_cnt_reg[12]_i_1_n_7 ;
  wire \pack_cnt_reg[4]_i_1_n_0 ;
  wire \pack_cnt_reg[4]_i_1_n_1 ;
  wire \pack_cnt_reg[4]_i_1_n_2 ;
  wire \pack_cnt_reg[4]_i_1_n_3 ;
  wire \pack_cnt_reg[4]_i_1_n_4 ;
  wire \pack_cnt_reg[4]_i_1_n_5 ;
  wire \pack_cnt_reg[4]_i_1_n_6 ;
  wire \pack_cnt_reg[4]_i_1_n_7 ;
  wire \pack_cnt_reg[8]_i_1_n_0 ;
  wire \pack_cnt_reg[8]_i_1_n_1 ;
  wire \pack_cnt_reg[8]_i_1_n_2 ;
  wire \pack_cnt_reg[8]_i_1_n_3 ;
  wire \pack_cnt_reg[8]_i_1_n_4 ;
  wire \pack_cnt_reg[8]_i_1_n_5 ;
  wire \pack_cnt_reg[8]_i_1_n_6 ;
  wire \pack_cnt_reg[8]_i_1_n_7 ;
  wire read_now_i_1_n_0;
  wire read_now_reg_n_0;
  wire reset_btn;
  wire reset_btn_IBUF;
  wire scl_in;
  wire scl_in_IBUF;
  wire sda_in;
  wire sda_in_IBUF;
  wire temp_sda;
  wire temp_sda_reg_n_0;
  wire temp_sig1;
  wire temp_sig2;
  wire [3:1]\NLW_bit_cnt_reg[30]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_bit_cnt_reg[30]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_pack_cnt_reg[12]_i_1_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("tb_i2c_main_time_synth.sdf",,,,"tool_control");
end
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_next_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_next_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \FSM_onehot_next_state[2]_i_1 
       (.I0(sda_in_IBUF),
        .I1(temp_sig1),
        .I2(scl_in_IBUF),
        .I3(temp_sda),
        .O(\FSM_onehot_next_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \FSM_onehot_next_state[3]_i_1 
       (.I0(temp_sig1),
        .I1(sda_in_IBUF),
        .I2(scl_in_IBUF),
        .I3(temp_sda),
        .O(\FSM_onehot_next_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFE00)) 
    \FSM_onehot_next_state[4]_i_1 
       (.I0(\FSM_onehot_next_state[7]_i_7_n_0 ),
        .I1(\FSM_onehot_next_state[7]_i_8_n_0 ),
        .I2(\FSM_onehot_next_state[7]_i_9_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .I4(\FSM_onehot_next_state[4]_i_2_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_next_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h9F00)) 
    \FSM_onehot_next_state[4]_i_2 
       (.I0(sda_in_IBUF),
        .I1(temp_sig1),
        .I2(scl_in_IBUF),
        .I3(temp_sda),
        .O(\FSM_onehot_next_state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h32C0)) 
    \FSM_onehot_next_state[7]_i_10 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(temp_sig1),
        .I2(temp_sda),
        .I3(sda_in_IBUF),
        .O(\FSM_onehot_next_state[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_next_state[7]_i_11 
       (.I0(\bit_cnt_reg_n_0_[22] ),
        .I1(\bit_cnt_reg_n_0_[21] ),
        .I2(\bit_cnt_reg_n_0_[24] ),
        .I3(\bit_cnt_reg_n_0_[23] ),
        .O(\FSM_onehot_next_state[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_next_state[7]_i_12 
       (.I0(\bit_cnt_reg_n_0_[18] ),
        .I1(\bit_cnt_reg_n_0_[17] ),
        .I2(\bit_cnt_reg_n_0_[20] ),
        .I3(\bit_cnt_reg_n_0_[19] ),
        .O(\FSM_onehot_next_state[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_next_state[7]_i_13 
       (.I0(\bit_cnt_reg_n_0_[26] ),
        .I1(\bit_cnt_reg_n_0_[25] ),
        .I2(\bit_cnt_reg_n_0_[28] ),
        .I3(\bit_cnt_reg_n_0_[27] ),
        .O(\FSM_onehot_next_state[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_next_state[7]_i_14 
       (.I0(\bit_cnt_reg_n_0_[6] ),
        .I1(\bit_cnt_reg_n_0_[5] ),
        .I2(\bit_cnt_reg_n_0_[8] ),
        .I3(\bit_cnt_reg_n_0_[7] ),
        .O(\FSM_onehot_next_state[7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_next_state[7]_i_15 
       (.I0(\bit_cnt_reg_n_0_[14] ),
        .I1(\bit_cnt_reg_n_0_[13] ),
        .I2(\bit_cnt_reg_n_0_[16] ),
        .I3(\bit_cnt_reg_n_0_[15] ),
        .O(\FSM_onehot_next_state[7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_next_state[7]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_next_state[7]_i_7_n_0 ),
        .I2(\FSM_onehot_next_state[7]_i_8_n_0 ),
        .I3(\FSM_onehot_next_state[7]_i_9_n_0 ),
        .O(\FSM_onehot_next_state[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000002000)) 
    \FSM_onehot_next_state[7]_i_4 
       (.I0(temp_sig2),
        .I1(scl_in_IBUF),
        .I2(new_byte_reg_n_0),
        .I3(temp_sda),
        .I4(sda_in_IBUF),
        .I5(temp_sda_reg_n_0),
        .O(\FSM_onehot_next_state[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_next_state[7]_i_7 
       (.I0(\FSM_onehot_next_state[7]_i_11_n_0 ),
        .I1(\FSM_onehot_next_state[7]_i_12_n_0 ),
        .I2(\bit_cnt_reg_n_0_[30] ),
        .I3(\bit_cnt_reg_n_0_[29] ),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .I5(\FSM_onehot_next_state[7]_i_13_n_0 ),
        .O(\FSM_onehot_next_state[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_next_state[7]_i_8 
       (.I0(\bit_cnt_reg_n_0_[3] ),
        .I1(\bit_cnt_reg_n_0_[4] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\FSM_onehot_next_state[7]_i_14_n_0 ),
        .O(\FSM_onehot_next_state[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_next_state[7]_i_9 
       (.I0(\bit_cnt_reg_n_0_[11] ),
        .I1(\bit_cnt_reg_n_0_[12] ),
        .I2(\bit_cnt_reg_n_0_[9] ),
        .I3(\bit_cnt_reg_n_0_[10] ),
        .I4(\FSM_onehot_next_state[7]_i_15_n_0 ),
        .O(\FSM_onehot_next_state[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_next_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(RST_BTN_n_0),
        .D(1'b0),
        .Q(\FSM_onehot_next_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(RST_BTN_n_0),
        .D(\FSM_onehot_next_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_next_state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(RST_BTN_n_0),
        .D(\FSM_onehot_next_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_next_state_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(RST_BTN_n_0),
        .D(\FSM_onehot_next_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_next_state_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(RST_BTN_n_0),
        .D(\FSM_onehot_next_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_next_state_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(RST_BTN_n_0),
        .D(\FSM_onehot_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_next_state_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(RST_BTN_n_0),
        .D(\FSM_onehot_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_next_state_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_next_state_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(RST_BTN_n_0),
        .D(\FSM_onehot_next_state[7]_i_2_n_0 ),
        .Q(\FSM_onehot_next_state_reg_n_0_[7] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "read:00010000,wait_next_bit:01000000,start:00000100,idle:00000010,wait_for_start:00000001,stop:00001000,read_ack_bit:10000000,error:1000,cnt_bit:00100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[0] ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(button_stb));
  (* FSM_ENCODED_STATES = "read:00010000,wait_next_bit:01000000,start:00000100,idle:00000010,wait_for_start:00000001,stop:00001000,read_ack_bit:10000000,error:1000,cnt_bit:00100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[1] ),
        .Q(temp_sda),
        .R(button_stb));
  (* FSM_ENCODED_STATES = "read:00010000,wait_next_bit:01000000,start:00000100,idle:00000010,wait_for_start:00000001,stop:00001000,read_ack_bit:10000000,error:1000,cnt_bit:00100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(button_stb));
  (* FSM_ENCODED_STATES = "read:00010000,wait_next_bit:01000000,start:00000100,idle:00000010,wait_for_start:00000001,stop:00001000,read_ack_bit:10000000,error:1000,cnt_bit:00100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(button_stb));
  (* FSM_ENCODED_STATES = "read:00010000,wait_next_bit:01000000,start:00000100,idle:00000010,wait_for_start:00000001,stop:00001000,read_ack_bit:10000000,error:1000,cnt_bit:00100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(button_stb));
  (* FSM_ENCODED_STATES = "read:00010000,wait_next_bit:01000000,start:00000100,idle:00000010,wait_for_start:00000001,stop:00001000,read_ack_bit:10000000,error:1000,cnt_bit:00100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(button_stb));
  (* FSM_ENCODED_STATES = "read:00010000,wait_next_bit:01000000,start:00000100,idle:00000010,wait_for_start:00000001,stop:00001000,read_ack_bit:10000000,error:1000,cnt_bit:00100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[6] ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(button_stb));
  (* FSM_ENCODED_STATES = "read:00010000,wait_next_bit:01000000,start:00000100,idle:00000010,wait_for_start:00000001,stop:00001000,read_ack_bit:10000000,error:1000,cnt_bit:00100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_next_state_reg_n_0_[7] ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ),
        .R(button_stb));
  debouncer RST_BTN
       (.CLK(clk_IBUF_BUFG),
        .E(RST_BTN_n_0),
        .\FSM_onehot_next_state_reg[0] (read_now_reg_n_0),
        .\FSM_onehot_next_state_reg[0]_0 (\FSM_onehot_next_state[7]_i_10_n_0 ),
        .\FSM_onehot_state_reg[3] (RST_BTN_n_3),
        .Q({\FSM_onehot_state_reg_n_0_[7] ,\FSM_onehot_state_reg_n_0_[6] ,\FSM_onehot_state_reg_n_0_[5] ,\FSM_onehot_state_reg_n_0_[4] ,\FSM_onehot_state_reg_n_0_[3] ,\FSM_onehot_state_reg_n_0_[2] ,temp_sda}),
        .button_stb(button_stb),
        .new_byte_reg(\FSM_onehot_next_state[7]_i_4_n_0 ),
        .new_byte_reg_0(new_byte_reg_n_0),
        .reset_btn_IBUF(reset_btn_IBUF),
        .scl_in_IBUF(scl_in_IBUF),
        .sda_in_IBUF(sda_in_IBUF),
        .temp_sda_reg(temp_sda_reg_n_0),
        .temp_sig2(temp_sig2),
        .temp_sig2_reg(RST_BTN_n_2));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \bit_cnt[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .O(\bit_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[10]),
        .O(\bit_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[11]),
        .O(\bit_cnt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[12]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[12]),
        .O(\bit_cnt[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[12]_i_3 
       (.I0(\bit_cnt_reg_n_0_[12] ),
        .O(\bit_cnt[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[12]_i_4 
       (.I0(\bit_cnt_reg_n_0_[11] ),
        .O(\bit_cnt[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[12]_i_5 
       (.I0(\bit_cnt_reg_n_0_[10] ),
        .O(\bit_cnt[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[12]_i_6 
       (.I0(\bit_cnt_reg_n_0_[9] ),
        .O(\bit_cnt[12]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[13]),
        .O(\bit_cnt[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[14]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[14]),
        .O(\bit_cnt[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[15]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[15]),
        .O(\bit_cnt[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[16]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[16]),
        .O(\bit_cnt[16]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[16]_i_3 
       (.I0(\bit_cnt_reg_n_0_[16] ),
        .O(\bit_cnt[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[16]_i_4 
       (.I0(\bit_cnt_reg_n_0_[15] ),
        .O(\bit_cnt[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[16]_i_5 
       (.I0(\bit_cnt_reg_n_0_[14] ),
        .O(\bit_cnt[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[16]_i_6 
       (.I0(\bit_cnt_reg_n_0_[13] ),
        .O(\bit_cnt[16]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[17]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[17]),
        .O(\bit_cnt[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[18]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[18]),
        .O(\bit_cnt[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[19]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[19]),
        .O(\bit_cnt[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[1]),
        .O(\bit_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[20]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[20]),
        .O(\bit_cnt[20]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[20]_i_3 
       (.I0(\bit_cnt_reg_n_0_[20] ),
        .O(\bit_cnt[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[20]_i_4 
       (.I0(\bit_cnt_reg_n_0_[19] ),
        .O(\bit_cnt[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[20]_i_5 
       (.I0(\bit_cnt_reg_n_0_[18] ),
        .O(\bit_cnt[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[20]_i_6 
       (.I0(\bit_cnt_reg_n_0_[17] ),
        .O(\bit_cnt[20]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[21]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[21]),
        .O(\bit_cnt[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[22]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[22]),
        .O(\bit_cnt[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[23]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[23]),
        .O(\bit_cnt[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[24]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[24]),
        .O(\bit_cnt[24]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[24]_i_3 
       (.I0(\bit_cnt_reg_n_0_[24] ),
        .O(\bit_cnt[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[24]_i_4 
       (.I0(\bit_cnt_reg_n_0_[23] ),
        .O(\bit_cnt[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[24]_i_5 
       (.I0(\bit_cnt_reg_n_0_[22] ),
        .O(\bit_cnt[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[24]_i_6 
       (.I0(\bit_cnt_reg_n_0_[21] ),
        .O(\bit_cnt[24]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[25]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[25]),
        .O(\bit_cnt[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[26]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[26]),
        .O(\bit_cnt[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[27]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[27]),
        .O(\bit_cnt[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[28]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[28]),
        .O(\bit_cnt[28]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[28]_i_3 
       (.I0(\bit_cnt_reg_n_0_[28] ),
        .O(\bit_cnt[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[28]_i_4 
       (.I0(\bit_cnt_reg_n_0_[27] ),
        .O(\bit_cnt[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[28]_i_5 
       (.I0(\bit_cnt_reg_n_0_[26] ),
        .O(\bit_cnt[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[28]_i_6 
       (.I0(\bit_cnt_reg_n_0_[25] ),
        .O(\bit_cnt[28]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[29]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[29]),
        .O(\bit_cnt[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[2]),
        .O(\bit_cnt[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bit_cnt[30]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(temp_sda),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(bit_cnt));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[30]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[30]),
        .O(\bit_cnt[30]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[30]_i_4 
       (.I0(\bit_cnt_reg_n_0_[30] ),
        .O(\bit_cnt[30]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[30]_i_5 
       (.I0(\bit_cnt_reg_n_0_[29] ),
        .O(\bit_cnt[30]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    \bit_cnt[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(temp_sda),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(in12[3]),
        .O(\bit_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[4]),
        .O(\bit_cnt[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[4]_i_3 
       (.I0(\bit_cnt_reg_n_0_[4] ),
        .O(\bit_cnt[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[4]_i_4 
       (.I0(\bit_cnt_reg_n_0_[3] ),
        .O(\bit_cnt[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[4]_i_5 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .O(\bit_cnt[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[4]_i_6 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .O(\bit_cnt[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[5]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[5]),
        .O(\bit_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[6]),
        .O(\bit_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[7]),
        .O(\bit_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[8]),
        .O(\bit_cnt[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[8]_i_3 
       (.I0(\bit_cnt_reg_n_0_[8] ),
        .O(\bit_cnt[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[8]_i_4 
       (.I0(\bit_cnt_reg_n_0_[7] ),
        .O(\bit_cnt[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[8]_i_5 
       (.I0(\bit_cnt_reg_n_0_[6] ),
        .O(\bit_cnt[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[8]_i_6 
       (.I0(\bit_cnt_reg_n_0_[5] ),
        .O(\bit_cnt[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \bit_cnt[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(in12[9]),
        .O(\bit_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[0] ),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[10]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[10] ),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[11]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[11] ),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[12]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[12] ),
        .R(button_stb));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bit_cnt_reg[12]_i_2 
       (.CI(\bit_cnt_reg[8]_i_2_n_0 ),
        .CO({\bit_cnt_reg[12]_i_2_n_0 ,\bit_cnt_reg[12]_i_2_n_1 ,\bit_cnt_reg[12]_i_2_n_2 ,\bit_cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\bit_cnt_reg_n_0_[12] ,\bit_cnt_reg_n_0_[11] ,\bit_cnt_reg_n_0_[10] ,\bit_cnt_reg_n_0_[9] }),
        .O(in12[12:9]),
        .S({\bit_cnt[12]_i_3_n_0 ,\bit_cnt[12]_i_4_n_0 ,\bit_cnt[12]_i_5_n_0 ,\bit_cnt[12]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[13]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[13] ),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[14]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[14] ),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[15]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[15] ),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[16]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[16] ),
        .R(button_stb));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bit_cnt_reg[16]_i_2 
       (.CI(\bit_cnt_reg[12]_i_2_n_0 ),
        .CO({\bit_cnt_reg[16]_i_2_n_0 ,\bit_cnt_reg[16]_i_2_n_1 ,\bit_cnt_reg[16]_i_2_n_2 ,\bit_cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\bit_cnt_reg_n_0_[16] ,\bit_cnt_reg_n_0_[15] ,\bit_cnt_reg_n_0_[14] ,\bit_cnt_reg_n_0_[13] }),
        .O(in12[16:13]),
        .S({\bit_cnt[16]_i_3_n_0 ,\bit_cnt[16]_i_4_n_0 ,\bit_cnt[16]_i_5_n_0 ,\bit_cnt[16]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[17]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[17] ),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[18]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[18] ),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[19]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[19] ),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[1] ),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[20]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[20] ),
        .R(button_stb));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bit_cnt_reg[20]_i_2 
       (.CI(\bit_cnt_reg[16]_i_2_n_0 ),
        .CO({\bit_cnt_reg[20]_i_2_n_0 ,\bit_cnt_reg[20]_i_2_n_1 ,\bit_cnt_reg[20]_i_2_n_2 ,\bit_cnt_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\bit_cnt_reg_n_0_[20] ,\bit_cnt_reg_n_0_[19] ,\bit_cnt_reg_n_0_[18] ,\bit_cnt_reg_n_0_[17] }),
        .O(in12[20:17]),
        .S({\bit_cnt[20]_i_3_n_0 ,\bit_cnt[20]_i_4_n_0 ,\bit_cnt[20]_i_5_n_0 ,\bit_cnt[20]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[21]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[21] ),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[22]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[22] ),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[23]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[23] ),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[24]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[24] ),
        .R(button_stb));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bit_cnt_reg[24]_i_2 
       (.CI(\bit_cnt_reg[20]_i_2_n_0 ),
        .CO({\bit_cnt_reg[24]_i_2_n_0 ,\bit_cnt_reg[24]_i_2_n_1 ,\bit_cnt_reg[24]_i_2_n_2 ,\bit_cnt_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\bit_cnt_reg_n_0_[24] ,\bit_cnt_reg_n_0_[23] ,\bit_cnt_reg_n_0_[22] ,\bit_cnt_reg_n_0_[21] }),
        .O(in12[24:21]),
        .S({\bit_cnt[24]_i_3_n_0 ,\bit_cnt[24]_i_4_n_0 ,\bit_cnt[24]_i_5_n_0 ,\bit_cnt[24]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[25]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[25] ),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[26]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[26] ),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[27]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[27] ),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[28]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[28] ),
        .R(button_stb));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bit_cnt_reg[28]_i_2 
       (.CI(\bit_cnt_reg[24]_i_2_n_0 ),
        .CO({\bit_cnt_reg[28]_i_2_n_0 ,\bit_cnt_reg[28]_i_2_n_1 ,\bit_cnt_reg[28]_i_2_n_2 ,\bit_cnt_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\bit_cnt_reg_n_0_[28] ,\bit_cnt_reg_n_0_[27] ,\bit_cnt_reg_n_0_[26] ,\bit_cnt_reg_n_0_[25] }),
        .O(in12[28:25]),
        .S({\bit_cnt[28]_i_3_n_0 ,\bit_cnt[28]_i_4_n_0 ,\bit_cnt[28]_i_5_n_0 ,\bit_cnt[28]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[29]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[29] ),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[2]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[2] ),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[30]_i_2_n_0 ),
        .Q(\bit_cnt_reg_n_0_[30] ),
        .R(button_stb));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bit_cnt_reg[30]_i_3 
       (.CI(\bit_cnt_reg[28]_i_2_n_0 ),
        .CO({\NLW_bit_cnt_reg[30]_i_3_CO_UNCONNECTED [3:1],\bit_cnt_reg[30]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\bit_cnt_reg_n_0_[29] }),
        .O({\NLW_bit_cnt_reg[30]_i_3_O_UNCONNECTED [3:2],in12[30:29]}),
        .S({1'b0,1'b0,\bit_cnt[30]_i_4_n_0 ,\bit_cnt[30]_i_5_n_0 }));
  FDSE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[3]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[3] ),
        .S(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[4]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[4] ),
        .R(button_stb));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bit_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\bit_cnt_reg[4]_i_2_n_0 ,\bit_cnt_reg[4]_i_2_n_1 ,\bit_cnt_reg[4]_i_2_n_2 ,\bit_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(\bit_cnt_reg_n_0_[0] ),
        .DI({\bit_cnt_reg_n_0_[4] ,\bit_cnt_reg_n_0_[3] ,\bit_cnt_reg_n_0_[2] ,\bit_cnt_reg_n_0_[1] }),
        .O(in12[4:1]),
        .S({\bit_cnt[4]_i_3_n_0 ,\bit_cnt[4]_i_4_n_0 ,\bit_cnt[4]_i_5_n_0 ,\bit_cnt[4]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[5]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[5] ),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[6]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[6] ),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[7]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[7] ),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[8]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[8] ),
        .R(button_stb));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \bit_cnt_reg[8]_i_2 
       (.CI(\bit_cnt_reg[4]_i_2_n_0 ),
        .CO({\bit_cnt_reg[8]_i_2_n_0 ,\bit_cnt_reg[8]_i_2_n_1 ,\bit_cnt_reg[8]_i_2_n_2 ,\bit_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\bit_cnt_reg_n_0_[8] ,\bit_cnt_reg_n_0_[7] ,\bit_cnt_reg_n_0_[6] ,\bit_cnt_reg_n_0_[5] }),
        .O(in12[8:5]),
        .S({\bit_cnt[8]_i_3_n_0 ,\bit_cnt[8]_i_4_n_0 ,\bit_cnt[8]_i_5_n_0 ,\bit_cnt[8]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(bit_cnt),
        .D(\bit_cnt[9]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[9] ),
        .R(button_stb));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(led_OBUF[10]),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(led_OBUF[11]),
        .O(led[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(led_OBUF[12]),
        .O(led[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(led_OBUF[13]),
        .O(led[13]));
  OBUF \led_OBUF[14]_inst 
       (.I(led_OBUF[14]),
        .O(led[14]));
  OBUF \led_OBUF[15]_inst 
       (.I(led_OBUF[15]),
        .O(led[15]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[7]),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(led_OBUF[8]),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(led_OBUF[9]),
        .O(led[9]));
  FDRE #(
    .INIT(1'b0)) 
    \led_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pack_cnt_reg[0]),
        .Q(led_OBUF[0]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \led_out_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pack_cnt_reg[10]),
        .Q(led_OBUF[10]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \led_out_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pack_cnt_reg[11]),
        .Q(led_OBUF[11]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \led_out_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pack_cnt_reg[12]),
        .Q(led_OBUF[12]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \led_out_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pack_cnt_reg[13]),
        .Q(led_OBUF[13]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b1)) 
    \led_out_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pack_cnt_reg[14]),
        .Q(led_OBUF[14]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \led_out_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pack_cnt_reg[15]),
        .Q(led_OBUF[15]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \led_out_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pack_cnt_reg[1]),
        .Q(led_OBUF[1]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \led_out_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pack_cnt_reg[2]),
        .Q(led_OBUF[2]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \led_out_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pack_cnt_reg[3]),
        .Q(led_OBUF[3]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \led_out_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pack_cnt_reg[4]),
        .Q(led_OBUF[4]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \led_out_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pack_cnt_reg[5]),
        .Q(led_OBUF[5]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \led_out_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pack_cnt_reg[6]),
        .Q(led_OBUF[6]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \led_out_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pack_cnt_reg[7]),
        .Q(led_OBUF[7]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \led_out_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pack_cnt_reg[8]),
        .Q(led_OBUF[8]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \led_out_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pack_cnt_reg[9]),
        .Q(led_OBUF[9]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    new_byte_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(RST_BTN_n_3),
        .Q(new_byte_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \pack_cnt[0]_i_2 
       (.I0(pack_cnt_reg[0]),
        .O(\pack_cnt[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hDC)) 
    pack_cnt_en_i_1
       (.I0(temp_sda),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(pack_cnt_en_reg_n_0),
        .O(pack_cnt_en_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pack_cnt_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(pack_cnt_en_i_1_n_0),
        .Q(pack_cnt_en_reg_n_0),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \pack_cnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(pack_cnt_en_reg_n_0),
        .D(\pack_cnt_reg[0]_i_1_n_7 ),
        .Q(pack_cnt_reg[0]),
        .R(button_stb));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pack_cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\pack_cnt_reg[0]_i_1_n_0 ,\pack_cnt_reg[0]_i_1_n_1 ,\pack_cnt_reg[0]_i_1_n_2 ,\pack_cnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\pack_cnt_reg[0]_i_1_n_4 ,\pack_cnt_reg[0]_i_1_n_5 ,\pack_cnt_reg[0]_i_1_n_6 ,\pack_cnt_reg[0]_i_1_n_7 }),
        .S({pack_cnt_reg[3:1],\pack_cnt[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pack_cnt_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(pack_cnt_en_reg_n_0),
        .D(\pack_cnt_reg[8]_i_1_n_5 ),
        .Q(pack_cnt_reg[10]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \pack_cnt_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(pack_cnt_en_reg_n_0),
        .D(\pack_cnt_reg[8]_i_1_n_4 ),
        .Q(pack_cnt_reg[11]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \pack_cnt_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(pack_cnt_en_reg_n_0),
        .D(\pack_cnt_reg[12]_i_1_n_7 ),
        .Q(pack_cnt_reg[12]),
        .R(button_stb));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pack_cnt_reg[12]_i_1 
       (.CI(\pack_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_pack_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\pack_cnt_reg[12]_i_1_n_1 ,\pack_cnt_reg[12]_i_1_n_2 ,\pack_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pack_cnt_reg[12]_i_1_n_4 ,\pack_cnt_reg[12]_i_1_n_5 ,\pack_cnt_reg[12]_i_1_n_6 ,\pack_cnt_reg[12]_i_1_n_7 }),
        .S(pack_cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \pack_cnt_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(pack_cnt_en_reg_n_0),
        .D(\pack_cnt_reg[12]_i_1_n_6 ),
        .Q(pack_cnt_reg[13]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \pack_cnt_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(pack_cnt_en_reg_n_0),
        .D(\pack_cnt_reg[12]_i_1_n_5 ),
        .Q(pack_cnt_reg[14]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \pack_cnt_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(pack_cnt_en_reg_n_0),
        .D(\pack_cnt_reg[12]_i_1_n_4 ),
        .Q(pack_cnt_reg[15]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \pack_cnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(pack_cnt_en_reg_n_0),
        .D(\pack_cnt_reg[0]_i_1_n_6 ),
        .Q(pack_cnt_reg[1]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \pack_cnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(pack_cnt_en_reg_n_0),
        .D(\pack_cnt_reg[0]_i_1_n_5 ),
        .Q(pack_cnt_reg[2]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \pack_cnt_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(pack_cnt_en_reg_n_0),
        .D(\pack_cnt_reg[0]_i_1_n_4 ),
        .Q(pack_cnt_reg[3]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \pack_cnt_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(pack_cnt_en_reg_n_0),
        .D(\pack_cnt_reg[4]_i_1_n_7 ),
        .Q(pack_cnt_reg[4]),
        .R(button_stb));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pack_cnt_reg[4]_i_1 
       (.CI(\pack_cnt_reg[0]_i_1_n_0 ),
        .CO({\pack_cnt_reg[4]_i_1_n_0 ,\pack_cnt_reg[4]_i_1_n_1 ,\pack_cnt_reg[4]_i_1_n_2 ,\pack_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pack_cnt_reg[4]_i_1_n_4 ,\pack_cnt_reg[4]_i_1_n_5 ,\pack_cnt_reg[4]_i_1_n_6 ,\pack_cnt_reg[4]_i_1_n_7 }),
        .S(pack_cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \pack_cnt_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(pack_cnt_en_reg_n_0),
        .D(\pack_cnt_reg[4]_i_1_n_6 ),
        .Q(pack_cnt_reg[5]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \pack_cnt_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(pack_cnt_en_reg_n_0),
        .D(\pack_cnt_reg[4]_i_1_n_5 ),
        .Q(pack_cnt_reg[6]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \pack_cnt_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(pack_cnt_en_reg_n_0),
        .D(\pack_cnt_reg[4]_i_1_n_4 ),
        .Q(pack_cnt_reg[7]),
        .R(button_stb));
  FDRE #(
    .INIT(1'b0)) 
    \pack_cnt_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(pack_cnt_en_reg_n_0),
        .D(\pack_cnt_reg[8]_i_1_n_7 ),
        .Q(pack_cnt_reg[8]),
        .R(button_stb));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \pack_cnt_reg[8]_i_1 
       (.CI(\pack_cnt_reg[4]_i_1_n_0 ),
        .CO({\pack_cnt_reg[8]_i_1_n_0 ,\pack_cnt_reg[8]_i_1_n_1 ,\pack_cnt_reg[8]_i_1_n_2 ,\pack_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pack_cnt_reg[8]_i_1_n_4 ,\pack_cnt_reg[8]_i_1_n_5 ,\pack_cnt_reg[8]_i_1_n_6 ,\pack_cnt_reg[8]_i_1_n_7 }),
        .S(pack_cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \pack_cnt_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(pack_cnt_en_reg_n_0),
        .D(\pack_cnt_reg[8]_i_1_n_6 ),
        .Q(pack_cnt_reg[9]),
        .R(button_stb));
  LUT3 #(
    .INIT(8'hF4)) 
    read_now_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(read_now_reg_n_0),
        .I2(\FSM_onehot_next_state[7]_i_4_n_0 ),
        .O(read_now_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    read_now_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(read_now_i_1_n_0),
        .Q(read_now_reg_n_0),
        .R(button_stb));
  IBUF reset_btn_IBUF_inst
       (.I(reset_btn),
        .O(reset_btn_IBUF));
  IBUF scl_in_IBUF_inst
       (.I(scl_in),
        .O(scl_in_IBUF));
  IBUF sda_in_IBUF_inst
       (.I(sda_in),
        .O(sda_in_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    temp_sda_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(RST_BTN_n_2),
        .Q(temp_sda_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    temp_sig1_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sda_in_IBUF),
        .Q(temp_sig1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    temp_sig2_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(scl_in_IBUF),
        .Q(temp_sig2),
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

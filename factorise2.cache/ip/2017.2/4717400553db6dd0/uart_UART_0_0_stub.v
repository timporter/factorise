// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sat Aug 26 12:11:21 2017
// Host        : timbox running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ uart_UART_0_0_stub.v
// Design      : uart_UART_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "UART,Vivado 2017.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, RsRx, RsTx, read_ready, read_dout, read_ack, 
  send_din, send_ready, send_delay)
/* synthesis syn_black_box black_box_pad_pin="clk,RsRx,RsTx,read_ready,read_dout[7:0],read_ack,send_din[7:0],send_ready,send_delay" */;
  input clk;
  input RsRx;
  output RsTx;
  output read_ready;
  output [7:0]read_dout;
  input read_ack;
  input [7:0]send_din;
  input send_ready;
  input send_delay;
endmodule

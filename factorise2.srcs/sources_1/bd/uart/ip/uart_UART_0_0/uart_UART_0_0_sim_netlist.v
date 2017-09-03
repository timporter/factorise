// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sat Aug 26 12:11:21 2017
// Host        : timbox running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/sources_1/bd/uart/ip/uart_UART_0_0/uart_UART_0_0_sim_netlist.v
// Design      : uart_UART_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "uart_UART_0_0,UART,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "UART,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module uart_UART_0_0
   (clk,
    RsRx,
    RsTx,
    read_ready,
    read_dout,
    read_ack,
    send_din,
    send_ready,
    send_delay);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
  input RsRx;
  output RsTx;
  output read_ready;
  output [7:0]read_dout;
  input read_ack;
  input [7:0]send_din;
  input send_ready;
  input send_delay;

  wire RsRx;
  wire RsTx;
  wire clk;
  wire read_ack;
  wire [7:0]read_dout;
  wire read_ready;
  wire send_delay;
  wire [7:0]send_din;
  wire send_ready;

  uart_UART_0_0_UART U0
       (.RsRx(RsRx),
        .RsTx(RsTx),
        .clk(clk),
        .read_ack(read_ack),
        .read_dout(read_dout),
        .read_ready(read_ready),
        .send_delay(send_delay),
        .send_din(send_din),
        .send_ready(send_ready));
endmodule

(* ORIG_REF_NAME = "UART" *) 
module uart_UART_0_0_UART
   (clk,
    RsRx,
    RsTx,
    read_ready,
    read_dout,
    read_ack,
    send_din,
    send_ready,
    send_delay);
  input clk;
  input RsRx;
  output RsTx;
  output read_ready;
  output [7:0]read_dout;
  input read_ack;
  input [7:0]send_din;
  input send_ready;
  input send_delay;

  wire RsRx;
  wire RsTx;
  wire TX_n_1;
  wire TX_n_2;
  wire TX_n_3;
  wire TX_n_4;
  wire clk;
  wire [7:0]dout;
  wire fifo_rx_queue_n_8;
  wire fifo_rx_queue_n_9;
  wire fifo_tx_queue_n_1;
  wire fifo_tx_queue_n_2;
  wire read_ack;
  wire [7:0]read_dout;
  wire read_ready;
  wire reset;
  wire s_in_fifo_rd_en;
  wire s_in_fifo_wr_en0;
  wire s_out_fifo_empty;
  wire s_out_fifo_rd_en;
  wire s_out_fifo_wr_en;
  wire s_out_fifo_wr_en__0_i_1_n_0;
  wire s_read_state;
  wire s_tx_state;
  wire send_delay;
  wire [7:0]send_din;
  wire send_ready;

  uart_UART_0_0_receive RX
       (.RsRx(RsRx),
        .clk(clk),
        .din(dout),
        .s_in_fifo_wr_en0(s_in_fifo_wr_en0),
        .wr_en(reset));
  uart_UART_0_0_transmit TX
       (.RsTx(RsTx),
        .clk(clk),
        .empty(s_out_fifo_empty),
        .\s_bitPlace_reg[0]_0 (TX_n_1),
        .\s_bitPlace_reg[1]_0 (fifo_tx_queue_n_1),
        .\s_bitPlace_reg[1]_1 (fifo_tx_queue_n_2),
        .\s_bitPlace_reg[4]_0 (TX_n_2),
        .s_out_fifo_rd_en(s_out_fifo_rd_en),
        .s_tx_send_reg(TX_n_4),
        .s_tx_state(s_tx_state),
        .s_tx_state_reg(TX_n_3),
        .send_delay(send_delay));
  uart_UART_0_0_uart_fifo__xdcDup__1 fifo_rx_queue
       (.clk(clk),
        .din(dout),
        .rd_en(s_in_fifo_rd_en),
        .read_ack(read_ack),
        .read_dout(read_dout),
        .s_read_ready_reg(fifo_rx_queue_n_9),
        .s_read_state(s_read_state),
        .s_read_state_reg(fifo_rx_queue_n_8),
        .wr_en(reset));
  uart_UART_0_0_uart_fifo fifo_tx_queue
       (.RsTx_reg(fifo_tx_queue_n_1),
        .RsTx_reg_0(fifo_tx_queue_n_2),
        .clk(clk),
        .empty(s_out_fifo_empty),
        .\s_bitPlace_reg[0] (TX_n_1),
        .\s_bitPlace_reg[1] (TX_n_2),
        .s_out_fifo_rd_en(s_out_fifo_rd_en),
        .send_din(send_din),
        .wr_en(s_out_fifo_wr_en));
  FDRE read_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_in_fifo_rd_en),
        .Q(read_ready),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    s_in_fifo_wr_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_in_fifo_wr_en0),
        .Q(reset),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    s_out_fifo_wr_en__0_i_1
       (.I0(send_ready),
        .I1(s_out_fifo_wr_en),
        .O(s_out_fifo_wr_en__0_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_out_fifo_wr_en_reg__0
       (.C(clk),
        .CE(1'b1),
        .D(s_out_fifo_wr_en__0_i_1_n_0),
        .Q(s_out_fifo_wr_en),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    s_read_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(fifo_rx_queue_n_9),
        .Q(s_in_fifo_rd_en),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    s_read_state_reg
       (.C(clk),
        .CE(1'b1),
        .D(fifo_rx_queue_n_8),
        .Q(s_read_state),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    s_tx_send_reg
       (.C(clk),
        .CE(1'b1),
        .D(TX_n_4),
        .Q(s_out_fifo_rd_en),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    s_tx_state_reg
       (.C(clk),
        .CE(1'b1),
        .D(TX_n_3),
        .Q(s_tx_state),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "receive" *) 
module uart_UART_0_0_receive
   (din,
    s_in_fifo_wr_en0,
    clk,
    wr_en,
    RsRx);
  output [7:0]din;
  output s_in_fifo_wr_en0;
  input clk;
  input wr_en;
  input RsRx;

  wire \FSM_sequential_s_state[0]_i_1_n_0 ;
  wire \FSM_sequential_s_state[1]_i_10_n_0 ;
  wire \FSM_sequential_s_state[1]_i_11_n_0 ;
  wire \FSM_sequential_s_state[1]_i_12_n_0 ;
  wire \FSM_sequential_s_state[1]_i_13_n_0 ;
  wire \FSM_sequential_s_state[1]_i_1_n_0 ;
  wire \FSM_sequential_s_state[1]_i_2_n_0 ;
  wire \FSM_sequential_s_state[1]_i_3_n_0 ;
  wire \FSM_sequential_s_state[1]_i_4_n_0 ;
  wire \FSM_sequential_s_state[1]_i_5_n_0 ;
  wire \FSM_sequential_s_state[1]_i_6_n_0 ;
  wire \FSM_sequential_s_state[1]_i_7_n_0 ;
  wire \FSM_sequential_s_state[1]_i_8_n_0 ;
  wire \FSM_sequential_s_state[1]_i_9_n_0 ;
  wire \FSM_sequential_s_state[2]_i_1_n_0 ;
  wire RsRx;
  wire clk;
  wire [7:0]din;
  wire s_count0_carry__0_i_1_n_0;
  wire s_count0_carry__0_i_2_n_0;
  wire s_count0_carry__0_i_3_n_0;
  wire s_count0_carry__0_i_4_n_0;
  wire s_count0_carry__0_n_0;
  wire s_count0_carry__0_n_1;
  wire s_count0_carry__0_n_2;
  wire s_count0_carry__0_n_3;
  wire s_count0_carry__0_n_4;
  wire s_count0_carry__0_n_5;
  wire s_count0_carry__0_n_6;
  wire s_count0_carry__0_n_7;
  wire s_count0_carry__1_i_1_n_0;
  wire s_count0_carry__1_i_2_n_0;
  wire s_count0_carry__1_i_3_n_0;
  wire s_count0_carry__1_i_4_n_0;
  wire s_count0_carry__1_n_0;
  wire s_count0_carry__1_n_1;
  wire s_count0_carry__1_n_2;
  wire s_count0_carry__1_n_3;
  wire s_count0_carry__1_n_4;
  wire s_count0_carry__1_n_5;
  wire s_count0_carry__1_n_6;
  wire s_count0_carry__1_n_7;
  wire s_count0_carry__2_i_1_n_0;
  wire s_count0_carry__2_i_2_n_0;
  wire s_count0_carry__2_i_3_n_0;
  wire s_count0_carry__2_i_4_n_0;
  wire s_count0_carry__2_n_0;
  wire s_count0_carry__2_n_1;
  wire s_count0_carry__2_n_2;
  wire s_count0_carry__2_n_3;
  wire s_count0_carry__2_n_4;
  wire s_count0_carry__2_n_5;
  wire s_count0_carry__2_n_6;
  wire s_count0_carry__2_n_7;
  wire s_count0_carry__3_i_1_n_0;
  wire s_count0_carry__3_i_2_n_0;
  wire s_count0_carry__3_i_3_n_0;
  wire s_count0_carry__3_i_4_n_0;
  wire s_count0_carry__3_n_0;
  wire s_count0_carry__3_n_1;
  wire s_count0_carry__3_n_2;
  wire s_count0_carry__3_n_3;
  wire s_count0_carry__3_n_4;
  wire s_count0_carry__3_n_5;
  wire s_count0_carry__3_n_6;
  wire s_count0_carry__3_n_7;
  wire s_count0_carry__4_i_1_n_0;
  wire s_count0_carry__4_i_2_n_0;
  wire s_count0_carry__4_i_3_n_0;
  wire s_count0_carry__4_i_4_n_0;
  wire s_count0_carry__4_n_0;
  wire s_count0_carry__4_n_1;
  wire s_count0_carry__4_n_2;
  wire s_count0_carry__4_n_3;
  wire s_count0_carry__4_n_4;
  wire s_count0_carry__4_n_5;
  wire s_count0_carry__4_n_6;
  wire s_count0_carry__4_n_7;
  wire s_count0_carry__5_i_1_n_0;
  wire s_count0_carry__5_i_2_n_0;
  wire s_count0_carry__5_i_3_n_0;
  wire s_count0_carry__5_i_4_n_0;
  wire s_count0_carry__5_n_0;
  wire s_count0_carry__5_n_1;
  wire s_count0_carry__5_n_2;
  wire s_count0_carry__5_n_3;
  wire s_count0_carry__5_n_4;
  wire s_count0_carry__5_n_5;
  wire s_count0_carry__5_n_6;
  wire s_count0_carry__5_n_7;
  wire s_count0_carry__6_i_1_n_0;
  wire s_count0_carry__6_i_2_n_0;
  wire s_count0_carry__6_i_3_n_0;
  wire s_count0_carry__6_n_2;
  wire s_count0_carry__6_n_3;
  wire s_count0_carry__6_n_5;
  wire s_count0_carry__6_n_6;
  wire s_count0_carry__6_n_7;
  wire s_count0_carry_i_1_n_0;
  wire s_count0_carry_i_2_n_0;
  wire s_count0_carry_i_3_n_0;
  wire s_count0_carry_i_4_n_0;
  wire s_count0_carry_n_0;
  wire s_count0_carry_n_1;
  wire s_count0_carry_n_2;
  wire s_count0_carry_n_3;
  wire s_count0_carry_n_4;
  wire s_count0_carry_n_5;
  wire s_count0_carry_n_6;
  wire s_count0_carry_n_7;
  wire \s_count[0]_i_1_n_0 ;
  wire \s_count[10]_i_1_n_0 ;
  wire \s_count[11]_i_1_n_0 ;
  wire \s_count[12]_i_1_n_0 ;
  wire \s_count[13]_i_1_n_0 ;
  wire \s_count[14]_i_1_n_0 ;
  wire \s_count[15]_i_1_n_0 ;
  wire \s_count[16]_i_1_n_0 ;
  wire \s_count[17]_i_1_n_0 ;
  wire \s_count[18]_i_1_n_0 ;
  wire \s_count[19]_i_1_n_0 ;
  wire \s_count[1]_i_1_n_0 ;
  wire \s_count[20]_i_1_n_0 ;
  wire \s_count[21]_i_1_n_0 ;
  wire \s_count[22]_i_1_n_0 ;
  wire \s_count[23]_i_1_n_0 ;
  wire \s_count[24]_i_1_n_0 ;
  wire \s_count[25]_i_1_n_0 ;
  wire \s_count[26]_i_1_n_0 ;
  wire \s_count[27]_i_1_n_0 ;
  wire \s_count[28]_i_1_n_0 ;
  wire \s_count[29]_i_1_n_0 ;
  wire \s_count[2]_i_1_n_0 ;
  wire \s_count[30]_i_1_n_0 ;
  wire \s_count[31]_i_1_n_0 ;
  wire \s_count[31]_i_2_n_0 ;
  wire \s_count[3]_i_1_n_0 ;
  wire \s_count[4]_i_1_n_0 ;
  wire \s_count[5]_i_1_n_0 ;
  wire \s_count[6]_i_1_n_0 ;
  wire \s_count[7]_i_1_n_0 ;
  wire \s_count[8]_i_1_n_0 ;
  wire \s_count[9]_i_1_n_0 ;
  wire \s_count_reg_n_0_[0] ;
  wire \s_count_reg_n_0_[10] ;
  wire \s_count_reg_n_0_[11] ;
  wire \s_count_reg_n_0_[12] ;
  wire \s_count_reg_n_0_[13] ;
  wire \s_count_reg_n_0_[14] ;
  wire \s_count_reg_n_0_[15] ;
  wire \s_count_reg_n_0_[16] ;
  wire \s_count_reg_n_0_[17] ;
  wire \s_count_reg_n_0_[18] ;
  wire \s_count_reg_n_0_[19] ;
  wire \s_count_reg_n_0_[1] ;
  wire \s_count_reg_n_0_[20] ;
  wire \s_count_reg_n_0_[21] ;
  wire \s_count_reg_n_0_[22] ;
  wire \s_count_reg_n_0_[23] ;
  wire \s_count_reg_n_0_[24] ;
  wire \s_count_reg_n_0_[25] ;
  wire \s_count_reg_n_0_[26] ;
  wire \s_count_reg_n_0_[27] ;
  wire \s_count_reg_n_0_[28] ;
  wire \s_count_reg_n_0_[29] ;
  wire \s_count_reg_n_0_[2] ;
  wire \s_count_reg_n_0_[30] ;
  wire \s_count_reg_n_0_[31] ;
  wire \s_count_reg_n_0_[3] ;
  wire \s_count_reg_n_0_[4] ;
  wire \s_count_reg_n_0_[5] ;
  wire \s_count_reg_n_0_[6] ;
  wire \s_count_reg_n_0_[7] ;
  wire \s_count_reg_n_0_[8] ;
  wire \s_count_reg_n_0_[9] ;
  wire \s_dout[0]_i_1_n_0 ;
  wire \s_dout[1]_i_1_n_0 ;
  wire \s_dout[1]_i_2_n_0 ;
  wire \s_dout[2]_i_1_n_0 ;
  wire \s_dout[3]_i_1_n_0 ;
  wire \s_dout[3]_i_2_n_0 ;
  wire \s_dout[4]_i_1_n_0 ;
  wire \s_dout[5]_i_1_n_0 ;
  wire \s_dout[5]_i_2_n_0 ;
  wire \s_dout[6]_i_1_n_0 ;
  wire \s_dout[6]_i_2_n_0 ;
  wire \s_dout[7]_i_10_n_0 ;
  wire \s_dout[7]_i_11_n_0 ;
  wire \s_dout[7]_i_12_n_0 ;
  wire \s_dout[7]_i_13_n_0 ;
  wire \s_dout[7]_i_1_n_0 ;
  wire \s_dout[7]_i_2_n_0 ;
  wire \s_dout[7]_i_3_n_0 ;
  wire \s_dout[7]_i_4_n_0 ;
  wire \s_dout[7]_i_5_n_0 ;
  wire \s_dout[7]_i_6_n_0 ;
  wire \s_dout[7]_i_7_n_0 ;
  wire \s_dout[7]_i_8_n_0 ;
  wire \s_dout[7]_i_9_n_0 ;
  wire s_in_fifo_wr_en0;
  (* RTL_KEEP = "yes" *) wire [2:0]s_state;
  wire s_updated0_carry__0_i_1_n_0;
  wire s_updated0_carry__0_i_2_n_0;
  wire s_updated0_carry__0_i_3_n_0;
  wire s_updated0_carry__0_i_4_n_0;
  wire s_updated0_carry__0_n_0;
  wire s_updated0_carry__0_n_1;
  wire s_updated0_carry__0_n_2;
  wire s_updated0_carry__0_n_3;
  wire s_updated0_carry__1_i_1_n_0;
  wire s_updated0_carry__1_i_2_n_0;
  wire s_updated0_carry__1_i_3_n_0;
  wire s_updated0_carry__1_n_1;
  wire s_updated0_carry__1_n_2;
  wire s_updated0_carry__1_n_3;
  wire s_updated0_carry_i_1_n_0;
  wire s_updated0_carry_i_2_n_0;
  wire s_updated0_carry_i_3_n_0;
  wire s_updated0_carry_i_4_n_0;
  wire s_updated0_carry_n_0;
  wire s_updated0_carry_n_1;
  wire s_updated0_carry_n_2;
  wire s_updated0_carry_n_3;
  wire [31:1]s_updated1;
  wire s_updated_i_1_n_0;
  wire s_updated_i_2_n_0;
  wire updated;
  wire v_bitPlace;
  wire \v_bitPlace[0]_i_1_n_0 ;
  wire \v_bitPlace[10]_i_1_n_0 ;
  wire \v_bitPlace[11]_i_1_n_0 ;
  wire \v_bitPlace[12]_i_1_n_0 ;
  wire \v_bitPlace[12]_i_3_n_0 ;
  wire \v_bitPlace[12]_i_4_n_0 ;
  wire \v_bitPlace[12]_i_5_n_0 ;
  wire \v_bitPlace[12]_i_6_n_0 ;
  wire \v_bitPlace[13]_i_1_n_0 ;
  wire \v_bitPlace[14]_i_1_n_0 ;
  wire \v_bitPlace[15]_i_1_n_0 ;
  wire \v_bitPlace[16]_i_1_n_0 ;
  wire \v_bitPlace[16]_i_3_n_0 ;
  wire \v_bitPlace[16]_i_4_n_0 ;
  wire \v_bitPlace[16]_i_5_n_0 ;
  wire \v_bitPlace[16]_i_6_n_0 ;
  wire \v_bitPlace[17]_i_1_n_0 ;
  wire \v_bitPlace[18]_i_1_n_0 ;
  wire \v_bitPlace[19]_i_1_n_0 ;
  wire \v_bitPlace[1]_i_1_n_0 ;
  wire \v_bitPlace[20]_i_1_n_0 ;
  wire \v_bitPlace[20]_i_3_n_0 ;
  wire \v_bitPlace[20]_i_4_n_0 ;
  wire \v_bitPlace[20]_i_5_n_0 ;
  wire \v_bitPlace[20]_i_6_n_0 ;
  wire \v_bitPlace[21]_i_1_n_0 ;
  wire \v_bitPlace[22]_i_1_n_0 ;
  wire \v_bitPlace[23]_i_1_n_0 ;
  wire \v_bitPlace[24]_i_1_n_0 ;
  wire \v_bitPlace[24]_i_3_n_0 ;
  wire \v_bitPlace[24]_i_4_n_0 ;
  wire \v_bitPlace[24]_i_5_n_0 ;
  wire \v_bitPlace[24]_i_6_n_0 ;
  wire \v_bitPlace[25]_i_1_n_0 ;
  wire \v_bitPlace[26]_i_1_n_0 ;
  wire \v_bitPlace[27]_i_1_n_0 ;
  wire \v_bitPlace[28]_i_1_n_0 ;
  wire \v_bitPlace[28]_i_3_n_0 ;
  wire \v_bitPlace[28]_i_4_n_0 ;
  wire \v_bitPlace[28]_i_5_n_0 ;
  wire \v_bitPlace[28]_i_6_n_0 ;
  wire \v_bitPlace[29]_i_1_n_0 ;
  wire \v_bitPlace[2]_i_1_n_0 ;
  wire \v_bitPlace[30]_i_1_n_0 ;
  wire \v_bitPlace[31]_i_1_n_0 ;
  wire \v_bitPlace[31]_i_3_n_0 ;
  wire \v_bitPlace[31]_i_4_n_0 ;
  wire \v_bitPlace[31]_i_6_n_0 ;
  wire \v_bitPlace[31]_i_7_n_0 ;
  wire \v_bitPlace[31]_i_8_n_0 ;
  wire \v_bitPlace[3]_i_1_n_0 ;
  wire \v_bitPlace[4]_i_1_n_0 ;
  wire \v_bitPlace[4]_i_3_n_0 ;
  wire \v_bitPlace[4]_i_4_n_0 ;
  wire \v_bitPlace[4]_i_5_n_0 ;
  wire \v_bitPlace[4]_i_6_n_0 ;
  wire \v_bitPlace[5]_i_1_n_0 ;
  wire \v_bitPlace[6]_i_1_n_0 ;
  wire \v_bitPlace[7]_i_1_n_0 ;
  wire \v_bitPlace[8]_i_1_n_0 ;
  wire \v_bitPlace[8]_i_3_n_0 ;
  wire \v_bitPlace[8]_i_4_n_0 ;
  wire \v_bitPlace[8]_i_5_n_0 ;
  wire \v_bitPlace[8]_i_6_n_0 ;
  wire \v_bitPlace[9]_i_1_n_0 ;
  wire \v_bitPlace_reg[12]_i_2_n_0 ;
  wire \v_bitPlace_reg[12]_i_2_n_1 ;
  wire \v_bitPlace_reg[12]_i_2_n_2 ;
  wire \v_bitPlace_reg[12]_i_2_n_3 ;
  wire \v_bitPlace_reg[16]_i_2_n_0 ;
  wire \v_bitPlace_reg[16]_i_2_n_1 ;
  wire \v_bitPlace_reg[16]_i_2_n_2 ;
  wire \v_bitPlace_reg[16]_i_2_n_3 ;
  wire \v_bitPlace_reg[20]_i_2_n_0 ;
  wire \v_bitPlace_reg[20]_i_2_n_1 ;
  wire \v_bitPlace_reg[20]_i_2_n_2 ;
  wire \v_bitPlace_reg[20]_i_2_n_3 ;
  wire \v_bitPlace_reg[24]_i_2_n_0 ;
  wire \v_bitPlace_reg[24]_i_2_n_1 ;
  wire \v_bitPlace_reg[24]_i_2_n_2 ;
  wire \v_bitPlace_reg[24]_i_2_n_3 ;
  wire \v_bitPlace_reg[28]_i_2_n_0 ;
  wire \v_bitPlace_reg[28]_i_2_n_1 ;
  wire \v_bitPlace_reg[28]_i_2_n_2 ;
  wire \v_bitPlace_reg[28]_i_2_n_3 ;
  wire \v_bitPlace_reg[31]_i_5_n_2 ;
  wire \v_bitPlace_reg[31]_i_5_n_3 ;
  wire \v_bitPlace_reg[4]_i_2_n_0 ;
  wire \v_bitPlace_reg[4]_i_2_n_1 ;
  wire \v_bitPlace_reg[4]_i_2_n_2 ;
  wire \v_bitPlace_reg[4]_i_2_n_3 ;
  wire \v_bitPlace_reg[8]_i_2_n_0 ;
  wire \v_bitPlace_reg[8]_i_2_n_1 ;
  wire \v_bitPlace_reg[8]_i_2_n_2 ;
  wire \v_bitPlace_reg[8]_i_2_n_3 ;
  wire \v_bitPlace_reg_n_0_[0] ;
  wire \v_bitPlace_reg_n_0_[10] ;
  wire \v_bitPlace_reg_n_0_[11] ;
  wire \v_bitPlace_reg_n_0_[12] ;
  wire \v_bitPlace_reg_n_0_[13] ;
  wire \v_bitPlace_reg_n_0_[14] ;
  wire \v_bitPlace_reg_n_0_[15] ;
  wire \v_bitPlace_reg_n_0_[16] ;
  wire \v_bitPlace_reg_n_0_[17] ;
  wire \v_bitPlace_reg_n_0_[18] ;
  wire \v_bitPlace_reg_n_0_[19] ;
  wire \v_bitPlace_reg_n_0_[1] ;
  wire \v_bitPlace_reg_n_0_[20] ;
  wire \v_bitPlace_reg_n_0_[21] ;
  wire \v_bitPlace_reg_n_0_[22] ;
  wire \v_bitPlace_reg_n_0_[23] ;
  wire \v_bitPlace_reg_n_0_[24] ;
  wire \v_bitPlace_reg_n_0_[25] ;
  wire \v_bitPlace_reg_n_0_[26] ;
  wire \v_bitPlace_reg_n_0_[27] ;
  wire \v_bitPlace_reg_n_0_[28] ;
  wire \v_bitPlace_reg_n_0_[29] ;
  wire \v_bitPlace_reg_n_0_[2] ;
  wire \v_bitPlace_reg_n_0_[30] ;
  wire \v_bitPlace_reg_n_0_[31] ;
  wire \v_bitPlace_reg_n_0_[3] ;
  wire \v_bitPlace_reg_n_0_[4] ;
  wire \v_bitPlace_reg_n_0_[5] ;
  wire \v_bitPlace_reg_n_0_[6] ;
  wire \v_bitPlace_reg_n_0_[7] ;
  wire \v_bitPlace_reg_n_0_[8] ;
  wire \v_bitPlace_reg_n_0_[9] ;
  wire wr_en;
  wire [3:2]NLW_s_count0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_s_count0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_s_updated0_carry_O_UNCONNECTED;
  wire [3:0]NLW_s_updated0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_s_updated0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_s_updated0_carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_v_bitPlace_reg[31]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_v_bitPlace_reg[31]_i_5_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0303030A0A0A030A)) 
    \FSM_sequential_s_state[0]_i_1 
       (.I0(s_state[0]),
        .I1(s_state[0]),
        .I2(s_state[2]),
        .I3(\FSM_sequential_s_state[1]_i_2_n_0 ),
        .I4(s_state[1]),
        .I5(\FSM_sequential_s_state[1]_i_3_n_0 ),
        .O(\FSM_sequential_s_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1123332311200020)) 
    \FSM_sequential_s_state[1]_i_1 
       (.I0(s_state[0]),
        .I1(s_state[2]),
        .I2(\FSM_sequential_s_state[1]_i_2_n_0 ),
        .I3(s_state[1]),
        .I4(\FSM_sequential_s_state[1]_i_3_n_0 ),
        .I5(s_state[1]),
        .O(\FSM_sequential_s_state[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_s_state[1]_i_10 
       (.I0(\s_count_reg_n_0_[31] ),
        .I1(\s_count_reg_n_0_[26] ),
        .I2(\s_count_reg_n_0_[1] ),
        .O(\FSM_sequential_s_state[1]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_s_state[1]_i_11 
       (.I0(\s_count_reg_n_0_[16] ),
        .I1(\s_count_reg_n_0_[19] ),
        .I2(\s_count_reg_n_0_[9] ),
        .I3(\s_count_reg_n_0_[12] ),
        .O(\FSM_sequential_s_state[1]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_s_state[1]_i_12 
       (.I0(\s_count_reg_n_0_[20] ),
        .I1(\s_count_reg_n_0_[23] ),
        .I2(\s_count_reg_n_0_[17] ),
        .I3(\s_count_reg_n_0_[29] ),
        .O(\FSM_sequential_s_state[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_s_state[1]_i_13 
       (.I0(\s_count_reg_n_0_[15] ),
        .I1(\s_count_reg_n_0_[2] ),
        .I2(\s_count_reg_n_0_[0] ),
        .I3(\s_count_reg_n_0_[24] ),
        .I4(\s_count_reg_n_0_[30] ),
        .I5(\s_count_reg_n_0_[27] ),
        .O(\FSM_sequential_s_state[1]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h010001FF)) 
    \FSM_sequential_s_state[1]_i_2 
       (.I0(\FSM_sequential_s_state[1]_i_4_n_0 ),
        .I1(\FSM_sequential_s_state[1]_i_5_n_0 ),
        .I2(\FSM_sequential_s_state[1]_i_6_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .O(\FSM_sequential_s_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000000B)) 
    \FSM_sequential_s_state[1]_i_3 
       (.I0(s_updated0_carry__1_n_1),
        .I1(s_state[0]),
        .I2(\FSM_sequential_s_state[1]_i_4_n_0 ),
        .I3(\FSM_sequential_s_state[1]_i_5_n_0 ),
        .I4(\FSM_sequential_s_state[1]_i_7_n_0 ),
        .O(\FSM_sequential_s_state[1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_s_state[1]_i_4 
       (.I0(\s_count_reg_n_0_[11] ),
        .I1(\s_count_reg_n_0_[4] ),
        .I2(\s_count_reg_n_0_[7] ),
        .O(\FSM_sequential_s_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_s_state[1]_i_5 
       (.I0(\FSM_sequential_s_state[1]_i_8_n_0 ),
        .I1(\FSM_sequential_s_state[1]_i_9_n_0 ),
        .I2(\FSM_sequential_s_state[1]_i_10_n_0 ),
        .I3(\FSM_sequential_s_state[1]_i_11_n_0 ),
        .I4(\FSM_sequential_s_state[1]_i_12_n_0 ),
        .I5(\FSM_sequential_s_state[1]_i_13_n_0 ),
        .O(\FSM_sequential_s_state[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FSM_sequential_s_state[1]_i_6 
       (.I0(\s_count_reg_n_0_[5] ),
        .I1(\s_count_reg_n_0_[13] ),
        .I2(\s_count_reg_n_0_[8] ),
        .I3(\s_count_reg_n_0_[10] ),
        .O(\FSM_sequential_s_state[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FSM_sequential_s_state[1]_i_7 
       (.I0(\s_count_reg_n_0_[8] ),
        .I1(\s_count_reg_n_0_[10] ),
        .I2(\s_count_reg_n_0_[5] ),
        .I3(\s_count_reg_n_0_[13] ),
        .O(\FSM_sequential_s_state[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_s_state[1]_i_8 
       (.I0(\s_count_reg_n_0_[22] ),
        .I1(\s_count_reg_n_0_[25] ),
        .I2(\s_count_reg_n_0_[14] ),
        .I3(\s_count_reg_n_0_[6] ),
        .O(\FSM_sequential_s_state[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_s_state[1]_i_9 
       (.I0(\s_count_reg_n_0_[21] ),
        .I1(\s_count_reg_n_0_[28] ),
        .I2(\s_count_reg_n_0_[18] ),
        .I3(\s_count_reg_n_0_[3] ),
        .O(\FSM_sequential_s_state[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0C0C000A0A0A000A)) 
    \FSM_sequential_s_state[2]_i_1 
       (.I0(s_state[2]),
        .I1(s_state[0]),
        .I2(s_state[2]),
        .I3(\FSM_sequential_s_state[1]_i_2_n_0 ),
        .I4(s_state[1]),
        .I5(\FSM_sequential_s_state[1]_i_3_n_0 ),
        .O(\FSM_sequential_s_state[2]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_s_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_s_state[0]_i_1_n_0 ),
        .Q(s_state[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_s_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_s_state[1]_i_1_n_0 ),
        .Q(s_state[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_s_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_s_state[2]_i_1_n_0 ),
        .Q(s_state[2]),
        .R(1'b0));
  CARRY4 s_count0_carry
       (.CI(1'b0),
        .CO({s_count0_carry_n_0,s_count0_carry_n_1,s_count0_carry_n_2,s_count0_carry_n_3}),
        .CYINIT(\s_count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({s_count0_carry_n_4,s_count0_carry_n_5,s_count0_carry_n_6,s_count0_carry_n_7}),
        .S({s_count0_carry_i_1_n_0,s_count0_carry_i_2_n_0,s_count0_carry_i_3_n_0,s_count0_carry_i_4_n_0}));
  CARRY4 s_count0_carry__0
       (.CI(s_count0_carry_n_0),
        .CO({s_count0_carry__0_n_0,s_count0_carry__0_n_1,s_count0_carry__0_n_2,s_count0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({s_count0_carry__0_n_4,s_count0_carry__0_n_5,s_count0_carry__0_n_6,s_count0_carry__0_n_7}),
        .S({s_count0_carry__0_i_1_n_0,s_count0_carry__0_i_2_n_0,s_count0_carry__0_i_3_n_0,s_count0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__0_i_1
       (.I0(\s_count_reg_n_0_[8] ),
        .O(s_count0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__0_i_2
       (.I0(\s_count_reg_n_0_[7] ),
        .O(s_count0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__0_i_3
       (.I0(\s_count_reg_n_0_[6] ),
        .O(s_count0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__0_i_4
       (.I0(\s_count_reg_n_0_[5] ),
        .O(s_count0_carry__0_i_4_n_0));
  CARRY4 s_count0_carry__1
       (.CI(s_count0_carry__0_n_0),
        .CO({s_count0_carry__1_n_0,s_count0_carry__1_n_1,s_count0_carry__1_n_2,s_count0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({s_count0_carry__1_n_4,s_count0_carry__1_n_5,s_count0_carry__1_n_6,s_count0_carry__1_n_7}),
        .S({s_count0_carry__1_i_1_n_0,s_count0_carry__1_i_2_n_0,s_count0_carry__1_i_3_n_0,s_count0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__1_i_1
       (.I0(\s_count_reg_n_0_[12] ),
        .O(s_count0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__1_i_2
       (.I0(\s_count_reg_n_0_[11] ),
        .O(s_count0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__1_i_3
       (.I0(\s_count_reg_n_0_[10] ),
        .O(s_count0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__1_i_4
       (.I0(\s_count_reg_n_0_[9] ),
        .O(s_count0_carry__1_i_4_n_0));
  CARRY4 s_count0_carry__2
       (.CI(s_count0_carry__1_n_0),
        .CO({s_count0_carry__2_n_0,s_count0_carry__2_n_1,s_count0_carry__2_n_2,s_count0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({s_count0_carry__2_n_4,s_count0_carry__2_n_5,s_count0_carry__2_n_6,s_count0_carry__2_n_7}),
        .S({s_count0_carry__2_i_1_n_0,s_count0_carry__2_i_2_n_0,s_count0_carry__2_i_3_n_0,s_count0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__2_i_1
       (.I0(\s_count_reg_n_0_[16] ),
        .O(s_count0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__2_i_2
       (.I0(\s_count_reg_n_0_[15] ),
        .O(s_count0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__2_i_3
       (.I0(\s_count_reg_n_0_[14] ),
        .O(s_count0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__2_i_4
       (.I0(\s_count_reg_n_0_[13] ),
        .O(s_count0_carry__2_i_4_n_0));
  CARRY4 s_count0_carry__3
       (.CI(s_count0_carry__2_n_0),
        .CO({s_count0_carry__3_n_0,s_count0_carry__3_n_1,s_count0_carry__3_n_2,s_count0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({s_count0_carry__3_n_4,s_count0_carry__3_n_5,s_count0_carry__3_n_6,s_count0_carry__3_n_7}),
        .S({s_count0_carry__3_i_1_n_0,s_count0_carry__3_i_2_n_0,s_count0_carry__3_i_3_n_0,s_count0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__3_i_1
       (.I0(\s_count_reg_n_0_[20] ),
        .O(s_count0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__3_i_2
       (.I0(\s_count_reg_n_0_[19] ),
        .O(s_count0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__3_i_3
       (.I0(\s_count_reg_n_0_[18] ),
        .O(s_count0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__3_i_4
       (.I0(\s_count_reg_n_0_[17] ),
        .O(s_count0_carry__3_i_4_n_0));
  CARRY4 s_count0_carry__4
       (.CI(s_count0_carry__3_n_0),
        .CO({s_count0_carry__4_n_0,s_count0_carry__4_n_1,s_count0_carry__4_n_2,s_count0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({s_count0_carry__4_n_4,s_count0_carry__4_n_5,s_count0_carry__4_n_6,s_count0_carry__4_n_7}),
        .S({s_count0_carry__4_i_1_n_0,s_count0_carry__4_i_2_n_0,s_count0_carry__4_i_3_n_0,s_count0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__4_i_1
       (.I0(\s_count_reg_n_0_[24] ),
        .O(s_count0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__4_i_2
       (.I0(\s_count_reg_n_0_[23] ),
        .O(s_count0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__4_i_3
       (.I0(\s_count_reg_n_0_[22] ),
        .O(s_count0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__4_i_4
       (.I0(\s_count_reg_n_0_[21] ),
        .O(s_count0_carry__4_i_4_n_0));
  CARRY4 s_count0_carry__5
       (.CI(s_count0_carry__4_n_0),
        .CO({s_count0_carry__5_n_0,s_count0_carry__5_n_1,s_count0_carry__5_n_2,s_count0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({s_count0_carry__5_n_4,s_count0_carry__5_n_5,s_count0_carry__5_n_6,s_count0_carry__5_n_7}),
        .S({s_count0_carry__5_i_1_n_0,s_count0_carry__5_i_2_n_0,s_count0_carry__5_i_3_n_0,s_count0_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__5_i_1
       (.I0(\s_count_reg_n_0_[28] ),
        .O(s_count0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__5_i_2
       (.I0(\s_count_reg_n_0_[27] ),
        .O(s_count0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__5_i_3
       (.I0(\s_count_reg_n_0_[26] ),
        .O(s_count0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__5_i_4
       (.I0(\s_count_reg_n_0_[25] ),
        .O(s_count0_carry__5_i_4_n_0));
  CARRY4 s_count0_carry__6
       (.CI(s_count0_carry__5_n_0),
        .CO({NLW_s_count0_carry__6_CO_UNCONNECTED[3:2],s_count0_carry__6_n_2,s_count0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_s_count0_carry__6_O_UNCONNECTED[3],s_count0_carry__6_n_5,s_count0_carry__6_n_6,s_count0_carry__6_n_7}),
        .S({1'b0,s_count0_carry__6_i_1_n_0,s_count0_carry__6_i_2_n_0,s_count0_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__6_i_1
       (.I0(\s_count_reg_n_0_[31] ),
        .O(s_count0_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__6_i_2
       (.I0(\s_count_reg_n_0_[30] ),
        .O(s_count0_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry__6_i_3
       (.I0(\s_count_reg_n_0_[29] ),
        .O(s_count0_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry_i_1
       (.I0(\s_count_reg_n_0_[4] ),
        .O(s_count0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry_i_2
       (.I0(\s_count_reg_n_0_[3] ),
        .O(s_count0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry_i_3
       (.I0(\s_count_reg_n_0_[2] ),
        .O(s_count0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    s_count0_carry_i_4
       (.I0(\s_count_reg_n_0_[1] ),
        .O(s_count0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000047774744)) 
    \s_count[0]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(\s_count_reg_n_0_[0] ),
        .O(\s_count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[10]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__1_n_6),
        .O(\s_count[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[11]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__1_n_5),
        .O(\s_count[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[12]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__1_n_4),
        .O(\s_count[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[13]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__2_n_7),
        .O(\s_count[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[14]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__2_n_6),
        .O(\s_count[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[15]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__2_n_5),
        .O(\s_count[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[16]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__2_n_4),
        .O(\s_count[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[17]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__3_n_7),
        .O(\s_count[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[18]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__3_n_6),
        .O(\s_count[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[19]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__3_n_5),
        .O(\s_count[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[1]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry_n_7),
        .O(\s_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[20]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__3_n_4),
        .O(\s_count[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[21]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__4_n_7),
        .O(\s_count[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[22]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__4_n_6),
        .O(\s_count[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[23]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__4_n_5),
        .O(\s_count[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[24]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__4_n_4),
        .O(\s_count[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[25]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__5_n_7),
        .O(\s_count[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[26]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__5_n_6),
        .O(\s_count[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[27]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__5_n_5),
        .O(\s_count[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[28]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__5_n_4),
        .O(\s_count[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[29]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__6_n_7),
        .O(\s_count[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[2]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry_n_6),
        .O(\s_count[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[30]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__6_n_6),
        .O(\s_count[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[31]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__6_n_5),
        .O(\s_count[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \s_count[31]_i_2 
       (.I0(\s_count_reg_n_0_[11] ),
        .I1(\s_count_reg_n_0_[4] ),
        .I2(\s_count_reg_n_0_[7] ),
        .I3(\FSM_sequential_s_state[1]_i_5_n_0 ),
        .I4(\FSM_sequential_s_state[1]_i_6_n_0 ),
        .O(\s_count[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[3]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry_n_5),
        .O(\s_count[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[4]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry_n_4),
        .O(\s_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[5]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__0_n_7),
        .O(\s_count[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[6]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__0_n_6),
        .O(\s_count[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[7]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__0_n_5),
        .O(\s_count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[8]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__0_n_4),
        .O(\s_count[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777474400000000)) 
    \s_count[9]_i_1 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[1]),
        .I2(\s_count[31]_i_2_n_0 ),
        .I3(s_state[0]),
        .I4(RsRx),
        .I5(s_count0_carry__1_n_7),
        .O(\s_count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[0]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[0] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[10]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[10] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[11]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[11] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[12]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[12] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[13]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[13] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[14]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[14] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[15]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[15] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[16]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[16] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[17]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[17] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[18]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[18] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[19]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[19] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[1]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[1] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[20]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[20] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[21]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[21] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[22]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[22] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[23]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[23] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[24]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[24] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[25]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[25] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[26]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[26] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[27]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[27] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[28]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[28] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[29]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[29] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[2]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[2] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[30]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[30] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[31]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[31] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[3]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[3] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[4]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[4] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[5]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[5] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[6]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[6] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[7]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[7] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[8]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[8] ),
        .R(s_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_count[9]_i_1_n_0 ),
        .Q(\s_count_reg_n_0_[9] ),
        .R(s_state[2]));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \s_dout[0]_i_1 
       (.I0(RsRx),
        .I1(s_state[2]),
        .I2(\s_dout[6]_i_2_n_0 ),
        .I3(\s_dout[1]_i_2_n_0 ),
        .I4(\s_dout[7]_i_4_n_0 ),
        .I5(din[0]),
        .O(\s_dout[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \s_dout[1]_i_1 
       (.I0(RsRx),
        .I1(s_state[2]),
        .I2(\s_dout[7]_i_2_n_0 ),
        .I3(\s_dout[1]_i_2_n_0 ),
        .I4(\s_dout[7]_i_4_n_0 ),
        .I5(din[1]),
        .O(\s_dout[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_dout[1]_i_2 
       (.I0(\v_bitPlace_reg_n_0_[2] ),
        .I1(\v_bitPlace_reg_n_0_[1] ),
        .O(\s_dout[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \s_dout[2]_i_1 
       (.I0(RsRx),
        .I1(s_state[2]),
        .I2(\s_dout[6]_i_2_n_0 ),
        .I3(\s_dout[3]_i_2_n_0 ),
        .I4(\s_dout[7]_i_4_n_0 ),
        .I5(din[2]),
        .O(\s_dout[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \s_dout[3]_i_1 
       (.I0(RsRx),
        .I1(s_state[2]),
        .I2(\s_dout[7]_i_2_n_0 ),
        .I3(\s_dout[3]_i_2_n_0 ),
        .I4(\s_dout[7]_i_4_n_0 ),
        .I5(din[3]),
        .O(\s_dout[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \s_dout[3]_i_2 
       (.I0(\v_bitPlace_reg_n_0_[2] ),
        .I1(\v_bitPlace_reg_n_0_[1] ),
        .O(\s_dout[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \s_dout[4]_i_1 
       (.I0(RsRx),
        .I1(s_state[2]),
        .I2(\s_dout[6]_i_2_n_0 ),
        .I3(\s_dout[5]_i_2_n_0 ),
        .I4(\s_dout[7]_i_4_n_0 ),
        .I5(din[4]),
        .O(\s_dout[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \s_dout[5]_i_1 
       (.I0(RsRx),
        .I1(s_state[2]),
        .I2(\s_dout[7]_i_2_n_0 ),
        .I3(\s_dout[5]_i_2_n_0 ),
        .I4(\s_dout[7]_i_4_n_0 ),
        .I5(din[5]),
        .O(\s_dout[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \s_dout[5]_i_2 
       (.I0(\v_bitPlace_reg_n_0_[1] ),
        .I1(\v_bitPlace_reg_n_0_[2] ),
        .O(\s_dout[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \s_dout[6]_i_1 
       (.I0(RsRx),
        .I1(s_state[2]),
        .I2(\s_dout[6]_i_2_n_0 ),
        .I3(\s_dout[7]_i_3_n_0 ),
        .I4(\s_dout[7]_i_4_n_0 ),
        .I5(din[6]),
        .O(\s_dout[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \s_dout[6]_i_2 
       (.I0(\v_bitPlace_reg_n_0_[0] ),
        .I1(\s_dout[7]_i_5_n_0 ),
        .I2(\s_dout[7]_i_6_n_0 ),
        .I3(\s_dout[7]_i_7_n_0 ),
        .I4(\s_dout[7]_i_8_n_0 ),
        .I5(\FSM_sequential_s_state[1]_i_5_n_0 ),
        .O(\s_dout[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \s_dout[7]_i_1 
       (.I0(RsRx),
        .I1(s_state[2]),
        .I2(\s_dout[7]_i_2_n_0 ),
        .I3(\s_dout[7]_i_3_n_0 ),
        .I4(\s_dout[7]_i_4_n_0 ),
        .I5(din[7]),
        .O(\s_dout[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_dout[7]_i_10 
       (.I0(\v_bitPlace_reg_n_0_[3] ),
        .I1(\v_bitPlace_reg_n_0_[4] ),
        .I2(\v_bitPlace_reg_n_0_[30] ),
        .I3(\v_bitPlace_reg_n_0_[20] ),
        .O(\s_dout[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_dout[7]_i_11 
       (.I0(\v_bitPlace_reg_n_0_[8] ),
        .I1(\v_bitPlace_reg_n_0_[27] ),
        .I2(\v_bitPlace_reg_n_0_[9] ),
        .I3(\v_bitPlace_reg_n_0_[7] ),
        .O(\s_dout[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_dout[7]_i_12 
       (.I0(\v_bitPlace_reg_n_0_[12] ),
        .I1(\v_bitPlace_reg_n_0_[15] ),
        .I2(\v_bitPlace_reg_n_0_[16] ),
        .I3(\v_bitPlace_reg_n_0_[24] ),
        .O(\s_dout[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_dout[7]_i_13 
       (.I0(\v_bitPlace_reg_n_0_[26] ),
        .I1(\v_bitPlace_reg_n_0_[23] ),
        .I2(\v_bitPlace_reg_n_0_[6] ),
        .I3(\v_bitPlace_reg_n_0_[10] ),
        .O(\s_dout[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \s_dout[7]_i_2 
       (.I0(\v_bitPlace_reg_n_0_[0] ),
        .I1(\s_dout[7]_i_5_n_0 ),
        .I2(\s_dout[7]_i_6_n_0 ),
        .I3(\s_dout[7]_i_7_n_0 ),
        .I4(\s_dout[7]_i_8_n_0 ),
        .I5(\FSM_sequential_s_state[1]_i_5_n_0 ),
        .O(\s_dout[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \s_dout[7]_i_3 
       (.I0(\v_bitPlace_reg_n_0_[2] ),
        .I1(\v_bitPlace_reg_n_0_[1] ),
        .O(\s_dout[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \s_dout[7]_i_4 
       (.I0(s_state[0]),
        .I1(s_state[1]),
        .O(\s_dout[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \s_dout[7]_i_5 
       (.I0(\s_count_reg_n_0_[4] ),
        .I1(\v_bitPlace_reg_n_0_[13] ),
        .I2(\v_bitPlace_reg_n_0_[31] ),
        .I3(\v_bitPlace_reg_n_0_[17] ),
        .I4(\s_dout[7]_i_9_n_0 ),
        .I5(\s_dout[7]_i_10_n_0 ),
        .O(\s_dout[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_dout[7]_i_6 
       (.I0(\v_bitPlace_reg_n_0_[25] ),
        .I1(\v_bitPlace_reg_n_0_[22] ),
        .I2(\v_bitPlace_reg_n_0_[28] ),
        .I3(\v_bitPlace_reg_n_0_[29] ),
        .I4(\s_dout[7]_i_11_n_0 ),
        .O(\s_dout[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_dout[7]_i_7 
       (.I0(\v_bitPlace_reg_n_0_[19] ),
        .I1(\v_bitPlace_reg_n_0_[21] ),
        .I2(\s_count_reg_n_0_[7] ),
        .I3(\v_bitPlace_reg_n_0_[11] ),
        .I4(\s_dout[7]_i_12_n_0 ),
        .O(\s_dout[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_dout[7]_i_8 
       (.I0(\s_count_reg_n_0_[13] ),
        .I1(\s_count_reg_n_0_[5] ),
        .I2(\s_count_reg_n_0_[10] ),
        .I3(\s_count_reg_n_0_[8] ),
        .I4(\s_dout[7]_i_13_n_0 ),
        .O(\s_dout[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_dout[7]_i_9 
       (.I0(\v_bitPlace_reg_n_0_[5] ),
        .I1(\s_count_reg_n_0_[11] ),
        .I2(\v_bitPlace_reg_n_0_[14] ),
        .I3(\v_bitPlace_reg_n_0_[18] ),
        .O(\s_dout[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_dout_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_dout[0]_i_1_n_0 ),
        .Q(din[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dout_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_dout[1]_i_1_n_0 ),
        .Q(din[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dout_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_dout[2]_i_1_n_0 ),
        .Q(din[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dout_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_dout[3]_i_1_n_0 ),
        .Q(din[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dout_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_dout[4]_i_1_n_0 ),
        .Q(din[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dout_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_dout[5]_i_1_n_0 ),
        .Q(din[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dout_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_dout[6]_i_1_n_0 ),
        .Q(din[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_dout_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_dout[7]_i_1_n_0 ),
        .Q(din[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    s_in_fifo_wr_en_i_1
       (.I0(updated),
        .I1(wr_en),
        .O(s_in_fifo_wr_en0));
  CARRY4 s_updated0_carry
       (.CI(1'b0),
        .CO({s_updated0_carry_n_0,s_updated0_carry_n_1,s_updated0_carry_n_2,s_updated0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_s_updated0_carry_O_UNCONNECTED[3:0]),
        .S({s_updated0_carry_i_1_n_0,s_updated0_carry_i_2_n_0,s_updated0_carry_i_3_n_0,s_updated0_carry_i_4_n_0}));
  CARRY4 s_updated0_carry__0
       (.CI(s_updated0_carry_n_0),
        .CO({s_updated0_carry__0_n_0,s_updated0_carry__0_n_1,s_updated0_carry__0_n_2,s_updated0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_s_updated0_carry__0_O_UNCONNECTED[3:0]),
        .S({s_updated0_carry__0_i_1_n_0,s_updated0_carry__0_i_2_n_0,s_updated0_carry__0_i_3_n_0,s_updated0_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    s_updated0_carry__0_i_1
       (.I0(s_updated1[22]),
        .I1(s_updated1[23]),
        .I2(s_updated1[21]),
        .O(s_updated0_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    s_updated0_carry__0_i_2
       (.I0(s_updated1[19]),
        .I1(s_updated1[20]),
        .I2(s_updated1[18]),
        .O(s_updated0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    s_updated0_carry__0_i_3
       (.I0(s_updated1[16]),
        .I1(s_updated1[17]),
        .I2(s_updated1[15]),
        .O(s_updated0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    s_updated0_carry__0_i_4
       (.I0(s_updated1[13]),
        .I1(s_updated1[14]),
        .I2(s_updated1[12]),
        .O(s_updated0_carry__0_i_4_n_0));
  CARRY4 s_updated0_carry__1
       (.CI(s_updated0_carry__0_n_0),
        .CO({NLW_s_updated0_carry__1_CO_UNCONNECTED[3],s_updated0_carry__1_n_1,s_updated0_carry__1_n_2,s_updated0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_s_updated0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,s_updated0_carry__1_i_1_n_0,s_updated0_carry__1_i_2_n_0,s_updated0_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    s_updated0_carry__1_i_1
       (.I0(s_updated1[31]),
        .I1(s_updated1[30]),
        .O(s_updated0_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    s_updated0_carry__1_i_2
       (.I0(s_updated1[28]),
        .I1(s_updated1[29]),
        .I2(s_updated1[27]),
        .O(s_updated0_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    s_updated0_carry__1_i_3
       (.I0(s_updated1[25]),
        .I1(s_updated1[26]),
        .I2(s_updated1[24]),
        .O(s_updated0_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    s_updated0_carry_i_1
       (.I0(s_updated1[10]),
        .I1(s_updated1[11]),
        .I2(s_updated1[9]),
        .O(s_updated0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    s_updated0_carry_i_2
       (.I0(s_updated1[7]),
        .I1(s_updated1[8]),
        .I2(s_updated1[6]),
        .O(s_updated0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    s_updated0_carry_i_3
       (.I0(s_updated1[4]),
        .I1(s_updated1[3]),
        .I2(s_updated1[5]),
        .O(s_updated0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    s_updated0_carry_i_4
       (.I0(s_updated1[1]),
        .I1(\v_bitPlace_reg_n_0_[0] ),
        .I2(s_updated1[2]),
        .O(s_updated0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h4000FFFF40004000)) 
    s_updated_i_1
       (.I0(s_state[2]),
        .I1(s_updated_i_2_n_0),
        .I2(s_state[0]),
        .I3(s_state[1]),
        .I4(wr_en),
        .I5(updated),
        .O(s_updated_i_1_n_0));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    s_updated_i_2
       (.I0(s_updated0_carry__1_n_1),
        .I1(\FSM_sequential_s_state[1]_i_7_n_0 ),
        .I2(\FSM_sequential_s_state[1]_i_5_n_0 ),
        .I3(\s_count_reg_n_0_[7] ),
        .I4(\s_count_reg_n_0_[4] ),
        .I5(\s_count_reg_n_0_[11] ),
        .O(s_updated_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_updated_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_updated_i_1_n_0),
        .Q(updated),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    \v_bitPlace[0]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(\v_bitPlace_reg_n_0_[0] ),
        .O(\v_bitPlace[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[10]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[10]),
        .O(\v_bitPlace[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[11]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[11]),
        .O(\v_bitPlace[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[12]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[12]),
        .O(\v_bitPlace[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[12]_i_3 
       (.I0(\v_bitPlace_reg_n_0_[12] ),
        .O(\v_bitPlace[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[12]_i_4 
       (.I0(\v_bitPlace_reg_n_0_[11] ),
        .O(\v_bitPlace[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[12]_i_5 
       (.I0(\v_bitPlace_reg_n_0_[10] ),
        .O(\v_bitPlace[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[12]_i_6 
       (.I0(\v_bitPlace_reg_n_0_[9] ),
        .O(\v_bitPlace[12]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[13]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[13]),
        .O(\v_bitPlace[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[14]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[14]),
        .O(\v_bitPlace[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[15]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[15]),
        .O(\v_bitPlace[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[16]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[16]),
        .O(\v_bitPlace[16]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[16]_i_3 
       (.I0(\v_bitPlace_reg_n_0_[16] ),
        .O(\v_bitPlace[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[16]_i_4 
       (.I0(\v_bitPlace_reg_n_0_[15] ),
        .O(\v_bitPlace[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[16]_i_5 
       (.I0(\v_bitPlace_reg_n_0_[14] ),
        .O(\v_bitPlace[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[16]_i_6 
       (.I0(\v_bitPlace_reg_n_0_[13] ),
        .O(\v_bitPlace[16]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[17]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[17]),
        .O(\v_bitPlace[17]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[18]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[18]),
        .O(\v_bitPlace[18]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[19]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[19]),
        .O(\v_bitPlace[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[1]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[1]),
        .O(\v_bitPlace[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[20]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[20]),
        .O(\v_bitPlace[20]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[20]_i_3 
       (.I0(\v_bitPlace_reg_n_0_[20] ),
        .O(\v_bitPlace[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[20]_i_4 
       (.I0(\v_bitPlace_reg_n_0_[19] ),
        .O(\v_bitPlace[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[20]_i_5 
       (.I0(\v_bitPlace_reg_n_0_[18] ),
        .O(\v_bitPlace[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[20]_i_6 
       (.I0(\v_bitPlace_reg_n_0_[17] ),
        .O(\v_bitPlace[20]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[21]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[21]),
        .O(\v_bitPlace[21]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[22]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[22]),
        .O(\v_bitPlace[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[23]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[23]),
        .O(\v_bitPlace[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[24]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[24]),
        .O(\v_bitPlace[24]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[24]_i_3 
       (.I0(\v_bitPlace_reg_n_0_[24] ),
        .O(\v_bitPlace[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[24]_i_4 
       (.I0(\v_bitPlace_reg_n_0_[23] ),
        .O(\v_bitPlace[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[24]_i_5 
       (.I0(\v_bitPlace_reg_n_0_[22] ),
        .O(\v_bitPlace[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[24]_i_6 
       (.I0(\v_bitPlace_reg_n_0_[21] ),
        .O(\v_bitPlace[24]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[25]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[25]),
        .O(\v_bitPlace[25]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[26]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[26]),
        .O(\v_bitPlace[26]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[27]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[27]),
        .O(\v_bitPlace[27]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[28]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[28]),
        .O(\v_bitPlace[28]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[28]_i_3 
       (.I0(\v_bitPlace_reg_n_0_[28] ),
        .O(\v_bitPlace[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[28]_i_4 
       (.I0(\v_bitPlace_reg_n_0_[27] ),
        .O(\v_bitPlace[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[28]_i_5 
       (.I0(\v_bitPlace_reg_n_0_[26] ),
        .O(\v_bitPlace[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[28]_i_6 
       (.I0(\v_bitPlace_reg_n_0_[25] ),
        .O(\v_bitPlace[28]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[29]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[29]),
        .O(\v_bitPlace[29]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[2]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[2]),
        .O(\v_bitPlace[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[30]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[30]),
        .O(\v_bitPlace[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \v_bitPlace[31]_i_1 
       (.I0(s_state[1]),
        .I1(s_state[0]),
        .I2(s_state[2]),
        .O(\v_bitPlace[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h220C)) 
    \v_bitPlace[31]_i_2 
       (.I0(\v_bitPlace[31]_i_4_n_0 ),
        .I1(s_state[2]),
        .I2(s_state[0]),
        .I3(s_state[1]),
        .O(v_bitPlace));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[31]_i_3 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[31]),
        .O(\v_bitPlace[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \v_bitPlace[31]_i_4 
       (.I0(\s_count_reg_n_0_[11] ),
        .I1(\s_count_reg_n_0_[4] ),
        .I2(\s_count_reg_n_0_[7] ),
        .I3(\FSM_sequential_s_state[1]_i_5_n_0 ),
        .I4(\FSM_sequential_s_state[1]_i_7_n_0 ),
        .O(\v_bitPlace[31]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[31]_i_6 
       (.I0(\v_bitPlace_reg_n_0_[31] ),
        .O(\v_bitPlace[31]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[31]_i_7 
       (.I0(\v_bitPlace_reg_n_0_[30] ),
        .O(\v_bitPlace[31]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[31]_i_8 
       (.I0(\v_bitPlace_reg_n_0_[29] ),
        .O(\v_bitPlace[31]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[3]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[3]),
        .O(\v_bitPlace[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[4]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[4]),
        .O(\v_bitPlace[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[4]_i_3 
       (.I0(\v_bitPlace_reg_n_0_[4] ),
        .O(\v_bitPlace[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[4]_i_4 
       (.I0(\v_bitPlace_reg_n_0_[3] ),
        .O(\v_bitPlace[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[4]_i_5 
       (.I0(\v_bitPlace_reg_n_0_[2] ),
        .O(\v_bitPlace[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[4]_i_6 
       (.I0(\v_bitPlace_reg_n_0_[1] ),
        .O(\v_bitPlace[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[5]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[5]),
        .O(\v_bitPlace[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[6]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[6]),
        .O(\v_bitPlace[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[7]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[7]),
        .O(\v_bitPlace[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[8]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[8]),
        .O(\v_bitPlace[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[8]_i_3 
       (.I0(\v_bitPlace_reg_n_0_[8] ),
        .O(\v_bitPlace[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[8]_i_4 
       (.I0(\v_bitPlace_reg_n_0_[7] ),
        .O(\v_bitPlace[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[8]_i_5 
       (.I0(\v_bitPlace_reg_n_0_[6] ),
        .O(\v_bitPlace[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \v_bitPlace[8]_i_6 
       (.I0(\v_bitPlace_reg_n_0_[5] ),
        .O(\v_bitPlace[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \v_bitPlace[9]_i_1 
       (.I0(s_state[0]),
        .I1(s_updated0_carry__1_n_1),
        .I2(s_updated1[9]),
        .O(\v_bitPlace[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[0] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[0]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[0] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[10] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[10]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[10] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[11] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[11]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[11] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[12] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[12]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[12] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  CARRY4 \v_bitPlace_reg[12]_i_2 
       (.CI(\v_bitPlace_reg[8]_i_2_n_0 ),
        .CO({\v_bitPlace_reg[12]_i_2_n_0 ,\v_bitPlace_reg[12]_i_2_n_1 ,\v_bitPlace_reg[12]_i_2_n_2 ,\v_bitPlace_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_updated1[12:9]),
        .S({\v_bitPlace[12]_i_3_n_0 ,\v_bitPlace[12]_i_4_n_0 ,\v_bitPlace[12]_i_5_n_0 ,\v_bitPlace[12]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[13] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[13]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[13] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[14] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[14]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[14] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[15] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[15]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[15] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[16] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[16]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[16] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  CARRY4 \v_bitPlace_reg[16]_i_2 
       (.CI(\v_bitPlace_reg[12]_i_2_n_0 ),
        .CO({\v_bitPlace_reg[16]_i_2_n_0 ,\v_bitPlace_reg[16]_i_2_n_1 ,\v_bitPlace_reg[16]_i_2_n_2 ,\v_bitPlace_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_updated1[16:13]),
        .S({\v_bitPlace[16]_i_3_n_0 ,\v_bitPlace[16]_i_4_n_0 ,\v_bitPlace[16]_i_5_n_0 ,\v_bitPlace[16]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[17] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[17]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[17] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[18] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[18]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[18] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[19] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[19]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[19] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[1] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[1]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[1] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[20] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[20]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[20] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  CARRY4 \v_bitPlace_reg[20]_i_2 
       (.CI(\v_bitPlace_reg[16]_i_2_n_0 ),
        .CO({\v_bitPlace_reg[20]_i_2_n_0 ,\v_bitPlace_reg[20]_i_2_n_1 ,\v_bitPlace_reg[20]_i_2_n_2 ,\v_bitPlace_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_updated1[20:17]),
        .S({\v_bitPlace[20]_i_3_n_0 ,\v_bitPlace[20]_i_4_n_0 ,\v_bitPlace[20]_i_5_n_0 ,\v_bitPlace[20]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[21] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[21]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[21] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[22] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[22]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[22] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[23] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[23]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[23] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[24] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[24]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[24] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  CARRY4 \v_bitPlace_reg[24]_i_2 
       (.CI(\v_bitPlace_reg[20]_i_2_n_0 ),
        .CO({\v_bitPlace_reg[24]_i_2_n_0 ,\v_bitPlace_reg[24]_i_2_n_1 ,\v_bitPlace_reg[24]_i_2_n_2 ,\v_bitPlace_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_updated1[24:21]),
        .S({\v_bitPlace[24]_i_3_n_0 ,\v_bitPlace[24]_i_4_n_0 ,\v_bitPlace[24]_i_5_n_0 ,\v_bitPlace[24]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[25] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[25]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[25] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[26] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[26]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[26] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[27] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[27]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[27] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[28] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[28]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[28] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  CARRY4 \v_bitPlace_reg[28]_i_2 
       (.CI(\v_bitPlace_reg[24]_i_2_n_0 ),
        .CO({\v_bitPlace_reg[28]_i_2_n_0 ,\v_bitPlace_reg[28]_i_2_n_1 ,\v_bitPlace_reg[28]_i_2_n_2 ,\v_bitPlace_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_updated1[28:25]),
        .S({\v_bitPlace[28]_i_3_n_0 ,\v_bitPlace[28]_i_4_n_0 ,\v_bitPlace[28]_i_5_n_0 ,\v_bitPlace[28]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[29] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[29]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[29] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[2] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[2]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[2] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[30] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[30]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[30] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[31] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[31]_i_3_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[31] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  CARRY4 \v_bitPlace_reg[31]_i_5 
       (.CI(\v_bitPlace_reg[28]_i_2_n_0 ),
        .CO({\NLW_v_bitPlace_reg[31]_i_5_CO_UNCONNECTED [3:2],\v_bitPlace_reg[31]_i_5_n_2 ,\v_bitPlace_reg[31]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_v_bitPlace_reg[31]_i_5_O_UNCONNECTED [3],s_updated1[31:29]}),
        .S({1'b0,\v_bitPlace[31]_i_6_n_0 ,\v_bitPlace[31]_i_7_n_0 ,\v_bitPlace[31]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[3] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[3]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[3] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[4] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[4]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[4] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  CARRY4 \v_bitPlace_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\v_bitPlace_reg[4]_i_2_n_0 ,\v_bitPlace_reg[4]_i_2_n_1 ,\v_bitPlace_reg[4]_i_2_n_2 ,\v_bitPlace_reg[4]_i_2_n_3 }),
        .CYINIT(\v_bitPlace_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_updated1[4:1]),
        .S({\v_bitPlace[4]_i_3_n_0 ,\v_bitPlace[4]_i_4_n_0 ,\v_bitPlace[4]_i_5_n_0 ,\v_bitPlace[4]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[5] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[5]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[5] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[6] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[6]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[6] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[7] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[7]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[7] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[8] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[8]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[8] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
  CARRY4 \v_bitPlace_reg[8]_i_2 
       (.CI(\v_bitPlace_reg[4]_i_2_n_0 ),
        .CO({\v_bitPlace_reg[8]_i_2_n_0 ,\v_bitPlace_reg[8]_i_2_n_1 ,\v_bitPlace_reg[8]_i_2_n_2 ,\v_bitPlace_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(s_updated1[8:5]),
        .S({\v_bitPlace[8]_i_3_n_0 ,\v_bitPlace[8]_i_4_n_0 ,\v_bitPlace[8]_i_5_n_0 ,\v_bitPlace[8]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \v_bitPlace_reg[9] 
       (.C(clk),
        .CE(v_bitPlace),
        .D(\v_bitPlace[9]_i_1_n_0 ),
        .Q(\v_bitPlace_reg_n_0_[9] ),
        .R(\v_bitPlace[31]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "transmit" *) 
module uart_UART_0_0_transmit
   (RsTx,
    \s_bitPlace_reg[0]_0 ,
    \s_bitPlace_reg[4]_0 ,
    s_tx_state_reg,
    s_tx_send_reg,
    clk,
    \s_bitPlace_reg[1]_0 ,
    \s_bitPlace_reg[1]_1 ,
    s_out_fifo_rd_en,
    send_delay,
    empty,
    s_tx_state);
  output RsTx;
  output \s_bitPlace_reg[0]_0 ;
  output \s_bitPlace_reg[4]_0 ;
  output s_tx_state_reg;
  output s_tx_send_reg;
  input clk;
  input \s_bitPlace_reg[1]_0 ;
  input \s_bitPlace_reg[1]_1 ;
  input s_out_fifo_rd_en;
  input send_delay;
  input empty;
  input s_tx_state;

  wire RsTx;
  wire RsTx_i_1_n_0;
  wire RsTx_i_2_n_0;
  wire clk;
  wire empty;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__6_i_1_n_0;
  wire i__carry__6_i_2_n_0;
  wire i__carry__6_i_3_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire ready;
  wire \s_bitPlace[0]_i_1_n_0 ;
  wire \s_bitPlace[10]_i_1_n_0 ;
  wire \s_bitPlace[11]_i_1_n_0 ;
  wire \s_bitPlace[12]_i_1_n_0 ;
  wire \s_bitPlace[12]_i_3_n_0 ;
  wire \s_bitPlace[12]_i_4_n_0 ;
  wire \s_bitPlace[12]_i_5_n_0 ;
  wire \s_bitPlace[12]_i_6_n_0 ;
  wire \s_bitPlace[13]_i_1_n_0 ;
  wire \s_bitPlace[14]_i_1_n_0 ;
  wire \s_bitPlace[15]_i_1_n_0 ;
  wire \s_bitPlace[16]_i_1_n_0 ;
  wire \s_bitPlace[16]_i_3_n_0 ;
  wire \s_bitPlace[16]_i_4_n_0 ;
  wire \s_bitPlace[16]_i_5_n_0 ;
  wire \s_bitPlace[16]_i_6_n_0 ;
  wire \s_bitPlace[17]_i_1_n_0 ;
  wire \s_bitPlace[18]_i_1_n_0 ;
  wire \s_bitPlace[19]_i_1_n_0 ;
  wire \s_bitPlace[1]_i_1_n_0 ;
  wire \s_bitPlace[20]_i_1_n_0 ;
  wire \s_bitPlace[20]_i_3_n_0 ;
  wire \s_bitPlace[20]_i_4_n_0 ;
  wire \s_bitPlace[20]_i_5_n_0 ;
  wire \s_bitPlace[20]_i_6_n_0 ;
  wire \s_bitPlace[21]_i_1_n_0 ;
  wire \s_bitPlace[22]_i_1_n_0 ;
  wire \s_bitPlace[23]_i_1_n_0 ;
  wire \s_bitPlace[24]_i_1_n_0 ;
  wire \s_bitPlace[24]_i_3_n_0 ;
  wire \s_bitPlace[24]_i_4_n_0 ;
  wire \s_bitPlace[24]_i_5_n_0 ;
  wire \s_bitPlace[24]_i_6_n_0 ;
  wire \s_bitPlace[25]_i_1_n_0 ;
  wire \s_bitPlace[26]_i_1_n_0 ;
  wire \s_bitPlace[27]_i_1_n_0 ;
  wire \s_bitPlace[28]_i_1_n_0 ;
  wire \s_bitPlace[28]_i_3_n_0 ;
  wire \s_bitPlace[28]_i_4_n_0 ;
  wire \s_bitPlace[28]_i_5_n_0 ;
  wire \s_bitPlace[28]_i_6_n_0 ;
  wire \s_bitPlace[29]_i_1_n_0 ;
  wire \s_bitPlace[2]_i_1_n_0 ;
  wire \s_bitPlace[30]_i_1_n_0 ;
  wire \s_bitPlace[31]_i_11_n_0 ;
  wire \s_bitPlace[31]_i_12_n_0 ;
  wire \s_bitPlace[31]_i_13_n_0 ;
  wire \s_bitPlace[31]_i_14_n_0 ;
  wire \s_bitPlace[31]_i_15_n_0 ;
  wire \s_bitPlace[31]_i_16_n_0 ;
  wire \s_bitPlace[31]_i_17_n_0 ;
  wire \s_bitPlace[31]_i_1_n_0 ;
  wire \s_bitPlace[31]_i_2_n_0 ;
  wire \s_bitPlace[31]_i_3_n_0 ;
  wire \s_bitPlace[31]_i_4_n_0 ;
  wire \s_bitPlace[31]_i_5_n_0 ;
  wire \s_bitPlace[31]_i_6_n_0 ;
  wire \s_bitPlace[31]_i_7_n_0 ;
  wire \s_bitPlace[31]_i_8_n_0 ;
  wire \s_bitPlace[31]_i_9_n_0 ;
  wire \s_bitPlace[3]_i_1_n_0 ;
  wire \s_bitPlace[4]_i_1_n_0 ;
  wire \s_bitPlace[4]_i_3_n_0 ;
  wire \s_bitPlace[4]_i_4_n_0 ;
  wire \s_bitPlace[4]_i_5_n_0 ;
  wire \s_bitPlace[4]_i_6_n_0 ;
  wire \s_bitPlace[5]_i_1_n_0 ;
  wire \s_bitPlace[6]_i_1_n_0 ;
  wire \s_bitPlace[7]_i_1_n_0 ;
  wire \s_bitPlace[8]_i_1_n_0 ;
  wire \s_bitPlace[8]_i_3_n_0 ;
  wire \s_bitPlace[8]_i_4_n_0 ;
  wire \s_bitPlace[8]_i_5_n_0 ;
  wire \s_bitPlace[8]_i_6_n_0 ;
  wire \s_bitPlace[9]_i_1_n_0 ;
  wire \s_bitPlace_reg[0]_0 ;
  wire \s_bitPlace_reg[12]_i_2_n_0 ;
  wire \s_bitPlace_reg[12]_i_2_n_1 ;
  wire \s_bitPlace_reg[12]_i_2_n_2 ;
  wire \s_bitPlace_reg[12]_i_2_n_3 ;
  wire \s_bitPlace_reg[12]_i_2_n_4 ;
  wire \s_bitPlace_reg[12]_i_2_n_5 ;
  wire \s_bitPlace_reg[12]_i_2_n_6 ;
  wire \s_bitPlace_reg[12]_i_2_n_7 ;
  wire \s_bitPlace_reg[16]_i_2_n_0 ;
  wire \s_bitPlace_reg[16]_i_2_n_1 ;
  wire \s_bitPlace_reg[16]_i_2_n_2 ;
  wire \s_bitPlace_reg[16]_i_2_n_3 ;
  wire \s_bitPlace_reg[16]_i_2_n_4 ;
  wire \s_bitPlace_reg[16]_i_2_n_5 ;
  wire \s_bitPlace_reg[16]_i_2_n_6 ;
  wire \s_bitPlace_reg[16]_i_2_n_7 ;
  wire \s_bitPlace_reg[1]_0 ;
  wire \s_bitPlace_reg[1]_1 ;
  wire \s_bitPlace_reg[20]_i_2_n_0 ;
  wire \s_bitPlace_reg[20]_i_2_n_1 ;
  wire \s_bitPlace_reg[20]_i_2_n_2 ;
  wire \s_bitPlace_reg[20]_i_2_n_3 ;
  wire \s_bitPlace_reg[20]_i_2_n_4 ;
  wire \s_bitPlace_reg[20]_i_2_n_5 ;
  wire \s_bitPlace_reg[20]_i_2_n_6 ;
  wire \s_bitPlace_reg[20]_i_2_n_7 ;
  wire \s_bitPlace_reg[24]_i_2_n_0 ;
  wire \s_bitPlace_reg[24]_i_2_n_1 ;
  wire \s_bitPlace_reg[24]_i_2_n_2 ;
  wire \s_bitPlace_reg[24]_i_2_n_3 ;
  wire \s_bitPlace_reg[24]_i_2_n_4 ;
  wire \s_bitPlace_reg[24]_i_2_n_5 ;
  wire \s_bitPlace_reg[24]_i_2_n_6 ;
  wire \s_bitPlace_reg[24]_i_2_n_7 ;
  wire \s_bitPlace_reg[28]_i_2_n_0 ;
  wire \s_bitPlace_reg[28]_i_2_n_1 ;
  wire \s_bitPlace_reg[28]_i_2_n_2 ;
  wire \s_bitPlace_reg[28]_i_2_n_3 ;
  wire \s_bitPlace_reg[28]_i_2_n_4 ;
  wire \s_bitPlace_reg[28]_i_2_n_5 ;
  wire \s_bitPlace_reg[28]_i_2_n_6 ;
  wire \s_bitPlace_reg[28]_i_2_n_7 ;
  wire \s_bitPlace_reg[31]_i_10_n_2 ;
  wire \s_bitPlace_reg[31]_i_10_n_3 ;
  wire \s_bitPlace_reg[31]_i_10_n_5 ;
  wire \s_bitPlace_reg[31]_i_10_n_6 ;
  wire \s_bitPlace_reg[31]_i_10_n_7 ;
  wire \s_bitPlace_reg[4]_0 ;
  wire \s_bitPlace_reg[4]_i_2_n_0 ;
  wire \s_bitPlace_reg[4]_i_2_n_1 ;
  wire \s_bitPlace_reg[4]_i_2_n_2 ;
  wire \s_bitPlace_reg[4]_i_2_n_3 ;
  wire \s_bitPlace_reg[4]_i_2_n_4 ;
  wire \s_bitPlace_reg[4]_i_2_n_5 ;
  wire \s_bitPlace_reg[4]_i_2_n_6 ;
  wire \s_bitPlace_reg[4]_i_2_n_7 ;
  wire \s_bitPlace_reg[8]_i_2_n_0 ;
  wire \s_bitPlace_reg[8]_i_2_n_1 ;
  wire \s_bitPlace_reg[8]_i_2_n_2 ;
  wire \s_bitPlace_reg[8]_i_2_n_3 ;
  wire \s_bitPlace_reg[8]_i_2_n_4 ;
  wire \s_bitPlace_reg[8]_i_2_n_5 ;
  wire \s_bitPlace_reg[8]_i_2_n_6 ;
  wire \s_bitPlace_reg[8]_i_2_n_7 ;
  wire \s_bitPlace_reg_n_0_[10] ;
  wire \s_bitPlace_reg_n_0_[11] ;
  wire \s_bitPlace_reg_n_0_[12] ;
  wire \s_bitPlace_reg_n_0_[13] ;
  wire \s_bitPlace_reg_n_0_[14] ;
  wire \s_bitPlace_reg_n_0_[15] ;
  wire \s_bitPlace_reg_n_0_[16] ;
  wire \s_bitPlace_reg_n_0_[17] ;
  wire \s_bitPlace_reg_n_0_[18] ;
  wire \s_bitPlace_reg_n_0_[19] ;
  wire \s_bitPlace_reg_n_0_[20] ;
  wire \s_bitPlace_reg_n_0_[21] ;
  wire \s_bitPlace_reg_n_0_[22] ;
  wire \s_bitPlace_reg_n_0_[23] ;
  wire \s_bitPlace_reg_n_0_[24] ;
  wire \s_bitPlace_reg_n_0_[25] ;
  wire \s_bitPlace_reg_n_0_[26] ;
  wire \s_bitPlace_reg_n_0_[27] ;
  wire \s_bitPlace_reg_n_0_[28] ;
  wire \s_bitPlace_reg_n_0_[29] ;
  wire \s_bitPlace_reg_n_0_[2] ;
  wire \s_bitPlace_reg_n_0_[30] ;
  wire \s_bitPlace_reg_n_0_[31] ;
  wire \s_bitPlace_reg_n_0_[3] ;
  wire \s_bitPlace_reg_n_0_[4] ;
  wire \s_bitPlace_reg_n_0_[5] ;
  wire \s_bitPlace_reg_n_0_[6] ;
  wire \s_bitPlace_reg_n_0_[7] ;
  wire \s_bitPlace_reg_n_0_[8] ;
  wire \s_bitPlace_reg_n_0_[9] ;
  wire [31:1]s_count;
  wire s_count01_out;
  wire \s_count0_inferred__1/i__carry__0_n_0 ;
  wire \s_count0_inferred__1/i__carry__0_n_1 ;
  wire \s_count0_inferred__1/i__carry__0_n_2 ;
  wire \s_count0_inferred__1/i__carry__0_n_3 ;
  wire \s_count0_inferred__1/i__carry__0_n_4 ;
  wire \s_count0_inferred__1/i__carry__0_n_5 ;
  wire \s_count0_inferred__1/i__carry__0_n_6 ;
  wire \s_count0_inferred__1/i__carry__0_n_7 ;
  wire \s_count0_inferred__1/i__carry__1_n_0 ;
  wire \s_count0_inferred__1/i__carry__1_n_1 ;
  wire \s_count0_inferred__1/i__carry__1_n_2 ;
  wire \s_count0_inferred__1/i__carry__1_n_3 ;
  wire \s_count0_inferred__1/i__carry__1_n_4 ;
  wire \s_count0_inferred__1/i__carry__1_n_5 ;
  wire \s_count0_inferred__1/i__carry__1_n_6 ;
  wire \s_count0_inferred__1/i__carry__1_n_7 ;
  wire \s_count0_inferred__1/i__carry__2_n_0 ;
  wire \s_count0_inferred__1/i__carry__2_n_1 ;
  wire \s_count0_inferred__1/i__carry__2_n_2 ;
  wire \s_count0_inferred__1/i__carry__2_n_3 ;
  wire \s_count0_inferred__1/i__carry__2_n_4 ;
  wire \s_count0_inferred__1/i__carry__2_n_5 ;
  wire \s_count0_inferred__1/i__carry__2_n_6 ;
  wire \s_count0_inferred__1/i__carry__2_n_7 ;
  wire \s_count0_inferred__1/i__carry__3_n_0 ;
  wire \s_count0_inferred__1/i__carry__3_n_1 ;
  wire \s_count0_inferred__1/i__carry__3_n_2 ;
  wire \s_count0_inferred__1/i__carry__3_n_3 ;
  wire \s_count0_inferred__1/i__carry__3_n_4 ;
  wire \s_count0_inferred__1/i__carry__3_n_5 ;
  wire \s_count0_inferred__1/i__carry__3_n_6 ;
  wire \s_count0_inferred__1/i__carry__3_n_7 ;
  wire \s_count0_inferred__1/i__carry__4_n_0 ;
  wire \s_count0_inferred__1/i__carry__4_n_1 ;
  wire \s_count0_inferred__1/i__carry__4_n_2 ;
  wire \s_count0_inferred__1/i__carry__4_n_3 ;
  wire \s_count0_inferred__1/i__carry__4_n_4 ;
  wire \s_count0_inferred__1/i__carry__4_n_5 ;
  wire \s_count0_inferred__1/i__carry__4_n_6 ;
  wire \s_count0_inferred__1/i__carry__4_n_7 ;
  wire \s_count0_inferred__1/i__carry__5_n_0 ;
  wire \s_count0_inferred__1/i__carry__5_n_1 ;
  wire \s_count0_inferred__1/i__carry__5_n_2 ;
  wire \s_count0_inferred__1/i__carry__5_n_3 ;
  wire \s_count0_inferred__1/i__carry__5_n_4 ;
  wire \s_count0_inferred__1/i__carry__5_n_5 ;
  wire \s_count0_inferred__1/i__carry__5_n_6 ;
  wire \s_count0_inferred__1/i__carry__5_n_7 ;
  wire \s_count0_inferred__1/i__carry__6_n_2 ;
  wire \s_count0_inferred__1/i__carry__6_n_3 ;
  wire \s_count0_inferred__1/i__carry__6_n_5 ;
  wire \s_count0_inferred__1/i__carry__6_n_6 ;
  wire \s_count0_inferred__1/i__carry__6_n_7 ;
  wire \s_count0_inferred__1/i__carry_n_0 ;
  wire \s_count0_inferred__1/i__carry_n_1 ;
  wire \s_count0_inferred__1/i__carry_n_2 ;
  wire \s_count0_inferred__1/i__carry_n_3 ;
  wire \s_count0_inferred__1/i__carry_n_4 ;
  wire \s_count0_inferred__1/i__carry_n_5 ;
  wire \s_count0_inferred__1/i__carry_n_6 ;
  wire \s_count0_inferred__1/i__carry_n_7 ;
  wire \s_count[0]_i_1__0_n_0 ;
  wire \s_count[31]_i_10_n_0 ;
  wire \s_count[31]_i_1__0_n_0 ;
  wire \s_count[31]_i_2__0_n_0 ;
  wire \s_count[31]_i_4_n_0 ;
  wire \s_count[31]_i_5_n_0 ;
  wire \s_count[31]_i_6_n_0 ;
  wire \s_count[31]_i_7_n_0 ;
  wire \s_count[31]_i_8_n_0 ;
  wire \s_count[31]_i_9_n_0 ;
  wire \s_count_reg_n_0_[0] ;
  wire \s_count_reg_n_0_[10] ;
  wire \s_count_reg_n_0_[11] ;
  wire \s_count_reg_n_0_[12] ;
  wire \s_count_reg_n_0_[13] ;
  wire \s_count_reg_n_0_[14] ;
  wire \s_count_reg_n_0_[15] ;
  wire \s_count_reg_n_0_[16] ;
  wire \s_count_reg_n_0_[17] ;
  wire \s_count_reg_n_0_[18] ;
  wire \s_count_reg_n_0_[19] ;
  wire \s_count_reg_n_0_[1] ;
  wire \s_count_reg_n_0_[20] ;
  wire \s_count_reg_n_0_[21] ;
  wire \s_count_reg_n_0_[22] ;
  wire \s_count_reg_n_0_[23] ;
  wire \s_count_reg_n_0_[24] ;
  wire \s_count_reg_n_0_[25] ;
  wire \s_count_reg_n_0_[26] ;
  wire \s_count_reg_n_0_[27] ;
  wire \s_count_reg_n_0_[28] ;
  wire \s_count_reg_n_0_[29] ;
  wire \s_count_reg_n_0_[2] ;
  wire \s_count_reg_n_0_[30] ;
  wire \s_count_reg_n_0_[31] ;
  wire \s_count_reg_n_0_[3] ;
  wire \s_count_reg_n_0_[4] ;
  wire \s_count_reg_n_0_[5] ;
  wire \s_count_reg_n_0_[6] ;
  wire \s_count_reg_n_0_[7] ;
  wire \s_count_reg_n_0_[8] ;
  wire \s_count_reg_n_0_[9] ;
  wire s_out_fifo_rd_en;
  wire s_ready_i_1_n_0;
  wire s_ready_i_2_n_0;
  wire s_ready_i_3_n_0;
  wire s_ready_i_4_n_0;
  wire s_ready_i_5_n_0;
  wire s_ready_i_6_n_0;
  wire [2:0]s_state;
  wire \s_state[0]_i_1_n_0 ;
  wire \s_state[0]_i_2_n_0 ;
  wire \s_state[0]_i_3_n_0 ;
  wire \s_state[0]_i_4_n_0 ;
  wire \s_state[0]_i_5_n_0 ;
  wire \s_state[0]_i_6_n_0 ;
  wire \s_state[0]_i_7_n_0 ;
  wire \s_state[0]_i_8_n_0 ;
  wire \s_state[1]_i_10_n_0 ;
  wire \s_state[1]_i_11_n_0 ;
  wire \s_state[1]_i_12_n_0 ;
  wire \s_state[1]_i_13_n_0 ;
  wire \s_state[1]_i_14_n_0 ;
  wire \s_state[1]_i_15_n_0 ;
  wire \s_state[1]_i_16_n_0 ;
  wire \s_state[1]_i_17_n_0 ;
  wire \s_state[1]_i_1_n_0 ;
  wire \s_state[1]_i_2_n_0 ;
  wire \s_state[1]_i_3_n_0 ;
  wire \s_state[1]_i_4_n_0 ;
  wire \s_state[1]_i_5_n_0 ;
  wire \s_state[1]_i_6_n_0 ;
  wire \s_state[1]_i_7_n_0 ;
  wire \s_state[1]_i_8_n_0 ;
  wire \s_state[1]_i_9_n_0 ;
  wire \s_state[2]_i_10_n_0 ;
  wire \s_state[2]_i_11_n_0 ;
  wire \s_state[2]_i_12_n_0 ;
  wire \s_state[2]_i_13_n_0 ;
  wire \s_state[2]_i_14_n_0 ;
  wire \s_state[2]_i_15_n_0 ;
  wire \s_state[2]_i_16_n_0 ;
  wire \s_state[2]_i_17_n_0 ;
  wire \s_state[2]_i_18_n_0 ;
  wire \s_state[2]_i_19_n_0 ;
  wire \s_state[2]_i_1_n_0 ;
  wire \s_state[2]_i_20_n_0 ;
  wire \s_state[2]_i_21_n_0 ;
  wire \s_state[2]_i_22_n_0 ;
  wire \s_state[2]_i_23_n_0 ;
  wire \s_state[2]_i_24_n_0 ;
  wire \s_state[2]_i_25_n_0 ;
  wire \s_state[2]_i_26_n_0 ;
  wire \s_state[2]_i_27_n_0 ;
  wire \s_state[2]_i_28_n_0 ;
  wire \s_state[2]_i_29_n_0 ;
  wire \s_state[2]_i_2_n_0 ;
  wire \s_state[2]_i_30_n_0 ;
  wire \s_state[2]_i_31_n_0 ;
  wire \s_state[2]_i_32_n_0 ;
  wire \s_state[2]_i_4_n_0 ;
  wire \s_state[2]_i_5_n_0 ;
  wire \s_state[2]_i_6_n_0 ;
  wire \s_state[2]_i_7_n_0 ;
  wire \s_state[2]_i_8_n_0 ;
  wire \s_state[2]_i_9_n_0 ;
  wire s_tx_send_reg;
  wire s_tx_state;
  wire s_tx_state_reg;
  wire send_delay;
  wire [3:2]\NLW_s_bitPlace_reg[31]_i_10_CO_UNCONNECTED ;
  wire [3:3]\NLW_s_bitPlace_reg[31]_i_10_O_UNCONNECTED ;
  wire [3:2]\NLW_s_count0_inferred__1/i__carry__6_CO_UNCONNECTED ;
  wire [3:3]\NLW_s_count0_inferred__1/i__carry__6_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFEB03EB)) 
    RsTx_i_1
       (.I0(RsTx_i_2_n_0),
        .I1(s_state[0]),
        .I2(s_state[1]),
        .I3(s_state[2]),
        .I4(RsTx),
        .O(RsTx_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000A0C)) 
    RsTx_i_2
       (.I0(\s_bitPlace_reg[1]_0 ),
        .I1(\s_bitPlace_reg[1]_1 ),
        .I2(\s_bitPlace_reg_n_0_[3] ),
        .I3(\s_bitPlace_reg_n_0_[2] ),
        .I4(\s_state[2]_i_4_n_0 ),
        .O(RsTx_i_2_n_0));
  FDRE RsTx_reg
       (.C(clk),
        .CE(1'b1),
        .D(RsTx_i_1_n_0),
        .Q(RsTx),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_1
       (.I0(\s_count_reg_n_0_[8] ),
        .O(i__carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_2
       (.I0(\s_count_reg_n_0_[7] ),
        .O(i__carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_3
       (.I0(\s_count_reg_n_0_[6] ),
        .O(i__carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__0_i_4
       (.I0(\s_count_reg_n_0_[5] ),
        .O(i__carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__1_i_1
       (.I0(\s_count_reg_n_0_[12] ),
        .O(i__carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__1_i_2
       (.I0(\s_count_reg_n_0_[11] ),
        .O(i__carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__1_i_3
       (.I0(\s_count_reg_n_0_[10] ),
        .O(i__carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__1_i_4
       (.I0(\s_count_reg_n_0_[9] ),
        .O(i__carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__2_i_1
       (.I0(\s_count_reg_n_0_[16] ),
        .O(i__carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__2_i_2
       (.I0(\s_count_reg_n_0_[15] ),
        .O(i__carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__2_i_3
       (.I0(\s_count_reg_n_0_[14] ),
        .O(i__carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__2_i_4
       (.I0(\s_count_reg_n_0_[13] ),
        .O(i__carry__2_i_4_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__3_i_1
       (.I0(\s_count_reg_n_0_[20] ),
        .O(i__carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__3_i_2
       (.I0(\s_count_reg_n_0_[19] ),
        .O(i__carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__3_i_3
       (.I0(\s_count_reg_n_0_[18] ),
        .O(i__carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__3_i_4
       (.I0(\s_count_reg_n_0_[17] ),
        .O(i__carry__3_i_4_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__4_i_1
       (.I0(\s_count_reg_n_0_[24] ),
        .O(i__carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__4_i_2
       (.I0(\s_count_reg_n_0_[23] ),
        .O(i__carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__4_i_3
       (.I0(\s_count_reg_n_0_[22] ),
        .O(i__carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__4_i_4
       (.I0(\s_count_reg_n_0_[21] ),
        .O(i__carry__4_i_4_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__5_i_1
       (.I0(\s_count_reg_n_0_[28] ),
        .O(i__carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__5_i_2
       (.I0(\s_count_reg_n_0_[27] ),
        .O(i__carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__5_i_3
       (.I0(\s_count_reg_n_0_[26] ),
        .O(i__carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__5_i_4
       (.I0(\s_count_reg_n_0_[25] ),
        .O(i__carry__5_i_4_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__6_i_1
       (.I0(\s_count_reg_n_0_[31] ),
        .O(i__carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__6_i_2
       (.I0(\s_count_reg_n_0_[30] ),
        .O(i__carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry__6_i_3
       (.I0(\s_count_reg_n_0_[29] ),
        .O(i__carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_1
       (.I0(\s_count_reg_n_0_[4] ),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_2
       (.I0(\s_count_reg_n_0_[3] ),
        .O(i__carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_3
       (.I0(\s_count_reg_n_0_[2] ),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    i__carry_i_4
       (.I0(\s_count_reg_n_0_[1] ),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \s_bitPlace[0]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[0]_0 ),
        .O(\s_bitPlace[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[10]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[12]_i_2_n_6 ),
        .O(\s_bitPlace[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[11]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[12]_i_2_n_5 ),
        .O(\s_bitPlace[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[12]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[12]_i_2_n_4 ),
        .O(\s_bitPlace[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[12]_i_3 
       (.I0(\s_bitPlace_reg_n_0_[12] ),
        .O(\s_bitPlace[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[12]_i_4 
       (.I0(\s_bitPlace_reg_n_0_[11] ),
        .O(\s_bitPlace[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[12]_i_5 
       (.I0(\s_bitPlace_reg_n_0_[10] ),
        .O(\s_bitPlace[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[12]_i_6 
       (.I0(\s_bitPlace_reg_n_0_[9] ),
        .O(\s_bitPlace[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[13]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[16]_i_2_n_7 ),
        .O(\s_bitPlace[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[14]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[16]_i_2_n_6 ),
        .O(\s_bitPlace[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[15]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[16]_i_2_n_5 ),
        .O(\s_bitPlace[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[16]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[16]_i_2_n_4 ),
        .O(\s_bitPlace[16]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[16]_i_3 
       (.I0(\s_bitPlace_reg_n_0_[16] ),
        .O(\s_bitPlace[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[16]_i_4 
       (.I0(\s_bitPlace_reg_n_0_[15] ),
        .O(\s_bitPlace[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[16]_i_5 
       (.I0(\s_bitPlace_reg_n_0_[14] ),
        .O(\s_bitPlace[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[16]_i_6 
       (.I0(\s_bitPlace_reg_n_0_[13] ),
        .O(\s_bitPlace[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[17]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[20]_i_2_n_7 ),
        .O(\s_bitPlace[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[18]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[20]_i_2_n_6 ),
        .O(\s_bitPlace[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[19]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[20]_i_2_n_5 ),
        .O(\s_bitPlace[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[1]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[4]_i_2_n_7 ),
        .O(\s_bitPlace[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[20]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[20]_i_2_n_4 ),
        .O(\s_bitPlace[20]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[20]_i_3 
       (.I0(\s_bitPlace_reg_n_0_[20] ),
        .O(\s_bitPlace[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[20]_i_4 
       (.I0(\s_bitPlace_reg_n_0_[19] ),
        .O(\s_bitPlace[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[20]_i_5 
       (.I0(\s_bitPlace_reg_n_0_[18] ),
        .O(\s_bitPlace[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[20]_i_6 
       (.I0(\s_bitPlace_reg_n_0_[17] ),
        .O(\s_bitPlace[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[21]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[24]_i_2_n_7 ),
        .O(\s_bitPlace[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[22]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[24]_i_2_n_6 ),
        .O(\s_bitPlace[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[23]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[24]_i_2_n_5 ),
        .O(\s_bitPlace[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[24]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[24]_i_2_n_4 ),
        .O(\s_bitPlace[24]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[24]_i_3 
       (.I0(\s_bitPlace_reg_n_0_[24] ),
        .O(\s_bitPlace[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[24]_i_4 
       (.I0(\s_bitPlace_reg_n_0_[23] ),
        .O(\s_bitPlace[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[24]_i_5 
       (.I0(\s_bitPlace_reg_n_0_[22] ),
        .O(\s_bitPlace[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[24]_i_6 
       (.I0(\s_bitPlace_reg_n_0_[21] ),
        .O(\s_bitPlace[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[25]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[28]_i_2_n_7 ),
        .O(\s_bitPlace[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[26]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[28]_i_2_n_6 ),
        .O(\s_bitPlace[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[27]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[28]_i_2_n_5 ),
        .O(\s_bitPlace[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[28]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[28]_i_2_n_4 ),
        .O(\s_bitPlace[28]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[28]_i_3 
       (.I0(\s_bitPlace_reg_n_0_[28] ),
        .O(\s_bitPlace[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[28]_i_4 
       (.I0(\s_bitPlace_reg_n_0_[27] ),
        .O(\s_bitPlace[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[28]_i_5 
       (.I0(\s_bitPlace_reg_n_0_[26] ),
        .O(\s_bitPlace[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[28]_i_6 
       (.I0(\s_bitPlace_reg_n_0_[25] ),
        .O(\s_bitPlace[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[29]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[31]_i_10_n_7 ),
        .O(\s_bitPlace[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[2]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[4]_i_2_n_6 ),
        .O(\s_bitPlace[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[30]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[31]_i_10_n_6 ),
        .O(\s_bitPlace[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFE0202)) 
    \s_bitPlace[31]_i_1 
       (.I0(\s_bitPlace[31]_i_4_n_0 ),
        .I1(\s_state[2]_i_4_n_0 ),
        .I2(\s_state[2]_i_5_n_0 ),
        .I3(\s_bitPlace[31]_i_5_n_0 ),
        .I4(s_count01_out),
        .I5(\s_state[1]_i_2_n_0 ),
        .O(\s_bitPlace[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_bitPlace[31]_i_11 
       (.I0(\s_bitPlace_reg_n_0_[11] ),
        .I1(\s_bitPlace_reg_n_0_[10] ),
        .I2(\s_bitPlace_reg_n_0_[13] ),
        .I3(\s_bitPlace_reg_n_0_[12] ),
        .O(\s_bitPlace[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF2)) 
    \s_bitPlace[31]_i_12 
       (.I0(\s_bitPlace_reg_n_0_[15] ),
        .I1(\s_bitPlace_reg_n_0_[16] ),
        .I2(\s_bitPlace_reg_n_0_[14] ),
        .I3(\s_bitPlace_reg_n_0_[17] ),
        .I4(\s_bitPlace_reg_n_0_[9] ),
        .I5(\s_bitPlace_reg_n_0_[8] ),
        .O(\s_bitPlace[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \s_bitPlace[31]_i_13 
       (.I0(\s_bitPlace_reg_n_0_[23] ),
        .I1(\s_state[2]_i_32_n_0 ),
        .I2(\s_bitPlace_reg_n_0_[30] ),
        .I3(\s_bitPlace_reg_n_0_[31] ),
        .I4(\s_bitPlace_reg_n_0_[25] ),
        .I5(\s_bitPlace_reg_n_0_[24] ),
        .O(\s_bitPlace[31]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_bitPlace[31]_i_14 
       (.I0(\s_bitPlace_reg_n_0_[18] ),
        .I1(\s_bitPlace_reg_n_0_[17] ),
        .I2(\s_bitPlace_reg_n_0_[20] ),
        .I3(\s_bitPlace_reg_n_0_[19] ),
        .O(\s_bitPlace[31]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[31]_i_15 
       (.I0(\s_bitPlace_reg_n_0_[31] ),
        .O(\s_bitPlace[31]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[31]_i_16 
       (.I0(\s_bitPlace_reg_n_0_[30] ),
        .O(\s_bitPlace[31]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[31]_i_17 
       (.I0(\s_bitPlace_reg_n_0_[29] ),
        .O(\s_bitPlace[31]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAAAFAAAFAAAFAAA8)) 
    \s_bitPlace[31]_i_2 
       (.I0(s_count01_out),
        .I1(\s_bitPlace[31]_i_5_n_0 ),
        .I2(\s_state[2]_i_5_n_0 ),
        .I3(\s_state[2]_i_4_n_0 ),
        .I4(\s_bitPlace[31]_i_6_n_0 ),
        .I5(\s_bitPlace[31]_i_7_n_0 ),
        .O(\s_bitPlace[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[31]_i_3 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[31]_i_10_n_5 ),
        .O(\s_bitPlace[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \s_bitPlace[31]_i_4 
       (.I0(\s_bitPlace[31]_i_6_n_0 ),
        .I1(s_count01_out),
        .I2(\s_state[2]_i_18_n_0 ),
        .I3(\s_bitPlace[31]_i_11_n_0 ),
        .I4(\s_bitPlace[31]_i_12_n_0 ),
        .I5(\s_bitPlace[31]_i_13_n_0 ),
        .O(\s_bitPlace[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_bitPlace[31]_i_5 
       (.I0(s_state[0]),
        .I1(s_state[2]),
        .O(\s_bitPlace[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_bitPlace[31]_i_6 
       (.I0(\s_bitPlace[31]_i_14_n_0 ),
        .I1(\s_bitPlace_reg_n_0_[16] ),
        .I2(\s_bitPlace_reg_n_0_[21] ),
        .I3(\s_bitPlace_reg_n_0_[22] ),
        .O(\s_bitPlace[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \s_bitPlace[31]_i_7 
       (.I0(\s_state[2]_i_19_n_0 ),
        .I1(\s_bitPlace_reg_n_0_[23] ),
        .I2(\s_bitPlace[31]_i_12_n_0 ),
        .I3(\s_bitPlace[31]_i_11_n_0 ),
        .I4(\s_state[2]_i_18_n_0 ),
        .I5(s_count01_out),
        .O(\s_bitPlace[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \s_bitPlace[31]_i_8 
       (.I0(\s_state[2]_i_8_n_0 ),
        .I1(\s_count_reg_n_0_[19] ),
        .I2(\s_count_reg_n_0_[20] ),
        .I3(\s_count_reg_n_0_[13] ),
        .I4(\s_count_reg_n_0_[14] ),
        .I5(\s_state[2]_i_10_n_0 ),
        .O(\s_bitPlace[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_bitPlace[31]_i_9 
       (.I0(\s_state[2]_i_19_n_0 ),
        .I1(\s_state[2]_i_17_n_0 ),
        .I2(\s_state[2]_i_18_n_0 ),
        .I3(\s_state[2]_i_16_n_0 ),
        .O(\s_bitPlace[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[3]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[4]_i_2_n_5 ),
        .O(\s_bitPlace[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[4]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[4]_i_2_n_4 ),
        .O(\s_bitPlace[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[4]_i_3 
       (.I0(\s_bitPlace_reg_n_0_[4] ),
        .O(\s_bitPlace[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[4]_i_4 
       (.I0(\s_bitPlace_reg_n_0_[3] ),
        .O(\s_bitPlace[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[4]_i_5 
       (.I0(\s_bitPlace_reg_n_0_[2] ),
        .O(\s_bitPlace[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[4]_i_6 
       (.I0(\s_bitPlace_reg[4]_0 ),
        .O(\s_bitPlace[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[5]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[8]_i_2_n_7 ),
        .O(\s_bitPlace[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[6]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[8]_i_2_n_6 ),
        .O(\s_bitPlace[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[7]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[8]_i_2_n_5 ),
        .O(\s_bitPlace[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[8]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[8]_i_2_n_4 ),
        .O(\s_bitPlace[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[8]_i_3 
       (.I0(\s_bitPlace_reg_n_0_[8] ),
        .O(\s_bitPlace[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[8]_i_4 
       (.I0(\s_bitPlace_reg_n_0_[7] ),
        .O(\s_bitPlace[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[8]_i_5 
       (.I0(\s_bitPlace_reg_n_0_[6] ),
        .O(\s_bitPlace[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \s_bitPlace[8]_i_6 
       (.I0(\s_bitPlace_reg_n_0_[5] ),
        .O(\s_bitPlace[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \s_bitPlace[9]_i_1 
       (.I0(\s_bitPlace[31]_i_8_n_0 ),
        .I1(\s_bitPlace[31]_i_9_n_0 ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_bitPlace_reg[12]_i_2_n_7 ),
        .O(\s_bitPlace[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[0] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[0]_i_1_n_0 ),
        .Q(\s_bitPlace_reg[0]_0 ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[10] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[10]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[10] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[11] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[11]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[11] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[12] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[12]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[12] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  CARRY4 \s_bitPlace_reg[12]_i_2 
       (.CI(\s_bitPlace_reg[8]_i_2_n_0 ),
        .CO({\s_bitPlace_reg[12]_i_2_n_0 ,\s_bitPlace_reg[12]_i_2_n_1 ,\s_bitPlace_reg[12]_i_2_n_2 ,\s_bitPlace_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_bitPlace_reg[12]_i_2_n_4 ,\s_bitPlace_reg[12]_i_2_n_5 ,\s_bitPlace_reg[12]_i_2_n_6 ,\s_bitPlace_reg[12]_i_2_n_7 }),
        .S({\s_bitPlace[12]_i_3_n_0 ,\s_bitPlace[12]_i_4_n_0 ,\s_bitPlace[12]_i_5_n_0 ,\s_bitPlace[12]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[13] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[13]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[13] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[14] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[14]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[14] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[15] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[15]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[15] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[16] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[16]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[16] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  CARRY4 \s_bitPlace_reg[16]_i_2 
       (.CI(\s_bitPlace_reg[12]_i_2_n_0 ),
        .CO({\s_bitPlace_reg[16]_i_2_n_0 ,\s_bitPlace_reg[16]_i_2_n_1 ,\s_bitPlace_reg[16]_i_2_n_2 ,\s_bitPlace_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_bitPlace_reg[16]_i_2_n_4 ,\s_bitPlace_reg[16]_i_2_n_5 ,\s_bitPlace_reg[16]_i_2_n_6 ,\s_bitPlace_reg[16]_i_2_n_7 }),
        .S({\s_bitPlace[16]_i_3_n_0 ,\s_bitPlace[16]_i_4_n_0 ,\s_bitPlace[16]_i_5_n_0 ,\s_bitPlace[16]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[17] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[17]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[17] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[18] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[18]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[18] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[19] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[19]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[19] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[1] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[1]_i_1_n_0 ),
        .Q(\s_bitPlace_reg[4]_0 ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[20] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[20]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[20] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  CARRY4 \s_bitPlace_reg[20]_i_2 
       (.CI(\s_bitPlace_reg[16]_i_2_n_0 ),
        .CO({\s_bitPlace_reg[20]_i_2_n_0 ,\s_bitPlace_reg[20]_i_2_n_1 ,\s_bitPlace_reg[20]_i_2_n_2 ,\s_bitPlace_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_bitPlace_reg[20]_i_2_n_4 ,\s_bitPlace_reg[20]_i_2_n_5 ,\s_bitPlace_reg[20]_i_2_n_6 ,\s_bitPlace_reg[20]_i_2_n_7 }),
        .S({\s_bitPlace[20]_i_3_n_0 ,\s_bitPlace[20]_i_4_n_0 ,\s_bitPlace[20]_i_5_n_0 ,\s_bitPlace[20]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[21] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[21]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[21] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[22] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[22]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[22] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[23] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[23]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[23] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[24] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[24]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[24] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  CARRY4 \s_bitPlace_reg[24]_i_2 
       (.CI(\s_bitPlace_reg[20]_i_2_n_0 ),
        .CO({\s_bitPlace_reg[24]_i_2_n_0 ,\s_bitPlace_reg[24]_i_2_n_1 ,\s_bitPlace_reg[24]_i_2_n_2 ,\s_bitPlace_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_bitPlace_reg[24]_i_2_n_4 ,\s_bitPlace_reg[24]_i_2_n_5 ,\s_bitPlace_reg[24]_i_2_n_6 ,\s_bitPlace_reg[24]_i_2_n_7 }),
        .S({\s_bitPlace[24]_i_3_n_0 ,\s_bitPlace[24]_i_4_n_0 ,\s_bitPlace[24]_i_5_n_0 ,\s_bitPlace[24]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[25] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[25]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[25] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[26] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[26]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[26] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[27] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[27]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[27] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[28] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[28]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[28] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  CARRY4 \s_bitPlace_reg[28]_i_2 
       (.CI(\s_bitPlace_reg[24]_i_2_n_0 ),
        .CO({\s_bitPlace_reg[28]_i_2_n_0 ,\s_bitPlace_reg[28]_i_2_n_1 ,\s_bitPlace_reg[28]_i_2_n_2 ,\s_bitPlace_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_bitPlace_reg[28]_i_2_n_4 ,\s_bitPlace_reg[28]_i_2_n_5 ,\s_bitPlace_reg[28]_i_2_n_6 ,\s_bitPlace_reg[28]_i_2_n_7 }),
        .S({\s_bitPlace[28]_i_3_n_0 ,\s_bitPlace[28]_i_4_n_0 ,\s_bitPlace[28]_i_5_n_0 ,\s_bitPlace[28]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[29] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[29]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[29] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[2] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[2]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[2] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[30] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[30]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[30] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[31] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[31]_i_3_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[31] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  CARRY4 \s_bitPlace_reg[31]_i_10 
       (.CI(\s_bitPlace_reg[28]_i_2_n_0 ),
        .CO({\NLW_s_bitPlace_reg[31]_i_10_CO_UNCONNECTED [3:2],\s_bitPlace_reg[31]_i_10_n_2 ,\s_bitPlace_reg[31]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_s_bitPlace_reg[31]_i_10_O_UNCONNECTED [3],\s_bitPlace_reg[31]_i_10_n_5 ,\s_bitPlace_reg[31]_i_10_n_6 ,\s_bitPlace_reg[31]_i_10_n_7 }),
        .S({1'b0,\s_bitPlace[31]_i_15_n_0 ,\s_bitPlace[31]_i_16_n_0 ,\s_bitPlace[31]_i_17_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[3] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[3]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[3] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[4] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[4]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[4] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  CARRY4 \s_bitPlace_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\s_bitPlace_reg[4]_i_2_n_0 ,\s_bitPlace_reg[4]_i_2_n_1 ,\s_bitPlace_reg[4]_i_2_n_2 ,\s_bitPlace_reg[4]_i_2_n_3 }),
        .CYINIT(\s_bitPlace_reg[0]_0 ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_bitPlace_reg[4]_i_2_n_4 ,\s_bitPlace_reg[4]_i_2_n_5 ,\s_bitPlace_reg[4]_i_2_n_6 ,\s_bitPlace_reg[4]_i_2_n_7 }),
        .S({\s_bitPlace[4]_i_3_n_0 ,\s_bitPlace[4]_i_4_n_0 ,\s_bitPlace[4]_i_5_n_0 ,\s_bitPlace[4]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[5] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[5]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[5] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[6] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[6]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[6] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[7] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[7]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[7] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[8] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[8]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[8] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  CARRY4 \s_bitPlace_reg[8]_i_2 
       (.CI(\s_bitPlace_reg[4]_i_2_n_0 ),
        .CO({\s_bitPlace_reg[8]_i_2_n_0 ,\s_bitPlace_reg[8]_i_2_n_1 ,\s_bitPlace_reg[8]_i_2_n_2 ,\s_bitPlace_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_bitPlace_reg[8]_i_2_n_4 ,\s_bitPlace_reg[8]_i_2_n_5 ,\s_bitPlace_reg[8]_i_2_n_6 ,\s_bitPlace_reg[8]_i_2_n_7 }),
        .S({\s_bitPlace[8]_i_3_n_0 ,\s_bitPlace[8]_i_4_n_0 ,\s_bitPlace[8]_i_5_n_0 ,\s_bitPlace[8]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_bitPlace_reg[9] 
       (.C(clk),
        .CE(\s_bitPlace[31]_i_2_n_0 ),
        .D(\s_bitPlace[9]_i_1_n_0 ),
        .Q(\s_bitPlace_reg_n_0_[9] ),
        .R(\s_bitPlace[31]_i_1_n_0 ));
  CARRY4 \s_count0_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\s_count0_inferred__1/i__carry_n_0 ,\s_count0_inferred__1/i__carry_n_1 ,\s_count0_inferred__1/i__carry_n_2 ,\s_count0_inferred__1/i__carry_n_3 }),
        .CYINIT(\s_count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_count0_inferred__1/i__carry_n_4 ,\s_count0_inferred__1/i__carry_n_5 ,\s_count0_inferred__1/i__carry_n_6 ,\s_count0_inferred__1/i__carry_n_7 }),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \s_count0_inferred__1/i__carry__0 
       (.CI(\s_count0_inferred__1/i__carry_n_0 ),
        .CO({\s_count0_inferred__1/i__carry__0_n_0 ,\s_count0_inferred__1/i__carry__0_n_1 ,\s_count0_inferred__1/i__carry__0_n_2 ,\s_count0_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_count0_inferred__1/i__carry__0_n_4 ,\s_count0_inferred__1/i__carry__0_n_5 ,\s_count0_inferred__1/i__carry__0_n_6 ,\s_count0_inferred__1/i__carry__0_n_7 }),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \s_count0_inferred__1/i__carry__1 
       (.CI(\s_count0_inferred__1/i__carry__0_n_0 ),
        .CO({\s_count0_inferred__1/i__carry__1_n_0 ,\s_count0_inferred__1/i__carry__1_n_1 ,\s_count0_inferred__1/i__carry__1_n_2 ,\s_count0_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_count0_inferred__1/i__carry__1_n_4 ,\s_count0_inferred__1/i__carry__1_n_5 ,\s_count0_inferred__1/i__carry__1_n_6 ,\s_count0_inferred__1/i__carry__1_n_7 }),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  CARRY4 \s_count0_inferred__1/i__carry__2 
       (.CI(\s_count0_inferred__1/i__carry__1_n_0 ),
        .CO({\s_count0_inferred__1/i__carry__2_n_0 ,\s_count0_inferred__1/i__carry__2_n_1 ,\s_count0_inferred__1/i__carry__2_n_2 ,\s_count0_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_count0_inferred__1/i__carry__2_n_4 ,\s_count0_inferred__1/i__carry__2_n_5 ,\s_count0_inferred__1/i__carry__2_n_6 ,\s_count0_inferred__1/i__carry__2_n_7 }),
        .S({i__carry__2_i_1_n_0,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  CARRY4 \s_count0_inferred__1/i__carry__3 
       (.CI(\s_count0_inferred__1/i__carry__2_n_0 ),
        .CO({\s_count0_inferred__1/i__carry__3_n_0 ,\s_count0_inferred__1/i__carry__3_n_1 ,\s_count0_inferred__1/i__carry__3_n_2 ,\s_count0_inferred__1/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_count0_inferred__1/i__carry__3_n_4 ,\s_count0_inferred__1/i__carry__3_n_5 ,\s_count0_inferred__1/i__carry__3_n_6 ,\s_count0_inferred__1/i__carry__3_n_7 }),
        .S({i__carry__3_i_1_n_0,i__carry__3_i_2_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  CARRY4 \s_count0_inferred__1/i__carry__4 
       (.CI(\s_count0_inferred__1/i__carry__3_n_0 ),
        .CO({\s_count0_inferred__1/i__carry__4_n_0 ,\s_count0_inferred__1/i__carry__4_n_1 ,\s_count0_inferred__1/i__carry__4_n_2 ,\s_count0_inferred__1/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_count0_inferred__1/i__carry__4_n_4 ,\s_count0_inferred__1/i__carry__4_n_5 ,\s_count0_inferred__1/i__carry__4_n_6 ,\s_count0_inferred__1/i__carry__4_n_7 }),
        .S({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}));
  CARRY4 \s_count0_inferred__1/i__carry__5 
       (.CI(\s_count0_inferred__1/i__carry__4_n_0 ),
        .CO({\s_count0_inferred__1/i__carry__5_n_0 ,\s_count0_inferred__1/i__carry__5_n_1 ,\s_count0_inferred__1/i__carry__5_n_2 ,\s_count0_inferred__1/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_count0_inferred__1/i__carry__5_n_4 ,\s_count0_inferred__1/i__carry__5_n_5 ,\s_count0_inferred__1/i__carry__5_n_6 ,\s_count0_inferred__1/i__carry__5_n_7 }),
        .S({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}));
  CARRY4 \s_count0_inferred__1/i__carry__6 
       (.CI(\s_count0_inferred__1/i__carry__5_n_0 ),
        .CO({\NLW_s_count0_inferred__1/i__carry__6_CO_UNCONNECTED [3:2],\s_count0_inferred__1/i__carry__6_n_2 ,\s_count0_inferred__1/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_s_count0_inferred__1/i__carry__6_O_UNCONNECTED [3],\s_count0_inferred__1/i__carry__6_n_5 ,\s_count0_inferred__1/i__carry__6_n_6 ,\s_count0_inferred__1/i__carry__6_n_7 }),
        .S({1'b0,i__carry__6_i_1_n_0,i__carry__6_i_2_n_0,i__carry__6_i_3_n_0}));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \s_count[0]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count_reg_n_0_[0] ),
        .O(\s_count[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[10]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__1_n_6 ),
        .O(s_count[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[11]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__1_n_5 ),
        .O(s_count[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[12]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__1_n_4 ),
        .O(s_count[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[13]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__2_n_7 ),
        .O(s_count[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[14]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__2_n_6 ),
        .O(s_count[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[15]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__2_n_5 ),
        .O(s_count[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[16]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__2_n_4 ),
        .O(s_count[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[17]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__3_n_7 ),
        .O(s_count[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[18]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__3_n_6 ),
        .O(s_count[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[19]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__3_n_5 ),
        .O(s_count[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[1]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry_n_7 ),
        .O(s_count[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[20]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__3_n_4 ),
        .O(s_count[20]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[21]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__4_n_7 ),
        .O(s_count[21]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[22]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__4_n_6 ),
        .O(s_count[22]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[23]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__4_n_5 ),
        .O(s_count[23]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[24]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__4_n_4 ),
        .O(s_count[24]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[25]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__5_n_7 ),
        .O(s_count[25]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[26]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__5_n_6 ),
        .O(s_count[26]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[27]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__5_n_5 ),
        .O(s_count[27]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[28]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__5_n_4 ),
        .O(s_count[28]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[29]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__6_n_7 ),
        .O(s_count[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[2]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry_n_6 ),
        .O(s_count[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[30]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__6_n_6 ),
        .O(s_count[30]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_count[31]_i_10 
       (.I0(\s_count_reg_n_0_[16] ),
        .I1(\s_count_reg_n_0_[17] ),
        .I2(\s_count_reg_n_0_[20] ),
        .I3(\s_count_reg_n_0_[19] ),
        .I4(\s_count_reg_n_0_[18] ),
        .O(\s_count[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \s_count[31]_i_1__0 
       (.I0(s_out_fifo_rd_en),
        .I1(s_state[0]),
        .I2(s_state[2]),
        .I3(s_state[1]),
        .O(\s_count[31]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \s_count[31]_i_2__0 
       (.I0(s_state[1]),
        .I1(s_state[2]),
        .I2(s_state[0]),
        .O(\s_count[31]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[31]_i_3 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__6_n_5 ),
        .O(s_count[31]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_count[31]_i_4 
       (.I0(\s_count[31]_i_7_n_0 ),
        .I1(\s_count_reg_n_0_[31] ),
        .I2(\s_count_reg_n_0_[28] ),
        .I3(\s_count_reg_n_0_[2] ),
        .I4(\s_count_reg_n_0_[29] ),
        .O(\s_count[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \s_count[31]_i_5 
       (.I0(\s_count_reg_n_0_[30] ),
        .I1(\s_count_reg_n_0_[24] ),
        .I2(\s_count_reg_n_0_[13] ),
        .I3(\s_count[31]_i_8_n_0 ),
        .I4(\s_count[31]_i_9_n_0 ),
        .I5(\s_count[31]_i_10_n_0 ),
        .O(\s_count[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_count[31]_i_6 
       (.I0(\s_count_reg_n_0_[9] ),
        .I1(\s_count_reg_n_0_[6] ),
        .I2(\s_count_reg_n_0_[10] ),
        .I3(\s_count_reg_n_0_[8] ),
        .I4(\s_count_reg_n_0_[27] ),
        .O(\s_count[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_count[31]_i_7 
       (.I0(\s_count_reg_n_0_[1] ),
        .I1(\s_count_reg_n_0_[15] ),
        .I2(\s_count_reg_n_0_[14] ),
        .I3(\s_count_reg_n_0_[3] ),
        .I4(\s_count_reg_n_0_[0] ),
        .O(\s_count[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \s_count[31]_i_8 
       (.I0(\s_count_reg_n_0_[7] ),
        .I1(\s_count_reg_n_0_[11] ),
        .I2(\s_count_reg_n_0_[4] ),
        .I3(\s_count_reg_n_0_[5] ),
        .O(\s_count[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_count[31]_i_9 
       (.I0(\s_count_reg_n_0_[23] ),
        .I1(\s_count_reg_n_0_[21] ),
        .I2(\s_count_reg_n_0_[25] ),
        .I3(\s_count_reg_n_0_[22] ),
        .O(\s_count[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[3]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry_n_5 ),
        .O(s_count[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[4]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry_n_4 ),
        .O(s_count[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[5]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__0_n_7 ),
        .O(s_count[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[6]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__0_n_6 ),
        .O(s_count[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[7]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__0_n_5 ),
        .O(s_count[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[8]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__0_n_4 ),
        .O(s_count[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \s_count[9]_i_1__0 
       (.I0(\s_count[31]_i_4_n_0 ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[26] ),
        .I3(\s_count[31]_i_5_n_0 ),
        .I4(\s_count[31]_i_6_n_0 ),
        .I5(\s_count0_inferred__1/i__carry__1_n_7 ),
        .O(s_count[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[0] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(\s_count[0]_i_1__0_n_0 ),
        .Q(\s_count_reg_n_0_[0] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[10] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[10]),
        .Q(\s_count_reg_n_0_[10] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[11] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[11]),
        .Q(\s_count_reg_n_0_[11] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[12] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[12]),
        .Q(\s_count_reg_n_0_[12] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[13] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[13]),
        .Q(\s_count_reg_n_0_[13] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[14] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[14]),
        .Q(\s_count_reg_n_0_[14] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[15] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[15]),
        .Q(\s_count_reg_n_0_[15] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[16] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[16]),
        .Q(\s_count_reg_n_0_[16] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[17] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[17]),
        .Q(\s_count_reg_n_0_[17] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[18] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[18]),
        .Q(\s_count_reg_n_0_[18] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[19] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[19]),
        .Q(\s_count_reg_n_0_[19] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[1] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[1]),
        .Q(\s_count_reg_n_0_[1] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[20] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[20]),
        .Q(\s_count_reg_n_0_[20] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[21] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[21]),
        .Q(\s_count_reg_n_0_[21] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[22] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[22]),
        .Q(\s_count_reg_n_0_[22] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[23] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[23]),
        .Q(\s_count_reg_n_0_[23] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[24] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[24]),
        .Q(\s_count_reg_n_0_[24] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[25] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[25]),
        .Q(\s_count_reg_n_0_[25] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[26] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[26]),
        .Q(\s_count_reg_n_0_[26] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[27] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[27]),
        .Q(\s_count_reg_n_0_[27] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[28] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[28]),
        .Q(\s_count_reg_n_0_[28] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[29] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[29]),
        .Q(\s_count_reg_n_0_[29] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[2] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[2]),
        .Q(\s_count_reg_n_0_[2] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[30] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[30]),
        .Q(\s_count_reg_n_0_[30] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[31] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[31]),
        .Q(\s_count_reg_n_0_[31] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[3] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[3]),
        .Q(\s_count_reg_n_0_[3] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[4] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[4]),
        .Q(\s_count_reg_n_0_[4] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[5] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[5]),
        .Q(\s_count_reg_n_0_[5] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[6] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[6]),
        .Q(\s_count_reg_n_0_[6] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[7] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[7]),
        .Q(\s_count_reg_n_0_[7] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[8] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[8]),
        .Q(\s_count_reg_n_0_[8] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_count_reg[9] 
       (.C(clk),
        .CE(\s_count[31]_i_2__0_n_0 ),
        .D(s_count[9]),
        .Q(\s_count_reg_n_0_[9] ),
        .R(\s_count[31]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2222F2FF22220200)) 
    s_ready_i_1
       (.I0(s_ready_i_2_n_0),
        .I1(s_ready_i_3_n_0),
        .I2(\s_state[2]_i_5_n_0 ),
        .I3(s_ready_i_4_n_0),
        .I4(s_count01_out),
        .I5(ready),
        .O(s_ready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    s_ready_i_2
       (.I0(s_ready_i_5_n_0),
        .I1(\s_state[2]_i_10_n_0 ),
        .I2(s_ready_i_6_n_0),
        .I3(\s_count_reg_n_0_[20] ),
        .I4(\s_count_reg_n_0_[19] ),
        .I5(\s_state[2]_i_8_n_0 ),
        .O(s_ready_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    s_ready_i_3
       (.I0(\s_count[31]_i_2__0_n_0 ),
        .I1(\s_count_reg_n_0_[27] ),
        .I2(\s_count_reg_n_0_[28] ),
        .I3(\s_count_reg_n_0_[29] ),
        .I4(\s_count_reg_n_0_[30] ),
        .I5(\s_count_reg_n_0_[31] ),
        .O(s_ready_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hF1)) 
    s_ready_i_4
       (.I0(s_state[1]),
        .I1(s_state[0]),
        .I2(s_state[2]),
        .O(s_ready_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000011110001)) 
    s_ready_i_5
       (.I0(\s_count_reg_n_0_[26] ),
        .I1(\s_count_reg_n_0_[25] ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .I5(\s_state[0]_i_8_n_0 ),
        .O(s_ready_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    s_ready_i_6
       (.I0(\s_count_reg_n_0_[14] ),
        .I1(\s_count_reg_n_0_[13] ),
        .O(s_ready_i_6_n_0));
  FDRE #(
    .INIT(1'b1)) 
    s_ready_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_ready_i_1_n_0),
        .Q(ready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBBAABBAB88AA88A8)) 
    \s_state[0]_i_1 
       (.I0(\s_state[0]_i_2_n_0 ),
        .I1(s_count01_out),
        .I2(\s_state[2]_i_4_n_0 ),
        .I3(\s_state[2]_i_5_n_0 ),
        .I4(\s_state[2]_i_6_n_0 ),
        .I5(s_state[0]),
        .O(\s_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \s_state[0]_i_2 
       (.I0(\s_state[0]_i_3_n_0 ),
        .I1(\s_state[0]_i_4_n_0 ),
        .I2(\s_state[2]_i_8_n_0 ),
        .I3(\s_state[0]_i_5_n_0 ),
        .I4(\s_state[0]_i_6_n_0 ),
        .I5(\s_state[0]_i_7_n_0 ),
        .O(\s_state[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \s_state[0]_i_3 
       (.I0(\s_count_reg_n_0_[25] ),
        .I1(\s_count_reg_n_0_[26] ),
        .I2(\s_count_reg_n_0_[19] ),
        .I3(\s_count_reg_n_0_[20] ),
        .O(\s_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFFFEFFFFFFFF)) 
    \s_state[0]_i_4 
       (.I0(\s_state[0]_i_8_n_0 ),
        .I1(\s_state[2]_i_25_n_0 ),
        .I2(\s_count_reg_n_0_[29] ),
        .I3(\s_count_reg_n_0_[27] ),
        .I4(\s_count_reg_n_0_[28] ),
        .I5(\s_count[31]_i_2__0_n_0 ),
        .O(\s_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \s_state[0]_i_5 
       (.I0(\s_count_reg_n_0_[8] ),
        .I1(\s_count_reg_n_0_[10] ),
        .I2(\s_count_reg_n_0_[5] ),
        .I3(\s_count_reg_n_0_[4] ),
        .I4(\s_count_reg_n_0_[11] ),
        .I5(\s_count_reg_n_0_[7] ),
        .O(\s_state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hDDDDDDFD)) 
    \s_state[0]_i_6 
       (.I0(\s_count_reg_n_0_[13] ),
        .I1(\s_count_reg_n_0_[14] ),
        .I2(s_state[1]),
        .I3(s_state[0]),
        .I4(s_state[2]),
        .O(\s_state[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \s_state[0]_i_7 
       (.I0(\s_count_reg_n_0_[22] ),
        .I1(\s_count_reg_n_0_[21] ),
        .I2(\s_count_reg_n_0_[23] ),
        .O(\s_state[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFFFFAE)) 
    \s_state[0]_i_8 
       (.I0(\s_count_reg_n_0_[26] ),
        .I1(\s_count_reg_n_0_[24] ),
        .I2(\s_count_reg_n_0_[25] ),
        .I3(\s_count_reg_n_0_[23] ),
        .I4(\s_count_reg_n_0_[22] ),
        .O(\s_state[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F80888080)) 
    \s_state[1]_i_1 
       (.I0(\s_state[1]_i_2_n_0 ),
        .I1(\s_state[1]_i_3_n_0 ),
        .I2(\s_state[1]_i_4_n_0 ),
        .I3(\s_state[2]_i_5_n_0 ),
        .I4(\s_state[2]_i_6_n_0 ),
        .I5(s_state[1]),
        .O(\s_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \s_state[1]_i_10 
       (.I0(\s_count_reg_n_0_[24] ),
        .I1(\s_count_reg_n_0_[27] ),
        .I2(\s_count_reg_n_0_[18] ),
        .I3(\s_count_reg_n_0_[21] ),
        .I4(\s_state[2]_i_25_n_0 ),
        .O(\s_state[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \s_state[1]_i_11 
       (.I0(\s_state[0]_i_3_n_0 ),
        .I1(\s_count_reg_n_0_[16] ),
        .I2(\s_count_reg_n_0_[17] ),
        .I3(\s_count_reg_n_0_[22] ),
        .I4(\s_count_reg_n_0_[23] ),
        .O(\s_state[1]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_state[1]_i_12 
       (.I0(\s_bitPlace_reg_n_0_[30] ),
        .I1(\s_bitPlace_reg_n_0_[31] ),
        .I2(\s_bitPlace_reg_n_0_[25] ),
        .I3(\s_bitPlace_reg_n_0_[24] ),
        .O(\s_state[1]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_state[1]_i_13 
       (.I0(\s_bitPlace_reg_n_0_[5] ),
        .I1(\s_bitPlace_reg_n_0_[4] ),
        .I2(\s_bitPlace_reg_n_0_[7] ),
        .I3(\s_bitPlace_reg_n_0_[6] ),
        .O(\s_state[1]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_state[1]_i_14 
       (.I0(\s_bitPlace_reg_n_0_[8] ),
        .I1(\s_bitPlace_reg_n_0_[9] ),
        .I2(\s_bitPlace_reg_n_0_[10] ),
        .I3(\s_bitPlace_reg_n_0_[11] ),
        .O(\s_state[1]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_state[1]_i_15 
       (.I0(\s_bitPlace_reg_n_0_[16] ),
        .I1(\s_bitPlace_reg_n_0_[17] ),
        .I2(\s_bitPlace_reg_n_0_[18] ),
        .I3(\s_bitPlace_reg_n_0_[19] ),
        .O(\s_state[1]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_state[1]_i_16 
       (.I0(\s_count_reg_n_0_[20] ),
        .I1(\s_count_reg_n_0_[19] ),
        .O(\s_state[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \s_state[1]_i_17 
       (.I0(\s_count_reg_n_0_[13] ),
        .I1(\s_count_reg_n_0_[14] ),
        .I2(\s_count_reg_n_0_[5] ),
        .I3(\s_count_reg_n_0_[4] ),
        .I4(\s_count_reg_n_0_[11] ),
        .I5(\s_count_reg_n_0_[7] ),
        .O(\s_state[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \s_state[1]_i_2 
       (.I0(s_ready_i_3_n_0),
        .I1(\s_count_reg_n_0_[24] ),
        .I2(\s_count_reg_n_0_[23] ),
        .I3(\s_count_reg_n_0_[22] ),
        .I4(\s_count_reg_n_0_[25] ),
        .I5(\s_count_reg_n_0_[26] ),
        .O(\s_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00000008000000)) 
    \s_state[1]_i_3 
       (.I0(\s_state[1]_i_5_n_0 ),
        .I1(\s_state[1]_i_6_n_0 ),
        .I2(\s_state[2]_i_4_n_0 ),
        .I3(\s_state[1]_i_7_n_0 ),
        .I4(\s_state[2]_i_10_n_0 ),
        .I5(\s_state[1]_i_8_n_0 ),
        .O(\s_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20000000)) 
    \s_state[1]_i_4 
       (.I0(\s_count[31]_i_2__0_n_0 ),
        .I1(\s_state[1]_i_9_n_0 ),
        .I2(\s_state[1]_i_10_n_0 ),
        .I3(\s_state[1]_i_11_n_0 ),
        .I4(\s_state[2]_i_4_n_0 ),
        .I5(s_count01_out),
        .O(\s_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \s_state[1]_i_5 
       (.I0(\s_state[2]_i_32_n_0 ),
        .I1(\s_state[1]_i_12_n_0 ),
        .I2(\s_bitPlace_reg_n_0_[2] ),
        .I3(\s_bitPlace_reg_n_0_[3] ),
        .I4(\s_state[2]_i_30_n_0 ),
        .I5(\s_state[1]_i_13_n_0 ),
        .O(\s_state[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \s_state[1]_i_6 
       (.I0(\s_state[2]_i_29_n_0 ),
        .I1(\s_state[1]_i_14_n_0 ),
        .I2(\s_state[2]_i_28_n_0 ),
        .I3(\s_state[1]_i_15_n_0 ),
        .O(\s_state[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \s_state[1]_i_7 
       (.I0(s_ready_i_6_n_0),
        .I1(\s_state[1]_i_16_n_0 ),
        .I2(\s_state[2]_i_23_n_0 ),
        .I3(\s_state[2]_i_22_n_0 ),
        .I4(\s_state[2]_i_21_n_0 ),
        .I5(\s_state[2]_i_20_n_0 ),
        .O(\s_state[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \s_state[1]_i_8 
       (.I0(s_state[2]),
        .I1(s_state[0]),
        .I2(s_state[1]),
        .O(\s_state[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \s_state[1]_i_9 
       (.I0(\s_count_reg_n_0_[15] ),
        .I1(\s_state[2]_i_12_n_0 ),
        .I2(\s_state[2]_i_13_n_0 ),
        .I3(\s_state[1]_i_17_n_0 ),
        .I4(\s_count_reg_n_0_[6] ),
        .I5(\s_count_reg_n_0_[0] ),
        .O(\s_state[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBAABBAB88AA88A8)) 
    \s_state[2]_i_1 
       (.I0(\s_state[2]_i_2_n_0 ),
        .I1(s_count01_out),
        .I2(\s_state[2]_i_4_n_0 ),
        .I3(\s_state[2]_i_5_n_0 ),
        .I4(\s_state[2]_i_6_n_0 ),
        .I5(s_state[2]),
        .O(\s_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \s_state[2]_i_10 
       (.I0(\s_state[2]_i_24_n_0 ),
        .I1(\s_count_reg_n_0_[7] ),
        .I2(\s_count_reg_n_0_[8] ),
        .I3(\s_count_reg_n_0_[11] ),
        .I4(\s_count_reg_n_0_[10] ),
        .O(\s_state[2]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \s_state[2]_i_11 
       (.I0(s_state[1]),
        .I1(s_state[0]),
        .I2(s_state[2]),
        .I3(\s_count_reg_n_0_[23] ),
        .I4(\s_count_reg_n_0_[22] ),
        .O(\s_state[2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_state[2]_i_12 
       (.I0(\s_count_reg_n_0_[10] ),
        .I1(\s_count_reg_n_0_[8] ),
        .O(\s_state[2]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_state[2]_i_13 
       (.I0(\s_count_reg_n_0_[9] ),
        .I1(\s_count_reg_n_0_[12] ),
        .I2(\s_count_reg_n_0_[1] ),
        .I3(\s_count_reg_n_0_[2] ),
        .I4(\s_count_reg_n_0_[3] ),
        .O(\s_state[2]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \s_state[2]_i_14 
       (.I0(\s_count_reg_n_0_[0] ),
        .I1(\s_count_reg_n_0_[6] ),
        .I2(\s_count[31]_i_8_n_0 ),
        .I3(\s_count_reg_n_0_[14] ),
        .I4(\s_count_reg_n_0_[13] ),
        .O(\s_state[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \s_state[2]_i_15 
       (.I0(\s_state[2]_i_25_n_0 ),
        .I1(\s_state[2]_i_26_n_0 ),
        .I2(\s_state[2]_i_27_n_0 ),
        .I3(\s_count_reg_n_0_[17] ),
        .I4(\s_count_reg_n_0_[16] ),
        .I5(\s_state[0]_i_3_n_0 ),
        .O(\s_state[2]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_state[2]_i_16 
       (.I0(\s_bitPlace_reg_n_0_[19] ),
        .I1(\s_bitPlace_reg_n_0_[18] ),
        .I2(\s_bitPlace_reg_n_0_[17] ),
        .I3(\s_bitPlace_reg_n_0_[16] ),
        .I4(\s_state[2]_i_28_n_0 ),
        .O(\s_state[2]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_state[2]_i_17 
       (.I0(\s_bitPlace_reg_n_0_[11] ),
        .I1(\s_bitPlace_reg_n_0_[10] ),
        .I2(\s_bitPlace_reg_n_0_[9] ),
        .I3(\s_bitPlace_reg_n_0_[8] ),
        .I4(\s_state[2]_i_29_n_0 ),
        .O(\s_state[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \s_state[2]_i_18 
       (.I0(\s_bitPlace_reg_n_0_[6] ),
        .I1(\s_bitPlace_reg_n_0_[7] ),
        .I2(\s_bitPlace_reg_n_0_[4] ),
        .I3(\s_bitPlace_reg_n_0_[5] ),
        .I4(\s_state[2]_i_30_n_0 ),
        .I5(\s_state[2]_i_31_n_0 ),
        .O(\s_state[2]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_state[2]_i_19 
       (.I0(\s_bitPlace_reg_n_0_[24] ),
        .I1(\s_bitPlace_reg_n_0_[25] ),
        .I2(\s_bitPlace_reg_n_0_[31] ),
        .I3(\s_bitPlace_reg_n_0_[30] ),
        .I4(\s_state[2]_i_32_n_0 ),
        .O(\s_state[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \s_state[2]_i_2 
       (.I0(s_ready_i_3_n_0),
        .I1(\s_state[2]_i_7_n_0 ),
        .I2(\s_state[2]_i_8_n_0 ),
        .I3(\s_state[2]_i_9_n_0 ),
        .I4(\s_state[2]_i_10_n_0 ),
        .I5(\s_state[2]_i_11_n_0 ),
        .O(\s_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFD5FFD5FFD5)) 
    \s_state[2]_i_20 
       (.I0(\s_count_reg_n_0_[5] ),
        .I1(\s_count_reg_n_0_[3] ),
        .I2(\s_count_reg_n_0_[4] ),
        .I3(\s_count_reg_n_0_[8] ),
        .I4(\s_count_reg_n_0_[6] ),
        .I5(\s_count_reg_n_0_[7] ),
        .O(\s_state[2]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \s_state[2]_i_21 
       (.I0(\s_count_reg_n_0_[16] ),
        .I1(\s_count_reg_n_0_[17] ),
        .I2(\s_count_reg_n_0_[2] ),
        .I3(\s_count_reg_n_0_[0] ),
        .I4(\s_count_reg_n_0_[1] ),
        .O(\s_state[2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFAEFFFFFFAE)) 
    \s_state[2]_i_22 
       (.I0(\s_count_reg_n_0_[17] ),
        .I1(\s_count_reg_n_0_[15] ),
        .I2(\s_count_reg_n_0_[16] ),
        .I3(\s_count_reg_n_0_[20] ),
        .I4(\s_count_reg_n_0_[18] ),
        .I5(\s_count_reg_n_0_[19] ),
        .O(\s_state[2]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF5DFF5DFF5D)) 
    \s_state[2]_i_23 
       (.I0(\s_count_reg_n_0_[11] ),
        .I1(\s_count_reg_n_0_[9] ),
        .I2(\s_count_reg_n_0_[10] ),
        .I3(\s_count_reg_n_0_[14] ),
        .I4(\s_count_reg_n_0_[12] ),
        .I5(\s_count_reg_n_0_[13] ),
        .O(\s_state[2]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h08080008)) 
    \s_state[2]_i_24 
       (.I0(\s_count_reg_n_0_[4] ),
        .I1(\s_count_reg_n_0_[5] ),
        .I2(\s_count_reg_n_0_[23] ),
        .I3(\s_count_reg_n_0_[21] ),
        .I4(\s_count_reg_n_0_[22] ),
        .O(\s_state[2]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_state[2]_i_25 
       (.I0(\s_count_reg_n_0_[31] ),
        .I1(\s_count_reg_n_0_[30] ),
        .I2(\s_count_reg_n_0_[29] ),
        .I3(\s_count_reg_n_0_[28] ),
        .O(\s_state[2]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \s_state[2]_i_26 
       (.I0(\s_count_reg_n_0_[21] ),
        .I1(\s_count_reg_n_0_[18] ),
        .I2(\s_count_reg_n_0_[27] ),
        .I3(\s_count_reg_n_0_[24] ),
        .O(\s_state[2]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_state[2]_i_27 
       (.I0(\s_count_reg_n_0_[22] ),
        .I1(\s_count_reg_n_0_[23] ),
        .O(\s_state[2]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_state[2]_i_28 
       (.I0(\s_bitPlace_reg_n_0_[20] ),
        .I1(\s_bitPlace_reg_n_0_[21] ),
        .I2(\s_bitPlace_reg_n_0_[22] ),
        .I3(\s_bitPlace_reg_n_0_[23] ),
        .O(\s_state[2]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_state[2]_i_29 
       (.I0(\s_bitPlace_reg_n_0_[12] ),
        .I1(\s_bitPlace_reg_n_0_[13] ),
        .I2(\s_bitPlace_reg_n_0_[14] ),
        .I3(\s_bitPlace_reg_n_0_[15] ),
        .O(\s_state[2]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \s_state[2]_i_3 
       (.I0(s_state[1]),
        .I1(s_out_fifo_rd_en),
        .I2(s_state[2]),
        .I3(s_state[0]),
        .O(s_count01_out));
  LUT2 #(
    .INIT(4'h7)) 
    \s_state[2]_i_30 
       (.I0(\s_bitPlace_reg[0]_0 ),
        .I1(\s_bitPlace_reg[4]_0 ),
        .O(\s_state[2]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \s_state[2]_i_31 
       (.I0(\s_bitPlace_reg_n_0_[3] ),
        .I1(\s_bitPlace_reg_n_0_[2] ),
        .O(\s_state[2]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_state[2]_i_32 
       (.I0(\s_bitPlace_reg_n_0_[27] ),
        .I1(\s_bitPlace_reg_n_0_[26] ),
        .I2(\s_bitPlace_reg_n_0_[29] ),
        .I3(\s_bitPlace_reg_n_0_[28] ),
        .O(\s_state[2]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \s_state[2]_i_4 
       (.I0(s_state[2]),
        .I1(s_state[0]),
        .I2(s_state[1]),
        .O(\s_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \s_state[2]_i_5 
       (.I0(\s_count[31]_i_2__0_n_0 ),
        .I1(\s_count_reg_n_0_[15] ),
        .I2(\s_state[2]_i_12_n_0 ),
        .I3(\s_state[2]_i_13_n_0 ),
        .I4(\s_state[2]_i_14_n_0 ),
        .I5(\s_state[2]_i_15_n_0 ),
        .O(\s_state[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \s_state[2]_i_6 
       (.I0(\s_state[2]_i_16_n_0 ),
        .I1(\s_state[2]_i_17_n_0 ),
        .I2(\s_state[2]_i_18_n_0 ),
        .I3(\s_state[2]_i_19_n_0 ),
        .O(\s_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \s_state[2]_i_7 
       (.I0(\s_count_reg_n_0_[24] ),
        .I1(\s_count_reg_n_0_[25] ),
        .I2(\s_count_reg_n_0_[26] ),
        .O(\s_state[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_state[2]_i_8 
       (.I0(\s_state[2]_i_20_n_0 ),
        .I1(\s_state[2]_i_21_n_0 ),
        .I2(\s_state[2]_i_22_n_0 ),
        .I3(\s_state[2]_i_23_n_0 ),
        .O(\s_state[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \s_state[2]_i_9 
       (.I0(\s_count_reg_n_0_[19] ),
        .I1(\s_count_reg_n_0_[20] ),
        .I2(\s_count_reg_n_0_[13] ),
        .I3(\s_count_reg_n_0_[14] ),
        .O(\s_state[2]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_state[0]_i_1_n_0 ),
        .Q(s_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_state[1]_i_1_n_0 ),
        .Q(s_state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\s_state[2]_i_1_n_0 ),
        .Q(s_state[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0000AABA)) 
    s_tx_send_i_1
       (.I0(s_out_fifo_rd_en),
        .I1(send_delay),
        .I2(ready),
        .I3(empty),
        .I4(s_tx_state),
        .O(s_tx_send_reg));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h3304)) 
    s_tx_state_i_1
       (.I0(send_delay),
        .I1(ready),
        .I2(empty),
        .I3(s_tx_state),
        .O(s_tx_state_reg));
endmodule

(* ORIG_REF_NAME = "uart_fifo" *) 
module uart_UART_0_0_uart_fifo
   (empty,
    RsTx_reg,
    RsTx_reg_0,
    clk,
    send_din,
    wr_en,
    s_out_fifo_rd_en,
    \s_bitPlace_reg[1] ,
    \s_bitPlace_reg[0] );
  output empty;
  output RsTx_reg;
  output RsTx_reg_0;
  input clk;
  input [7:0]send_din;
  input wr_en;
  input s_out_fifo_rd_en;
  input \s_bitPlace_reg[1] ;
  input \s_bitPlace_reg[0] ;

  wire [7:0]FIFO_READ_rd_data;
  wire RsTx_reg;
  wire RsTx_reg_0;
  wire clk;
  wire empty;
  wire fifo_generator_0_n_8;
  wire \s_bitPlace_reg[0] ;
  wire \s_bitPlace_reg[1] ;
  wire s_out_fifo_rd_en;
  wire [7:0]send_din;
  wire wr_en;

  LUT6 #(
    .INIT(64'hCACAFFF0CACA0F00)) 
    RsTx_i_3
       (.I0(FIFO_READ_rd_data[5]),
        .I1(FIFO_READ_rd_data[7]),
        .I2(\s_bitPlace_reg[1] ),
        .I3(FIFO_READ_rd_data[4]),
        .I4(\s_bitPlace_reg[0] ),
        .I5(FIFO_READ_rd_data[6]),
        .O(RsTx_reg));
  LUT6 #(
    .INIT(64'hCACAFFF0CACA0F00)) 
    RsTx_i_4
       (.I0(FIFO_READ_rd_data[1]),
        .I1(FIFO_READ_rd_data[3]),
        .I2(\s_bitPlace_reg[1] ),
        .I3(FIFO_READ_rd_data[0]),
        .I4(\s_bitPlace_reg[0] ),
        .I5(FIFO_READ_rd_data[2]),
        .O(RsTx_reg_0));
  (* CHECK_LICENSE_TYPE = "uart_fifo_fifo_generator_0_0,fifo_generator_v13_1_4,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_1_4,Vivado 2017.2" *) 
  uart_UART_0_0_uart_fifo_fifo_generator_0_0 fifo_generator_0
       (.clk(clk),
        .din(send_din),
        .dout(FIFO_READ_rd_data),
        .empty(empty),
        .full(fifo_generator_0_n_8),
        .rd_en(s_out_fifo_rd_en),
        .rst(1'b0),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "uart_fifo" *) 
module uart_UART_0_0_uart_fifo__xdcDup__1
   (read_dout,
    s_read_state_reg,
    s_read_ready_reg,
    clk,
    din,
    wr_en,
    rd_en,
    s_read_state,
    read_ack);
  output [7:0]read_dout;
  output s_read_state_reg;
  output s_read_ready_reg;
  input clk;
  input [7:0]din;
  input wr_en;
  input rd_en;
  input s_read_state;
  input read_ack;

  wire FIFO_READ_empty;
  wire clk;
  wire [7:0]din;
  wire fifo_generator_0_n_8;
  wire rd_en;
  wire read_ack;
  wire [7:0]read_dout;
  wire s_read_ready_reg;
  wire s_read_state;
  wire s_read_state_reg;
  wire wr_en;

  (* CHECK_LICENSE_TYPE = "uart_fifo_fifo_generator_0_0,fifo_generator_v13_1_4,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_1_4,Vivado 2017.2" *) 
  uart_UART_0_0_uart_fifo_fifo_generator_0_0__xdcDup__1 fifo_generator_0
       (.clk(clk),
        .din(din),
        .dout(read_dout),
        .empty(FIFO_READ_empty),
        .full(fifo_generator_0_n_8),
        .rd_en(rd_en),
        .rst(1'b0),
        .wr_en(wr_en));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h2223)) 
    s_read_ready_i_1
       (.I0(rd_en),
        .I1(s_read_state),
        .I2(FIFO_READ_empty),
        .I3(read_ack),
        .O(s_read_ready_reg));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    s_read_state_i_1
       (.I0(s_read_state),
        .I1(FIFO_READ_empty),
        .I2(read_ack),
        .O(s_read_state_reg));
endmodule

(* CHECK_LICENSE_TYPE = "uart_fifo_fifo_generator_0_0,fifo_generator_v13_1_4,{}" *) (* ORIG_REF_NAME = "uart_fifo_fifo_generator_0_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "fifo_generator_v13_1_4,Vivado 2017.2" *) 
module uart_UART_0_0_uart_fifo_fifo_generator_0_0
   (clk,
    rst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) input clk;
  input rst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [11:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [11:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [11:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "12" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "6" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "4" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "4kx9" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "4094" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "4093" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "12" *) 
  (* C_RD_DEPTH = "4096" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "12" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "12" *) 
  (* C_WR_DEPTH = "4096" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "12" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  uart_UART_0_0_fifo_generator_v13_1_4 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[11:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[11:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[11:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* CHECK_LICENSE_TYPE = "uart_fifo_fifo_generator_0_0,fifo_generator_v13_1_4,{}" *) (* ORIG_REF_NAME = "uart_fifo_fifo_generator_0_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "fifo_generator_v13_1_4,Vivado 2017.2" *) 
module uart_UART_0_0_uart_fifo_fifo_generator_0_0__xdcDup__1
   (clk,
    rst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) input clk;
  input rst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [11:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [11:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [11:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "12" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "6" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "4" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "4kx9" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "4094" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "4093" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "12" *) 
  (* C_RD_DEPTH = "4096" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "12" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "12" *) 
  (* C_WR_DEPTH = "4096" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "12" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  uart_UART_0_0_fifo_generator_v13_1_4__2 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[11:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[11:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[11:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "builtin_extdepth_v6" *) 
module uart_UART_0_0_builtin_extdepth_v6
   (empty,
    full,
    dout,
    clk,
    rd_en,
    rd_rst_i,
    wr_en,
    din);
  output empty;
  output full;
  output [7:0]dout;
  input clk;
  input rd_en;
  input rd_rst_i;
  input wr_en;
  input [7:0]din;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rd_rst_i;
  wire wr_en;
  wire NLW_i_0_O_UNCONNECTED;
  wire NLW_i_1_O_UNCONNECTED;
  wire NLW_i_2_O_UNCONNECTED;
  wire NLW_i_3_O_UNCONNECTED;

  uart_UART_0_0_builtin_prim_v6 \gonep.inst_prim 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rd_rst_i(rd_rst_i),
        .wr_en(wr_en));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(NLW_i_0_O_UNCONNECTED));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(NLW_i_1_O_UNCONNECTED));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(NLW_i_2_O_UNCONNECTED));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(NLW_i_3_O_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "builtin_extdepth_v6" *) 
module uart_UART_0_0_builtin_extdepth_v6_5
   (empty,
    full,
    dout,
    clk,
    rd_en,
    rd_rst_i,
    wr_en,
    din);
  output empty;
  output full;
  output [7:0]dout;
  input clk;
  input rd_en;
  input rd_rst_i;
  input wr_en;
  input [7:0]din;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rd_rst_i;
  wire wr_en;
  wire NLW_i_0_O_UNCONNECTED;
  wire NLW_i_1_O_UNCONNECTED;
  wire NLW_i_2_O_UNCONNECTED;
  wire NLW_i_3_O_UNCONNECTED;

  uart_UART_0_0_builtin_prim_v6_6 \gonep.inst_prim 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rd_rst_i(rd_rst_i),
        .wr_en(wr_en));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(NLW_i_0_O_UNCONNECTED));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(NLW_i_1_O_UNCONNECTED));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(NLW_i_2_O_UNCONNECTED));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(NLW_i_3_O_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "builtin_prim_v6" *) 
module uart_UART_0_0_builtin_prim_v6
   (empty,
    full,
    dout,
    clk,
    rd_en,
    rd_rst_i,
    wr_en,
    din);
  output empty;
  output full;
  output [7:0]dout;
  input clk;
  input rd_en;
  input rd_rst_i;
  input wr_en;
  input [7:0]din;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire \gf36e1_inst.sngfifo36e1_n_113 ;
  wire \gf36e1_inst.sngfifo36e1_n_17 ;
  wire \gf36e1_inst.sngfifo36e1_n_18 ;
  wire \gf36e1_inst.sngfifo36e1_n_19 ;
  wire \gf36e1_inst.sngfifo36e1_n_20 ;
  wire \gf36e1_inst.sngfifo36e1_n_21 ;
  wire \gf36e1_inst.sngfifo36e1_n_22 ;
  wire \gf36e1_inst.sngfifo36e1_n_23 ;
  wire \gf36e1_inst.sngfifo36e1_n_24 ;
  wire \gf36e1_inst.sngfifo36e1_n_25 ;
  wire \gf36e1_inst.sngfifo36e1_n_26 ;
  wire \gf36e1_inst.sngfifo36e1_n_27 ;
  wire \gf36e1_inst.sngfifo36e1_n_28 ;
  wire \gf36e1_inst.sngfifo36e1_n_30 ;
  wire \gf36e1_inst.sngfifo36e1_n_31 ;
  wire \gf36e1_inst.sngfifo36e1_n_32 ;
  wire \gf36e1_inst.sngfifo36e1_n_33 ;
  wire \gf36e1_inst.sngfifo36e1_n_34 ;
  wire \gf36e1_inst.sngfifo36e1_n_35 ;
  wire \gf36e1_inst.sngfifo36e1_n_36 ;
  wire \gf36e1_inst.sngfifo36e1_n_37 ;
  wire \gf36e1_inst.sngfifo36e1_n_38 ;
  wire \gf36e1_inst.sngfifo36e1_n_39 ;
  wire \gf36e1_inst.sngfifo36e1_n_40 ;
  wire \gf36e1_inst.sngfifo36e1_n_41 ;
  wire p_2_out;
  wire p_3_out;
  wire p_4_out;
  wire p_5_out;
  wire prog_empty_fifo;
  wire prog_full_fifo;
  wire rd_en;
  wire rd_rst_i;
  wire wr_en;
  wire [63:8]\NLW_gf36e1_inst.sngfifo36e1_DO_UNCONNECTED ;
  wire [7:1]\NLW_gf36e1_inst.sngfifo36e1_DOP_UNCONNECTED ;
  wire [7:0]\NLW_gf36e1_inst.sngfifo36e1_ECCPARITY_UNCONNECTED ;
  wire [12:12]\NLW_gf36e1_inst.sngfifo36e1_RDCOUNT_UNCONNECTED ;
  wire [12:12]\NLW_gf36e1_inst.sngfifo36e1_WRCOUNT_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  FIFO36E1 #(
    .ALMOST_EMPTY_OFFSET(13'h0002),
    .ALMOST_FULL_OFFSET(13'h0002),
    .DATA_WIDTH(9),
    .DO_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .EN_SYN("TRUE"),
    .FIFO_MODE("FIFO36"),
    .FIRST_WORD_FALL_THROUGH("FALSE"),
    .INIT(72'h000000000000000000),
    .IS_RDCLK_INVERTED(1'b0),
    .IS_RDEN_INVERTED(1'b0),
    .IS_RSTREG_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .IS_WRCLK_INVERTED(1'b0),
    .IS_WREN_INVERTED(1'b0),
    .SIM_DEVICE("7SERIES"),
    .SRVAL(72'h000000000000000000)) 
    \gf36e1_inst.sngfifo36e1 
       (.ALMOSTEMPTY(prog_empty_fifo),
        .ALMOSTFULL(prog_full_fifo),
        .DBITERR(p_2_out),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din}),
        .DIP({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO({\NLW_gf36e1_inst.sngfifo36e1_DO_UNCONNECTED [63:8],dout}),
        .DOP({\NLW_gf36e1_inst.sngfifo36e1_DOP_UNCONNECTED [7:1],\gf36e1_inst.sngfifo36e1_n_113 }),
        .ECCPARITY(\NLW_gf36e1_inst.sngfifo36e1_ECCPARITY_UNCONNECTED [7:0]),
        .EMPTY(empty),
        .FULL(full),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDCLK(clk),
        .RDCOUNT({\NLW_gf36e1_inst.sngfifo36e1_RDCOUNT_UNCONNECTED [12],\gf36e1_inst.sngfifo36e1_n_17 ,\gf36e1_inst.sngfifo36e1_n_18 ,\gf36e1_inst.sngfifo36e1_n_19 ,\gf36e1_inst.sngfifo36e1_n_20 ,\gf36e1_inst.sngfifo36e1_n_21 ,\gf36e1_inst.sngfifo36e1_n_22 ,\gf36e1_inst.sngfifo36e1_n_23 ,\gf36e1_inst.sngfifo36e1_n_24 ,\gf36e1_inst.sngfifo36e1_n_25 ,\gf36e1_inst.sngfifo36e1_n_26 ,\gf36e1_inst.sngfifo36e1_n_27 ,\gf36e1_inst.sngfifo36e1_n_28 }),
        .RDEN(rd_en),
        .RDERR(p_4_out),
        .REGCE(1'b0),
        .RST(rd_rst_i),
        .RSTREG(1'b0),
        .SBITERR(p_3_out),
        .WRCLK(clk),
        .WRCOUNT({\NLW_gf36e1_inst.sngfifo36e1_WRCOUNT_UNCONNECTED [12],\gf36e1_inst.sngfifo36e1_n_30 ,\gf36e1_inst.sngfifo36e1_n_31 ,\gf36e1_inst.sngfifo36e1_n_32 ,\gf36e1_inst.sngfifo36e1_n_33 ,\gf36e1_inst.sngfifo36e1_n_34 ,\gf36e1_inst.sngfifo36e1_n_35 ,\gf36e1_inst.sngfifo36e1_n_36 ,\gf36e1_inst.sngfifo36e1_n_37 ,\gf36e1_inst.sngfifo36e1_n_38 ,\gf36e1_inst.sngfifo36e1_n_39 ,\gf36e1_inst.sngfifo36e1_n_40 ,\gf36e1_inst.sngfifo36e1_n_41 }),
        .WREN(wr_en),
        .WRERR(p_5_out));
endmodule

(* ORIG_REF_NAME = "builtin_prim_v6" *) 
module uart_UART_0_0_builtin_prim_v6_6
   (empty,
    full,
    dout,
    clk,
    rd_en,
    rd_rst_i,
    wr_en,
    din);
  output empty;
  output full;
  output [7:0]dout;
  input clk;
  input rd_en;
  input rd_rst_i;
  input wr_en;
  input [7:0]din;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire \gf36e1_inst.sngfifo36e1_n_113 ;
  wire \gf36e1_inst.sngfifo36e1_n_17 ;
  wire \gf36e1_inst.sngfifo36e1_n_18 ;
  wire \gf36e1_inst.sngfifo36e1_n_19 ;
  wire \gf36e1_inst.sngfifo36e1_n_20 ;
  wire \gf36e1_inst.sngfifo36e1_n_21 ;
  wire \gf36e1_inst.sngfifo36e1_n_22 ;
  wire \gf36e1_inst.sngfifo36e1_n_23 ;
  wire \gf36e1_inst.sngfifo36e1_n_24 ;
  wire \gf36e1_inst.sngfifo36e1_n_25 ;
  wire \gf36e1_inst.sngfifo36e1_n_26 ;
  wire \gf36e1_inst.sngfifo36e1_n_27 ;
  wire \gf36e1_inst.sngfifo36e1_n_28 ;
  wire \gf36e1_inst.sngfifo36e1_n_30 ;
  wire \gf36e1_inst.sngfifo36e1_n_31 ;
  wire \gf36e1_inst.sngfifo36e1_n_32 ;
  wire \gf36e1_inst.sngfifo36e1_n_33 ;
  wire \gf36e1_inst.sngfifo36e1_n_34 ;
  wire \gf36e1_inst.sngfifo36e1_n_35 ;
  wire \gf36e1_inst.sngfifo36e1_n_36 ;
  wire \gf36e1_inst.sngfifo36e1_n_37 ;
  wire \gf36e1_inst.sngfifo36e1_n_38 ;
  wire \gf36e1_inst.sngfifo36e1_n_39 ;
  wire \gf36e1_inst.sngfifo36e1_n_40 ;
  wire \gf36e1_inst.sngfifo36e1_n_41 ;
  wire p_2_out;
  wire p_3_out;
  wire p_4_out;
  wire p_5_out;
  wire prog_empty_fifo;
  wire prog_full_fifo;
  wire rd_en;
  wire rd_rst_i;
  wire wr_en;
  wire [63:8]\NLW_gf36e1_inst.sngfifo36e1_DO_UNCONNECTED ;
  wire [7:1]\NLW_gf36e1_inst.sngfifo36e1_DOP_UNCONNECTED ;
  wire [7:0]\NLW_gf36e1_inst.sngfifo36e1_ECCPARITY_UNCONNECTED ;
  wire [12:12]\NLW_gf36e1_inst.sngfifo36e1_RDCOUNT_UNCONNECTED ;
  wire [12:12]\NLW_gf36e1_inst.sngfifo36e1_WRCOUNT_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  FIFO36E1 #(
    .ALMOST_EMPTY_OFFSET(13'h0002),
    .ALMOST_FULL_OFFSET(13'h0002),
    .DATA_WIDTH(9),
    .DO_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .EN_SYN("TRUE"),
    .FIFO_MODE("FIFO36"),
    .FIRST_WORD_FALL_THROUGH("FALSE"),
    .INIT(72'h000000000000000000),
    .IS_RDCLK_INVERTED(1'b0),
    .IS_RDEN_INVERTED(1'b0),
    .IS_RSTREG_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .IS_WRCLK_INVERTED(1'b0),
    .IS_WREN_INVERTED(1'b0),
    .SIM_DEVICE("7SERIES"),
    .SRVAL(72'h000000000000000000)) 
    \gf36e1_inst.sngfifo36e1 
       (.ALMOSTEMPTY(prog_empty_fifo),
        .ALMOSTFULL(prog_full_fifo),
        .DBITERR(p_2_out),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din}),
        .DIP({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO({\NLW_gf36e1_inst.sngfifo36e1_DO_UNCONNECTED [63:8],dout}),
        .DOP({\NLW_gf36e1_inst.sngfifo36e1_DOP_UNCONNECTED [7:1],\gf36e1_inst.sngfifo36e1_n_113 }),
        .ECCPARITY(\NLW_gf36e1_inst.sngfifo36e1_ECCPARITY_UNCONNECTED [7:0]),
        .EMPTY(empty),
        .FULL(full),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDCLK(clk),
        .RDCOUNT({\NLW_gf36e1_inst.sngfifo36e1_RDCOUNT_UNCONNECTED [12],\gf36e1_inst.sngfifo36e1_n_17 ,\gf36e1_inst.sngfifo36e1_n_18 ,\gf36e1_inst.sngfifo36e1_n_19 ,\gf36e1_inst.sngfifo36e1_n_20 ,\gf36e1_inst.sngfifo36e1_n_21 ,\gf36e1_inst.sngfifo36e1_n_22 ,\gf36e1_inst.sngfifo36e1_n_23 ,\gf36e1_inst.sngfifo36e1_n_24 ,\gf36e1_inst.sngfifo36e1_n_25 ,\gf36e1_inst.sngfifo36e1_n_26 ,\gf36e1_inst.sngfifo36e1_n_27 ,\gf36e1_inst.sngfifo36e1_n_28 }),
        .RDEN(rd_en),
        .RDERR(p_4_out),
        .REGCE(1'b0),
        .RST(rd_rst_i),
        .RSTREG(1'b0),
        .SBITERR(p_3_out),
        .WRCLK(clk),
        .WRCOUNT({\NLW_gf36e1_inst.sngfifo36e1_WRCOUNT_UNCONNECTED [12],\gf36e1_inst.sngfifo36e1_n_30 ,\gf36e1_inst.sngfifo36e1_n_31 ,\gf36e1_inst.sngfifo36e1_n_32 ,\gf36e1_inst.sngfifo36e1_n_33 ,\gf36e1_inst.sngfifo36e1_n_34 ,\gf36e1_inst.sngfifo36e1_n_35 ,\gf36e1_inst.sngfifo36e1_n_36 ,\gf36e1_inst.sngfifo36e1_n_37 ,\gf36e1_inst.sngfifo36e1_n_38 ,\gf36e1_inst.sngfifo36e1_n_39 ,\gf36e1_inst.sngfifo36e1_n_40 ,\gf36e1_inst.sngfifo36e1_n_41 }),
        .WREN(wr_en),
        .WRERR(p_5_out));
endmodule

(* ORIG_REF_NAME = "builtin_top_v6" *) 
module uart_UART_0_0_builtin_top_v6
   (empty,
    full,
    dout,
    clk,
    rd_en,
    rd_rst_i,
    wr_en,
    din);
  output empty;
  output full;
  output [7:0]dout;
  input clk;
  input rd_en;
  input rd_rst_i;
  input wr_en;
  input [7:0]din;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rd_rst_i;
  wire wr_en;

  uart_UART_0_0_builtin_extdepth_v6 \gextw[1].gnll_fifo.inst_extd 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rd_rst_i(rd_rst_i),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "builtin_top_v6" *) 
module uart_UART_0_0_builtin_top_v6_4
   (empty,
    full,
    dout,
    clk,
    rd_en,
    rd_rst_i,
    wr_en,
    din);
  output empty;
  output full;
  output [7:0]dout;
  input clk;
  input rd_en;
  input rd_rst_i;
  input wr_en;
  input [7:0]din;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rd_rst_i;
  wire wr_en;

  uart_UART_0_0_builtin_extdepth_v6_5 \gextw[1].gnll_fifo.inst_extd 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rd_rst_i(rd_rst_i),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module uart_UART_0_0_fifo_generator_top
   (empty,
    full,
    dout,
    clk,
    rd_en,
    wr_en,
    din,
    rst);
  output empty;
  output full;
  output [7:0]dout;
  input clk;
  input rd_en;
  input wr_en;
  input [7:0]din;
  input rst;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  uart_UART_0_0_fifo_generator_v13_1_4_builtin \gbi.bi 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module uart_UART_0_0_fifo_generator_top_1
   (empty,
    full,
    dout,
    clk,
    rd_en,
    wr_en,
    din,
    rst);
  output empty;
  output full;
  output [7:0]dout;
  input clk;
  input rd_en;
  input wr_en;
  input [7:0]din;
  input rst;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  uart_UART_0_0_fifo_generator_v13_1_4_builtin_2 \gbi.bi 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "8" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "1" *) (* C_AXIS_TSTRB_WIDTH = "1" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "1" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "12" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "8" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "1" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "8" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "artix7" *) (* C_FULL_FLAGS_RST_VAL = "0" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "1" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "1" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "6" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "4" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "4kx9" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "4094" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "4093" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "12" *) 
(* C_RD_DEPTH = "4096" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "12" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "0" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "12" *) 
(* C_WR_DEPTH = "4096" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "12" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_1_4" *) 
module uart_UART_0_0_fifo_generator_v13_1_4
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [7:0]din;
  input wr_en;
  input rd_en;
  input [11:0]prog_empty_thresh;
  input [11:0]prog_empty_thresh_assert;
  input [11:0]prog_empty_thresh_negate;
  input [11:0]prog_full_thresh;
  input [11:0]prog_full_thresh_assert;
  input [11:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [7:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [11:0]data_count;
  output [11:0]rd_data_count;
  output [11:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const1> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[11] = \<const0> ;
  assign data_count[10] = \<const0> ;
  assign data_count[9] = \<const0> ;
  assign data_count[8] = \<const0> ;
  assign data_count[7] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[11] = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const1> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[11] = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  uart_UART_0_0_fifo_generator_v13_1_4_synth inst_fifo_gen
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "8" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "1" *) (* C_AXIS_TSTRB_WIDTH = "1" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "1" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "12" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "8" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "1" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "8" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "artix7" *) (* C_FULL_FLAGS_RST_VAL = "0" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "1" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "1" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "6" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "4" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "4kx9" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "4094" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "4093" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "12" *) 
(* C_RD_DEPTH = "4096" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "12" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "0" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "12" *) 
(* C_WR_DEPTH = "4096" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "12" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_1_4" *) 
module uart_UART_0_0_fifo_generator_v13_1_4__2
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [7:0]din;
  input wr_en;
  input rd_en;
  input [11:0]prog_empty_thresh;
  input [11:0]prog_empty_thresh_assert;
  input [11:0]prog_empty_thresh_negate;
  input [11:0]prog_full_thresh;
  input [11:0]prog_full_thresh_assert;
  input [11:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [7:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [11:0]data_count;
  output [11:0]rd_data_count;
  output [11:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const1> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[11] = \<const0> ;
  assign data_count[10] = \<const0> ;
  assign data_count[9] = \<const0> ;
  assign data_count[8] = \<const0> ;
  assign data_count[7] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[11] = \<const0> ;
  assign rd_data_count[10] = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const1> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[11] = \<const0> ;
  assign wr_data_count[10] = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  uart_UART_0_0_fifo_generator_v13_1_4_synth_0 inst_fifo_gen
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_1_4_builtin" *) 
module uart_UART_0_0_fifo_generator_v13_1_4_builtin
   (empty,
    full,
    dout,
    clk,
    rd_en,
    wr_en,
    din,
    rst);
  output empty;
  output full;
  output [7:0]dout;
  input clk;
  input rd_en;
  input wr_en;
  input [7:0]din;
  input rst;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rd_rst_i;
  wire rst;
  wire wr_en;

  uart_UART_0_0_reset_builtin \g7ser_birst.rstbt 
       (.clk(clk),
        .rd_rst_i(rd_rst_i),
        .rst(rst));
  uart_UART_0_0_builtin_top_v6 \v7_bi_fifo.fblk 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rd_rst_i(rd_rst_i),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_1_4_builtin" *) 
module uart_UART_0_0_fifo_generator_v13_1_4_builtin_2
   (empty,
    full,
    dout,
    clk,
    rd_en,
    wr_en,
    din,
    rst);
  output empty;
  output full;
  output [7:0]dout;
  input clk;
  input rd_en;
  input wr_en;
  input [7:0]din;
  input rst;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rd_rst_i;
  wire rst;
  wire wr_en;

  uart_UART_0_0_reset_builtin_3 \g7ser_birst.rstbt 
       (.clk(clk),
        .rd_rst_i(rd_rst_i),
        .rst(rst));
  uart_UART_0_0_builtin_top_v6_4 \v7_bi_fifo.fblk 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rd_rst_i(rd_rst_i),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_1_4_synth" *) 
module uart_UART_0_0_fifo_generator_v13_1_4_synth
   (empty,
    full,
    dout,
    clk,
    rd_en,
    wr_en,
    din,
    rst);
  output empty;
  output full;
  output [7:0]dout;
  input clk;
  input rd_en;
  input wr_en;
  input [7:0]din;
  input rst;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  uart_UART_0_0_fifo_generator_top \gconvfifo.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_1_4_synth" *) 
module uart_UART_0_0_fifo_generator_v13_1_4_synth_0
   (empty,
    full,
    dout,
    clk,
    rd_en,
    wr_en,
    din,
    rst);
  output empty;
  output full;
  output [7:0]dout;
  input clk;
  input rd_en;
  input wr_en;
  input [7:0]din;
  input rst;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire rst;
  wire wr_en;

  uart_UART_0_0_fifo_generator_top_1 \gconvfifo.rf 
       (.clk(clk),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .rst(rst),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "reset_builtin" *) 
module uart_UART_0_0_reset_builtin
   (rd_rst_i,
    clk,
    rst);
  output rd_rst_i;
  input clk;
  input rst;

  wire clk;
  (* async_reg = "true" *) (* msgon = "true" *) wire [5:0]power_on_rd_rst;
  (* async_reg = "true" *) (* msgon = "true" *) wire [5:0]power_on_wr_rst;
  wire rd_rst_i;
  (* async_reg = "true" *) (* msgon = "true" *) wire rd_rst_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rd_rst_reg2;
  wire rst;
  wire \rsync.rcc.wr_rst_fb_reg[0]_srl5_n_0 ;
  wire wr_rst_reg;
  (* async_reg = "true" *) (* msgon = "true" *) wire wr_rst_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire wr_rst_reg2;

  LUT2 #(
    .INIT(4'hE)) 
    \gf36e1_inst.sngfifo36e1_i_1 
       (.I0(wr_rst_reg),
        .I1(power_on_wr_rst[0]),
        .O(rd_rst_i));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(rd_rst_reg1));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(rd_rst_reg2));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b1),
        .O(power_on_rd_rst[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b1),
        .O(power_on_rd_rst[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b1),
        .O(power_on_rd_rst[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b1),
        .O(power_on_rd_rst[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b1),
        .O(power_on_rd_rst[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b1),
        .O(power_on_rd_rst[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rsync.rcc.power_on_wr_rst_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(power_on_wr_rst[1]),
        .Q(power_on_wr_rst[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rsync.rcc.power_on_wr_rst_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(power_on_wr_rst[2]),
        .Q(power_on_wr_rst[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rsync.rcc.power_on_wr_rst_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(power_on_wr_rst[3]),
        .Q(power_on_wr_rst[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rsync.rcc.power_on_wr_rst_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(power_on_wr_rst[4]),
        .Q(power_on_wr_rst[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rsync.rcc.power_on_wr_rst_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(power_on_wr_rst[5]),
        .Q(power_on_wr_rst[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rsync.rcc.power_on_wr_rst_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(power_on_wr_rst[5]),
        .R(1'b0));
  (* srl_bus_name = "U0/\fifo_tx_queue/fifo_generator_0 /U0/\inst_fifo_gen/gconvfifo.rf/gbi.bi/g7ser_birst.rstbt/rsync.rcc.wr_rst_fb_reg " *) 
  (* srl_name = "U0/\fifo_tx_queue/fifo_generator_0 /U0/\inst_fifo_gen/gconvfifo.rf/gbi.bi/g7ser_birst.rstbt/rsync.rcc.wr_rst_fb_reg[0]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rsync.rcc.wr_rst_fb_reg[0]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(wr_rst_reg),
        .Q(\rsync.rcc.wr_rst_fb_reg[0]_srl5_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \rsync.rcc.wr_rst_reg1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst),
        .Q(wr_rst_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \rsync.rcc.wr_rst_reg2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(wr_rst_reg1),
        .PRE(rst),
        .Q(wr_rst_reg2));
  FDPE #(
    .INIT(1'b0)) 
    \rsync.rcc.wr_rst_reg_reg 
       (.C(clk),
        .CE(\rsync.rcc.wr_rst_fb_reg[0]_srl5_n_0 ),
        .D(1'b0),
        .PRE(wr_rst_reg2),
        .Q(wr_rst_reg));
endmodule

(* ORIG_REF_NAME = "reset_builtin" *) 
module uart_UART_0_0_reset_builtin_3
   (rd_rst_i,
    clk,
    rst);
  output rd_rst_i;
  input clk;
  input rst;

  wire clk;
  (* async_reg = "true" *) (* msgon = "true" *) wire [5:0]power_on_rd_rst;
  (* async_reg = "true" *) (* msgon = "true" *) wire [5:0]power_on_wr_rst;
  wire rd_rst_i;
  (* async_reg = "true" *) (* msgon = "true" *) wire rd_rst_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rd_rst_reg2;
  wire rst;
  wire \rsync.rcc.wr_rst_fb_reg[0]_srl5_n_0 ;
  wire wr_rst_reg;
  (* async_reg = "true" *) (* msgon = "true" *) wire wr_rst_reg1;
  (* async_reg = "true" *) (* msgon = "true" *) wire wr_rst_reg2;

  LUT2 #(
    .INIT(4'hE)) 
    \gf36e1_inst.sngfifo36e1_i_1 
       (.I0(wr_rst_reg),
        .I1(power_on_wr_rst[0]),
        .O(rd_rst_i));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(rd_rst_reg1));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(rd_rst_reg2));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b1),
        .O(power_on_rd_rst[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b1),
        .O(power_on_rd_rst[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b1),
        .O(power_on_rd_rst[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b1),
        .O(power_on_rd_rst[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b1),
        .O(power_on_rd_rst[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b1),
        .O(power_on_rd_rst[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rsync.rcc.power_on_wr_rst_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(power_on_wr_rst[1]),
        .Q(power_on_wr_rst[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rsync.rcc.power_on_wr_rst_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(power_on_wr_rst[2]),
        .Q(power_on_wr_rst[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rsync.rcc.power_on_wr_rst_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(power_on_wr_rst[3]),
        .Q(power_on_wr_rst[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rsync.rcc.power_on_wr_rst_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(power_on_wr_rst[4]),
        .Q(power_on_wr_rst[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rsync.rcc.power_on_wr_rst_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(power_on_wr_rst[5]),
        .Q(power_on_wr_rst[4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \rsync.rcc.power_on_wr_rst_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(power_on_wr_rst[5]),
        .R(1'b0));
  (* srl_bus_name = "U0/\fifo_rx_queue/fifo_generator_0 /U0/\inst_fifo_gen/gconvfifo.rf/gbi.bi/g7ser_birst.rstbt/rsync.rcc.wr_rst_fb_reg " *) 
  (* srl_name = "U0/\fifo_rx_queue/fifo_generator_0 /U0/\inst_fifo_gen/gconvfifo.rf/gbi.bi/g7ser_birst.rstbt/rsync.rcc.wr_rst_fb_reg[0]_srl5 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \rsync.rcc.wr_rst_fb_reg[0]_srl5 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk),
        .D(wr_rst_reg),
        .Q(\rsync.rcc.wr_rst_fb_reg[0]_srl5_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \rsync.rcc.wr_rst_reg1_reg 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst),
        .Q(wr_rst_reg1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDPE #(
    .INIT(1'b0)) 
    \rsync.rcc.wr_rst_reg2_reg 
       (.C(clk),
        .CE(1'b1),
        .D(wr_rst_reg1),
        .PRE(rst),
        .Q(wr_rst_reg2));
  FDPE #(
    .INIT(1'b0)) 
    \rsync.rcc.wr_rst_reg_reg 
       (.C(clk),
        .CE(\rsync.rcc.wr_rst_fb_reg[0]_srl5_n_0 ),
        .D(1'b0),
        .PRE(wr_rst_reg2),
        .Q(wr_rst_reg));
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

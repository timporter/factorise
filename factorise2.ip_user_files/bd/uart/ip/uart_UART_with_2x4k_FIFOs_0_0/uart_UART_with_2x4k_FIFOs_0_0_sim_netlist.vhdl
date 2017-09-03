-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sun Aug 13 20:45:09 2017
-- Host        : timbox running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/sources_1/bd/uart/ip/uart_UART_with_2x4k_FIFOs_0_0/uart_UART_with_2x4k_FIFOs_0_0_sim_netlist.vhdl
-- Design      : uart_UART_with_2x4k_FIFOs_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_UART_with_2x4k_FIFOs_0_0_receive is
  port (
    din : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_in_fifo_wr_en0 : out STD_LOGIC;
    clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    RsRx : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_UART_with_2x4k_FIFOs_0_0_receive : entity is "receive";
end uart_UART_with_2x4k_FIFOs_0_0_receive;

architecture STRUCTURE of uart_UART_with_2x4k_FIFOs_0_0_receive is
  signal \FSM_sequential_s_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_state[1]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_state[1]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_state[1]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_state[1]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_state[1]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_s_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \^din\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \s_count0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \s_count0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \s_count0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \s_count0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \s_count0_carry__0_n_0\ : STD_LOGIC;
  signal \s_count0_carry__0_n_1\ : STD_LOGIC;
  signal \s_count0_carry__0_n_2\ : STD_LOGIC;
  signal \s_count0_carry__0_n_3\ : STD_LOGIC;
  signal \s_count0_carry__0_n_4\ : STD_LOGIC;
  signal \s_count0_carry__0_n_5\ : STD_LOGIC;
  signal \s_count0_carry__0_n_6\ : STD_LOGIC;
  signal \s_count0_carry__0_n_7\ : STD_LOGIC;
  signal \s_count0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \s_count0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \s_count0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \s_count0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \s_count0_carry__1_n_0\ : STD_LOGIC;
  signal \s_count0_carry__1_n_1\ : STD_LOGIC;
  signal \s_count0_carry__1_n_2\ : STD_LOGIC;
  signal \s_count0_carry__1_n_3\ : STD_LOGIC;
  signal \s_count0_carry__1_n_4\ : STD_LOGIC;
  signal \s_count0_carry__1_n_5\ : STD_LOGIC;
  signal \s_count0_carry__1_n_6\ : STD_LOGIC;
  signal \s_count0_carry__1_n_7\ : STD_LOGIC;
  signal \s_count0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \s_count0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \s_count0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \s_count0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \s_count0_carry__2_n_0\ : STD_LOGIC;
  signal \s_count0_carry__2_n_1\ : STD_LOGIC;
  signal \s_count0_carry__2_n_2\ : STD_LOGIC;
  signal \s_count0_carry__2_n_3\ : STD_LOGIC;
  signal \s_count0_carry__2_n_4\ : STD_LOGIC;
  signal \s_count0_carry__2_n_5\ : STD_LOGIC;
  signal \s_count0_carry__2_n_6\ : STD_LOGIC;
  signal \s_count0_carry__2_n_7\ : STD_LOGIC;
  signal \s_count0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \s_count0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \s_count0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \s_count0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \s_count0_carry__3_n_0\ : STD_LOGIC;
  signal \s_count0_carry__3_n_1\ : STD_LOGIC;
  signal \s_count0_carry__3_n_2\ : STD_LOGIC;
  signal \s_count0_carry__3_n_3\ : STD_LOGIC;
  signal \s_count0_carry__3_n_4\ : STD_LOGIC;
  signal \s_count0_carry__3_n_5\ : STD_LOGIC;
  signal \s_count0_carry__3_n_6\ : STD_LOGIC;
  signal \s_count0_carry__3_n_7\ : STD_LOGIC;
  signal \s_count0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \s_count0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \s_count0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \s_count0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \s_count0_carry__4_n_0\ : STD_LOGIC;
  signal \s_count0_carry__4_n_1\ : STD_LOGIC;
  signal \s_count0_carry__4_n_2\ : STD_LOGIC;
  signal \s_count0_carry__4_n_3\ : STD_LOGIC;
  signal \s_count0_carry__4_n_4\ : STD_LOGIC;
  signal \s_count0_carry__4_n_5\ : STD_LOGIC;
  signal \s_count0_carry__4_n_6\ : STD_LOGIC;
  signal \s_count0_carry__4_n_7\ : STD_LOGIC;
  signal \s_count0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \s_count0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \s_count0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \s_count0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \s_count0_carry__5_n_0\ : STD_LOGIC;
  signal \s_count0_carry__5_n_1\ : STD_LOGIC;
  signal \s_count0_carry__5_n_2\ : STD_LOGIC;
  signal \s_count0_carry__5_n_3\ : STD_LOGIC;
  signal \s_count0_carry__5_n_4\ : STD_LOGIC;
  signal \s_count0_carry__5_n_5\ : STD_LOGIC;
  signal \s_count0_carry__5_n_6\ : STD_LOGIC;
  signal \s_count0_carry__5_n_7\ : STD_LOGIC;
  signal \s_count0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \s_count0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \s_count0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \s_count0_carry__6_n_2\ : STD_LOGIC;
  signal \s_count0_carry__6_n_3\ : STD_LOGIC;
  signal \s_count0_carry__6_n_5\ : STD_LOGIC;
  signal \s_count0_carry__6_n_6\ : STD_LOGIC;
  signal \s_count0_carry__6_n_7\ : STD_LOGIC;
  signal s_count0_carry_i_1_n_0 : STD_LOGIC;
  signal s_count0_carry_i_2_n_0 : STD_LOGIC;
  signal s_count0_carry_i_3_n_0 : STD_LOGIC;
  signal s_count0_carry_i_4_n_0 : STD_LOGIC;
  signal s_count0_carry_n_0 : STD_LOGIC;
  signal s_count0_carry_n_1 : STD_LOGIC;
  signal s_count0_carry_n_2 : STD_LOGIC;
  signal s_count0_carry_n_3 : STD_LOGIC;
  signal s_count0_carry_n_4 : STD_LOGIC;
  signal s_count0_carry_n_5 : STD_LOGIC;
  signal s_count0_carry_n_6 : STD_LOGIC;
  signal s_count0_carry_n_7 : STD_LOGIC;
  signal \s_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[10]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[13]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[14]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[16]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[17]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[18]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[19]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[20]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[21]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[22]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[23]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[24]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[25]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[26]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[27]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[28]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[29]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[30]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[31]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[31]_i_2_n_0\ : STD_LOGIC;
  signal \s_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_count[9]_i_1_n_0\ : STD_LOGIC;
  signal \s_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[10]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[11]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[12]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[13]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[14]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[15]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[16]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[17]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[18]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[19]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[20]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[21]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[22]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[23]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[24]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[25]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[26]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[27]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[28]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[29]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[30]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[31]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[8]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[9]\ : STD_LOGIC;
  signal \s_dout[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_dout[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_dout[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_dout[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_dout[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_dout[3]_i_2_n_0\ : STD_LOGIC;
  signal \s_dout[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_dout[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_dout[5]_i_2_n_0\ : STD_LOGIC;
  signal \s_dout[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_dout[6]_i_2_n_0\ : STD_LOGIC;
  signal \s_dout[7]_i_10_n_0\ : STD_LOGIC;
  signal \s_dout[7]_i_11_n_0\ : STD_LOGIC;
  signal \s_dout[7]_i_12_n_0\ : STD_LOGIC;
  signal \s_dout[7]_i_13_n_0\ : STD_LOGIC;
  signal \s_dout[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_dout[7]_i_2_n_0\ : STD_LOGIC;
  signal \s_dout[7]_i_3_n_0\ : STD_LOGIC;
  signal \s_dout[7]_i_4_n_0\ : STD_LOGIC;
  signal \s_dout[7]_i_5_n_0\ : STD_LOGIC;
  signal \s_dout[7]_i_6_n_0\ : STD_LOGIC;
  signal \s_dout[7]_i_7_n_0\ : STD_LOGIC;
  signal \s_dout[7]_i_8_n_0\ : STD_LOGIC;
  signal \s_dout[7]_i_9_n_0\ : STD_LOGIC;
  signal s_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of s_state : signal is "yes";
  signal \s_updated0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \s_updated0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \s_updated0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \s_updated0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \s_updated0_carry__0_n_0\ : STD_LOGIC;
  signal \s_updated0_carry__0_n_1\ : STD_LOGIC;
  signal \s_updated0_carry__0_n_2\ : STD_LOGIC;
  signal \s_updated0_carry__0_n_3\ : STD_LOGIC;
  signal \s_updated0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \s_updated0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \s_updated0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \s_updated0_carry__1_n_1\ : STD_LOGIC;
  signal \s_updated0_carry__1_n_2\ : STD_LOGIC;
  signal \s_updated0_carry__1_n_3\ : STD_LOGIC;
  signal s_updated0_carry_i_1_n_0 : STD_LOGIC;
  signal s_updated0_carry_i_2_n_0 : STD_LOGIC;
  signal s_updated0_carry_i_3_n_0 : STD_LOGIC;
  signal s_updated0_carry_i_4_n_0 : STD_LOGIC;
  signal s_updated0_carry_n_0 : STD_LOGIC;
  signal s_updated0_carry_n_1 : STD_LOGIC;
  signal s_updated0_carry_n_2 : STD_LOGIC;
  signal s_updated0_carry_n_3 : STD_LOGIC;
  signal s_updated1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal s_updated_i_1_n_0 : STD_LOGIC;
  signal s_updated_i_2_n_0 : STD_LOGIC;
  signal updated : STD_LOGIC;
  signal v_bitPlace : STD_LOGIC;
  signal \v_bitPlace[0]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[10]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[11]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[12]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[12]_i_3_n_0\ : STD_LOGIC;
  signal \v_bitPlace[12]_i_4_n_0\ : STD_LOGIC;
  signal \v_bitPlace[12]_i_5_n_0\ : STD_LOGIC;
  signal \v_bitPlace[12]_i_6_n_0\ : STD_LOGIC;
  signal \v_bitPlace[13]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[14]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[15]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[16]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[16]_i_3_n_0\ : STD_LOGIC;
  signal \v_bitPlace[16]_i_4_n_0\ : STD_LOGIC;
  signal \v_bitPlace[16]_i_5_n_0\ : STD_LOGIC;
  signal \v_bitPlace[16]_i_6_n_0\ : STD_LOGIC;
  signal \v_bitPlace[17]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[18]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[19]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[1]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[20]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[20]_i_3_n_0\ : STD_LOGIC;
  signal \v_bitPlace[20]_i_4_n_0\ : STD_LOGIC;
  signal \v_bitPlace[20]_i_5_n_0\ : STD_LOGIC;
  signal \v_bitPlace[20]_i_6_n_0\ : STD_LOGIC;
  signal \v_bitPlace[21]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[22]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[23]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[24]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[24]_i_3_n_0\ : STD_LOGIC;
  signal \v_bitPlace[24]_i_4_n_0\ : STD_LOGIC;
  signal \v_bitPlace[24]_i_5_n_0\ : STD_LOGIC;
  signal \v_bitPlace[24]_i_6_n_0\ : STD_LOGIC;
  signal \v_bitPlace[25]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[26]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[27]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[28]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[28]_i_3_n_0\ : STD_LOGIC;
  signal \v_bitPlace[28]_i_4_n_0\ : STD_LOGIC;
  signal \v_bitPlace[28]_i_5_n_0\ : STD_LOGIC;
  signal \v_bitPlace[28]_i_6_n_0\ : STD_LOGIC;
  signal \v_bitPlace[29]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[2]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[30]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[31]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[31]_i_3_n_0\ : STD_LOGIC;
  signal \v_bitPlace[31]_i_4_n_0\ : STD_LOGIC;
  signal \v_bitPlace[31]_i_6_n_0\ : STD_LOGIC;
  signal \v_bitPlace[31]_i_7_n_0\ : STD_LOGIC;
  signal \v_bitPlace[31]_i_8_n_0\ : STD_LOGIC;
  signal \v_bitPlace[3]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[4]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[4]_i_3_n_0\ : STD_LOGIC;
  signal \v_bitPlace[4]_i_4_n_0\ : STD_LOGIC;
  signal \v_bitPlace[4]_i_5_n_0\ : STD_LOGIC;
  signal \v_bitPlace[4]_i_6_n_0\ : STD_LOGIC;
  signal \v_bitPlace[5]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[6]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[7]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[8]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace[8]_i_3_n_0\ : STD_LOGIC;
  signal \v_bitPlace[8]_i_4_n_0\ : STD_LOGIC;
  signal \v_bitPlace[8]_i_5_n_0\ : STD_LOGIC;
  signal \v_bitPlace[8]_i_6_n_0\ : STD_LOGIC;
  signal \v_bitPlace[9]_i_1_n_0\ : STD_LOGIC;
  signal \v_bitPlace_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \v_bitPlace_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \v_bitPlace_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \v_bitPlace_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \v_bitPlace_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \v_bitPlace_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \v_bitPlace_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \v_bitPlace_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \v_bitPlace_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \v_bitPlace_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \v_bitPlace_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \v_bitPlace_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \v_bitPlace_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \v_bitPlace_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \v_bitPlace_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \v_bitPlace_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \v_bitPlace_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \v_bitPlace_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \v_bitPlace_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \v_bitPlace_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \v_bitPlace_reg[31]_i_5_n_2\ : STD_LOGIC;
  signal \v_bitPlace_reg[31]_i_5_n_3\ : STD_LOGIC;
  signal \v_bitPlace_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \v_bitPlace_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \v_bitPlace_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \v_bitPlace_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \v_bitPlace_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \v_bitPlace_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \v_bitPlace_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \v_bitPlace_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[0]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[10]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[11]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[12]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[13]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[14]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[15]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[16]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[17]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[18]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[19]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[1]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[20]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[21]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[22]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[23]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[24]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[25]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[26]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[27]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[28]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[29]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[2]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[30]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[31]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[3]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[4]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[5]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[6]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[7]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[8]\ : STD_LOGIC;
  signal \v_bitPlace_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_s_count0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_s_count0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_s_updated0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_s_updated0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_s_updated0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_s_updated0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v_bitPlace_reg[31]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_v_bitPlace_reg[31]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_s_state[1]_i_7\ : label is "soft_lutpair0";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_s_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_s_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_s_state_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM of \s_dout[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_dout[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_dout[5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_dout[7]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_dout[7]_i_8\ : label is "soft_lutpair0";
begin
  din(7 downto 0) <= \^din\(7 downto 0);
\FSM_sequential_s_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0303030A0A0A030A"
    )
        port map (
      I0 => s_state(0),
      I1 => s_state(0),
      I2 => s_state(2),
      I3 => \FSM_sequential_s_state[1]_i_2_n_0\,
      I4 => s_state(1),
      I5 => \FSM_sequential_s_state[1]_i_3_n_0\,
      O => \FSM_sequential_s_state[0]_i_1_n_0\
    );
\FSM_sequential_s_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1123332311200020"
    )
        port map (
      I0 => s_state(0),
      I1 => s_state(2),
      I2 => \FSM_sequential_s_state[1]_i_2_n_0\,
      I3 => s_state(1),
      I4 => \FSM_sequential_s_state[1]_i_3_n_0\,
      I5 => s_state(1),
      O => \FSM_sequential_s_state[1]_i_1_n_0\
    );
\FSM_sequential_s_state[1]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \s_count_reg_n_0_[31]\,
      I1 => \s_count_reg_n_0_[26]\,
      I2 => \s_count_reg_n_0_[1]\,
      O => \FSM_sequential_s_state[1]_i_10_n_0\
    );
\FSM_sequential_s_state[1]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_count_reg_n_0_[16]\,
      I1 => \s_count_reg_n_0_[19]\,
      I2 => \s_count_reg_n_0_[9]\,
      I3 => \s_count_reg_n_0_[12]\,
      O => \FSM_sequential_s_state[1]_i_11_n_0\
    );
\FSM_sequential_s_state[1]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_count_reg_n_0_[20]\,
      I1 => \s_count_reg_n_0_[23]\,
      I2 => \s_count_reg_n_0_[17]\,
      I3 => \s_count_reg_n_0_[29]\,
      O => \FSM_sequential_s_state[1]_i_12_n_0\
    );
\FSM_sequential_s_state[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \s_count_reg_n_0_[15]\,
      I1 => \s_count_reg_n_0_[2]\,
      I2 => \s_count_reg_n_0_[0]\,
      I3 => \s_count_reg_n_0_[24]\,
      I4 => \s_count_reg_n_0_[30]\,
      I5 => \s_count_reg_n_0_[27]\,
      O => \FSM_sequential_s_state[1]_i_13_n_0\
    );
\FSM_sequential_s_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"010001FF"
    )
        port map (
      I0 => \FSM_sequential_s_state[1]_i_4_n_0\,
      I1 => \FSM_sequential_s_state[1]_i_5_n_0\,
      I2 => \FSM_sequential_s_state[1]_i_6_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      O => \FSM_sequential_s_state[1]_i_2_n_0\
    );
\FSM_sequential_s_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000000B"
    )
        port map (
      I0 => \s_updated0_carry__1_n_1\,
      I1 => s_state(0),
      I2 => \FSM_sequential_s_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_s_state[1]_i_5_n_0\,
      I4 => \FSM_sequential_s_state[1]_i_7_n_0\,
      O => \FSM_sequential_s_state[1]_i_3_n_0\
    );
\FSM_sequential_s_state[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \s_count_reg_n_0_[11]\,
      I1 => \s_count_reg_n_0_[4]\,
      I2 => \s_count_reg_n_0_[7]\,
      O => \FSM_sequential_s_state[1]_i_4_n_0\
    );
\FSM_sequential_s_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_sequential_s_state[1]_i_8_n_0\,
      I1 => \FSM_sequential_s_state[1]_i_9_n_0\,
      I2 => \FSM_sequential_s_state[1]_i_10_n_0\,
      I3 => \FSM_sequential_s_state[1]_i_11_n_0\,
      I4 => \FSM_sequential_s_state[1]_i_12_n_0\,
      I5 => \FSM_sequential_s_state[1]_i_13_n_0\,
      O => \FSM_sequential_s_state[1]_i_5_n_0\
    );
\FSM_sequential_s_state[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \s_count_reg_n_0_[5]\,
      I1 => \s_count_reg_n_0_[13]\,
      I2 => \s_count_reg_n_0_[8]\,
      I3 => \s_count_reg_n_0_[10]\,
      O => \FSM_sequential_s_state[1]_i_6_n_0\
    );
\FSM_sequential_s_state[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \s_count_reg_n_0_[8]\,
      I1 => \s_count_reg_n_0_[10]\,
      I2 => \s_count_reg_n_0_[5]\,
      I3 => \s_count_reg_n_0_[13]\,
      O => \FSM_sequential_s_state[1]_i_7_n_0\
    );
\FSM_sequential_s_state[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_count_reg_n_0_[22]\,
      I1 => \s_count_reg_n_0_[25]\,
      I2 => \s_count_reg_n_0_[14]\,
      I3 => \s_count_reg_n_0_[6]\,
      O => \FSM_sequential_s_state[1]_i_8_n_0\
    );
\FSM_sequential_s_state[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_count_reg_n_0_[21]\,
      I1 => \s_count_reg_n_0_[28]\,
      I2 => \s_count_reg_n_0_[18]\,
      I3 => \s_count_reg_n_0_[3]\,
      O => \FSM_sequential_s_state[1]_i_9_n_0\
    );
\FSM_sequential_s_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0C000A0A0A000A"
    )
        port map (
      I0 => s_state(2),
      I1 => s_state(0),
      I2 => s_state(2),
      I3 => \FSM_sequential_s_state[1]_i_2_n_0\,
      I4 => s_state(1),
      I5 => \FSM_sequential_s_state[1]_i_3_n_0\,
      O => \FSM_sequential_s_state[2]_i_1_n_0\
    );
\FSM_sequential_s_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_s_state[0]_i_1_n_0\,
      Q => s_state(0),
      R => '0'
    );
\FSM_sequential_s_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_s_state[1]_i_1_n_0\,
      Q => s_state(1),
      R => '0'
    );
\FSM_sequential_s_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_s_state[2]_i_1_n_0\,
      Q => s_state(2),
      R => '0'
    );
s_count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => s_count0_carry_n_0,
      CO(2) => s_count0_carry_n_1,
      CO(1) => s_count0_carry_n_2,
      CO(0) => s_count0_carry_n_3,
      CYINIT => \s_count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => s_count0_carry_n_4,
      O(2) => s_count0_carry_n_5,
      O(1) => s_count0_carry_n_6,
      O(0) => s_count0_carry_n_7,
      S(3) => s_count0_carry_i_1_n_0,
      S(2) => s_count0_carry_i_2_n_0,
      S(1) => s_count0_carry_i_3_n_0,
      S(0) => s_count0_carry_i_4_n_0
    );
\s_count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => s_count0_carry_n_0,
      CO(3) => \s_count0_carry__0_n_0\,
      CO(2) => \s_count0_carry__0_n_1\,
      CO(1) => \s_count0_carry__0_n_2\,
      CO(0) => \s_count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \s_count0_carry__0_n_4\,
      O(2) => \s_count0_carry__0_n_5\,
      O(1) => \s_count0_carry__0_n_6\,
      O(0) => \s_count0_carry__0_n_7\,
      S(3) => \s_count0_carry__0_i_1_n_0\,
      S(2) => \s_count0_carry__0_i_2_n_0\,
      S(1) => \s_count0_carry__0_i_3_n_0\,
      S(0) => \s_count0_carry__0_i_4_n_0\
    );
\s_count0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[8]\,
      O => \s_count0_carry__0_i_1_n_0\
    );
\s_count0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[7]\,
      O => \s_count0_carry__0_i_2_n_0\
    );
\s_count0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[6]\,
      O => \s_count0_carry__0_i_3_n_0\
    );
\s_count0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[5]\,
      O => \s_count0_carry__0_i_4_n_0\
    );
\s_count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_count0_carry__0_n_0\,
      CO(3) => \s_count0_carry__1_n_0\,
      CO(2) => \s_count0_carry__1_n_1\,
      CO(1) => \s_count0_carry__1_n_2\,
      CO(0) => \s_count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \s_count0_carry__1_n_4\,
      O(2) => \s_count0_carry__1_n_5\,
      O(1) => \s_count0_carry__1_n_6\,
      O(0) => \s_count0_carry__1_n_7\,
      S(3) => \s_count0_carry__1_i_1_n_0\,
      S(2) => \s_count0_carry__1_i_2_n_0\,
      S(1) => \s_count0_carry__1_i_3_n_0\,
      S(0) => \s_count0_carry__1_i_4_n_0\
    );
\s_count0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[12]\,
      O => \s_count0_carry__1_i_1_n_0\
    );
\s_count0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[11]\,
      O => \s_count0_carry__1_i_2_n_0\
    );
\s_count0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[10]\,
      O => \s_count0_carry__1_i_3_n_0\
    );
\s_count0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[9]\,
      O => \s_count0_carry__1_i_4_n_0\
    );
\s_count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_count0_carry__1_n_0\,
      CO(3) => \s_count0_carry__2_n_0\,
      CO(2) => \s_count0_carry__2_n_1\,
      CO(1) => \s_count0_carry__2_n_2\,
      CO(0) => \s_count0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \s_count0_carry__2_n_4\,
      O(2) => \s_count0_carry__2_n_5\,
      O(1) => \s_count0_carry__2_n_6\,
      O(0) => \s_count0_carry__2_n_7\,
      S(3) => \s_count0_carry__2_i_1_n_0\,
      S(2) => \s_count0_carry__2_i_2_n_0\,
      S(1) => \s_count0_carry__2_i_3_n_0\,
      S(0) => \s_count0_carry__2_i_4_n_0\
    );
\s_count0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[16]\,
      O => \s_count0_carry__2_i_1_n_0\
    );
\s_count0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[15]\,
      O => \s_count0_carry__2_i_2_n_0\
    );
\s_count0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[14]\,
      O => \s_count0_carry__2_i_3_n_0\
    );
\s_count0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[13]\,
      O => \s_count0_carry__2_i_4_n_0\
    );
\s_count0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_count0_carry__2_n_0\,
      CO(3) => \s_count0_carry__3_n_0\,
      CO(2) => \s_count0_carry__3_n_1\,
      CO(1) => \s_count0_carry__3_n_2\,
      CO(0) => \s_count0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \s_count0_carry__3_n_4\,
      O(2) => \s_count0_carry__3_n_5\,
      O(1) => \s_count0_carry__3_n_6\,
      O(0) => \s_count0_carry__3_n_7\,
      S(3) => \s_count0_carry__3_i_1_n_0\,
      S(2) => \s_count0_carry__3_i_2_n_0\,
      S(1) => \s_count0_carry__3_i_3_n_0\,
      S(0) => \s_count0_carry__3_i_4_n_0\
    );
\s_count0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[20]\,
      O => \s_count0_carry__3_i_1_n_0\
    );
\s_count0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[19]\,
      O => \s_count0_carry__3_i_2_n_0\
    );
\s_count0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[18]\,
      O => \s_count0_carry__3_i_3_n_0\
    );
\s_count0_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[17]\,
      O => \s_count0_carry__3_i_4_n_0\
    );
\s_count0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_count0_carry__3_n_0\,
      CO(3) => \s_count0_carry__4_n_0\,
      CO(2) => \s_count0_carry__4_n_1\,
      CO(1) => \s_count0_carry__4_n_2\,
      CO(0) => \s_count0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \s_count0_carry__4_n_4\,
      O(2) => \s_count0_carry__4_n_5\,
      O(1) => \s_count0_carry__4_n_6\,
      O(0) => \s_count0_carry__4_n_7\,
      S(3) => \s_count0_carry__4_i_1_n_0\,
      S(2) => \s_count0_carry__4_i_2_n_0\,
      S(1) => \s_count0_carry__4_i_3_n_0\,
      S(0) => \s_count0_carry__4_i_4_n_0\
    );
\s_count0_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[24]\,
      O => \s_count0_carry__4_i_1_n_0\
    );
\s_count0_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[23]\,
      O => \s_count0_carry__4_i_2_n_0\
    );
\s_count0_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[22]\,
      O => \s_count0_carry__4_i_3_n_0\
    );
\s_count0_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[21]\,
      O => \s_count0_carry__4_i_4_n_0\
    );
\s_count0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_count0_carry__4_n_0\,
      CO(3) => \s_count0_carry__5_n_0\,
      CO(2) => \s_count0_carry__5_n_1\,
      CO(1) => \s_count0_carry__5_n_2\,
      CO(0) => \s_count0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \s_count0_carry__5_n_4\,
      O(2) => \s_count0_carry__5_n_5\,
      O(1) => \s_count0_carry__5_n_6\,
      O(0) => \s_count0_carry__5_n_7\,
      S(3) => \s_count0_carry__5_i_1_n_0\,
      S(2) => \s_count0_carry__5_i_2_n_0\,
      S(1) => \s_count0_carry__5_i_3_n_0\,
      S(0) => \s_count0_carry__5_i_4_n_0\
    );
\s_count0_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[28]\,
      O => \s_count0_carry__5_i_1_n_0\
    );
\s_count0_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[27]\,
      O => \s_count0_carry__5_i_2_n_0\
    );
\s_count0_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[26]\,
      O => \s_count0_carry__5_i_3_n_0\
    );
\s_count0_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[25]\,
      O => \s_count0_carry__5_i_4_n_0\
    );
\s_count0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_count0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_s_count0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \s_count0_carry__6_n_2\,
      CO(0) => \s_count0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_s_count0_carry__6_O_UNCONNECTED\(3),
      O(2) => \s_count0_carry__6_n_5\,
      O(1) => \s_count0_carry__6_n_6\,
      O(0) => \s_count0_carry__6_n_7\,
      S(3) => '0',
      S(2) => \s_count0_carry__6_i_1_n_0\,
      S(1) => \s_count0_carry__6_i_2_n_0\,
      S(0) => \s_count0_carry__6_i_3_n_0\
    );
\s_count0_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[31]\,
      O => \s_count0_carry__6_i_1_n_0\
    );
\s_count0_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[30]\,
      O => \s_count0_carry__6_i_2_n_0\
    );
\s_count0_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[29]\,
      O => \s_count0_carry__6_i_3_n_0\
    );
s_count0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[4]\,
      O => s_count0_carry_i_1_n_0
    );
s_count0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[3]\,
      O => s_count0_carry_i_2_n_0
    );
s_count0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[2]\,
      O => s_count0_carry_i_3_n_0
    );
s_count0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[1]\,
      O => s_count0_carry_i_4_n_0
    );
\s_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047774744"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count_reg_n_0_[0]\,
      O => \s_count[0]_i_1_n_0\
    );
\s_count[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__1_n_6\,
      O => \s_count[10]_i_1_n_0\
    );
\s_count[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__1_n_5\,
      O => \s_count[11]_i_1_n_0\
    );
\s_count[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__1_n_4\,
      O => \s_count[12]_i_1_n_0\
    );
\s_count[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__2_n_7\,
      O => \s_count[13]_i_1_n_0\
    );
\s_count[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__2_n_6\,
      O => \s_count[14]_i_1_n_0\
    );
\s_count[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__2_n_5\,
      O => \s_count[15]_i_1_n_0\
    );
\s_count[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__2_n_4\,
      O => \s_count[16]_i_1_n_0\
    );
\s_count[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__3_n_7\,
      O => \s_count[17]_i_1_n_0\
    );
\s_count[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__3_n_6\,
      O => \s_count[18]_i_1_n_0\
    );
\s_count[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__3_n_5\,
      O => \s_count[19]_i_1_n_0\
    );
\s_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => s_count0_carry_n_7,
      O => \s_count[1]_i_1_n_0\
    );
\s_count[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__3_n_4\,
      O => \s_count[20]_i_1_n_0\
    );
\s_count[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__4_n_7\,
      O => \s_count[21]_i_1_n_0\
    );
\s_count[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__4_n_6\,
      O => \s_count[22]_i_1_n_0\
    );
\s_count[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__4_n_5\,
      O => \s_count[23]_i_1_n_0\
    );
\s_count[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__4_n_4\,
      O => \s_count[24]_i_1_n_0\
    );
\s_count[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__5_n_7\,
      O => \s_count[25]_i_1_n_0\
    );
\s_count[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__5_n_6\,
      O => \s_count[26]_i_1_n_0\
    );
\s_count[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__5_n_5\,
      O => \s_count[27]_i_1_n_0\
    );
\s_count[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__5_n_4\,
      O => \s_count[28]_i_1_n_0\
    );
\s_count[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__6_n_7\,
      O => \s_count[29]_i_1_n_0\
    );
\s_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => s_count0_carry_n_6,
      O => \s_count[2]_i_1_n_0\
    );
\s_count[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__6_n_6\,
      O => \s_count[30]_i_1_n_0\
    );
\s_count[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__6_n_5\,
      O => \s_count[31]_i_1_n_0\
    );
\s_count[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \s_count_reg_n_0_[11]\,
      I1 => \s_count_reg_n_0_[4]\,
      I2 => \s_count_reg_n_0_[7]\,
      I3 => \FSM_sequential_s_state[1]_i_5_n_0\,
      I4 => \FSM_sequential_s_state[1]_i_6_n_0\,
      O => \s_count[31]_i_2_n_0\
    );
\s_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => s_count0_carry_n_5,
      O => \s_count[3]_i_1_n_0\
    );
\s_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => s_count0_carry_n_4,
      O => \s_count[4]_i_1_n_0\
    );
\s_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__0_n_7\,
      O => \s_count[5]_i_1_n_0\
    );
\s_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__0_n_6\,
      O => \s_count[6]_i_1_n_0\
    );
\s_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__0_n_5\,
      O => \s_count[7]_i_1_n_0\
    );
\s_count[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__0_n_4\,
      O => \s_count[8]_i_1_n_0\
    );
\s_count[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777474400000000"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(1),
      I2 => \s_count[31]_i_2_n_0\,
      I3 => s_state(0),
      I4 => RsRx,
      I5 => \s_count0_carry__1_n_7\,
      O => \s_count[9]_i_1_n_0\
    );
\s_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[0]_i_1_n_0\,
      Q => \s_count_reg_n_0_[0]\,
      R => s_state(2)
    );
\s_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[10]_i_1_n_0\,
      Q => \s_count_reg_n_0_[10]\,
      R => s_state(2)
    );
\s_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[11]_i_1_n_0\,
      Q => \s_count_reg_n_0_[11]\,
      R => s_state(2)
    );
\s_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[12]_i_1_n_0\,
      Q => \s_count_reg_n_0_[12]\,
      R => s_state(2)
    );
\s_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[13]_i_1_n_0\,
      Q => \s_count_reg_n_0_[13]\,
      R => s_state(2)
    );
\s_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[14]_i_1_n_0\,
      Q => \s_count_reg_n_0_[14]\,
      R => s_state(2)
    );
\s_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[15]_i_1_n_0\,
      Q => \s_count_reg_n_0_[15]\,
      R => s_state(2)
    );
\s_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[16]_i_1_n_0\,
      Q => \s_count_reg_n_0_[16]\,
      R => s_state(2)
    );
\s_count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[17]_i_1_n_0\,
      Q => \s_count_reg_n_0_[17]\,
      R => s_state(2)
    );
\s_count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[18]_i_1_n_0\,
      Q => \s_count_reg_n_0_[18]\,
      R => s_state(2)
    );
\s_count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[19]_i_1_n_0\,
      Q => \s_count_reg_n_0_[19]\,
      R => s_state(2)
    );
\s_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[1]_i_1_n_0\,
      Q => \s_count_reg_n_0_[1]\,
      R => s_state(2)
    );
\s_count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[20]_i_1_n_0\,
      Q => \s_count_reg_n_0_[20]\,
      R => s_state(2)
    );
\s_count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[21]_i_1_n_0\,
      Q => \s_count_reg_n_0_[21]\,
      R => s_state(2)
    );
\s_count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[22]_i_1_n_0\,
      Q => \s_count_reg_n_0_[22]\,
      R => s_state(2)
    );
\s_count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[23]_i_1_n_0\,
      Q => \s_count_reg_n_0_[23]\,
      R => s_state(2)
    );
\s_count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[24]_i_1_n_0\,
      Q => \s_count_reg_n_0_[24]\,
      R => s_state(2)
    );
\s_count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[25]_i_1_n_0\,
      Q => \s_count_reg_n_0_[25]\,
      R => s_state(2)
    );
\s_count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[26]_i_1_n_0\,
      Q => \s_count_reg_n_0_[26]\,
      R => s_state(2)
    );
\s_count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[27]_i_1_n_0\,
      Q => \s_count_reg_n_0_[27]\,
      R => s_state(2)
    );
\s_count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[28]_i_1_n_0\,
      Q => \s_count_reg_n_0_[28]\,
      R => s_state(2)
    );
\s_count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[29]_i_1_n_0\,
      Q => \s_count_reg_n_0_[29]\,
      R => s_state(2)
    );
\s_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[2]_i_1_n_0\,
      Q => \s_count_reg_n_0_[2]\,
      R => s_state(2)
    );
\s_count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[30]_i_1_n_0\,
      Q => \s_count_reg_n_0_[30]\,
      R => s_state(2)
    );
\s_count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[31]_i_1_n_0\,
      Q => \s_count_reg_n_0_[31]\,
      R => s_state(2)
    );
\s_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[3]_i_1_n_0\,
      Q => \s_count_reg_n_0_[3]\,
      R => s_state(2)
    );
\s_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[4]_i_1_n_0\,
      Q => \s_count_reg_n_0_[4]\,
      R => s_state(2)
    );
\s_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[5]_i_1_n_0\,
      Q => \s_count_reg_n_0_[5]\,
      R => s_state(2)
    );
\s_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[6]_i_1_n_0\,
      Q => \s_count_reg_n_0_[6]\,
      R => s_state(2)
    );
\s_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[7]_i_1_n_0\,
      Q => \s_count_reg_n_0_[7]\,
      R => s_state(2)
    );
\s_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[8]_i_1_n_0\,
      Q => \s_count_reg_n_0_[8]\,
      R => s_state(2)
    );
\s_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_count[9]_i_1_n_0\,
      Q => \s_count_reg_n_0_[9]\,
      R => s_state(2)
    );
\s_dout[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => RsRx,
      I1 => s_state(2),
      I2 => \s_dout[6]_i_2_n_0\,
      I3 => \s_dout[1]_i_2_n_0\,
      I4 => \s_dout[7]_i_4_n_0\,
      I5 => \^din\(0),
      O => \s_dout[0]_i_1_n_0\
    );
\s_dout[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => RsRx,
      I1 => s_state(2),
      I2 => \s_dout[7]_i_2_n_0\,
      I3 => \s_dout[1]_i_2_n_0\,
      I4 => \s_dout[7]_i_4_n_0\,
      I5 => \^din\(1),
      O => \s_dout[1]_i_1_n_0\
    );
\s_dout[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[2]\,
      I1 => \v_bitPlace_reg_n_0_[1]\,
      O => \s_dout[1]_i_2_n_0\
    );
\s_dout[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => RsRx,
      I1 => s_state(2),
      I2 => \s_dout[6]_i_2_n_0\,
      I3 => \s_dout[3]_i_2_n_0\,
      I4 => \s_dout[7]_i_4_n_0\,
      I5 => \^din\(2),
      O => \s_dout[2]_i_1_n_0\
    );
\s_dout[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => RsRx,
      I1 => s_state(2),
      I2 => \s_dout[7]_i_2_n_0\,
      I3 => \s_dout[3]_i_2_n_0\,
      I4 => \s_dout[7]_i_4_n_0\,
      I5 => \^din\(3),
      O => \s_dout[3]_i_1_n_0\
    );
\s_dout[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[2]\,
      I1 => \v_bitPlace_reg_n_0_[1]\,
      O => \s_dout[3]_i_2_n_0\
    );
\s_dout[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => RsRx,
      I1 => s_state(2),
      I2 => \s_dout[6]_i_2_n_0\,
      I3 => \s_dout[5]_i_2_n_0\,
      I4 => \s_dout[7]_i_4_n_0\,
      I5 => \^din\(4),
      O => \s_dout[4]_i_1_n_0\
    );
\s_dout[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => RsRx,
      I1 => s_state(2),
      I2 => \s_dout[7]_i_2_n_0\,
      I3 => \s_dout[5]_i_2_n_0\,
      I4 => \s_dout[7]_i_4_n_0\,
      I5 => \^din\(5),
      O => \s_dout[5]_i_1_n_0\
    );
\s_dout[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[1]\,
      I1 => \v_bitPlace_reg_n_0_[2]\,
      O => \s_dout[5]_i_2_n_0\
    );
\s_dout[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => RsRx,
      I1 => s_state(2),
      I2 => \s_dout[6]_i_2_n_0\,
      I3 => \s_dout[7]_i_3_n_0\,
      I4 => \s_dout[7]_i_4_n_0\,
      I5 => \^din\(6),
      O => \s_dout[6]_i_1_n_0\
    );
\s_dout[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[0]\,
      I1 => \s_dout[7]_i_5_n_0\,
      I2 => \s_dout[7]_i_6_n_0\,
      I3 => \s_dout[7]_i_7_n_0\,
      I4 => \s_dout[7]_i_8_n_0\,
      I5 => \FSM_sequential_s_state[1]_i_5_n_0\,
      O => \s_dout[6]_i_2_n_0\
    );
\s_dout[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEF00000020"
    )
        port map (
      I0 => RsRx,
      I1 => s_state(2),
      I2 => \s_dout[7]_i_2_n_0\,
      I3 => \s_dout[7]_i_3_n_0\,
      I4 => \s_dout[7]_i_4_n_0\,
      I5 => \^din\(7),
      O => \s_dout[7]_i_1_n_0\
    );
\s_dout[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[3]\,
      I1 => \v_bitPlace_reg_n_0_[4]\,
      I2 => \v_bitPlace_reg_n_0_[30]\,
      I3 => \v_bitPlace_reg_n_0_[20]\,
      O => \s_dout[7]_i_10_n_0\
    );
\s_dout[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[8]\,
      I1 => \v_bitPlace_reg_n_0_[27]\,
      I2 => \v_bitPlace_reg_n_0_[9]\,
      I3 => \v_bitPlace_reg_n_0_[7]\,
      O => \s_dout[7]_i_11_n_0\
    );
\s_dout[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[12]\,
      I1 => \v_bitPlace_reg_n_0_[15]\,
      I2 => \v_bitPlace_reg_n_0_[16]\,
      I3 => \v_bitPlace_reg_n_0_[24]\,
      O => \s_dout[7]_i_12_n_0\
    );
\s_dout[7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[26]\,
      I1 => \v_bitPlace_reg_n_0_[23]\,
      I2 => \v_bitPlace_reg_n_0_[6]\,
      I3 => \v_bitPlace_reg_n_0_[10]\,
      O => \s_dout[7]_i_13_n_0\
    );
\s_dout[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[0]\,
      I1 => \s_dout[7]_i_5_n_0\,
      I2 => \s_dout[7]_i_6_n_0\,
      I3 => \s_dout[7]_i_7_n_0\,
      I4 => \s_dout[7]_i_8_n_0\,
      I5 => \FSM_sequential_s_state[1]_i_5_n_0\,
      O => \s_dout[7]_i_2_n_0\
    );
\s_dout[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[2]\,
      I1 => \v_bitPlace_reg_n_0_[1]\,
      O => \s_dout[7]_i_3_n_0\
    );
\s_dout[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_state(0),
      I1 => s_state(1),
      O => \s_dout[7]_i_4_n_0\
    );
\s_dout[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \s_count_reg_n_0_[4]\,
      I1 => \v_bitPlace_reg_n_0_[13]\,
      I2 => \v_bitPlace_reg_n_0_[31]\,
      I3 => \v_bitPlace_reg_n_0_[17]\,
      I4 => \s_dout[7]_i_9_n_0\,
      I5 => \s_dout[7]_i_10_n_0\,
      O => \s_dout[7]_i_5_n_0\
    );
\s_dout[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[25]\,
      I1 => \v_bitPlace_reg_n_0_[22]\,
      I2 => \v_bitPlace_reg_n_0_[28]\,
      I3 => \v_bitPlace_reg_n_0_[29]\,
      I4 => \s_dout[7]_i_11_n_0\,
      O => \s_dout[7]_i_6_n_0\
    );
\s_dout[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[19]\,
      I1 => \v_bitPlace_reg_n_0_[21]\,
      I2 => \s_count_reg_n_0_[7]\,
      I3 => \v_bitPlace_reg_n_0_[11]\,
      I4 => \s_dout[7]_i_12_n_0\,
      O => \s_dout[7]_i_7_n_0\
    );
\s_dout[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \s_count_reg_n_0_[13]\,
      I1 => \s_count_reg_n_0_[5]\,
      I2 => \s_count_reg_n_0_[10]\,
      I3 => \s_count_reg_n_0_[8]\,
      I4 => \s_dout[7]_i_13_n_0\,
      O => \s_dout[7]_i_8_n_0\
    );
\s_dout[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[5]\,
      I1 => \s_count_reg_n_0_[11]\,
      I2 => \v_bitPlace_reg_n_0_[14]\,
      I3 => \v_bitPlace_reg_n_0_[18]\,
      O => \s_dout[7]_i_9_n_0\
    );
\s_dout_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_dout[0]_i_1_n_0\,
      Q => \^din\(0),
      R => '0'
    );
\s_dout_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_dout[1]_i_1_n_0\,
      Q => \^din\(1),
      R => '0'
    );
\s_dout_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_dout[2]_i_1_n_0\,
      Q => \^din\(2),
      R => '0'
    );
\s_dout_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_dout[3]_i_1_n_0\,
      Q => \^din\(3),
      R => '0'
    );
\s_dout_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_dout[4]_i_1_n_0\,
      Q => \^din\(4),
      R => '0'
    );
\s_dout_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_dout[5]_i_1_n_0\,
      Q => \^din\(5),
      R => '0'
    );
\s_dout_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_dout[6]_i_1_n_0\,
      Q => \^din\(6),
      R => '0'
    );
\s_dout_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_dout[7]_i_1_n_0\,
      Q => \^din\(7),
      R => '0'
    );
s_in_fifo_wr_en_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => updated,
      I1 => wr_en,
      O => s_in_fifo_wr_en0
    );
s_updated0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => s_updated0_carry_n_0,
      CO(2) => s_updated0_carry_n_1,
      CO(1) => s_updated0_carry_n_2,
      CO(0) => s_updated0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_s_updated0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => s_updated0_carry_i_1_n_0,
      S(2) => s_updated0_carry_i_2_n_0,
      S(1) => s_updated0_carry_i_3_n_0,
      S(0) => s_updated0_carry_i_4_n_0
    );
\s_updated0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => s_updated0_carry_n_0,
      CO(3) => \s_updated0_carry__0_n_0\,
      CO(2) => \s_updated0_carry__0_n_1\,
      CO(1) => \s_updated0_carry__0_n_2\,
      CO(0) => \s_updated0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_s_updated0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \s_updated0_carry__0_i_1_n_0\,
      S(2) => \s_updated0_carry__0_i_2_n_0\,
      S(1) => \s_updated0_carry__0_i_3_n_0\,
      S(0) => \s_updated0_carry__0_i_4_n_0\
    );
\s_updated0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_updated1(22),
      I1 => s_updated1(23),
      I2 => s_updated1(21),
      O => \s_updated0_carry__0_i_1_n_0\
    );
\s_updated0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_updated1(19),
      I1 => s_updated1(20),
      I2 => s_updated1(18),
      O => \s_updated0_carry__0_i_2_n_0\
    );
\s_updated0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_updated1(16),
      I1 => s_updated1(17),
      I2 => s_updated1(15),
      O => \s_updated0_carry__0_i_3_n_0\
    );
\s_updated0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_updated1(13),
      I1 => s_updated1(14),
      I2 => s_updated1(12),
      O => \s_updated0_carry__0_i_4_n_0\
    );
\s_updated0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_updated0_carry__0_n_0\,
      CO(3) => \NLW_s_updated0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \s_updated0_carry__1_n_1\,
      CO(1) => \s_updated0_carry__1_n_2\,
      CO(0) => \s_updated0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_s_updated0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \s_updated0_carry__1_i_1_n_0\,
      S(1) => \s_updated0_carry__1_i_2_n_0\,
      S(0) => \s_updated0_carry__1_i_3_n_0\
    );
\s_updated0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_updated1(31),
      I1 => s_updated1(30),
      O => \s_updated0_carry__1_i_1_n_0\
    );
\s_updated0_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_updated1(28),
      I1 => s_updated1(29),
      I2 => s_updated1(27),
      O => \s_updated0_carry__1_i_2_n_0\
    );
\s_updated0_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_updated1(25),
      I1 => s_updated1(26),
      I2 => s_updated1(24),
      O => \s_updated0_carry__1_i_3_n_0\
    );
s_updated0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_updated1(10),
      I1 => s_updated1(11),
      I2 => s_updated1(9),
      O => s_updated0_carry_i_1_n_0
    );
s_updated0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_updated1(7),
      I1 => s_updated1(8),
      I2 => s_updated1(6),
      O => s_updated0_carry_i_2_n_0
    );
s_updated0_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => s_updated1(4),
      I1 => s_updated1(3),
      I2 => s_updated1(5),
      O => s_updated0_carry_i_3_n_0
    );
s_updated0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => s_updated1(1),
      I1 => \v_bitPlace_reg_n_0_[0]\,
      I2 => s_updated1(2),
      O => s_updated0_carry_i_4_n_0
    );
s_updated_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40004000"
    )
        port map (
      I0 => s_state(2),
      I1 => s_updated_i_2_n_0,
      I2 => s_state(0),
      I3 => s_state(1),
      I4 => wr_en,
      I5 => updated,
      O => s_updated_i_1_n_0
    );
s_updated_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \s_updated0_carry__1_n_1\,
      I1 => \FSM_sequential_s_state[1]_i_7_n_0\,
      I2 => \FSM_sequential_s_state[1]_i_5_n_0\,
      I3 => \s_count_reg_n_0_[7]\,
      I4 => \s_count_reg_n_0_[4]\,
      I5 => \s_count_reg_n_0_[11]\,
      O => s_updated_i_2_n_0
    );
s_updated_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => s_updated_i_1_n_0,
      Q => updated,
      R => '0'
    );
\v_bitPlace[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => \v_bitPlace_reg_n_0_[0]\,
      O => \v_bitPlace[0]_i_1_n_0\
    );
\v_bitPlace[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(10),
      O => \v_bitPlace[10]_i_1_n_0\
    );
\v_bitPlace[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(11),
      O => \v_bitPlace[11]_i_1_n_0\
    );
\v_bitPlace[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(12),
      O => \v_bitPlace[12]_i_1_n_0\
    );
\v_bitPlace[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[12]\,
      O => \v_bitPlace[12]_i_3_n_0\
    );
\v_bitPlace[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[11]\,
      O => \v_bitPlace[12]_i_4_n_0\
    );
\v_bitPlace[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[10]\,
      O => \v_bitPlace[12]_i_5_n_0\
    );
\v_bitPlace[12]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[9]\,
      O => \v_bitPlace[12]_i_6_n_0\
    );
\v_bitPlace[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(13),
      O => \v_bitPlace[13]_i_1_n_0\
    );
\v_bitPlace[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(14),
      O => \v_bitPlace[14]_i_1_n_0\
    );
\v_bitPlace[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(15),
      O => \v_bitPlace[15]_i_1_n_0\
    );
\v_bitPlace[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(16),
      O => \v_bitPlace[16]_i_1_n_0\
    );
\v_bitPlace[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[16]\,
      O => \v_bitPlace[16]_i_3_n_0\
    );
\v_bitPlace[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[15]\,
      O => \v_bitPlace[16]_i_4_n_0\
    );
\v_bitPlace[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[14]\,
      O => \v_bitPlace[16]_i_5_n_0\
    );
\v_bitPlace[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[13]\,
      O => \v_bitPlace[16]_i_6_n_0\
    );
\v_bitPlace[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(17),
      O => \v_bitPlace[17]_i_1_n_0\
    );
\v_bitPlace[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(18),
      O => \v_bitPlace[18]_i_1_n_0\
    );
\v_bitPlace[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(19),
      O => \v_bitPlace[19]_i_1_n_0\
    );
\v_bitPlace[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(1),
      O => \v_bitPlace[1]_i_1_n_0\
    );
\v_bitPlace[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(20),
      O => \v_bitPlace[20]_i_1_n_0\
    );
\v_bitPlace[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[20]\,
      O => \v_bitPlace[20]_i_3_n_0\
    );
\v_bitPlace[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[19]\,
      O => \v_bitPlace[20]_i_4_n_0\
    );
\v_bitPlace[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[18]\,
      O => \v_bitPlace[20]_i_5_n_0\
    );
\v_bitPlace[20]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[17]\,
      O => \v_bitPlace[20]_i_6_n_0\
    );
\v_bitPlace[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(21),
      O => \v_bitPlace[21]_i_1_n_0\
    );
\v_bitPlace[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(22),
      O => \v_bitPlace[22]_i_1_n_0\
    );
\v_bitPlace[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(23),
      O => \v_bitPlace[23]_i_1_n_0\
    );
\v_bitPlace[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(24),
      O => \v_bitPlace[24]_i_1_n_0\
    );
\v_bitPlace[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[24]\,
      O => \v_bitPlace[24]_i_3_n_0\
    );
\v_bitPlace[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[23]\,
      O => \v_bitPlace[24]_i_4_n_0\
    );
\v_bitPlace[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[22]\,
      O => \v_bitPlace[24]_i_5_n_0\
    );
\v_bitPlace[24]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[21]\,
      O => \v_bitPlace[24]_i_6_n_0\
    );
\v_bitPlace[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(25),
      O => \v_bitPlace[25]_i_1_n_0\
    );
\v_bitPlace[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(26),
      O => \v_bitPlace[26]_i_1_n_0\
    );
\v_bitPlace[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(27),
      O => \v_bitPlace[27]_i_1_n_0\
    );
\v_bitPlace[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(28),
      O => \v_bitPlace[28]_i_1_n_0\
    );
\v_bitPlace[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[28]\,
      O => \v_bitPlace[28]_i_3_n_0\
    );
\v_bitPlace[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[27]\,
      O => \v_bitPlace[28]_i_4_n_0\
    );
\v_bitPlace[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[26]\,
      O => \v_bitPlace[28]_i_5_n_0\
    );
\v_bitPlace[28]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[25]\,
      O => \v_bitPlace[28]_i_6_n_0\
    );
\v_bitPlace[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(29),
      O => \v_bitPlace[29]_i_1_n_0\
    );
\v_bitPlace[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(2),
      O => \v_bitPlace[2]_i_1_n_0\
    );
\v_bitPlace[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(30),
      O => \v_bitPlace[30]_i_1_n_0\
    );
\v_bitPlace[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => s_state(1),
      I1 => s_state(0),
      I2 => s_state(2),
      O => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"220C"
    )
        port map (
      I0 => \v_bitPlace[31]_i_4_n_0\,
      I1 => s_state(2),
      I2 => s_state(0),
      I3 => s_state(1),
      O => v_bitPlace
    );
\v_bitPlace[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(31),
      O => \v_bitPlace[31]_i_3_n_0\
    );
\v_bitPlace[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \s_count_reg_n_0_[11]\,
      I1 => \s_count_reg_n_0_[4]\,
      I2 => \s_count_reg_n_0_[7]\,
      I3 => \FSM_sequential_s_state[1]_i_5_n_0\,
      I4 => \FSM_sequential_s_state[1]_i_7_n_0\,
      O => \v_bitPlace[31]_i_4_n_0\
    );
\v_bitPlace[31]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[31]\,
      O => \v_bitPlace[31]_i_6_n_0\
    );
\v_bitPlace[31]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[30]\,
      O => \v_bitPlace[31]_i_7_n_0\
    );
\v_bitPlace[31]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[29]\,
      O => \v_bitPlace[31]_i_8_n_0\
    );
\v_bitPlace[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(3),
      O => \v_bitPlace[3]_i_1_n_0\
    );
\v_bitPlace[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(4),
      O => \v_bitPlace[4]_i_1_n_0\
    );
\v_bitPlace[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[4]\,
      O => \v_bitPlace[4]_i_3_n_0\
    );
\v_bitPlace[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[3]\,
      O => \v_bitPlace[4]_i_4_n_0\
    );
\v_bitPlace[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[2]\,
      O => \v_bitPlace[4]_i_5_n_0\
    );
\v_bitPlace[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[1]\,
      O => \v_bitPlace[4]_i_6_n_0\
    );
\v_bitPlace[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(5),
      O => \v_bitPlace[5]_i_1_n_0\
    );
\v_bitPlace[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(6),
      O => \v_bitPlace[6]_i_1_n_0\
    );
\v_bitPlace[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(7),
      O => \v_bitPlace[7]_i_1_n_0\
    );
\v_bitPlace[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(8),
      O => \v_bitPlace[8]_i_1_n_0\
    );
\v_bitPlace[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[8]\,
      O => \v_bitPlace[8]_i_3_n_0\
    );
\v_bitPlace[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[7]\,
      O => \v_bitPlace[8]_i_4_n_0\
    );
\v_bitPlace[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[6]\,
      O => \v_bitPlace[8]_i_5_n_0\
    );
\v_bitPlace[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_bitPlace_reg_n_0_[5]\,
      O => \v_bitPlace[8]_i_6_n_0\
    );
\v_bitPlace[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_state(0),
      I1 => \s_updated0_carry__1_n_1\,
      I2 => s_updated1(9),
      O => \v_bitPlace[9]_i_1_n_0\
    );
\v_bitPlace_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[0]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[0]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[10]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[10]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[11]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[11]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[12]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[12]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_bitPlace_reg[8]_i_2_n_0\,
      CO(3) => \v_bitPlace_reg[12]_i_2_n_0\,
      CO(2) => \v_bitPlace_reg[12]_i_2_n_1\,
      CO(1) => \v_bitPlace_reg[12]_i_2_n_2\,
      CO(0) => \v_bitPlace_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_updated1(12 downto 9),
      S(3) => \v_bitPlace[12]_i_3_n_0\,
      S(2) => \v_bitPlace[12]_i_4_n_0\,
      S(1) => \v_bitPlace[12]_i_5_n_0\,
      S(0) => \v_bitPlace[12]_i_6_n_0\
    );
\v_bitPlace_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[13]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[13]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[14]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[14]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[15]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[15]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[16]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[16]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_bitPlace_reg[12]_i_2_n_0\,
      CO(3) => \v_bitPlace_reg[16]_i_2_n_0\,
      CO(2) => \v_bitPlace_reg[16]_i_2_n_1\,
      CO(1) => \v_bitPlace_reg[16]_i_2_n_2\,
      CO(0) => \v_bitPlace_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_updated1(16 downto 13),
      S(3) => \v_bitPlace[16]_i_3_n_0\,
      S(2) => \v_bitPlace[16]_i_4_n_0\,
      S(1) => \v_bitPlace[16]_i_5_n_0\,
      S(0) => \v_bitPlace[16]_i_6_n_0\
    );
\v_bitPlace_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[17]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[17]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[18]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[18]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[19]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[19]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[1]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[1]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[20]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[20]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_bitPlace_reg[16]_i_2_n_0\,
      CO(3) => \v_bitPlace_reg[20]_i_2_n_0\,
      CO(2) => \v_bitPlace_reg[20]_i_2_n_1\,
      CO(1) => \v_bitPlace_reg[20]_i_2_n_2\,
      CO(0) => \v_bitPlace_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_updated1(20 downto 17),
      S(3) => \v_bitPlace[20]_i_3_n_0\,
      S(2) => \v_bitPlace[20]_i_4_n_0\,
      S(1) => \v_bitPlace[20]_i_5_n_0\,
      S(0) => \v_bitPlace[20]_i_6_n_0\
    );
\v_bitPlace_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[21]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[21]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[22]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[22]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[23]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[23]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[24]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[24]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_bitPlace_reg[20]_i_2_n_0\,
      CO(3) => \v_bitPlace_reg[24]_i_2_n_0\,
      CO(2) => \v_bitPlace_reg[24]_i_2_n_1\,
      CO(1) => \v_bitPlace_reg[24]_i_2_n_2\,
      CO(0) => \v_bitPlace_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_updated1(24 downto 21),
      S(3) => \v_bitPlace[24]_i_3_n_0\,
      S(2) => \v_bitPlace[24]_i_4_n_0\,
      S(1) => \v_bitPlace[24]_i_5_n_0\,
      S(0) => \v_bitPlace[24]_i_6_n_0\
    );
\v_bitPlace_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[25]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[25]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[26]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[26]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[27]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[27]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[28]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[28]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_bitPlace_reg[24]_i_2_n_0\,
      CO(3) => \v_bitPlace_reg[28]_i_2_n_0\,
      CO(2) => \v_bitPlace_reg[28]_i_2_n_1\,
      CO(1) => \v_bitPlace_reg[28]_i_2_n_2\,
      CO(0) => \v_bitPlace_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_updated1(28 downto 25),
      S(3) => \v_bitPlace[28]_i_3_n_0\,
      S(2) => \v_bitPlace[28]_i_4_n_0\,
      S(1) => \v_bitPlace[28]_i_5_n_0\,
      S(0) => \v_bitPlace[28]_i_6_n_0\
    );
\v_bitPlace_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[29]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[29]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[2]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[2]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[30]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[30]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[31]_i_3_n_0\,
      Q => \v_bitPlace_reg_n_0_[31]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[31]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_bitPlace_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_v_bitPlace_reg[31]_i_5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \v_bitPlace_reg[31]_i_5_n_2\,
      CO(0) => \v_bitPlace_reg[31]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_v_bitPlace_reg[31]_i_5_O_UNCONNECTED\(3),
      O(2 downto 0) => s_updated1(31 downto 29),
      S(3) => '0',
      S(2) => \v_bitPlace[31]_i_6_n_0\,
      S(1) => \v_bitPlace[31]_i_7_n_0\,
      S(0) => \v_bitPlace[31]_i_8_n_0\
    );
\v_bitPlace_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[3]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[3]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[4]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[4]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \v_bitPlace_reg[4]_i_2_n_0\,
      CO(2) => \v_bitPlace_reg[4]_i_2_n_1\,
      CO(1) => \v_bitPlace_reg[4]_i_2_n_2\,
      CO(0) => \v_bitPlace_reg[4]_i_2_n_3\,
      CYINIT => \v_bitPlace_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_updated1(4 downto 1),
      S(3) => \v_bitPlace[4]_i_3_n_0\,
      S(2) => \v_bitPlace[4]_i_4_n_0\,
      S(1) => \v_bitPlace[4]_i_5_n_0\,
      S(0) => \v_bitPlace[4]_i_6_n_0\
    );
\v_bitPlace_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[5]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[5]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[6]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[6]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[7]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[7]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[8]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[8]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
\v_bitPlace_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_bitPlace_reg[4]_i_2_n_0\,
      CO(3) => \v_bitPlace_reg[8]_i_2_n_0\,
      CO(2) => \v_bitPlace_reg[8]_i_2_n_1\,
      CO(1) => \v_bitPlace_reg[8]_i_2_n_2\,
      CO(0) => \v_bitPlace_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => s_updated1(8 downto 5),
      S(3) => \v_bitPlace[8]_i_3_n_0\,
      S(2) => \v_bitPlace[8]_i_4_n_0\,
      S(1) => \v_bitPlace[8]_i_5_n_0\,
      S(0) => \v_bitPlace[8]_i_6_n_0\
    );
\v_bitPlace_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => v_bitPlace,
      D => \v_bitPlace[9]_i_1_n_0\,
      Q => \v_bitPlace_reg_n_0_[9]\,
      R => \v_bitPlace[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_UART_with_2x4k_FIFOs_0_0_transmit is
  port (
    RsTx : out STD_LOGIC;
    \s_bitPlace_reg[0]_0\ : out STD_LOGIC;
    \s_bitPlace_reg[4]_0\ : out STD_LOGIC;
    s_tx_state_reg : out STD_LOGIC;
    s_tx_send_reg : out STD_LOGIC;
    clk : in STD_LOGIC;
    \s_bitPlace_reg[1]_0\ : in STD_LOGIC;
    \s_bitPlace_reg[1]_1\ : in STD_LOGIC;
    s_out_fifo_rd_en : in STD_LOGIC;
    send_delay : in STD_LOGIC;
    empty : in STD_LOGIC;
    s_tx_state : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_UART_with_2x4k_FIFOs_0_0_transmit : entity is "transmit";
end uart_UART_with_2x4k_FIFOs_0_0_transmit;

architecture STRUCTURE of uart_UART_with_2x4k_FIFOs_0_0_transmit is
  signal \^rstx\ : STD_LOGIC;
  signal RsTx_i_1_n_0 : STD_LOGIC;
  signal RsTx_i_2_n_0 : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal ready : STD_LOGIC;
  signal \s_bitPlace[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[10]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[12]_i_3_n_0\ : STD_LOGIC;
  signal \s_bitPlace[12]_i_4_n_0\ : STD_LOGIC;
  signal \s_bitPlace[12]_i_5_n_0\ : STD_LOGIC;
  signal \s_bitPlace[12]_i_6_n_0\ : STD_LOGIC;
  signal \s_bitPlace[13]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[14]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[16]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[16]_i_3_n_0\ : STD_LOGIC;
  signal \s_bitPlace[16]_i_4_n_0\ : STD_LOGIC;
  signal \s_bitPlace[16]_i_5_n_0\ : STD_LOGIC;
  signal \s_bitPlace[16]_i_6_n_0\ : STD_LOGIC;
  signal \s_bitPlace[17]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[18]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[19]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[20]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[20]_i_3_n_0\ : STD_LOGIC;
  signal \s_bitPlace[20]_i_4_n_0\ : STD_LOGIC;
  signal \s_bitPlace[20]_i_5_n_0\ : STD_LOGIC;
  signal \s_bitPlace[20]_i_6_n_0\ : STD_LOGIC;
  signal \s_bitPlace[21]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[22]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[23]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[24]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[24]_i_3_n_0\ : STD_LOGIC;
  signal \s_bitPlace[24]_i_4_n_0\ : STD_LOGIC;
  signal \s_bitPlace[24]_i_5_n_0\ : STD_LOGIC;
  signal \s_bitPlace[24]_i_6_n_0\ : STD_LOGIC;
  signal \s_bitPlace[25]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[26]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[27]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[28]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[28]_i_3_n_0\ : STD_LOGIC;
  signal \s_bitPlace[28]_i_4_n_0\ : STD_LOGIC;
  signal \s_bitPlace[28]_i_5_n_0\ : STD_LOGIC;
  signal \s_bitPlace[28]_i_6_n_0\ : STD_LOGIC;
  signal \s_bitPlace[29]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[30]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[31]_i_11_n_0\ : STD_LOGIC;
  signal \s_bitPlace[31]_i_12_n_0\ : STD_LOGIC;
  signal \s_bitPlace[31]_i_13_n_0\ : STD_LOGIC;
  signal \s_bitPlace[31]_i_14_n_0\ : STD_LOGIC;
  signal \s_bitPlace[31]_i_15_n_0\ : STD_LOGIC;
  signal \s_bitPlace[31]_i_16_n_0\ : STD_LOGIC;
  signal \s_bitPlace[31]_i_17_n_0\ : STD_LOGIC;
  signal \s_bitPlace[31]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[31]_i_2_n_0\ : STD_LOGIC;
  signal \s_bitPlace[31]_i_3_n_0\ : STD_LOGIC;
  signal \s_bitPlace[31]_i_4_n_0\ : STD_LOGIC;
  signal \s_bitPlace[31]_i_5_n_0\ : STD_LOGIC;
  signal \s_bitPlace[31]_i_6_n_0\ : STD_LOGIC;
  signal \s_bitPlace[31]_i_7_n_0\ : STD_LOGIC;
  signal \s_bitPlace[31]_i_8_n_0\ : STD_LOGIC;
  signal \s_bitPlace[31]_i_9_n_0\ : STD_LOGIC;
  signal \s_bitPlace[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[4]_i_3_n_0\ : STD_LOGIC;
  signal \s_bitPlace[4]_i_4_n_0\ : STD_LOGIC;
  signal \s_bitPlace[4]_i_5_n_0\ : STD_LOGIC;
  signal \s_bitPlace[4]_i_6_n_0\ : STD_LOGIC;
  signal \s_bitPlace[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_bitPlace[8]_i_3_n_0\ : STD_LOGIC;
  signal \s_bitPlace[8]_i_4_n_0\ : STD_LOGIC;
  signal \s_bitPlace[8]_i_5_n_0\ : STD_LOGIC;
  signal \s_bitPlace[8]_i_6_n_0\ : STD_LOGIC;
  signal \s_bitPlace[9]_i_1_n_0\ : STD_LOGIC;
  signal \^s_bitplace_reg[0]_0\ : STD_LOGIC;
  signal \s_bitPlace_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \s_bitPlace_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \s_bitPlace_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \s_bitPlace_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \s_bitPlace_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \s_bitPlace_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \s_bitPlace_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \s_bitPlace_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \s_bitPlace_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \s_bitPlace_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \s_bitPlace_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \s_bitPlace_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \s_bitPlace_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \s_bitPlace_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \s_bitPlace_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \s_bitPlace_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \s_bitPlace_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \s_bitPlace_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \s_bitPlace_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \s_bitPlace_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \s_bitPlace_reg[20]_i_2_n_4\ : STD_LOGIC;
  signal \s_bitPlace_reg[20]_i_2_n_5\ : STD_LOGIC;
  signal \s_bitPlace_reg[20]_i_2_n_6\ : STD_LOGIC;
  signal \s_bitPlace_reg[20]_i_2_n_7\ : STD_LOGIC;
  signal \s_bitPlace_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \s_bitPlace_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \s_bitPlace_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \s_bitPlace_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \s_bitPlace_reg[24]_i_2_n_4\ : STD_LOGIC;
  signal \s_bitPlace_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \s_bitPlace_reg[24]_i_2_n_6\ : STD_LOGIC;
  signal \s_bitPlace_reg[24]_i_2_n_7\ : STD_LOGIC;
  signal \s_bitPlace_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \s_bitPlace_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \s_bitPlace_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \s_bitPlace_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \s_bitPlace_reg[28]_i_2_n_4\ : STD_LOGIC;
  signal \s_bitPlace_reg[28]_i_2_n_5\ : STD_LOGIC;
  signal \s_bitPlace_reg[28]_i_2_n_6\ : STD_LOGIC;
  signal \s_bitPlace_reg[28]_i_2_n_7\ : STD_LOGIC;
  signal \s_bitPlace_reg[31]_i_10_n_2\ : STD_LOGIC;
  signal \s_bitPlace_reg[31]_i_10_n_3\ : STD_LOGIC;
  signal \s_bitPlace_reg[31]_i_10_n_5\ : STD_LOGIC;
  signal \s_bitPlace_reg[31]_i_10_n_6\ : STD_LOGIC;
  signal \s_bitPlace_reg[31]_i_10_n_7\ : STD_LOGIC;
  signal \^s_bitplace_reg[4]_0\ : STD_LOGIC;
  signal \s_bitPlace_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \s_bitPlace_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \s_bitPlace_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \s_bitPlace_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \s_bitPlace_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \s_bitPlace_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \s_bitPlace_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \s_bitPlace_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \s_bitPlace_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \s_bitPlace_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \s_bitPlace_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \s_bitPlace_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \s_bitPlace_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \s_bitPlace_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \s_bitPlace_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \s_bitPlace_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[10]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[11]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[12]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[13]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[14]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[15]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[16]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[17]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[18]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[19]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[20]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[21]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[22]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[23]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[24]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[25]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[26]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[27]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[28]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[29]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[30]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[31]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[6]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[7]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[8]\ : STD_LOGIC;
  signal \s_bitPlace_reg_n_0_[9]\ : STD_LOGIC;
  signal s_count : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal s_count01_out : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__0_n_4\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__0_n_5\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__0_n_6\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__0_n_7\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__1_n_4\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__1_n_5\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__1_n_6\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__1_n_7\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__2_n_0\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__2_n_1\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__2_n_2\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__2_n_3\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__2_n_4\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__2_n_5\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__2_n_6\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__2_n_7\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__3_n_0\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__3_n_1\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__3_n_2\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__3_n_3\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__3_n_4\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__3_n_5\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__3_n_6\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__3_n_7\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__4_n_0\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__4_n_1\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__4_n_2\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__4_n_3\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__4_n_4\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__4_n_5\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__4_n_6\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__4_n_7\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__5_n_0\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__5_n_1\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__5_n_2\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__5_n_3\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__5_n_4\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__5_n_5\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__5_n_6\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__5_n_7\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__6_n_2\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__6_n_3\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__6_n_5\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__6_n_6\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry__6_n_7\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry_n_4\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry_n_5\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry_n_6\ : STD_LOGIC;
  signal \s_count0_inferred__1/i__carry_n_7\ : STD_LOGIC;
  signal \s_count[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_count[31]_i_10_n_0\ : STD_LOGIC;
  signal \s_count[31]_i_1__0_n_0\ : STD_LOGIC;
  signal \s_count[31]_i_2__0_n_0\ : STD_LOGIC;
  signal \s_count[31]_i_4_n_0\ : STD_LOGIC;
  signal \s_count[31]_i_5_n_0\ : STD_LOGIC;
  signal \s_count[31]_i_6_n_0\ : STD_LOGIC;
  signal \s_count[31]_i_7_n_0\ : STD_LOGIC;
  signal \s_count[31]_i_8_n_0\ : STD_LOGIC;
  signal \s_count[31]_i_9_n_0\ : STD_LOGIC;
  signal \s_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[10]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[11]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[12]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[13]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[14]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[15]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[16]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[17]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[18]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[19]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[20]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[21]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[22]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[23]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[24]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[25]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[26]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[27]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[28]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[29]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[30]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[31]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[8]\ : STD_LOGIC;
  signal \s_count_reg_n_0_[9]\ : STD_LOGIC;
  signal s_ready_i_1_n_0 : STD_LOGIC;
  signal s_ready_i_2_n_0 : STD_LOGIC;
  signal s_ready_i_3_n_0 : STD_LOGIC;
  signal s_ready_i_4_n_0 : STD_LOGIC;
  signal s_ready_i_5_n_0 : STD_LOGIC;
  signal s_ready_i_6_n_0 : STD_LOGIC;
  signal s_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \s_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \s_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \s_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \s_state[0]_i_7_n_0\ : STD_LOGIC;
  signal \s_state[0]_i_8_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_10_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_11_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_12_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_13_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_14_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_15_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_16_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_17_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \s_state[1]_i_9_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_10_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_11_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_12_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_13_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_14_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_15_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_16_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_17_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_18_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_19_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_20_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_21_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_22_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_23_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_24_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_25_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_26_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_27_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_28_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_29_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_30_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_31_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_32_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \s_state[2]_i_9_n_0\ : STD_LOGIC;
  signal \NLW_s_bitPlace_reg[31]_i_10_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_s_bitPlace_reg[31]_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_s_count0_inferred__1/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_s_count0_inferred__1/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of RsTx_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of RsTx_i_2 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s_bitPlace[31]_i_5\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s_count[31]_i_10\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of s_ready_i_4 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of s_ready_i_6 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_state[0]_i_6\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s_state[0]_i_7\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s_state[0]_i_8\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_state[1]_i_10\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s_state[1]_i_11\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s_state[1]_i_12\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_state[1]_i_14\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s_state[1]_i_15\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_state[1]_i_16\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s_state[1]_i_8\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s_state[2]_i_10\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_state[2]_i_11\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s_state[2]_i_12\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_state[2]_i_14\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_state[2]_i_16\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_state[2]_i_17\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s_state[2]_i_19\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_state[2]_i_24\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s_state[2]_i_26\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s_state[2]_i_27\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s_state[2]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s_state[2]_i_31\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s_state[2]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s_state[2]_i_7\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of s_tx_send_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of s_tx_state_i_1 : label is "soft_lutpair7";
begin
  RsTx <= \^rstx\;
  \s_bitPlace_reg[0]_0\ <= \^s_bitplace_reg[0]_0\;
  \s_bitPlace_reg[4]_0\ <= \^s_bitplace_reg[4]_0\;
RsTx_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEB03EB"
    )
        port map (
      I0 => RsTx_i_2_n_0,
      I1 => s_state(0),
      I2 => s_state(1),
      I3 => s_state(2),
      I4 => \^rstx\,
      O => RsTx_i_1_n_0
    );
RsTx_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A0C"
    )
        port map (
      I0 => \s_bitPlace_reg[1]_0\,
      I1 => \s_bitPlace_reg[1]_1\,
      I2 => \s_bitPlace_reg_n_0_[3]\,
      I3 => \s_bitPlace_reg_n_0_[2]\,
      I4 => \s_state[2]_i_4_n_0\,
      O => RsTx_i_2_n_0
    );
RsTx_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => RsTx_i_1_n_0,
      Q => \^rstx\,
      R => '0'
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[8]\,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[7]\,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[6]\,
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[5]\,
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[12]\,
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[11]\,
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[10]\,
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[9]\,
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[16]\,
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[15]\,
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[14]\,
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[13]\,
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[20]\,
      O => \i__carry__3_i_1_n_0\
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[19]\,
      O => \i__carry__3_i_2_n_0\
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[18]\,
      O => \i__carry__3_i_3_n_0\
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[17]\,
      O => \i__carry__3_i_4_n_0\
    );
\i__carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[24]\,
      O => \i__carry__4_i_1_n_0\
    );
\i__carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[23]\,
      O => \i__carry__4_i_2_n_0\
    );
\i__carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[22]\,
      O => \i__carry__4_i_3_n_0\
    );
\i__carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[21]\,
      O => \i__carry__4_i_4_n_0\
    );
\i__carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[28]\,
      O => \i__carry__5_i_1_n_0\
    );
\i__carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[27]\,
      O => \i__carry__5_i_2_n_0\
    );
\i__carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[26]\,
      O => \i__carry__5_i_3_n_0\
    );
\i__carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[25]\,
      O => \i__carry__5_i_4_n_0\
    );
\i__carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[31]\,
      O => \i__carry__6_i_1_n_0\
    );
\i__carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[30]\,
      O => \i__carry__6_i_2_n_0\
    );
\i__carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[29]\,
      O => \i__carry__6_i_3_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[4]\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[3]\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[2]\,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_count_reg_n_0_[1]\,
      O => \i__carry_i_4_n_0\
    );
\s_bitPlace[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \^s_bitplace_reg[0]_0\,
      O => \s_bitPlace[0]_i_1_n_0\
    );
\s_bitPlace[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[12]_i_2_n_6\,
      O => \s_bitPlace[10]_i_1_n_0\
    );
\s_bitPlace[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[12]_i_2_n_5\,
      O => \s_bitPlace[11]_i_1_n_0\
    );
\s_bitPlace[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[12]_i_2_n_4\,
      O => \s_bitPlace[12]_i_1_n_0\
    );
\s_bitPlace[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[12]\,
      O => \s_bitPlace[12]_i_3_n_0\
    );
\s_bitPlace[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[11]\,
      O => \s_bitPlace[12]_i_4_n_0\
    );
\s_bitPlace[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[10]\,
      O => \s_bitPlace[12]_i_5_n_0\
    );
\s_bitPlace[12]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[9]\,
      O => \s_bitPlace[12]_i_6_n_0\
    );
\s_bitPlace[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[16]_i_2_n_7\,
      O => \s_bitPlace[13]_i_1_n_0\
    );
\s_bitPlace[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[16]_i_2_n_6\,
      O => \s_bitPlace[14]_i_1_n_0\
    );
\s_bitPlace[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[16]_i_2_n_5\,
      O => \s_bitPlace[15]_i_1_n_0\
    );
\s_bitPlace[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[16]_i_2_n_4\,
      O => \s_bitPlace[16]_i_1_n_0\
    );
\s_bitPlace[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[16]\,
      O => \s_bitPlace[16]_i_3_n_0\
    );
\s_bitPlace[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[15]\,
      O => \s_bitPlace[16]_i_4_n_0\
    );
\s_bitPlace[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[14]\,
      O => \s_bitPlace[16]_i_5_n_0\
    );
\s_bitPlace[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[13]\,
      O => \s_bitPlace[16]_i_6_n_0\
    );
\s_bitPlace[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[20]_i_2_n_7\,
      O => \s_bitPlace[17]_i_1_n_0\
    );
\s_bitPlace[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[20]_i_2_n_6\,
      O => \s_bitPlace[18]_i_1_n_0\
    );
\s_bitPlace[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[20]_i_2_n_5\,
      O => \s_bitPlace[19]_i_1_n_0\
    );
\s_bitPlace[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[4]_i_2_n_7\,
      O => \s_bitPlace[1]_i_1_n_0\
    );
\s_bitPlace[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[20]_i_2_n_4\,
      O => \s_bitPlace[20]_i_1_n_0\
    );
\s_bitPlace[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[20]\,
      O => \s_bitPlace[20]_i_3_n_0\
    );
\s_bitPlace[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[19]\,
      O => \s_bitPlace[20]_i_4_n_0\
    );
\s_bitPlace[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[18]\,
      O => \s_bitPlace[20]_i_5_n_0\
    );
\s_bitPlace[20]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[17]\,
      O => \s_bitPlace[20]_i_6_n_0\
    );
\s_bitPlace[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[24]_i_2_n_7\,
      O => \s_bitPlace[21]_i_1_n_0\
    );
\s_bitPlace[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[24]_i_2_n_6\,
      O => \s_bitPlace[22]_i_1_n_0\
    );
\s_bitPlace[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[24]_i_2_n_5\,
      O => \s_bitPlace[23]_i_1_n_0\
    );
\s_bitPlace[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[24]_i_2_n_4\,
      O => \s_bitPlace[24]_i_1_n_0\
    );
\s_bitPlace[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[24]\,
      O => \s_bitPlace[24]_i_3_n_0\
    );
\s_bitPlace[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[23]\,
      O => \s_bitPlace[24]_i_4_n_0\
    );
\s_bitPlace[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[22]\,
      O => \s_bitPlace[24]_i_5_n_0\
    );
\s_bitPlace[24]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[21]\,
      O => \s_bitPlace[24]_i_6_n_0\
    );
\s_bitPlace[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[28]_i_2_n_7\,
      O => \s_bitPlace[25]_i_1_n_0\
    );
\s_bitPlace[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[28]_i_2_n_6\,
      O => \s_bitPlace[26]_i_1_n_0\
    );
\s_bitPlace[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[28]_i_2_n_5\,
      O => \s_bitPlace[27]_i_1_n_0\
    );
\s_bitPlace[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[28]_i_2_n_4\,
      O => \s_bitPlace[28]_i_1_n_0\
    );
\s_bitPlace[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[28]\,
      O => \s_bitPlace[28]_i_3_n_0\
    );
\s_bitPlace[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[27]\,
      O => \s_bitPlace[28]_i_4_n_0\
    );
\s_bitPlace[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[26]\,
      O => \s_bitPlace[28]_i_5_n_0\
    );
\s_bitPlace[28]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[25]\,
      O => \s_bitPlace[28]_i_6_n_0\
    );
\s_bitPlace[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[31]_i_10_n_7\,
      O => \s_bitPlace[29]_i_1_n_0\
    );
\s_bitPlace[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[4]_i_2_n_6\,
      O => \s_bitPlace[2]_i_1_n_0\
    );
\s_bitPlace[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[31]_i_10_n_6\,
      O => \s_bitPlace[30]_i_1_n_0\
    );
\s_bitPlace[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0202"
    )
        port map (
      I0 => \s_bitPlace[31]_i_4_n_0\,
      I1 => \s_state[2]_i_4_n_0\,
      I2 => \s_state[2]_i_5_n_0\,
      I3 => \s_bitPlace[31]_i_5_n_0\,
      I4 => s_count01_out,
      I5 => \s_state[1]_i_2_n_0\,
      O => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[11]\,
      I1 => \s_bitPlace_reg_n_0_[10]\,
      I2 => \s_bitPlace_reg_n_0_[13]\,
      I3 => \s_bitPlace_reg_n_0_[12]\,
      O => \s_bitPlace[31]_i_11_n_0\
    );
\s_bitPlace[31]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[15]\,
      I1 => \s_bitPlace_reg_n_0_[16]\,
      I2 => \s_bitPlace_reg_n_0_[14]\,
      I3 => \s_bitPlace_reg_n_0_[17]\,
      I4 => \s_bitPlace_reg_n_0_[9]\,
      I5 => \s_bitPlace_reg_n_0_[8]\,
      O => \s_bitPlace[31]_i_12_n_0\
    );
\s_bitPlace[31]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[23]\,
      I1 => \s_state[2]_i_32_n_0\,
      I2 => \s_bitPlace_reg_n_0_[30]\,
      I3 => \s_bitPlace_reg_n_0_[31]\,
      I4 => \s_bitPlace_reg_n_0_[25]\,
      I5 => \s_bitPlace_reg_n_0_[24]\,
      O => \s_bitPlace[31]_i_13_n_0\
    );
\s_bitPlace[31]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[18]\,
      I1 => \s_bitPlace_reg_n_0_[17]\,
      I2 => \s_bitPlace_reg_n_0_[20]\,
      I3 => \s_bitPlace_reg_n_0_[19]\,
      O => \s_bitPlace[31]_i_14_n_0\
    );
\s_bitPlace[31]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[31]\,
      O => \s_bitPlace[31]_i_15_n_0\
    );
\s_bitPlace[31]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[30]\,
      O => \s_bitPlace[31]_i_16_n_0\
    );
\s_bitPlace[31]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[29]\,
      O => \s_bitPlace[31]_i_17_n_0\
    );
\s_bitPlace[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAAFAAAFAAA8"
    )
        port map (
      I0 => s_count01_out,
      I1 => \s_bitPlace[31]_i_5_n_0\,
      I2 => \s_state[2]_i_5_n_0\,
      I3 => \s_state[2]_i_4_n_0\,
      I4 => \s_bitPlace[31]_i_6_n_0\,
      I5 => \s_bitPlace[31]_i_7_n_0\,
      O => \s_bitPlace[31]_i_2_n_0\
    );
\s_bitPlace[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[31]_i_10_n_5\,
      O => \s_bitPlace[31]_i_3_n_0\
    );
\s_bitPlace[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \s_bitPlace[31]_i_6_n_0\,
      I1 => s_count01_out,
      I2 => \s_state[2]_i_18_n_0\,
      I3 => \s_bitPlace[31]_i_11_n_0\,
      I4 => \s_bitPlace[31]_i_12_n_0\,
      I5 => \s_bitPlace[31]_i_13_n_0\,
      O => \s_bitPlace[31]_i_4_n_0\
    );
\s_bitPlace[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_state(0),
      I1 => s_state(2),
      O => \s_bitPlace[31]_i_5_n_0\
    );
\s_bitPlace[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_bitPlace[31]_i_14_n_0\,
      I1 => \s_bitPlace_reg_n_0_[16]\,
      I2 => \s_bitPlace_reg_n_0_[21]\,
      I3 => \s_bitPlace_reg_n_0_[22]\,
      O => \s_bitPlace[31]_i_6_n_0\
    );
\s_bitPlace[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \s_state[2]_i_19_n_0\,
      I1 => \s_bitPlace_reg_n_0_[23]\,
      I2 => \s_bitPlace[31]_i_12_n_0\,
      I3 => \s_bitPlace[31]_i_11_n_0\,
      I4 => \s_state[2]_i_18_n_0\,
      I5 => s_count01_out,
      O => \s_bitPlace[31]_i_7_n_0\
    );
\s_bitPlace[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \s_state[2]_i_8_n_0\,
      I1 => \s_count_reg_n_0_[19]\,
      I2 => \s_count_reg_n_0_[20]\,
      I3 => \s_count_reg_n_0_[13]\,
      I4 => \s_count_reg_n_0_[14]\,
      I5 => \s_state[2]_i_10_n_0\,
      O => \s_bitPlace[31]_i_8_n_0\
    );
\s_bitPlace[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_state[2]_i_19_n_0\,
      I1 => \s_state[2]_i_17_n_0\,
      I2 => \s_state[2]_i_18_n_0\,
      I3 => \s_state[2]_i_16_n_0\,
      O => \s_bitPlace[31]_i_9_n_0\
    );
\s_bitPlace[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[4]_i_2_n_5\,
      O => \s_bitPlace[3]_i_1_n_0\
    );
\s_bitPlace[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[4]_i_2_n_4\,
      O => \s_bitPlace[4]_i_1_n_0\
    );
\s_bitPlace[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[4]\,
      O => \s_bitPlace[4]_i_3_n_0\
    );
\s_bitPlace[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[3]\,
      O => \s_bitPlace[4]_i_4_n_0\
    );
\s_bitPlace[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[2]\,
      O => \s_bitPlace[4]_i_5_n_0\
    );
\s_bitPlace[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^s_bitplace_reg[4]_0\,
      O => \s_bitPlace[4]_i_6_n_0\
    );
\s_bitPlace[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[8]_i_2_n_7\,
      O => \s_bitPlace[5]_i_1_n_0\
    );
\s_bitPlace[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[8]_i_2_n_6\,
      O => \s_bitPlace[6]_i_1_n_0\
    );
\s_bitPlace[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[8]_i_2_n_5\,
      O => \s_bitPlace[7]_i_1_n_0\
    );
\s_bitPlace[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[8]_i_2_n_4\,
      O => \s_bitPlace[8]_i_1_n_0\
    );
\s_bitPlace[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[8]\,
      O => \s_bitPlace[8]_i_3_n_0\
    );
\s_bitPlace[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[7]\,
      O => \s_bitPlace[8]_i_4_n_0\
    );
\s_bitPlace[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[6]\,
      O => \s_bitPlace[8]_i_5_n_0\
    );
\s_bitPlace[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[5]\,
      O => \s_bitPlace[8]_i_6_n_0\
    );
\s_bitPlace[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => \s_bitPlace[31]_i_8_n_0\,
      I1 => \s_bitPlace[31]_i_9_n_0\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_bitPlace_reg[12]_i_2_n_7\,
      O => \s_bitPlace[9]_i_1_n_0\
    );
\s_bitPlace_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[0]_i_1_n_0\,
      Q => \^s_bitplace_reg[0]_0\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[10]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[10]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[11]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[11]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[12]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[12]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_bitPlace_reg[8]_i_2_n_0\,
      CO(3) => \s_bitPlace_reg[12]_i_2_n_0\,
      CO(2) => \s_bitPlace_reg[12]_i_2_n_1\,
      CO(1) => \s_bitPlace_reg[12]_i_2_n_2\,
      CO(0) => \s_bitPlace_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \s_bitPlace_reg[12]_i_2_n_4\,
      O(2) => \s_bitPlace_reg[12]_i_2_n_5\,
      O(1) => \s_bitPlace_reg[12]_i_2_n_6\,
      O(0) => \s_bitPlace_reg[12]_i_2_n_7\,
      S(3) => \s_bitPlace[12]_i_3_n_0\,
      S(2) => \s_bitPlace[12]_i_4_n_0\,
      S(1) => \s_bitPlace[12]_i_5_n_0\,
      S(0) => \s_bitPlace[12]_i_6_n_0\
    );
\s_bitPlace_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[13]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[13]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[14]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[14]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[15]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[15]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[16]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[16]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_bitPlace_reg[12]_i_2_n_0\,
      CO(3) => \s_bitPlace_reg[16]_i_2_n_0\,
      CO(2) => \s_bitPlace_reg[16]_i_2_n_1\,
      CO(1) => \s_bitPlace_reg[16]_i_2_n_2\,
      CO(0) => \s_bitPlace_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \s_bitPlace_reg[16]_i_2_n_4\,
      O(2) => \s_bitPlace_reg[16]_i_2_n_5\,
      O(1) => \s_bitPlace_reg[16]_i_2_n_6\,
      O(0) => \s_bitPlace_reg[16]_i_2_n_7\,
      S(3) => \s_bitPlace[16]_i_3_n_0\,
      S(2) => \s_bitPlace[16]_i_4_n_0\,
      S(1) => \s_bitPlace[16]_i_5_n_0\,
      S(0) => \s_bitPlace[16]_i_6_n_0\
    );
\s_bitPlace_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[17]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[17]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[18]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[18]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[19]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[19]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[1]_i_1_n_0\,
      Q => \^s_bitplace_reg[4]_0\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[20]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[20]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_bitPlace_reg[16]_i_2_n_0\,
      CO(3) => \s_bitPlace_reg[20]_i_2_n_0\,
      CO(2) => \s_bitPlace_reg[20]_i_2_n_1\,
      CO(1) => \s_bitPlace_reg[20]_i_2_n_2\,
      CO(0) => \s_bitPlace_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \s_bitPlace_reg[20]_i_2_n_4\,
      O(2) => \s_bitPlace_reg[20]_i_2_n_5\,
      O(1) => \s_bitPlace_reg[20]_i_2_n_6\,
      O(0) => \s_bitPlace_reg[20]_i_2_n_7\,
      S(3) => \s_bitPlace[20]_i_3_n_0\,
      S(2) => \s_bitPlace[20]_i_4_n_0\,
      S(1) => \s_bitPlace[20]_i_5_n_0\,
      S(0) => \s_bitPlace[20]_i_6_n_0\
    );
\s_bitPlace_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[21]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[21]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[22]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[22]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[23]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[23]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[24]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[24]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_bitPlace_reg[20]_i_2_n_0\,
      CO(3) => \s_bitPlace_reg[24]_i_2_n_0\,
      CO(2) => \s_bitPlace_reg[24]_i_2_n_1\,
      CO(1) => \s_bitPlace_reg[24]_i_2_n_2\,
      CO(0) => \s_bitPlace_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \s_bitPlace_reg[24]_i_2_n_4\,
      O(2) => \s_bitPlace_reg[24]_i_2_n_5\,
      O(1) => \s_bitPlace_reg[24]_i_2_n_6\,
      O(0) => \s_bitPlace_reg[24]_i_2_n_7\,
      S(3) => \s_bitPlace[24]_i_3_n_0\,
      S(2) => \s_bitPlace[24]_i_4_n_0\,
      S(1) => \s_bitPlace[24]_i_5_n_0\,
      S(0) => \s_bitPlace[24]_i_6_n_0\
    );
\s_bitPlace_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[25]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[25]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[26]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[26]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[27]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[27]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[28]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[28]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_bitPlace_reg[24]_i_2_n_0\,
      CO(3) => \s_bitPlace_reg[28]_i_2_n_0\,
      CO(2) => \s_bitPlace_reg[28]_i_2_n_1\,
      CO(1) => \s_bitPlace_reg[28]_i_2_n_2\,
      CO(0) => \s_bitPlace_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \s_bitPlace_reg[28]_i_2_n_4\,
      O(2) => \s_bitPlace_reg[28]_i_2_n_5\,
      O(1) => \s_bitPlace_reg[28]_i_2_n_6\,
      O(0) => \s_bitPlace_reg[28]_i_2_n_7\,
      S(3) => \s_bitPlace[28]_i_3_n_0\,
      S(2) => \s_bitPlace[28]_i_4_n_0\,
      S(1) => \s_bitPlace[28]_i_5_n_0\,
      S(0) => \s_bitPlace[28]_i_6_n_0\
    );
\s_bitPlace_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[29]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[29]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[2]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[2]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[30]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[30]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[31]_i_3_n_0\,
      Q => \s_bitPlace_reg_n_0_[31]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[31]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_bitPlace_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_s_bitPlace_reg[31]_i_10_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \s_bitPlace_reg[31]_i_10_n_2\,
      CO(0) => \s_bitPlace_reg[31]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_s_bitPlace_reg[31]_i_10_O_UNCONNECTED\(3),
      O(2) => \s_bitPlace_reg[31]_i_10_n_5\,
      O(1) => \s_bitPlace_reg[31]_i_10_n_6\,
      O(0) => \s_bitPlace_reg[31]_i_10_n_7\,
      S(3) => '0',
      S(2) => \s_bitPlace[31]_i_15_n_0\,
      S(1) => \s_bitPlace[31]_i_16_n_0\,
      S(0) => \s_bitPlace[31]_i_17_n_0\
    );
\s_bitPlace_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[3]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[3]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[4]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[4]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_bitPlace_reg[4]_i_2_n_0\,
      CO(2) => \s_bitPlace_reg[4]_i_2_n_1\,
      CO(1) => \s_bitPlace_reg[4]_i_2_n_2\,
      CO(0) => \s_bitPlace_reg[4]_i_2_n_3\,
      CYINIT => \^s_bitplace_reg[0]_0\,
      DI(3 downto 0) => B"0000",
      O(3) => \s_bitPlace_reg[4]_i_2_n_4\,
      O(2) => \s_bitPlace_reg[4]_i_2_n_5\,
      O(1) => \s_bitPlace_reg[4]_i_2_n_6\,
      O(0) => \s_bitPlace_reg[4]_i_2_n_7\,
      S(3) => \s_bitPlace[4]_i_3_n_0\,
      S(2) => \s_bitPlace[4]_i_4_n_0\,
      S(1) => \s_bitPlace[4]_i_5_n_0\,
      S(0) => \s_bitPlace[4]_i_6_n_0\
    );
\s_bitPlace_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[5]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[5]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[6]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[6]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[7]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[7]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[8]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[8]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_bitPlace_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_bitPlace_reg[4]_i_2_n_0\,
      CO(3) => \s_bitPlace_reg[8]_i_2_n_0\,
      CO(2) => \s_bitPlace_reg[8]_i_2_n_1\,
      CO(1) => \s_bitPlace_reg[8]_i_2_n_2\,
      CO(0) => \s_bitPlace_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \s_bitPlace_reg[8]_i_2_n_4\,
      O(2) => \s_bitPlace_reg[8]_i_2_n_5\,
      O(1) => \s_bitPlace_reg[8]_i_2_n_6\,
      O(0) => \s_bitPlace_reg[8]_i_2_n_7\,
      S(3) => \s_bitPlace[8]_i_3_n_0\,
      S(2) => \s_bitPlace[8]_i_4_n_0\,
      S(1) => \s_bitPlace[8]_i_5_n_0\,
      S(0) => \s_bitPlace[8]_i_6_n_0\
    );
\s_bitPlace_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_bitPlace[31]_i_2_n_0\,
      D => \s_bitPlace[9]_i_1_n_0\,
      Q => \s_bitPlace_reg_n_0_[9]\,
      R => \s_bitPlace[31]_i_1_n_0\
    );
\s_count0_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \s_count0_inferred__1/i__carry_n_0\,
      CO(2) => \s_count0_inferred__1/i__carry_n_1\,
      CO(1) => \s_count0_inferred__1/i__carry_n_2\,
      CO(0) => \s_count0_inferred__1/i__carry_n_3\,
      CYINIT => \s_count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \s_count0_inferred__1/i__carry_n_4\,
      O(2) => \s_count0_inferred__1/i__carry_n_5\,
      O(1) => \s_count0_inferred__1/i__carry_n_6\,
      O(0) => \s_count0_inferred__1/i__carry_n_7\,
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\s_count0_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_count0_inferred__1/i__carry_n_0\,
      CO(3) => \s_count0_inferred__1/i__carry__0_n_0\,
      CO(2) => \s_count0_inferred__1/i__carry__0_n_1\,
      CO(1) => \s_count0_inferred__1/i__carry__0_n_2\,
      CO(0) => \s_count0_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \s_count0_inferred__1/i__carry__0_n_4\,
      O(2) => \s_count0_inferred__1/i__carry__0_n_5\,
      O(1) => \s_count0_inferred__1/i__carry__0_n_6\,
      O(0) => \s_count0_inferred__1/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\s_count0_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_count0_inferred__1/i__carry__0_n_0\,
      CO(3) => \s_count0_inferred__1/i__carry__1_n_0\,
      CO(2) => \s_count0_inferred__1/i__carry__1_n_1\,
      CO(1) => \s_count0_inferred__1/i__carry__1_n_2\,
      CO(0) => \s_count0_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \s_count0_inferred__1/i__carry__1_n_4\,
      O(2) => \s_count0_inferred__1/i__carry__1_n_5\,
      O(1) => \s_count0_inferred__1/i__carry__1_n_6\,
      O(0) => \s_count0_inferred__1/i__carry__1_n_7\,
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\s_count0_inferred__1/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_count0_inferred__1/i__carry__1_n_0\,
      CO(3) => \s_count0_inferred__1/i__carry__2_n_0\,
      CO(2) => \s_count0_inferred__1/i__carry__2_n_1\,
      CO(1) => \s_count0_inferred__1/i__carry__2_n_2\,
      CO(0) => \s_count0_inferred__1/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \s_count0_inferred__1/i__carry__2_n_4\,
      O(2) => \s_count0_inferred__1/i__carry__2_n_5\,
      O(1) => \s_count0_inferred__1/i__carry__2_n_6\,
      O(0) => \s_count0_inferred__1/i__carry__2_n_7\,
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\s_count0_inferred__1/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_count0_inferred__1/i__carry__2_n_0\,
      CO(3) => \s_count0_inferred__1/i__carry__3_n_0\,
      CO(2) => \s_count0_inferred__1/i__carry__3_n_1\,
      CO(1) => \s_count0_inferred__1/i__carry__3_n_2\,
      CO(0) => \s_count0_inferred__1/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \s_count0_inferred__1/i__carry__3_n_4\,
      O(2) => \s_count0_inferred__1/i__carry__3_n_5\,
      O(1) => \s_count0_inferred__1/i__carry__3_n_6\,
      O(0) => \s_count0_inferred__1/i__carry__3_n_7\,
      S(3) => \i__carry__3_i_1_n_0\,
      S(2) => \i__carry__3_i_2_n_0\,
      S(1) => \i__carry__3_i_3_n_0\,
      S(0) => \i__carry__3_i_4_n_0\
    );
\s_count0_inferred__1/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_count0_inferred__1/i__carry__3_n_0\,
      CO(3) => \s_count0_inferred__1/i__carry__4_n_0\,
      CO(2) => \s_count0_inferred__1/i__carry__4_n_1\,
      CO(1) => \s_count0_inferred__1/i__carry__4_n_2\,
      CO(0) => \s_count0_inferred__1/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \s_count0_inferred__1/i__carry__4_n_4\,
      O(2) => \s_count0_inferred__1/i__carry__4_n_5\,
      O(1) => \s_count0_inferred__1/i__carry__4_n_6\,
      O(0) => \s_count0_inferred__1/i__carry__4_n_7\,
      S(3) => \i__carry__4_i_1_n_0\,
      S(2) => \i__carry__4_i_2_n_0\,
      S(1) => \i__carry__4_i_3_n_0\,
      S(0) => \i__carry__4_i_4_n_0\
    );
\s_count0_inferred__1/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_count0_inferred__1/i__carry__4_n_0\,
      CO(3) => \s_count0_inferred__1/i__carry__5_n_0\,
      CO(2) => \s_count0_inferred__1/i__carry__5_n_1\,
      CO(1) => \s_count0_inferred__1/i__carry__5_n_2\,
      CO(0) => \s_count0_inferred__1/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \s_count0_inferred__1/i__carry__5_n_4\,
      O(2) => \s_count0_inferred__1/i__carry__5_n_5\,
      O(1) => \s_count0_inferred__1/i__carry__5_n_6\,
      O(0) => \s_count0_inferred__1/i__carry__5_n_7\,
      S(3) => \i__carry__5_i_1_n_0\,
      S(2) => \i__carry__5_i_2_n_0\,
      S(1) => \i__carry__5_i_3_n_0\,
      S(0) => \i__carry__5_i_4_n_0\
    );
\s_count0_inferred__1/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_count0_inferred__1/i__carry__5_n_0\,
      CO(3 downto 2) => \NLW_s_count0_inferred__1/i__carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \s_count0_inferred__1/i__carry__6_n_2\,
      CO(0) => \s_count0_inferred__1/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_s_count0_inferred__1/i__carry__6_O_UNCONNECTED\(3),
      O(2) => \s_count0_inferred__1/i__carry__6_n_5\,
      O(1) => \s_count0_inferred__1/i__carry__6_n_6\,
      O(0) => \s_count0_inferred__1/i__carry__6_n_7\,
      S(3) => '0',
      S(2) => \i__carry__6_i_1_n_0\,
      S(1) => \i__carry__6_i_2_n_0\,
      S(0) => \i__carry__6_i_3_n_0\
    );
\s_count[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count_reg_n_0_[0]\,
      O => \s_count[0]_i_1__0_n_0\
    );
\s_count[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__1_n_6\,
      O => s_count(10)
    );
\s_count[11]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__1_n_5\,
      O => s_count(11)
    );
\s_count[12]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__1_n_4\,
      O => s_count(12)
    );
\s_count[13]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__2_n_7\,
      O => s_count(13)
    );
\s_count[14]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__2_n_6\,
      O => s_count(14)
    );
\s_count[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__2_n_5\,
      O => s_count(15)
    );
\s_count[16]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__2_n_4\,
      O => s_count(16)
    );
\s_count[17]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__3_n_7\,
      O => s_count(17)
    );
\s_count[18]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__3_n_6\,
      O => s_count(18)
    );
\s_count[19]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__3_n_5\,
      O => s_count(19)
    );
\s_count[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry_n_7\,
      O => s_count(1)
    );
\s_count[20]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__3_n_4\,
      O => s_count(20)
    );
\s_count[21]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__4_n_7\,
      O => s_count(21)
    );
\s_count[22]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__4_n_6\,
      O => s_count(22)
    );
\s_count[23]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__4_n_5\,
      O => s_count(23)
    );
\s_count[24]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__4_n_4\,
      O => s_count(24)
    );
\s_count[25]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__5_n_7\,
      O => s_count(25)
    );
\s_count[26]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__5_n_6\,
      O => s_count(26)
    );
\s_count[27]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__5_n_5\,
      O => s_count(27)
    );
\s_count[28]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__5_n_4\,
      O => s_count(28)
    );
\s_count[29]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__6_n_7\,
      O => s_count(29)
    );
\s_count[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry_n_6\,
      O => s_count(2)
    );
\s_count[30]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__6_n_6\,
      O => s_count(30)
    );
\s_count[31]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \s_count_reg_n_0_[16]\,
      I1 => \s_count_reg_n_0_[17]\,
      I2 => \s_count_reg_n_0_[20]\,
      I3 => \s_count_reg_n_0_[19]\,
      I4 => \s_count_reg_n_0_[18]\,
      O => \s_count[31]_i_10_n_0\
    );
\s_count[31]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => s_out_fifo_rd_en,
      I1 => s_state(0),
      I2 => s_state(2),
      I3 => s_state(1),
      O => \s_count[31]_i_1__0_n_0\
    );
\s_count[31]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => s_state(1),
      I1 => s_state(2),
      I2 => s_state(0),
      O => \s_count[31]_i_2__0_n_0\
    );
\s_count[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__6_n_5\,
      O => s_count(31)
    );
\s_count[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \s_count[31]_i_7_n_0\,
      I1 => \s_count_reg_n_0_[31]\,
      I2 => \s_count_reg_n_0_[28]\,
      I3 => \s_count_reg_n_0_[2]\,
      I4 => \s_count_reg_n_0_[29]\,
      O => \s_count[31]_i_4_n_0\
    );
\s_count[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => \s_count_reg_n_0_[30]\,
      I1 => \s_count_reg_n_0_[24]\,
      I2 => \s_count_reg_n_0_[13]\,
      I3 => \s_count[31]_i_8_n_0\,
      I4 => \s_count[31]_i_9_n_0\,
      I5 => \s_count[31]_i_10_n_0\,
      O => \s_count[31]_i_5_n_0\
    );
\s_count[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \s_count_reg_n_0_[9]\,
      I1 => \s_count_reg_n_0_[6]\,
      I2 => \s_count_reg_n_0_[10]\,
      I3 => \s_count_reg_n_0_[8]\,
      I4 => \s_count_reg_n_0_[27]\,
      O => \s_count[31]_i_6_n_0\
    );
\s_count[31]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \s_count_reg_n_0_[1]\,
      I1 => \s_count_reg_n_0_[15]\,
      I2 => \s_count_reg_n_0_[14]\,
      I3 => \s_count_reg_n_0_[3]\,
      I4 => \s_count_reg_n_0_[0]\,
      O => \s_count[31]_i_7_n_0\
    );
\s_count[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \s_count_reg_n_0_[7]\,
      I1 => \s_count_reg_n_0_[11]\,
      I2 => \s_count_reg_n_0_[4]\,
      I3 => \s_count_reg_n_0_[5]\,
      O => \s_count[31]_i_8_n_0\
    );
\s_count[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_count_reg_n_0_[23]\,
      I1 => \s_count_reg_n_0_[21]\,
      I2 => \s_count_reg_n_0_[25]\,
      I3 => \s_count_reg_n_0_[22]\,
      O => \s_count[31]_i_9_n_0\
    );
\s_count[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry_n_5\,
      O => s_count(3)
    );
\s_count[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry_n_4\,
      O => s_count(4)
    );
\s_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__0_n_7\,
      O => s_count(5)
    );
\s_count[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__0_n_6\,
      O => s_count(6)
    );
\s_count[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__0_n_5\,
      O => s_count(7)
    );
\s_count[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__0_n_4\,
      O => s_count(8)
    );
\s_count[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000000"
    )
        port map (
      I0 => \s_count[31]_i_4_n_0\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[26]\,
      I3 => \s_count[31]_i_5_n_0\,
      I4 => \s_count[31]_i_6_n_0\,
      I5 => \s_count0_inferred__1/i__carry__1_n_7\,
      O => s_count(9)
    );
\s_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => \s_count[0]_i_1__0_n_0\,
      Q => \s_count_reg_n_0_[0]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(10),
      Q => \s_count_reg_n_0_[10]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(11),
      Q => \s_count_reg_n_0_[11]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(12),
      Q => \s_count_reg_n_0_[12]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(13),
      Q => \s_count_reg_n_0_[13]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(14),
      Q => \s_count_reg_n_0_[14]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(15),
      Q => \s_count_reg_n_0_[15]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(16),
      Q => \s_count_reg_n_0_[16]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(17),
      Q => \s_count_reg_n_0_[17]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(18),
      Q => \s_count_reg_n_0_[18]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(19),
      Q => \s_count_reg_n_0_[19]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(1),
      Q => \s_count_reg_n_0_[1]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(20),
      Q => \s_count_reg_n_0_[20]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(21),
      Q => \s_count_reg_n_0_[21]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(22),
      Q => \s_count_reg_n_0_[22]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(23),
      Q => \s_count_reg_n_0_[23]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(24),
      Q => \s_count_reg_n_0_[24]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(25),
      Q => \s_count_reg_n_0_[25]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(26),
      Q => \s_count_reg_n_0_[26]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(27),
      Q => \s_count_reg_n_0_[27]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(28),
      Q => \s_count_reg_n_0_[28]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(29),
      Q => \s_count_reg_n_0_[29]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(2),
      Q => \s_count_reg_n_0_[2]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(30),
      Q => \s_count_reg_n_0_[30]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(31),
      Q => \s_count_reg_n_0_[31]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(3),
      Q => \s_count_reg_n_0_[3]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(4),
      Q => \s_count_reg_n_0_[4]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(5),
      Q => \s_count_reg_n_0_[5]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(6),
      Q => \s_count_reg_n_0_[6]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(7),
      Q => \s_count_reg_n_0_[7]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(8),
      Q => \s_count_reg_n_0_[8]\,
      R => \s_count[31]_i_1__0_n_0\
    );
\s_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \s_count[31]_i_2__0_n_0\,
      D => s_count(9),
      Q => \s_count_reg_n_0_[9]\,
      R => \s_count[31]_i_1__0_n_0\
    );
s_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222F2FF22220200"
    )
        port map (
      I0 => s_ready_i_2_n_0,
      I1 => s_ready_i_3_n_0,
      I2 => \s_state[2]_i_5_n_0\,
      I3 => s_ready_i_4_n_0,
      I4 => s_count01_out,
      I5 => ready,
      O => s_ready_i_1_n_0
    );
s_ready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => s_ready_i_5_n_0,
      I1 => \s_state[2]_i_10_n_0\,
      I2 => s_ready_i_6_n_0,
      I3 => \s_count_reg_n_0_[20]\,
      I4 => \s_count_reg_n_0_[19]\,
      I5 => \s_state[2]_i_8_n_0\,
      O => s_ready_i_2_n_0
    );
s_ready_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \s_count[31]_i_2__0_n_0\,
      I1 => \s_count_reg_n_0_[27]\,
      I2 => \s_count_reg_n_0_[28]\,
      I3 => \s_count_reg_n_0_[29]\,
      I4 => \s_count_reg_n_0_[30]\,
      I5 => \s_count_reg_n_0_[31]\,
      O => s_ready_i_3_n_0
    );
s_ready_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => s_state(1),
      I1 => s_state(0),
      I2 => s_state(2),
      O => s_ready_i_4_n_0
    );
s_ready_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000011110001"
    )
        port map (
      I0 => \s_count_reg_n_0_[26]\,
      I1 => \s_count_reg_n_0_[25]\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      I5 => \s_state[0]_i_8_n_0\,
      O => s_ready_i_5_n_0
    );
s_ready_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \s_count_reg_n_0_[14]\,
      I1 => \s_count_reg_n_0_[13]\,
      O => s_ready_i_6_n_0
    );
s_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => s_ready_i_1_n_0,
      Q => ready,
      R => '0'
    );
\s_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAABBAB88AA88A8"
    )
        port map (
      I0 => \s_state[0]_i_2_n_0\,
      I1 => s_count01_out,
      I2 => \s_state[2]_i_4_n_0\,
      I3 => \s_state[2]_i_5_n_0\,
      I4 => \s_state[2]_i_6_n_0\,
      I5 => s_state(0),
      O => \s_state[0]_i_1_n_0\
    );
\s_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => \s_state[0]_i_3_n_0\,
      I1 => \s_state[0]_i_4_n_0\,
      I2 => \s_state[2]_i_8_n_0\,
      I3 => \s_state[0]_i_5_n_0\,
      I4 => \s_state[0]_i_6_n_0\,
      I5 => \s_state[0]_i_7_n_0\,
      O => \s_state[0]_i_2_n_0\
    );
\s_state[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \s_count_reg_n_0_[25]\,
      I1 => \s_count_reg_n_0_[26]\,
      I2 => \s_count_reg_n_0_[19]\,
      I3 => \s_count_reg_n_0_[20]\,
      O => \s_state[0]_i_3_n_0\
    );
\s_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFFFEFFFFFFFF"
    )
        port map (
      I0 => \s_state[0]_i_8_n_0\,
      I1 => \s_state[2]_i_25_n_0\,
      I2 => \s_count_reg_n_0_[29]\,
      I3 => \s_count_reg_n_0_[27]\,
      I4 => \s_count_reg_n_0_[28]\,
      I5 => \s_count[31]_i_2__0_n_0\,
      O => \s_state[0]_i_4_n_0\
    );
\s_state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \s_count_reg_n_0_[8]\,
      I1 => \s_count_reg_n_0_[10]\,
      I2 => \s_count_reg_n_0_[5]\,
      I3 => \s_count_reg_n_0_[4]\,
      I4 => \s_count_reg_n_0_[11]\,
      I5 => \s_count_reg_n_0_[7]\,
      O => \s_state[0]_i_5_n_0\
    );
\s_state[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDDDDFD"
    )
        port map (
      I0 => \s_count_reg_n_0_[13]\,
      I1 => \s_count_reg_n_0_[14]\,
      I2 => s_state(1),
      I3 => s_state(0),
      I4 => s_state(2),
      O => \s_state[0]_i_6_n_0\
    );
\s_state[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \s_count_reg_n_0_[22]\,
      I1 => \s_count_reg_n_0_[21]\,
      I2 => \s_count_reg_n_0_[23]\,
      O => \s_state[0]_i_7_n_0\
    );
\s_state[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFAE"
    )
        port map (
      I0 => \s_count_reg_n_0_[26]\,
      I1 => \s_count_reg_n_0_[24]\,
      I2 => \s_count_reg_n_0_[25]\,
      I3 => \s_count_reg_n_0_[23]\,
      I4 => \s_count_reg_n_0_[22]\,
      O => \s_state[0]_i_8_n_0\
    );
\s_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8F80888080"
    )
        port map (
      I0 => \s_state[1]_i_2_n_0\,
      I1 => \s_state[1]_i_3_n_0\,
      I2 => \s_state[1]_i_4_n_0\,
      I3 => \s_state[2]_i_5_n_0\,
      I4 => \s_state[2]_i_6_n_0\,
      I5 => s_state(1),
      O => \s_state[1]_i_1_n_0\
    );
\s_state[1]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \s_count_reg_n_0_[24]\,
      I1 => \s_count_reg_n_0_[27]\,
      I2 => \s_count_reg_n_0_[18]\,
      I3 => \s_count_reg_n_0_[21]\,
      I4 => \s_state[2]_i_25_n_0\,
      O => \s_state[1]_i_10_n_0\
    );
\s_state[1]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \s_state[0]_i_3_n_0\,
      I1 => \s_count_reg_n_0_[16]\,
      I2 => \s_count_reg_n_0_[17]\,
      I3 => \s_count_reg_n_0_[22]\,
      I4 => \s_count_reg_n_0_[23]\,
      O => \s_state[1]_i_11_n_0\
    );
\s_state[1]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[30]\,
      I1 => \s_bitPlace_reg_n_0_[31]\,
      I2 => \s_bitPlace_reg_n_0_[25]\,
      I3 => \s_bitPlace_reg_n_0_[24]\,
      O => \s_state[1]_i_12_n_0\
    );
\s_state[1]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[5]\,
      I1 => \s_bitPlace_reg_n_0_[4]\,
      I2 => \s_bitPlace_reg_n_0_[7]\,
      I3 => \s_bitPlace_reg_n_0_[6]\,
      O => \s_state[1]_i_13_n_0\
    );
\s_state[1]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[8]\,
      I1 => \s_bitPlace_reg_n_0_[9]\,
      I2 => \s_bitPlace_reg_n_0_[10]\,
      I3 => \s_bitPlace_reg_n_0_[11]\,
      O => \s_state[1]_i_14_n_0\
    );
\s_state[1]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[16]\,
      I1 => \s_bitPlace_reg_n_0_[17]\,
      I2 => \s_bitPlace_reg_n_0_[18]\,
      I3 => \s_bitPlace_reg_n_0_[19]\,
      O => \s_state[1]_i_15_n_0\
    );
\s_state[1]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \s_count_reg_n_0_[20]\,
      I1 => \s_count_reg_n_0_[19]\,
      O => \s_state[1]_i_16_n_0\
    );
\s_state[1]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \s_count_reg_n_0_[13]\,
      I1 => \s_count_reg_n_0_[14]\,
      I2 => \s_count_reg_n_0_[5]\,
      I3 => \s_count_reg_n_0_[4]\,
      I4 => \s_count_reg_n_0_[11]\,
      I5 => \s_count_reg_n_0_[7]\,
      O => \s_state[1]_i_17_n_0\
    );
\s_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_ready_i_3_n_0,
      I1 => \s_count_reg_n_0_[24]\,
      I2 => \s_count_reg_n_0_[23]\,
      I3 => \s_count_reg_n_0_[22]\,
      I4 => \s_count_reg_n_0_[25]\,
      I5 => \s_count_reg_n_0_[26]\,
      O => \s_state[1]_i_2_n_0\
    );
\s_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00000008000000"
    )
        port map (
      I0 => \s_state[1]_i_5_n_0\,
      I1 => \s_state[1]_i_6_n_0\,
      I2 => \s_state[2]_i_4_n_0\,
      I3 => \s_state[1]_i_7_n_0\,
      I4 => \s_state[2]_i_10_n_0\,
      I5 => \s_state[1]_i_8_n_0\,
      O => \s_state[1]_i_3_n_0\
    );
\s_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF20000000"
    )
        port map (
      I0 => \s_count[31]_i_2__0_n_0\,
      I1 => \s_state[1]_i_9_n_0\,
      I2 => \s_state[1]_i_10_n_0\,
      I3 => \s_state[1]_i_11_n_0\,
      I4 => \s_state[2]_i_4_n_0\,
      I5 => s_count01_out,
      O => \s_state[1]_i_4_n_0\
    );
\s_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \s_state[2]_i_32_n_0\,
      I1 => \s_state[1]_i_12_n_0\,
      I2 => \s_bitPlace_reg_n_0_[2]\,
      I3 => \s_bitPlace_reg_n_0_[3]\,
      I4 => \s_state[2]_i_30_n_0\,
      I5 => \s_state[1]_i_13_n_0\,
      O => \s_state[1]_i_5_n_0\
    );
\s_state[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \s_state[2]_i_29_n_0\,
      I1 => \s_state[1]_i_14_n_0\,
      I2 => \s_state[2]_i_28_n_0\,
      I3 => \s_state[1]_i_15_n_0\,
      O => \s_state[1]_i_6_n_0\
    );
\s_state[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_ready_i_6_n_0,
      I1 => \s_state[1]_i_16_n_0\,
      I2 => \s_state[2]_i_23_n_0\,
      I3 => \s_state[2]_i_22_n_0\,
      I4 => \s_state[2]_i_21_n_0\,
      I5 => \s_state[2]_i_20_n_0\,
      O => \s_state[1]_i_7_n_0\
    );
\s_state[1]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => s_state(2),
      I1 => s_state(0),
      I2 => s_state(1),
      O => \s_state[1]_i_8_n_0\
    );
\s_state[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \s_count_reg_n_0_[15]\,
      I1 => \s_state[2]_i_12_n_0\,
      I2 => \s_state[2]_i_13_n_0\,
      I3 => \s_state[1]_i_17_n_0\,
      I4 => \s_count_reg_n_0_[6]\,
      I5 => \s_count_reg_n_0_[0]\,
      O => \s_state[1]_i_9_n_0\
    );
\s_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAABBAB88AA88A8"
    )
        port map (
      I0 => \s_state[2]_i_2_n_0\,
      I1 => s_count01_out,
      I2 => \s_state[2]_i_4_n_0\,
      I3 => \s_state[2]_i_5_n_0\,
      I4 => \s_state[2]_i_6_n_0\,
      I5 => s_state(2),
      O => \s_state[2]_i_1_n_0\
    );
\s_state[2]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \s_state[2]_i_24_n_0\,
      I1 => \s_count_reg_n_0_[7]\,
      I2 => \s_count_reg_n_0_[8]\,
      I3 => \s_count_reg_n_0_[11]\,
      I4 => \s_count_reg_n_0_[10]\,
      O => \s_state[2]_i_10_n_0\
    );
\s_state[2]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => s_state(1),
      I1 => s_state(0),
      I2 => s_state(2),
      I3 => \s_count_reg_n_0_[23]\,
      I4 => \s_count_reg_n_0_[22]\,
      O => \s_state[2]_i_11_n_0\
    );
\s_state[2]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \s_count_reg_n_0_[10]\,
      I1 => \s_count_reg_n_0_[8]\,
      O => \s_state[2]_i_12_n_0\
    );
\s_state[2]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \s_count_reg_n_0_[9]\,
      I1 => \s_count_reg_n_0_[12]\,
      I2 => \s_count_reg_n_0_[1]\,
      I3 => \s_count_reg_n_0_[2]\,
      I4 => \s_count_reg_n_0_[3]\,
      O => \s_state[2]_i_13_n_0\
    );
\s_state[2]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \s_count_reg_n_0_[0]\,
      I1 => \s_count_reg_n_0_[6]\,
      I2 => \s_count[31]_i_8_n_0\,
      I3 => \s_count_reg_n_0_[14]\,
      I4 => \s_count_reg_n_0_[13]\,
      O => \s_state[2]_i_14_n_0\
    );
\s_state[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \s_state[2]_i_25_n_0\,
      I1 => \s_state[2]_i_26_n_0\,
      I2 => \s_state[2]_i_27_n_0\,
      I3 => \s_count_reg_n_0_[17]\,
      I4 => \s_count_reg_n_0_[16]\,
      I5 => \s_state[0]_i_3_n_0\,
      O => \s_state[2]_i_15_n_0\
    );
\s_state[2]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[19]\,
      I1 => \s_bitPlace_reg_n_0_[18]\,
      I2 => \s_bitPlace_reg_n_0_[17]\,
      I3 => \s_bitPlace_reg_n_0_[16]\,
      I4 => \s_state[2]_i_28_n_0\,
      O => \s_state[2]_i_16_n_0\
    );
\s_state[2]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[11]\,
      I1 => \s_bitPlace_reg_n_0_[10]\,
      I2 => \s_bitPlace_reg_n_0_[9]\,
      I3 => \s_bitPlace_reg_n_0_[8]\,
      I4 => \s_state[2]_i_29_n_0\,
      O => \s_state[2]_i_17_n_0\
    );
\s_state[2]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[6]\,
      I1 => \s_bitPlace_reg_n_0_[7]\,
      I2 => \s_bitPlace_reg_n_0_[4]\,
      I3 => \s_bitPlace_reg_n_0_[5]\,
      I4 => \s_state[2]_i_30_n_0\,
      I5 => \s_state[2]_i_31_n_0\,
      O => \s_state[2]_i_18_n_0\
    );
\s_state[2]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[24]\,
      I1 => \s_bitPlace_reg_n_0_[25]\,
      I2 => \s_bitPlace_reg_n_0_[31]\,
      I3 => \s_bitPlace_reg_n_0_[30]\,
      I4 => \s_state[2]_i_32_n_0\,
      O => \s_state[2]_i_19_n_0\
    );
\s_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => s_ready_i_3_n_0,
      I1 => \s_state[2]_i_7_n_0\,
      I2 => \s_state[2]_i_8_n_0\,
      I3 => \s_state[2]_i_9_n_0\,
      I4 => \s_state[2]_i_10_n_0\,
      I5 => \s_state[2]_i_11_n_0\,
      O => \s_state[2]_i_2_n_0\
    );
\s_state[2]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFD5FFD5FFD5"
    )
        port map (
      I0 => \s_count_reg_n_0_[5]\,
      I1 => \s_count_reg_n_0_[3]\,
      I2 => \s_count_reg_n_0_[4]\,
      I3 => \s_count_reg_n_0_[8]\,
      I4 => \s_count_reg_n_0_[6]\,
      I5 => \s_count_reg_n_0_[7]\,
      O => \s_state[2]_i_20_n_0\
    );
\s_state[2]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \s_count_reg_n_0_[16]\,
      I1 => \s_count_reg_n_0_[17]\,
      I2 => \s_count_reg_n_0_[2]\,
      I3 => \s_count_reg_n_0_[0]\,
      I4 => \s_count_reg_n_0_[1]\,
      O => \s_state[2]_i_21_n_0\
    );
\s_state[2]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFAEFFFFFFAE"
    )
        port map (
      I0 => \s_count_reg_n_0_[17]\,
      I1 => \s_count_reg_n_0_[15]\,
      I2 => \s_count_reg_n_0_[16]\,
      I3 => \s_count_reg_n_0_[20]\,
      I4 => \s_count_reg_n_0_[18]\,
      I5 => \s_count_reg_n_0_[19]\,
      O => \s_state[2]_i_22_n_0\
    );
\s_state[2]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF5DFF5DFF5D"
    )
        port map (
      I0 => \s_count_reg_n_0_[11]\,
      I1 => \s_count_reg_n_0_[9]\,
      I2 => \s_count_reg_n_0_[10]\,
      I3 => \s_count_reg_n_0_[14]\,
      I4 => \s_count_reg_n_0_[12]\,
      I5 => \s_count_reg_n_0_[13]\,
      O => \s_state[2]_i_23_n_0\
    );
\s_state[2]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080008"
    )
        port map (
      I0 => \s_count_reg_n_0_[4]\,
      I1 => \s_count_reg_n_0_[5]\,
      I2 => \s_count_reg_n_0_[23]\,
      I3 => \s_count_reg_n_0_[21]\,
      I4 => \s_count_reg_n_0_[22]\,
      O => \s_state[2]_i_24_n_0\
    );
\s_state[2]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_count_reg_n_0_[31]\,
      I1 => \s_count_reg_n_0_[30]\,
      I2 => \s_count_reg_n_0_[29]\,
      I3 => \s_count_reg_n_0_[28]\,
      O => \s_state[2]_i_25_n_0\
    );
\s_state[2]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \s_count_reg_n_0_[21]\,
      I1 => \s_count_reg_n_0_[18]\,
      I2 => \s_count_reg_n_0_[27]\,
      I3 => \s_count_reg_n_0_[24]\,
      O => \s_state[2]_i_26_n_0\
    );
\s_state[2]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \s_count_reg_n_0_[22]\,
      I1 => \s_count_reg_n_0_[23]\,
      O => \s_state[2]_i_27_n_0\
    );
\s_state[2]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[20]\,
      I1 => \s_bitPlace_reg_n_0_[21]\,
      I2 => \s_bitPlace_reg_n_0_[22]\,
      I3 => \s_bitPlace_reg_n_0_[23]\,
      O => \s_state[2]_i_28_n_0\
    );
\s_state[2]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[12]\,
      I1 => \s_bitPlace_reg_n_0_[13]\,
      I2 => \s_bitPlace_reg_n_0_[14]\,
      I3 => \s_bitPlace_reg_n_0_[15]\,
      O => \s_state[2]_i_29_n_0\
    );
\s_state[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s_state(1),
      I1 => s_out_fifo_rd_en,
      I2 => s_state(2),
      I3 => s_state(0),
      O => s_count01_out
    );
\s_state[2]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^s_bitplace_reg[0]_0\,
      I1 => \^s_bitplace_reg[4]_0\,
      O => \s_state[2]_i_30_n_0\
    );
\s_state[2]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[3]\,
      I1 => \s_bitPlace_reg_n_0_[2]\,
      O => \s_state[2]_i_31_n_0\
    );
\s_state[2]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_bitPlace_reg_n_0_[27]\,
      I1 => \s_bitPlace_reg_n_0_[26]\,
      I2 => \s_bitPlace_reg_n_0_[29]\,
      I3 => \s_bitPlace_reg_n_0_[28]\,
      O => \s_state[2]_i_32_n_0\
    );
\s_state[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => s_state(2),
      I1 => s_state(0),
      I2 => s_state(1),
      O => \s_state[2]_i_4_n_0\
    );
\s_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFDFFFFFFFF"
    )
        port map (
      I0 => \s_count[31]_i_2__0_n_0\,
      I1 => \s_count_reg_n_0_[15]\,
      I2 => \s_state[2]_i_12_n_0\,
      I3 => \s_state[2]_i_13_n_0\,
      I4 => \s_state[2]_i_14_n_0\,
      I5 => \s_state[2]_i_15_n_0\,
      O => \s_state[2]_i_5_n_0\
    );
\s_state[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \s_state[2]_i_16_n_0\,
      I1 => \s_state[2]_i_17_n_0\,
      I2 => \s_state[2]_i_18_n_0\,
      I3 => \s_state[2]_i_19_n_0\,
      O => \s_state[2]_i_6_n_0\
    );
\s_state[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \s_count_reg_n_0_[24]\,
      I1 => \s_count_reg_n_0_[25]\,
      I2 => \s_count_reg_n_0_[26]\,
      O => \s_state[2]_i_7_n_0\
    );
\s_state[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \s_state[2]_i_20_n_0\,
      I1 => \s_state[2]_i_21_n_0\,
      I2 => \s_state[2]_i_22_n_0\,
      I3 => \s_state[2]_i_23_n_0\,
      O => \s_state[2]_i_8_n_0\
    );
\s_state[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \s_count_reg_n_0_[19]\,
      I1 => \s_count_reg_n_0_[20]\,
      I2 => \s_count_reg_n_0_[13]\,
      I3 => \s_count_reg_n_0_[14]\,
      O => \s_state[2]_i_9_n_0\
    );
\s_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_state[0]_i_1_n_0\,
      Q => s_state(0),
      R => '0'
    );
\s_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_state[1]_i_1_n_0\,
      Q => s_state(1),
      R => '0'
    );
\s_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_state[2]_i_1_n_0\,
      Q => s_state(2),
      R => '0'
    );
s_tx_send_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AABA"
    )
        port map (
      I0 => s_out_fifo_rd_en,
      I1 => send_delay,
      I2 => ready,
      I3 => empty,
      I4 => s_tx_state,
      O => s_tx_send_reg
    );
s_tx_state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3304"
    )
        port map (
      I0 => send_delay,
      I1 => ready,
      I2 => empty,
      I3 => s_tx_state,
      O => s_tx_state_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_UART_with_2x4k_FIFOs_0_0_builtin_prim_v6 is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    rd_rst_i : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_UART_with_2x4k_FIFOs_0_0_builtin_prim_v6 : entity is "builtin_prim_v6";
end uart_UART_with_2x4k_FIFOs_0_0_builtin_prim_v6;

architecture STRUCTURE of uart_UART_with_2x4k_FIFOs_0_0_builtin_prim_v6 is
  signal \gf36e1_inst.sngfifo36e1_n_113\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_17\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_18\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_19\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_20\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_21\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_22\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_23\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_24\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_25\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_26\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_27\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_28\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_30\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_31\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_32\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_33\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_34\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_35\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_36\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_37\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_38\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_39\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_40\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_41\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal prog_empty_fifo : STD_LOGIC;
  signal prog_full_fifo : STD_LOGIC;
  signal \NLW_gf36e1_inst.sngfifo36e1_DO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 63 downto 8 );
  signal \NLW_gf36e1_inst.sngfifo36e1_DOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_gf36e1_inst.sngfifo36e1_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gf36e1_inst.sngfifo36e1_RDCOUNT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 12 to 12 );
  signal \NLW_gf36e1_inst.sngfifo36e1_WRCOUNT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 12 to 12 );
  attribute box_type : string;
  attribute box_type of \gf36e1_inst.sngfifo36e1\ : label is "PRIMITIVE";
begin
\gf36e1_inst.sngfifo36e1\: unisim.vcomponents.FIFO36E1
    generic map(
      ALMOST_EMPTY_OFFSET => X"0002",
      ALMOST_FULL_OFFSET => X"0002",
      DATA_WIDTH => 9,
      DO_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      EN_SYN => true,
      FIFO_MODE => "FIFO36",
      FIRST_WORD_FALL_THROUGH => false,
      INIT => X"000000000000000000",
      IS_RDCLK_INVERTED => '0',
      IS_RDEN_INVERTED => '0',
      IS_RSTREG_INVERTED => '0',
      IS_RST_INVERTED => '0',
      IS_WRCLK_INVERTED => '0',
      IS_WREN_INVERTED => '0',
      SIM_DEVICE => "7SERIES",
      SRVAL => X"000000000000000000"
    )
        port map (
      ALMOSTEMPTY => prog_empty_fifo,
      ALMOSTFULL => prog_full_fifo,
      DBITERR => p_2_out,
      DI(63 downto 8) => B"00000000000000000000000000000000000000000000000000000000",
      DI(7 downto 0) => din(7 downto 0),
      DIP(7 downto 0) => B"00000000",
      DO(63 downto 8) => \NLW_gf36e1_inst.sngfifo36e1_DO_UNCONNECTED\(63 downto 8),
      DO(7 downto 0) => dout(7 downto 0),
      DOP(7 downto 1) => \NLW_gf36e1_inst.sngfifo36e1_DOP_UNCONNECTED\(7 downto 1),
      DOP(0) => \gf36e1_inst.sngfifo36e1_n_113\,
      ECCPARITY(7 downto 0) => \NLW_gf36e1_inst.sngfifo36e1_ECCPARITY_UNCONNECTED\(7 downto 0),
      EMPTY => empty,
      FULL => full,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDCLK => clk,
      RDCOUNT(12) => \NLW_gf36e1_inst.sngfifo36e1_RDCOUNT_UNCONNECTED\(12),
      RDCOUNT(11) => \gf36e1_inst.sngfifo36e1_n_17\,
      RDCOUNT(10) => \gf36e1_inst.sngfifo36e1_n_18\,
      RDCOUNT(9) => \gf36e1_inst.sngfifo36e1_n_19\,
      RDCOUNT(8) => \gf36e1_inst.sngfifo36e1_n_20\,
      RDCOUNT(7) => \gf36e1_inst.sngfifo36e1_n_21\,
      RDCOUNT(6) => \gf36e1_inst.sngfifo36e1_n_22\,
      RDCOUNT(5) => \gf36e1_inst.sngfifo36e1_n_23\,
      RDCOUNT(4) => \gf36e1_inst.sngfifo36e1_n_24\,
      RDCOUNT(3) => \gf36e1_inst.sngfifo36e1_n_25\,
      RDCOUNT(2) => \gf36e1_inst.sngfifo36e1_n_26\,
      RDCOUNT(1) => \gf36e1_inst.sngfifo36e1_n_27\,
      RDCOUNT(0) => \gf36e1_inst.sngfifo36e1_n_28\,
      RDEN => rd_en,
      RDERR => p_4_out,
      REGCE => '0',
      RST => rd_rst_i,
      RSTREG => '0',
      SBITERR => p_3_out,
      WRCLK => clk,
      WRCOUNT(12) => \NLW_gf36e1_inst.sngfifo36e1_WRCOUNT_UNCONNECTED\(12),
      WRCOUNT(11) => \gf36e1_inst.sngfifo36e1_n_30\,
      WRCOUNT(10) => \gf36e1_inst.sngfifo36e1_n_31\,
      WRCOUNT(9) => \gf36e1_inst.sngfifo36e1_n_32\,
      WRCOUNT(8) => \gf36e1_inst.sngfifo36e1_n_33\,
      WRCOUNT(7) => \gf36e1_inst.sngfifo36e1_n_34\,
      WRCOUNT(6) => \gf36e1_inst.sngfifo36e1_n_35\,
      WRCOUNT(5) => \gf36e1_inst.sngfifo36e1_n_36\,
      WRCOUNT(4) => \gf36e1_inst.sngfifo36e1_n_37\,
      WRCOUNT(3) => \gf36e1_inst.sngfifo36e1_n_38\,
      WRCOUNT(2) => \gf36e1_inst.sngfifo36e1_n_39\,
      WRCOUNT(1) => \gf36e1_inst.sngfifo36e1_n_40\,
      WRCOUNT(0) => \gf36e1_inst.sngfifo36e1_n_41\,
      WREN => wr_en,
      WRERR => p_5_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_UART_with_2x4k_FIFOs_0_0_builtin_prim_v6_6 is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    rd_rst_i : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_UART_with_2x4k_FIFOs_0_0_builtin_prim_v6_6 : entity is "builtin_prim_v6";
end uart_UART_with_2x4k_FIFOs_0_0_builtin_prim_v6_6;

architecture STRUCTURE of uart_UART_with_2x4k_FIFOs_0_0_builtin_prim_v6_6 is
  signal \gf36e1_inst.sngfifo36e1_n_113\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_17\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_18\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_19\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_20\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_21\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_22\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_23\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_24\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_25\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_26\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_27\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_28\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_30\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_31\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_32\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_33\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_34\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_35\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_36\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_37\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_38\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_39\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_40\ : STD_LOGIC;
  signal \gf36e1_inst.sngfifo36e1_n_41\ : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal prog_empty_fifo : STD_LOGIC;
  signal prog_full_fifo : STD_LOGIC;
  signal \NLW_gf36e1_inst.sngfifo36e1_DO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 63 downto 8 );
  signal \NLW_gf36e1_inst.sngfifo36e1_DOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_gf36e1_inst.sngfifo36e1_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_gf36e1_inst.sngfifo36e1_RDCOUNT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 12 to 12 );
  signal \NLW_gf36e1_inst.sngfifo36e1_WRCOUNT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 12 to 12 );
  attribute box_type : string;
  attribute box_type of \gf36e1_inst.sngfifo36e1\ : label is "PRIMITIVE";
begin
\gf36e1_inst.sngfifo36e1\: unisim.vcomponents.FIFO36E1
    generic map(
      ALMOST_EMPTY_OFFSET => X"0002",
      ALMOST_FULL_OFFSET => X"0002",
      DATA_WIDTH => 9,
      DO_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      EN_SYN => true,
      FIFO_MODE => "FIFO36",
      FIRST_WORD_FALL_THROUGH => false,
      INIT => X"000000000000000000",
      IS_RDCLK_INVERTED => '0',
      IS_RDEN_INVERTED => '0',
      IS_RSTREG_INVERTED => '0',
      IS_RST_INVERTED => '0',
      IS_WRCLK_INVERTED => '0',
      IS_WREN_INVERTED => '0',
      SIM_DEVICE => "7SERIES",
      SRVAL => X"000000000000000000"
    )
        port map (
      ALMOSTEMPTY => prog_empty_fifo,
      ALMOSTFULL => prog_full_fifo,
      DBITERR => p_2_out,
      DI(63 downto 8) => B"00000000000000000000000000000000000000000000000000000000",
      DI(7 downto 0) => din(7 downto 0),
      DIP(7 downto 0) => B"00000000",
      DO(63 downto 8) => \NLW_gf36e1_inst.sngfifo36e1_DO_UNCONNECTED\(63 downto 8),
      DO(7 downto 0) => dout(7 downto 0),
      DOP(7 downto 1) => \NLW_gf36e1_inst.sngfifo36e1_DOP_UNCONNECTED\(7 downto 1),
      DOP(0) => \gf36e1_inst.sngfifo36e1_n_113\,
      ECCPARITY(7 downto 0) => \NLW_gf36e1_inst.sngfifo36e1_ECCPARITY_UNCONNECTED\(7 downto 0),
      EMPTY => empty,
      FULL => full,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDCLK => clk,
      RDCOUNT(12) => \NLW_gf36e1_inst.sngfifo36e1_RDCOUNT_UNCONNECTED\(12),
      RDCOUNT(11) => \gf36e1_inst.sngfifo36e1_n_17\,
      RDCOUNT(10) => \gf36e1_inst.sngfifo36e1_n_18\,
      RDCOUNT(9) => \gf36e1_inst.sngfifo36e1_n_19\,
      RDCOUNT(8) => \gf36e1_inst.sngfifo36e1_n_20\,
      RDCOUNT(7) => \gf36e1_inst.sngfifo36e1_n_21\,
      RDCOUNT(6) => \gf36e1_inst.sngfifo36e1_n_22\,
      RDCOUNT(5) => \gf36e1_inst.sngfifo36e1_n_23\,
      RDCOUNT(4) => \gf36e1_inst.sngfifo36e1_n_24\,
      RDCOUNT(3) => \gf36e1_inst.sngfifo36e1_n_25\,
      RDCOUNT(2) => \gf36e1_inst.sngfifo36e1_n_26\,
      RDCOUNT(1) => \gf36e1_inst.sngfifo36e1_n_27\,
      RDCOUNT(0) => \gf36e1_inst.sngfifo36e1_n_28\,
      RDEN => rd_en,
      RDERR => p_4_out,
      REGCE => '0',
      RST => rd_rst_i,
      RSTREG => '0',
      SBITERR => p_3_out,
      WRCLK => clk,
      WRCOUNT(12) => \NLW_gf36e1_inst.sngfifo36e1_WRCOUNT_UNCONNECTED\(12),
      WRCOUNT(11) => \gf36e1_inst.sngfifo36e1_n_30\,
      WRCOUNT(10) => \gf36e1_inst.sngfifo36e1_n_31\,
      WRCOUNT(9) => \gf36e1_inst.sngfifo36e1_n_32\,
      WRCOUNT(8) => \gf36e1_inst.sngfifo36e1_n_33\,
      WRCOUNT(7) => \gf36e1_inst.sngfifo36e1_n_34\,
      WRCOUNT(6) => \gf36e1_inst.sngfifo36e1_n_35\,
      WRCOUNT(5) => \gf36e1_inst.sngfifo36e1_n_36\,
      WRCOUNT(4) => \gf36e1_inst.sngfifo36e1_n_37\,
      WRCOUNT(3) => \gf36e1_inst.sngfifo36e1_n_38\,
      WRCOUNT(2) => \gf36e1_inst.sngfifo36e1_n_39\,
      WRCOUNT(1) => \gf36e1_inst.sngfifo36e1_n_40\,
      WRCOUNT(0) => \gf36e1_inst.sngfifo36e1_n_41\,
      WREN => wr_en,
      WRERR => p_5_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_UART_with_2x4k_FIFOs_0_0_reset_builtin is
  port (
    rd_rst_i : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_UART_with_2x4k_FIFOs_0_0_reset_builtin : entity is "reset_builtin";
end uart_UART_with_2x4k_FIFOs_0_0_reset_builtin;

architecture STRUCTURE of uart_UART_with_2x4k_FIFOs_0_0_reset_builtin is
  signal power_on_rd_rst : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute async_reg : string;
  attribute async_reg of power_on_rd_rst : signal is "true";
  attribute msgon : string;
  attribute msgon of power_on_rd_rst : signal is "true";
  signal power_on_wr_rst : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute async_reg of power_on_wr_rst : signal is "true";
  attribute msgon of power_on_wr_rst : signal is "true";
  signal rd_rst_reg1 : STD_LOGIC;
  attribute async_reg of rd_rst_reg1 : signal is "true";
  attribute msgon of rd_rst_reg1 : signal is "true";
  signal rd_rst_reg2 : STD_LOGIC;
  attribute async_reg of rd_rst_reg2 : signal is "true";
  attribute msgon of rd_rst_reg2 : signal is "true";
  signal \rsync.rcc.wr_rst_fb_reg[0]_srl5_n_0\ : STD_LOGIC;
  signal wr_rst_reg : STD_LOGIC;
  signal wr_rst_reg1 : STD_LOGIC;
  attribute async_reg of wr_rst_reg1 : signal is "true";
  attribute msgon of wr_rst_reg1 : signal is "true";
  signal wr_rst_reg2 : STD_LOGIC;
  attribute async_reg of wr_rst_reg2 : signal is "true";
  attribute msgon of wr_rst_reg2 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \rsync.rcc.power_on_wr_rst_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \rsync.rcc.power_on_wr_rst_reg[0]\ : label is "yes";
  attribute msgon of \rsync.rcc.power_on_wr_rst_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \rsync.rcc.power_on_wr_rst_reg[1]\ : label is std.standard.true;
  attribute KEEP of \rsync.rcc.power_on_wr_rst_reg[1]\ : label is "yes";
  attribute msgon of \rsync.rcc.power_on_wr_rst_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \rsync.rcc.power_on_wr_rst_reg[2]\ : label is std.standard.true;
  attribute KEEP of \rsync.rcc.power_on_wr_rst_reg[2]\ : label is "yes";
  attribute msgon of \rsync.rcc.power_on_wr_rst_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \rsync.rcc.power_on_wr_rst_reg[3]\ : label is std.standard.true;
  attribute KEEP of \rsync.rcc.power_on_wr_rst_reg[3]\ : label is "yes";
  attribute msgon of \rsync.rcc.power_on_wr_rst_reg[3]\ : label is "true";
  attribute ASYNC_REG_boolean of \rsync.rcc.power_on_wr_rst_reg[4]\ : label is std.standard.true;
  attribute KEEP of \rsync.rcc.power_on_wr_rst_reg[4]\ : label is "yes";
  attribute msgon of \rsync.rcc.power_on_wr_rst_reg[4]\ : label is "true";
  attribute ASYNC_REG_boolean of \rsync.rcc.power_on_wr_rst_reg[5]\ : label is std.standard.true;
  attribute KEEP of \rsync.rcc.power_on_wr_rst_reg[5]\ : label is "yes";
  attribute msgon of \rsync.rcc.power_on_wr_rst_reg[5]\ : label is "true";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \rsync.rcc.wr_rst_fb_reg[0]_srl5\ : label is "U0/\fifo_tx_queue/fifo_generator_0 /U0/\inst_fifo_gen/gconvfifo.rf/gbi.bi/g7ser_birst.rstbt/rsync.rcc.wr_rst_fb_reg ";
  attribute srl_name : string;
  attribute srl_name of \rsync.rcc.wr_rst_fb_reg[0]_srl5\ : label is "U0/\fifo_tx_queue/fifo_generator_0 /U0/\inst_fifo_gen/gconvfifo.rf/gbi.bi/g7ser_birst.rstbt/rsync.rcc.wr_rst_fb_reg[0]_srl5 ";
  attribute ASYNC_REG_boolean of \rsync.rcc.wr_rst_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \rsync.rcc.wr_rst_reg1_reg\ : label is "yes";
  attribute msgon of \rsync.rcc.wr_rst_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \rsync.rcc.wr_rst_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \rsync.rcc.wr_rst_reg2_reg\ : label is "yes";
  attribute msgon of \rsync.rcc.wr_rst_reg2_reg\ : label is "true";
begin
\gf36e1_inst.sngfifo36e1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => wr_rst_reg,
      I1 => power_on_wr_rst(0),
      O => rd_rst_i
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => rd_rst_reg1
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => rd_rst_reg2
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => power_on_rd_rst(5)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => power_on_rd_rst(4)
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => power_on_rd_rst(3)
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => power_on_rd_rst(2)
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => power_on_rd_rst(1)
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => power_on_rd_rst(0)
    );
\rsync.rcc.power_on_wr_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => power_on_wr_rst(1),
      Q => power_on_wr_rst(0),
      R => '0'
    );
\rsync.rcc.power_on_wr_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => power_on_wr_rst(2),
      Q => power_on_wr_rst(1),
      R => '0'
    );
\rsync.rcc.power_on_wr_rst_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => power_on_wr_rst(3),
      Q => power_on_wr_rst(2),
      R => '0'
    );
\rsync.rcc.power_on_wr_rst_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => power_on_wr_rst(4),
      Q => power_on_wr_rst(3),
      R => '0'
    );
\rsync.rcc.power_on_wr_rst_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => power_on_wr_rst(5),
      Q => power_on_wr_rst(4),
      R => '0'
    );
\rsync.rcc.power_on_wr_rst_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      Q => power_on_wr_rst(5),
      R => '0'
    );
\rsync.rcc.wr_rst_fb_reg[0]_srl5\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => wr_rst_reg,
      Q => \rsync.rcc.wr_rst_fb_reg[0]_srl5_n_0\
    );
\rsync.rcc.wr_rst_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => rst,
      Q => wr_rst_reg1
    );
\rsync.rcc.wr_rst_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => wr_rst_reg1,
      PRE => rst,
      Q => wr_rst_reg2
    );
\rsync.rcc.wr_rst_reg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rsync.rcc.wr_rst_fb_reg[0]_srl5_n_0\,
      D => '0',
      PRE => wr_rst_reg2,
      Q => wr_rst_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_UART_with_2x4k_FIFOs_0_0_reset_builtin_3 is
  port (
    rd_rst_i : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_UART_with_2x4k_FIFOs_0_0_reset_builtin_3 : entity is "reset_builtin";
end uart_UART_with_2x4k_FIFOs_0_0_reset_builtin_3;

architecture STRUCTURE of uart_UART_with_2x4k_FIFOs_0_0_reset_builtin_3 is
  signal power_on_rd_rst : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute async_reg : string;
  attribute async_reg of power_on_rd_rst : signal is "true";
  attribute msgon : string;
  attribute msgon of power_on_rd_rst : signal is "true";
  signal power_on_wr_rst : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute async_reg of power_on_wr_rst : signal is "true";
  attribute msgon of power_on_wr_rst : signal is "true";
  signal rd_rst_reg1 : STD_LOGIC;
  attribute async_reg of rd_rst_reg1 : signal is "true";
  attribute msgon of rd_rst_reg1 : signal is "true";
  signal rd_rst_reg2 : STD_LOGIC;
  attribute async_reg of rd_rst_reg2 : signal is "true";
  attribute msgon of rd_rst_reg2 : signal is "true";
  signal \rsync.rcc.wr_rst_fb_reg[0]_srl5_n_0\ : STD_LOGIC;
  signal wr_rst_reg : STD_LOGIC;
  signal wr_rst_reg1 : STD_LOGIC;
  attribute async_reg of wr_rst_reg1 : signal is "true";
  attribute msgon of wr_rst_reg1 : signal is "true";
  signal wr_rst_reg2 : STD_LOGIC;
  attribute async_reg of wr_rst_reg2 : signal is "true";
  attribute msgon of wr_rst_reg2 : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \rsync.rcc.power_on_wr_rst_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \rsync.rcc.power_on_wr_rst_reg[0]\ : label is "yes";
  attribute msgon of \rsync.rcc.power_on_wr_rst_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \rsync.rcc.power_on_wr_rst_reg[1]\ : label is std.standard.true;
  attribute KEEP of \rsync.rcc.power_on_wr_rst_reg[1]\ : label is "yes";
  attribute msgon of \rsync.rcc.power_on_wr_rst_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \rsync.rcc.power_on_wr_rst_reg[2]\ : label is std.standard.true;
  attribute KEEP of \rsync.rcc.power_on_wr_rst_reg[2]\ : label is "yes";
  attribute msgon of \rsync.rcc.power_on_wr_rst_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \rsync.rcc.power_on_wr_rst_reg[3]\ : label is std.standard.true;
  attribute KEEP of \rsync.rcc.power_on_wr_rst_reg[3]\ : label is "yes";
  attribute msgon of \rsync.rcc.power_on_wr_rst_reg[3]\ : label is "true";
  attribute ASYNC_REG_boolean of \rsync.rcc.power_on_wr_rst_reg[4]\ : label is std.standard.true;
  attribute KEEP of \rsync.rcc.power_on_wr_rst_reg[4]\ : label is "yes";
  attribute msgon of \rsync.rcc.power_on_wr_rst_reg[4]\ : label is "true";
  attribute ASYNC_REG_boolean of \rsync.rcc.power_on_wr_rst_reg[5]\ : label is std.standard.true;
  attribute KEEP of \rsync.rcc.power_on_wr_rst_reg[5]\ : label is "yes";
  attribute msgon of \rsync.rcc.power_on_wr_rst_reg[5]\ : label is "true";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \rsync.rcc.wr_rst_fb_reg[0]_srl5\ : label is "U0/\fifo_rx_queue/fifo_generator_0 /U0/\inst_fifo_gen/gconvfifo.rf/gbi.bi/g7ser_birst.rstbt/rsync.rcc.wr_rst_fb_reg ";
  attribute srl_name : string;
  attribute srl_name of \rsync.rcc.wr_rst_fb_reg[0]_srl5\ : label is "U0/\fifo_rx_queue/fifo_generator_0 /U0/\inst_fifo_gen/gconvfifo.rf/gbi.bi/g7ser_birst.rstbt/rsync.rcc.wr_rst_fb_reg[0]_srl5 ";
  attribute ASYNC_REG_boolean of \rsync.rcc.wr_rst_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \rsync.rcc.wr_rst_reg1_reg\ : label is "yes";
  attribute msgon of \rsync.rcc.wr_rst_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \rsync.rcc.wr_rst_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \rsync.rcc.wr_rst_reg2_reg\ : label is "yes";
  attribute msgon of \rsync.rcc.wr_rst_reg2_reg\ : label is "true";
begin
\gf36e1_inst.sngfifo36e1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => wr_rst_reg,
      I1 => power_on_wr_rst(0),
      O => rd_rst_i
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => rd_rst_reg1
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => rd_rst_reg2
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => power_on_rd_rst(5)
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => power_on_rd_rst(4)
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => power_on_rd_rst(3)
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => power_on_rd_rst(2)
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => power_on_rd_rst(1)
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '1',
      O => power_on_rd_rst(0)
    );
\rsync.rcc.power_on_wr_rst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => power_on_wr_rst(1),
      Q => power_on_wr_rst(0),
      R => '0'
    );
\rsync.rcc.power_on_wr_rst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => power_on_wr_rst(2),
      Q => power_on_wr_rst(1),
      R => '0'
    );
\rsync.rcc.power_on_wr_rst_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => power_on_wr_rst(3),
      Q => power_on_wr_rst(2),
      R => '0'
    );
\rsync.rcc.power_on_wr_rst_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => power_on_wr_rst(4),
      Q => power_on_wr_rst(3),
      R => '0'
    );
\rsync.rcc.power_on_wr_rst_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => power_on_wr_rst(5),
      Q => power_on_wr_rst(4),
      R => '0'
    );
\rsync.rcc.power_on_wr_rst_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      Q => power_on_wr_rst(5),
      R => '0'
    );
\rsync.rcc.wr_rst_fb_reg[0]_srl5\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => wr_rst_reg,
      Q => \rsync.rcc.wr_rst_fb_reg[0]_srl5_n_0\
    );
\rsync.rcc.wr_rst_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => '0',
      PRE => rst,
      Q => wr_rst_reg1
    );
\rsync.rcc.wr_rst_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => wr_rst_reg1,
      PRE => rst,
      Q => wr_rst_reg2
    );
\rsync.rcc.wr_rst_reg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \rsync.rcc.wr_rst_fb_reg[0]_srl5_n_0\,
      D => '0',
      PRE => wr_rst_reg2,
      Q => wr_rst_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_UART_with_2x4k_FIFOs_0_0_builtin_extdepth_v6 is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    rd_rst_i : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_UART_with_2x4k_FIFOs_0_0_builtin_extdepth_v6 : entity is "builtin_extdepth_v6";
end uart_UART_with_2x4k_FIFOs_0_0_builtin_extdepth_v6;

architecture STRUCTURE of uart_UART_with_2x4k_FIFOs_0_0_builtin_extdepth_v6 is
  signal NLW_i_0_O_UNCONNECTED : STD_LOGIC;
  signal NLW_i_1_O_UNCONNECTED : STD_LOGIC;
  signal NLW_i_2_O_UNCONNECTED : STD_LOGIC;
  signal NLW_i_3_O_UNCONNECTED : STD_LOGIC;
begin
\gonep.inst_prim\: entity work.uart_UART_with_2x4k_FIFOs_0_0_builtin_prim_v6
     port map (
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rd_rst_i => rd_rst_i,
      wr_en => wr_en
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => NLW_i_0_O_UNCONNECTED
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => NLW_i_1_O_UNCONNECTED
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => NLW_i_2_O_UNCONNECTED
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => NLW_i_3_O_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_UART_with_2x4k_FIFOs_0_0_builtin_extdepth_v6_5 is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    rd_rst_i : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_UART_with_2x4k_FIFOs_0_0_builtin_extdepth_v6_5 : entity is "builtin_extdepth_v6";
end uart_UART_with_2x4k_FIFOs_0_0_builtin_extdepth_v6_5;

architecture STRUCTURE of uart_UART_with_2x4k_FIFOs_0_0_builtin_extdepth_v6_5 is
  signal NLW_i_0_O_UNCONNECTED : STD_LOGIC;
  signal NLW_i_1_O_UNCONNECTED : STD_LOGIC;
  signal NLW_i_2_O_UNCONNECTED : STD_LOGIC;
  signal NLW_i_3_O_UNCONNECTED : STD_LOGIC;
begin
\gonep.inst_prim\: entity work.uart_UART_with_2x4k_FIFOs_0_0_builtin_prim_v6_6
     port map (
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rd_rst_i => rd_rst_i,
      wr_en => wr_en
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => NLW_i_0_O_UNCONNECTED
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => NLW_i_1_O_UNCONNECTED
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => NLW_i_2_O_UNCONNECTED
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => NLW_i_3_O_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_UART_with_2x4k_FIFOs_0_0_builtin_top_v6 is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    rd_rst_i : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_UART_with_2x4k_FIFOs_0_0_builtin_top_v6 : entity is "builtin_top_v6";
end uart_UART_with_2x4k_FIFOs_0_0_builtin_top_v6;

architecture STRUCTURE of uart_UART_with_2x4k_FIFOs_0_0_builtin_top_v6 is
begin
\gextw[1].gnll_fifo.inst_extd\: entity work.uart_UART_with_2x4k_FIFOs_0_0_builtin_extdepth_v6
     port map (
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rd_rst_i => rd_rst_i,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_UART_with_2x4k_FIFOs_0_0_builtin_top_v6_4 is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    rd_rst_i : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_UART_with_2x4k_FIFOs_0_0_builtin_top_v6_4 : entity is "builtin_top_v6";
end uart_UART_with_2x4k_FIFOs_0_0_builtin_top_v6_4;

architecture STRUCTURE of uart_UART_with_2x4k_FIFOs_0_0_builtin_top_v6_4 is
begin
\gextw[1].gnll_fifo.inst_extd\: entity work.uart_UART_with_2x4k_FIFOs_0_0_builtin_extdepth_v6_5
     port map (
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rd_rst_i => rd_rst_i,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4_builtin is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4_builtin : entity is "fifo_generator_v13_1_4_builtin";
end uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4_builtin;

architecture STRUCTURE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4_builtin is
  signal rd_rst_i : STD_LOGIC;
begin
\g7ser_birst.rstbt\: entity work.uart_UART_with_2x4k_FIFOs_0_0_reset_builtin
     port map (
      clk => clk,
      rd_rst_i => rd_rst_i,
      rst => rst
    );
\v7_bi_fifo.fblk\: entity work.uart_UART_with_2x4k_FIFOs_0_0_builtin_top_v6
     port map (
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rd_rst_i => rd_rst_i,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4_builtin_2 is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4_builtin_2 : entity is "fifo_generator_v13_1_4_builtin";
end uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4_builtin_2;

architecture STRUCTURE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4_builtin_2 is
  signal rd_rst_i : STD_LOGIC;
begin
\g7ser_birst.rstbt\: entity work.uart_UART_with_2x4k_FIFOs_0_0_reset_builtin_3
     port map (
      clk => clk,
      rd_rst_i => rd_rst_i,
      rst => rst
    );
\v7_bi_fifo.fblk\: entity work.uart_UART_with_2x4k_FIFOs_0_0_builtin_top_v6_4
     port map (
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rd_rst_i => rd_rst_i,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_top is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_top : entity is "fifo_generator_top";
end uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_top;

architecture STRUCTURE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_top is
begin
\gbi.bi\: entity work.uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4_builtin
     port map (
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_top_1 is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_top_1 : entity is "fifo_generator_top";
end uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_top_1;

architecture STRUCTURE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_top_1 is
begin
\gbi.bi\: entity work.uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4_builtin_2
     port map (
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4_synth is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4_synth : entity is "fifo_generator_v13_1_4_synth";
end uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4_synth;

architecture STRUCTURE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4_synth is
begin
\gconvfifo.rf\: entity work.uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_top
     port map (
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4_synth_0 is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4_synth_0 : entity is "fifo_generator_v13_1_4_synth";
end uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4_synth_0;

architecture STRUCTURE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4_synth_0 is
begin
\gconvfifo.rf\: entity work.uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_top_1
     port map (
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 is
  port (
    backup : in STD_LOGIC;
    backup_marker : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    srst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 11 downto 0 );
    prog_empty_thresh_assert : in STD_LOGIC_VECTOR ( 11 downto 0 );
    prog_empty_thresh_negate : in STD_LOGIC_VECTOR ( 11 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 11 downto 0 );
    prog_full_thresh_assert : in STD_LOGIC_VECTOR ( 11 downto 0 );
    prog_full_thresh_negate : in STD_LOGIC_VECTOR ( 11 downto 0 );
    int_clk : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    sleep : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    underflow : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 11 downto 0 );
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    m_aclk_en : in STD_LOGIC;
    s_aclk_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_injectsbiterr : in STD_LOGIC;
    axi_aw_injectdbiterr : in STD_LOGIC;
    axi_aw_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_sbiterr : out STD_LOGIC;
    axi_aw_dbiterr : out STD_LOGIC;
    axi_aw_overflow : out STD_LOGIC;
    axi_aw_underflow : out STD_LOGIC;
    axi_aw_prog_full : out STD_LOGIC;
    axi_aw_prog_empty : out STD_LOGIC;
    axi_w_injectsbiterr : in STD_LOGIC;
    axi_w_injectdbiterr : in STD_LOGIC;
    axi_w_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_sbiterr : out STD_LOGIC;
    axi_w_dbiterr : out STD_LOGIC;
    axi_w_overflow : out STD_LOGIC;
    axi_w_underflow : out STD_LOGIC;
    axi_w_prog_full : out STD_LOGIC;
    axi_w_prog_empty : out STD_LOGIC;
    axi_b_injectsbiterr : in STD_LOGIC;
    axi_b_injectdbiterr : in STD_LOGIC;
    axi_b_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_sbiterr : out STD_LOGIC;
    axi_b_dbiterr : out STD_LOGIC;
    axi_b_overflow : out STD_LOGIC;
    axi_b_underflow : out STD_LOGIC;
    axi_b_prog_full : out STD_LOGIC;
    axi_b_prog_empty : out STD_LOGIC;
    axi_ar_injectsbiterr : in STD_LOGIC;
    axi_ar_injectdbiterr : in STD_LOGIC;
    axi_ar_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_sbiterr : out STD_LOGIC;
    axi_ar_dbiterr : out STD_LOGIC;
    axi_ar_overflow : out STD_LOGIC;
    axi_ar_underflow : out STD_LOGIC;
    axi_ar_prog_full : out STD_LOGIC;
    axi_ar_prog_empty : out STD_LOGIC;
    axi_r_injectsbiterr : in STD_LOGIC;
    axi_r_injectdbiterr : in STD_LOGIC;
    axi_r_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_sbiterr : out STD_LOGIC;
    axi_r_dbiterr : out STD_LOGIC;
    axi_r_overflow : out STD_LOGIC;
    axi_r_underflow : out STD_LOGIC;
    axi_r_prog_full : out STD_LOGIC;
    axi_r_prog_empty : out STD_LOGIC;
    axis_injectsbiterr : in STD_LOGIC;
    axis_injectdbiterr : in STD_LOGIC;
    axis_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_sbiterr : out STD_LOGIC;
    axis_dbiterr : out STD_LOGIC;
    axis_overflow : out STD_LOGIC;
    axis_underflow : out STD_LOGIC;
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 12;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 8;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 8;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is "artix7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 6;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 4;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is "4kx9";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 4094;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 4093;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 12;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 4096;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 12;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 12;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 4096;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 12;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 : entity is "fifo_generator_v13_1_4";
end uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4;

architecture STRUCTURE of uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  axi_ar_data_count(4) <= \<const0>\;
  axi_ar_data_count(3) <= \<const0>\;
  axi_ar_data_count(2) <= \<const0>\;
  axi_ar_data_count(1) <= \<const0>\;
  axi_ar_data_count(0) <= \<const0>\;
  axi_ar_dbiterr <= \<const0>\;
  axi_ar_overflow <= \<const0>\;
  axi_ar_prog_empty <= \<const1>\;
  axi_ar_prog_full <= \<const0>\;
  axi_ar_rd_data_count(4) <= \<const0>\;
  axi_ar_rd_data_count(3) <= \<const0>\;
  axi_ar_rd_data_count(2) <= \<const0>\;
  axi_ar_rd_data_count(1) <= \<const0>\;
  axi_ar_rd_data_count(0) <= \<const0>\;
  axi_ar_sbiterr <= \<const0>\;
  axi_ar_underflow <= \<const0>\;
  axi_ar_wr_data_count(4) <= \<const0>\;
  axi_ar_wr_data_count(3) <= \<const0>\;
  axi_ar_wr_data_count(2) <= \<const0>\;
  axi_ar_wr_data_count(1) <= \<const0>\;
  axi_ar_wr_data_count(0) <= \<const0>\;
  axi_aw_data_count(4) <= \<const0>\;
  axi_aw_data_count(3) <= \<const0>\;
  axi_aw_data_count(2) <= \<const0>\;
  axi_aw_data_count(1) <= \<const0>\;
  axi_aw_data_count(0) <= \<const0>\;
  axi_aw_dbiterr <= \<const0>\;
  axi_aw_overflow <= \<const0>\;
  axi_aw_prog_empty <= \<const1>\;
  axi_aw_prog_full <= \<const0>\;
  axi_aw_rd_data_count(4) <= \<const0>\;
  axi_aw_rd_data_count(3) <= \<const0>\;
  axi_aw_rd_data_count(2) <= \<const0>\;
  axi_aw_rd_data_count(1) <= \<const0>\;
  axi_aw_rd_data_count(0) <= \<const0>\;
  axi_aw_sbiterr <= \<const0>\;
  axi_aw_underflow <= \<const0>\;
  axi_aw_wr_data_count(4) <= \<const0>\;
  axi_aw_wr_data_count(3) <= \<const0>\;
  axi_aw_wr_data_count(2) <= \<const0>\;
  axi_aw_wr_data_count(1) <= \<const0>\;
  axi_aw_wr_data_count(0) <= \<const0>\;
  axi_b_data_count(4) <= \<const0>\;
  axi_b_data_count(3) <= \<const0>\;
  axi_b_data_count(2) <= \<const0>\;
  axi_b_data_count(1) <= \<const0>\;
  axi_b_data_count(0) <= \<const0>\;
  axi_b_dbiterr <= \<const0>\;
  axi_b_overflow <= \<const0>\;
  axi_b_prog_empty <= \<const1>\;
  axi_b_prog_full <= \<const0>\;
  axi_b_rd_data_count(4) <= \<const0>\;
  axi_b_rd_data_count(3) <= \<const0>\;
  axi_b_rd_data_count(2) <= \<const0>\;
  axi_b_rd_data_count(1) <= \<const0>\;
  axi_b_rd_data_count(0) <= \<const0>\;
  axi_b_sbiterr <= \<const0>\;
  axi_b_underflow <= \<const0>\;
  axi_b_wr_data_count(4) <= \<const0>\;
  axi_b_wr_data_count(3) <= \<const0>\;
  axi_b_wr_data_count(2) <= \<const0>\;
  axi_b_wr_data_count(1) <= \<const0>\;
  axi_b_wr_data_count(0) <= \<const0>\;
  axi_r_data_count(10) <= \<const0>\;
  axi_r_data_count(9) <= \<const0>\;
  axi_r_data_count(8) <= \<const0>\;
  axi_r_data_count(7) <= \<const0>\;
  axi_r_data_count(6) <= \<const0>\;
  axi_r_data_count(5) <= \<const0>\;
  axi_r_data_count(4) <= \<const0>\;
  axi_r_data_count(3) <= \<const0>\;
  axi_r_data_count(2) <= \<const0>\;
  axi_r_data_count(1) <= \<const0>\;
  axi_r_data_count(0) <= \<const0>\;
  axi_r_dbiterr <= \<const0>\;
  axi_r_overflow <= \<const0>\;
  axi_r_prog_empty <= \<const1>\;
  axi_r_prog_full <= \<const0>\;
  axi_r_rd_data_count(10) <= \<const0>\;
  axi_r_rd_data_count(9) <= \<const0>\;
  axi_r_rd_data_count(8) <= \<const0>\;
  axi_r_rd_data_count(7) <= \<const0>\;
  axi_r_rd_data_count(6) <= \<const0>\;
  axi_r_rd_data_count(5) <= \<const0>\;
  axi_r_rd_data_count(4) <= \<const0>\;
  axi_r_rd_data_count(3) <= \<const0>\;
  axi_r_rd_data_count(2) <= \<const0>\;
  axi_r_rd_data_count(1) <= \<const0>\;
  axi_r_rd_data_count(0) <= \<const0>\;
  axi_r_sbiterr <= \<const0>\;
  axi_r_underflow <= \<const0>\;
  axi_r_wr_data_count(10) <= \<const0>\;
  axi_r_wr_data_count(9) <= \<const0>\;
  axi_r_wr_data_count(8) <= \<const0>\;
  axi_r_wr_data_count(7) <= \<const0>\;
  axi_r_wr_data_count(6) <= \<const0>\;
  axi_r_wr_data_count(5) <= \<const0>\;
  axi_r_wr_data_count(4) <= \<const0>\;
  axi_r_wr_data_count(3) <= \<const0>\;
  axi_r_wr_data_count(2) <= \<const0>\;
  axi_r_wr_data_count(1) <= \<const0>\;
  axi_r_wr_data_count(0) <= \<const0>\;
  axi_w_data_count(10) <= \<const0>\;
  axi_w_data_count(9) <= \<const0>\;
  axi_w_data_count(8) <= \<const0>\;
  axi_w_data_count(7) <= \<const0>\;
  axi_w_data_count(6) <= \<const0>\;
  axi_w_data_count(5) <= \<const0>\;
  axi_w_data_count(4) <= \<const0>\;
  axi_w_data_count(3) <= \<const0>\;
  axi_w_data_count(2) <= \<const0>\;
  axi_w_data_count(1) <= \<const0>\;
  axi_w_data_count(0) <= \<const0>\;
  axi_w_dbiterr <= \<const0>\;
  axi_w_overflow <= \<const0>\;
  axi_w_prog_empty <= \<const1>\;
  axi_w_prog_full <= \<const0>\;
  axi_w_rd_data_count(10) <= \<const0>\;
  axi_w_rd_data_count(9) <= \<const0>\;
  axi_w_rd_data_count(8) <= \<const0>\;
  axi_w_rd_data_count(7) <= \<const0>\;
  axi_w_rd_data_count(6) <= \<const0>\;
  axi_w_rd_data_count(5) <= \<const0>\;
  axi_w_rd_data_count(4) <= \<const0>\;
  axi_w_rd_data_count(3) <= \<const0>\;
  axi_w_rd_data_count(2) <= \<const0>\;
  axi_w_rd_data_count(1) <= \<const0>\;
  axi_w_rd_data_count(0) <= \<const0>\;
  axi_w_sbiterr <= \<const0>\;
  axi_w_underflow <= \<const0>\;
  axi_w_wr_data_count(10) <= \<const0>\;
  axi_w_wr_data_count(9) <= \<const0>\;
  axi_w_wr_data_count(8) <= \<const0>\;
  axi_w_wr_data_count(7) <= \<const0>\;
  axi_w_wr_data_count(6) <= \<const0>\;
  axi_w_wr_data_count(5) <= \<const0>\;
  axi_w_wr_data_count(4) <= \<const0>\;
  axi_w_wr_data_count(3) <= \<const0>\;
  axi_w_wr_data_count(2) <= \<const0>\;
  axi_w_wr_data_count(1) <= \<const0>\;
  axi_w_wr_data_count(0) <= \<const0>\;
  axis_data_count(10) <= \<const0>\;
  axis_data_count(9) <= \<const0>\;
  axis_data_count(8) <= \<const0>\;
  axis_data_count(7) <= \<const0>\;
  axis_data_count(6) <= \<const0>\;
  axis_data_count(5) <= \<const0>\;
  axis_data_count(4) <= \<const0>\;
  axis_data_count(3) <= \<const0>\;
  axis_data_count(2) <= \<const0>\;
  axis_data_count(1) <= \<const0>\;
  axis_data_count(0) <= \<const0>\;
  axis_dbiterr <= \<const0>\;
  axis_overflow <= \<const0>\;
  axis_prog_empty <= \<const1>\;
  axis_prog_full <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_sbiterr <= \<const0>\;
  axis_underflow <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
  data_count(11) <= \<const0>\;
  data_count(10) <= \<const0>\;
  data_count(9) <= \<const0>\;
  data_count(8) <= \<const0>\;
  data_count(7) <= \<const0>\;
  data_count(6) <= \<const0>\;
  data_count(5) <= \<const0>\;
  data_count(4) <= \<const0>\;
  data_count(3) <= \<const0>\;
  data_count(2) <= \<const0>\;
  data_count(1) <= \<const0>\;
  data_count(0) <= \<const0>\;
  dbiterr <= \<const0>\;
  m_axi_araddr(31) <= \<const0>\;
  m_axi_araddr(30) <= \<const0>\;
  m_axi_araddr(29) <= \<const0>\;
  m_axi_araddr(28) <= \<const0>\;
  m_axi_araddr(27) <= \<const0>\;
  m_axi_araddr(26) <= \<const0>\;
  m_axi_araddr(25) <= \<const0>\;
  m_axi_araddr(24) <= \<const0>\;
  m_axi_araddr(23) <= \<const0>\;
  m_axi_araddr(22) <= \<const0>\;
  m_axi_araddr(21) <= \<const0>\;
  m_axi_araddr(20) <= \<const0>\;
  m_axi_araddr(19) <= \<const0>\;
  m_axi_araddr(18) <= \<const0>\;
  m_axi_araddr(17) <= \<const0>\;
  m_axi_araddr(16) <= \<const0>\;
  m_axi_araddr(15) <= \<const0>\;
  m_axi_araddr(14) <= \<const0>\;
  m_axi_araddr(13) <= \<const0>\;
  m_axi_araddr(12) <= \<const0>\;
  m_axi_araddr(11) <= \<const0>\;
  m_axi_araddr(10) <= \<const0>\;
  m_axi_araddr(9) <= \<const0>\;
  m_axi_araddr(8) <= \<const0>\;
  m_axi_araddr(7) <= \<const0>\;
  m_axi_araddr(6) <= \<const0>\;
  m_axi_araddr(5) <= \<const0>\;
  m_axi_araddr(4) <= \<const0>\;
  m_axi_araddr(3) <= \<const0>\;
  m_axi_araddr(2) <= \<const0>\;
  m_axi_araddr(1) <= \<const0>\;
  m_axi_araddr(0) <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \<const0>\;
  m_axi_awaddr(31) <= \<const0>\;
  m_axi_awaddr(30) <= \<const0>\;
  m_axi_awaddr(29) <= \<const0>\;
  m_axi_awaddr(28) <= \<const0>\;
  m_axi_awaddr(27) <= \<const0>\;
  m_axi_awaddr(26) <= \<const0>\;
  m_axi_awaddr(25) <= \<const0>\;
  m_axi_awaddr(24) <= \<const0>\;
  m_axi_awaddr(23) <= \<const0>\;
  m_axi_awaddr(22) <= \<const0>\;
  m_axi_awaddr(21) <= \<const0>\;
  m_axi_awaddr(20) <= \<const0>\;
  m_axi_awaddr(19) <= \<const0>\;
  m_axi_awaddr(18) <= \<const0>\;
  m_axi_awaddr(17) <= \<const0>\;
  m_axi_awaddr(16) <= \<const0>\;
  m_axi_awaddr(15) <= \<const0>\;
  m_axi_awaddr(14) <= \<const0>\;
  m_axi_awaddr(13) <= \<const0>\;
  m_axi_awaddr(12) <= \<const0>\;
  m_axi_awaddr(11) <= \<const0>\;
  m_axi_awaddr(10) <= \<const0>\;
  m_axi_awaddr(9) <= \<const0>\;
  m_axi_awaddr(8) <= \<const0>\;
  m_axi_awaddr(7) <= \<const0>\;
  m_axi_awaddr(6) <= \<const0>\;
  m_axi_awaddr(5) <= \<const0>\;
  m_axi_awaddr(4) <= \<const0>\;
  m_axi_awaddr(3) <= \<const0>\;
  m_axi_awaddr(2) <= \<const0>\;
  m_axi_awaddr(1) <= \<const0>\;
  m_axi_awaddr(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_rready <= \<const0>\;
  m_axi_wdata(63) <= \<const0>\;
  m_axi_wdata(62) <= \<const0>\;
  m_axi_wdata(61) <= \<const0>\;
  m_axi_wdata(60) <= \<const0>\;
  m_axi_wdata(59) <= \<const0>\;
  m_axi_wdata(58) <= \<const0>\;
  m_axi_wdata(57) <= \<const0>\;
  m_axi_wdata(56) <= \<const0>\;
  m_axi_wdata(55) <= \<const0>\;
  m_axi_wdata(54) <= \<const0>\;
  m_axi_wdata(53) <= \<const0>\;
  m_axi_wdata(52) <= \<const0>\;
  m_axi_wdata(51) <= \<const0>\;
  m_axi_wdata(50) <= \<const0>\;
  m_axi_wdata(49) <= \<const0>\;
  m_axi_wdata(48) <= \<const0>\;
  m_axi_wdata(47) <= \<const0>\;
  m_axi_wdata(46) <= \<const0>\;
  m_axi_wdata(45) <= \<const0>\;
  m_axi_wdata(44) <= \<const0>\;
  m_axi_wdata(43) <= \<const0>\;
  m_axi_wdata(42) <= \<const0>\;
  m_axi_wdata(41) <= \<const0>\;
  m_axi_wdata(40) <= \<const0>\;
  m_axi_wdata(39) <= \<const0>\;
  m_axi_wdata(38) <= \<const0>\;
  m_axi_wdata(37) <= \<const0>\;
  m_axi_wdata(36) <= \<const0>\;
  m_axi_wdata(35) <= \<const0>\;
  m_axi_wdata(34) <= \<const0>\;
  m_axi_wdata(33) <= \<const0>\;
  m_axi_wdata(32) <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(7) <= \<const0>\;
  m_axi_wstrb(6) <= \<const0>\;
  m_axi_wstrb(5) <= \<const0>\;
  m_axi_wstrb(4) <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(11) <= \<const0>\;
  rd_data_count(10) <= \<const0>\;
  rd_data_count(9) <= \<const0>\;
  rd_data_count(8) <= \<const0>\;
  rd_data_count(7) <= \<const0>\;
  rd_data_count(6) <= \<const0>\;
  rd_data_count(5) <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const1>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  s_axis_tready <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  valid <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(11) <= \<const0>\;
  wr_data_count(10) <= \<const0>\;
  wr_data_count(9) <= \<const0>\;
  wr_data_count(8) <= \<const0>\;
  wr_data_count(7) <= \<const0>\;
  wr_data_count(6) <= \<const0>\;
  wr_data_count(5) <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst_fifo_gen: entity work.uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4_synth
     port map (
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ is
  port (
    backup : in STD_LOGIC;
    backup_marker : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    srst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 11 downto 0 );
    prog_empty_thresh_assert : in STD_LOGIC_VECTOR ( 11 downto 0 );
    prog_empty_thresh_negate : in STD_LOGIC_VECTOR ( 11 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 11 downto 0 );
    prog_full_thresh_assert : in STD_LOGIC_VECTOR ( 11 downto 0 );
    prog_full_thresh_negate : in STD_LOGIC_VECTOR ( 11 downto 0 );
    int_clk : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    sleep : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    underflow : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 11 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 11 downto 0 );
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    m_aclk_en : in STD_LOGIC;
    s_aclk_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_injectsbiterr : in STD_LOGIC;
    axi_aw_injectdbiterr : in STD_LOGIC;
    axi_aw_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_sbiterr : out STD_LOGIC;
    axi_aw_dbiterr : out STD_LOGIC;
    axi_aw_overflow : out STD_LOGIC;
    axi_aw_underflow : out STD_LOGIC;
    axi_aw_prog_full : out STD_LOGIC;
    axi_aw_prog_empty : out STD_LOGIC;
    axi_w_injectsbiterr : in STD_LOGIC;
    axi_w_injectdbiterr : in STD_LOGIC;
    axi_w_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_sbiterr : out STD_LOGIC;
    axi_w_dbiterr : out STD_LOGIC;
    axi_w_overflow : out STD_LOGIC;
    axi_w_underflow : out STD_LOGIC;
    axi_w_prog_full : out STD_LOGIC;
    axi_w_prog_empty : out STD_LOGIC;
    axi_b_injectsbiterr : in STD_LOGIC;
    axi_b_injectdbiterr : in STD_LOGIC;
    axi_b_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_sbiterr : out STD_LOGIC;
    axi_b_dbiterr : out STD_LOGIC;
    axi_b_overflow : out STD_LOGIC;
    axi_b_underflow : out STD_LOGIC;
    axi_b_prog_full : out STD_LOGIC;
    axi_b_prog_empty : out STD_LOGIC;
    axi_ar_injectsbiterr : in STD_LOGIC;
    axi_ar_injectdbiterr : in STD_LOGIC;
    axi_ar_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_sbiterr : out STD_LOGIC;
    axi_ar_dbiterr : out STD_LOGIC;
    axi_ar_overflow : out STD_LOGIC;
    axi_ar_underflow : out STD_LOGIC;
    axi_ar_prog_full : out STD_LOGIC;
    axi_ar_prog_empty : out STD_LOGIC;
    axi_r_injectsbiterr : in STD_LOGIC;
    axi_r_injectdbiterr : in STD_LOGIC;
    axi_r_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_sbiterr : out STD_LOGIC;
    axi_r_dbiterr : out STD_LOGIC;
    axi_r_overflow : out STD_LOGIC;
    axi_r_underflow : out STD_LOGIC;
    axi_r_prog_full : out STD_LOGIC;
    axi_r_prog_empty : out STD_LOGIC;
    axis_injectsbiterr : in STD_LOGIC;
    axis_injectdbiterr : in STD_LOGIC;
    axis_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_sbiterr : out STD_LOGIC;
    axis_dbiterr : out STD_LOGIC;
    axis_overflow : out STD_LOGIC;
    axis_underflow : out STD_LOGIC;
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 12;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 8;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 8;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is "artix7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 6;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 4;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is "4kx9";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 4094;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 4093;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 12;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 4096;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 12;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 12;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 4096;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 12;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ : entity is "fifo_generator_v13_1_4";
end \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\;

architecture STRUCTURE of \uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\ is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  axi_ar_data_count(4) <= \<const0>\;
  axi_ar_data_count(3) <= \<const0>\;
  axi_ar_data_count(2) <= \<const0>\;
  axi_ar_data_count(1) <= \<const0>\;
  axi_ar_data_count(0) <= \<const0>\;
  axi_ar_dbiterr <= \<const0>\;
  axi_ar_overflow <= \<const0>\;
  axi_ar_prog_empty <= \<const1>\;
  axi_ar_prog_full <= \<const0>\;
  axi_ar_rd_data_count(4) <= \<const0>\;
  axi_ar_rd_data_count(3) <= \<const0>\;
  axi_ar_rd_data_count(2) <= \<const0>\;
  axi_ar_rd_data_count(1) <= \<const0>\;
  axi_ar_rd_data_count(0) <= \<const0>\;
  axi_ar_sbiterr <= \<const0>\;
  axi_ar_underflow <= \<const0>\;
  axi_ar_wr_data_count(4) <= \<const0>\;
  axi_ar_wr_data_count(3) <= \<const0>\;
  axi_ar_wr_data_count(2) <= \<const0>\;
  axi_ar_wr_data_count(1) <= \<const0>\;
  axi_ar_wr_data_count(0) <= \<const0>\;
  axi_aw_data_count(4) <= \<const0>\;
  axi_aw_data_count(3) <= \<const0>\;
  axi_aw_data_count(2) <= \<const0>\;
  axi_aw_data_count(1) <= \<const0>\;
  axi_aw_data_count(0) <= \<const0>\;
  axi_aw_dbiterr <= \<const0>\;
  axi_aw_overflow <= \<const0>\;
  axi_aw_prog_empty <= \<const1>\;
  axi_aw_prog_full <= \<const0>\;
  axi_aw_rd_data_count(4) <= \<const0>\;
  axi_aw_rd_data_count(3) <= \<const0>\;
  axi_aw_rd_data_count(2) <= \<const0>\;
  axi_aw_rd_data_count(1) <= \<const0>\;
  axi_aw_rd_data_count(0) <= \<const0>\;
  axi_aw_sbiterr <= \<const0>\;
  axi_aw_underflow <= \<const0>\;
  axi_aw_wr_data_count(4) <= \<const0>\;
  axi_aw_wr_data_count(3) <= \<const0>\;
  axi_aw_wr_data_count(2) <= \<const0>\;
  axi_aw_wr_data_count(1) <= \<const0>\;
  axi_aw_wr_data_count(0) <= \<const0>\;
  axi_b_data_count(4) <= \<const0>\;
  axi_b_data_count(3) <= \<const0>\;
  axi_b_data_count(2) <= \<const0>\;
  axi_b_data_count(1) <= \<const0>\;
  axi_b_data_count(0) <= \<const0>\;
  axi_b_dbiterr <= \<const0>\;
  axi_b_overflow <= \<const0>\;
  axi_b_prog_empty <= \<const1>\;
  axi_b_prog_full <= \<const0>\;
  axi_b_rd_data_count(4) <= \<const0>\;
  axi_b_rd_data_count(3) <= \<const0>\;
  axi_b_rd_data_count(2) <= \<const0>\;
  axi_b_rd_data_count(1) <= \<const0>\;
  axi_b_rd_data_count(0) <= \<const0>\;
  axi_b_sbiterr <= \<const0>\;
  axi_b_underflow <= \<const0>\;
  axi_b_wr_data_count(4) <= \<const0>\;
  axi_b_wr_data_count(3) <= \<const0>\;
  axi_b_wr_data_count(2) <= \<const0>\;
  axi_b_wr_data_count(1) <= \<const0>\;
  axi_b_wr_data_count(0) <= \<const0>\;
  axi_r_data_count(10) <= \<const0>\;
  axi_r_data_count(9) <= \<const0>\;
  axi_r_data_count(8) <= \<const0>\;
  axi_r_data_count(7) <= \<const0>\;
  axi_r_data_count(6) <= \<const0>\;
  axi_r_data_count(5) <= \<const0>\;
  axi_r_data_count(4) <= \<const0>\;
  axi_r_data_count(3) <= \<const0>\;
  axi_r_data_count(2) <= \<const0>\;
  axi_r_data_count(1) <= \<const0>\;
  axi_r_data_count(0) <= \<const0>\;
  axi_r_dbiterr <= \<const0>\;
  axi_r_overflow <= \<const0>\;
  axi_r_prog_empty <= \<const1>\;
  axi_r_prog_full <= \<const0>\;
  axi_r_rd_data_count(10) <= \<const0>\;
  axi_r_rd_data_count(9) <= \<const0>\;
  axi_r_rd_data_count(8) <= \<const0>\;
  axi_r_rd_data_count(7) <= \<const0>\;
  axi_r_rd_data_count(6) <= \<const0>\;
  axi_r_rd_data_count(5) <= \<const0>\;
  axi_r_rd_data_count(4) <= \<const0>\;
  axi_r_rd_data_count(3) <= \<const0>\;
  axi_r_rd_data_count(2) <= \<const0>\;
  axi_r_rd_data_count(1) <= \<const0>\;
  axi_r_rd_data_count(0) <= \<const0>\;
  axi_r_sbiterr <= \<const0>\;
  axi_r_underflow <= \<const0>\;
  axi_r_wr_data_count(10) <= \<const0>\;
  axi_r_wr_data_count(9) <= \<const0>\;
  axi_r_wr_data_count(8) <= \<const0>\;
  axi_r_wr_data_count(7) <= \<const0>\;
  axi_r_wr_data_count(6) <= \<const0>\;
  axi_r_wr_data_count(5) <= \<const0>\;
  axi_r_wr_data_count(4) <= \<const0>\;
  axi_r_wr_data_count(3) <= \<const0>\;
  axi_r_wr_data_count(2) <= \<const0>\;
  axi_r_wr_data_count(1) <= \<const0>\;
  axi_r_wr_data_count(0) <= \<const0>\;
  axi_w_data_count(10) <= \<const0>\;
  axi_w_data_count(9) <= \<const0>\;
  axi_w_data_count(8) <= \<const0>\;
  axi_w_data_count(7) <= \<const0>\;
  axi_w_data_count(6) <= \<const0>\;
  axi_w_data_count(5) <= \<const0>\;
  axi_w_data_count(4) <= \<const0>\;
  axi_w_data_count(3) <= \<const0>\;
  axi_w_data_count(2) <= \<const0>\;
  axi_w_data_count(1) <= \<const0>\;
  axi_w_data_count(0) <= \<const0>\;
  axi_w_dbiterr <= \<const0>\;
  axi_w_overflow <= \<const0>\;
  axi_w_prog_empty <= \<const1>\;
  axi_w_prog_full <= \<const0>\;
  axi_w_rd_data_count(10) <= \<const0>\;
  axi_w_rd_data_count(9) <= \<const0>\;
  axi_w_rd_data_count(8) <= \<const0>\;
  axi_w_rd_data_count(7) <= \<const0>\;
  axi_w_rd_data_count(6) <= \<const0>\;
  axi_w_rd_data_count(5) <= \<const0>\;
  axi_w_rd_data_count(4) <= \<const0>\;
  axi_w_rd_data_count(3) <= \<const0>\;
  axi_w_rd_data_count(2) <= \<const0>\;
  axi_w_rd_data_count(1) <= \<const0>\;
  axi_w_rd_data_count(0) <= \<const0>\;
  axi_w_sbiterr <= \<const0>\;
  axi_w_underflow <= \<const0>\;
  axi_w_wr_data_count(10) <= \<const0>\;
  axi_w_wr_data_count(9) <= \<const0>\;
  axi_w_wr_data_count(8) <= \<const0>\;
  axi_w_wr_data_count(7) <= \<const0>\;
  axi_w_wr_data_count(6) <= \<const0>\;
  axi_w_wr_data_count(5) <= \<const0>\;
  axi_w_wr_data_count(4) <= \<const0>\;
  axi_w_wr_data_count(3) <= \<const0>\;
  axi_w_wr_data_count(2) <= \<const0>\;
  axi_w_wr_data_count(1) <= \<const0>\;
  axi_w_wr_data_count(0) <= \<const0>\;
  axis_data_count(10) <= \<const0>\;
  axis_data_count(9) <= \<const0>\;
  axis_data_count(8) <= \<const0>\;
  axis_data_count(7) <= \<const0>\;
  axis_data_count(6) <= \<const0>\;
  axis_data_count(5) <= \<const0>\;
  axis_data_count(4) <= \<const0>\;
  axis_data_count(3) <= \<const0>\;
  axis_data_count(2) <= \<const0>\;
  axis_data_count(1) <= \<const0>\;
  axis_data_count(0) <= \<const0>\;
  axis_dbiterr <= \<const0>\;
  axis_overflow <= \<const0>\;
  axis_prog_empty <= \<const1>\;
  axis_prog_full <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_sbiterr <= \<const0>\;
  axis_underflow <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
  data_count(11) <= \<const0>\;
  data_count(10) <= \<const0>\;
  data_count(9) <= \<const0>\;
  data_count(8) <= \<const0>\;
  data_count(7) <= \<const0>\;
  data_count(6) <= \<const0>\;
  data_count(5) <= \<const0>\;
  data_count(4) <= \<const0>\;
  data_count(3) <= \<const0>\;
  data_count(2) <= \<const0>\;
  data_count(1) <= \<const0>\;
  data_count(0) <= \<const0>\;
  dbiterr <= \<const0>\;
  m_axi_araddr(31) <= \<const0>\;
  m_axi_araddr(30) <= \<const0>\;
  m_axi_araddr(29) <= \<const0>\;
  m_axi_araddr(28) <= \<const0>\;
  m_axi_araddr(27) <= \<const0>\;
  m_axi_araddr(26) <= \<const0>\;
  m_axi_araddr(25) <= \<const0>\;
  m_axi_araddr(24) <= \<const0>\;
  m_axi_araddr(23) <= \<const0>\;
  m_axi_araddr(22) <= \<const0>\;
  m_axi_araddr(21) <= \<const0>\;
  m_axi_araddr(20) <= \<const0>\;
  m_axi_araddr(19) <= \<const0>\;
  m_axi_araddr(18) <= \<const0>\;
  m_axi_araddr(17) <= \<const0>\;
  m_axi_araddr(16) <= \<const0>\;
  m_axi_araddr(15) <= \<const0>\;
  m_axi_araddr(14) <= \<const0>\;
  m_axi_araddr(13) <= \<const0>\;
  m_axi_araddr(12) <= \<const0>\;
  m_axi_araddr(11) <= \<const0>\;
  m_axi_araddr(10) <= \<const0>\;
  m_axi_araddr(9) <= \<const0>\;
  m_axi_araddr(8) <= \<const0>\;
  m_axi_araddr(7) <= \<const0>\;
  m_axi_araddr(6) <= \<const0>\;
  m_axi_araddr(5) <= \<const0>\;
  m_axi_araddr(4) <= \<const0>\;
  m_axi_araddr(3) <= \<const0>\;
  m_axi_araddr(2) <= \<const0>\;
  m_axi_araddr(1) <= \<const0>\;
  m_axi_araddr(0) <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \<const0>\;
  m_axi_awaddr(31) <= \<const0>\;
  m_axi_awaddr(30) <= \<const0>\;
  m_axi_awaddr(29) <= \<const0>\;
  m_axi_awaddr(28) <= \<const0>\;
  m_axi_awaddr(27) <= \<const0>\;
  m_axi_awaddr(26) <= \<const0>\;
  m_axi_awaddr(25) <= \<const0>\;
  m_axi_awaddr(24) <= \<const0>\;
  m_axi_awaddr(23) <= \<const0>\;
  m_axi_awaddr(22) <= \<const0>\;
  m_axi_awaddr(21) <= \<const0>\;
  m_axi_awaddr(20) <= \<const0>\;
  m_axi_awaddr(19) <= \<const0>\;
  m_axi_awaddr(18) <= \<const0>\;
  m_axi_awaddr(17) <= \<const0>\;
  m_axi_awaddr(16) <= \<const0>\;
  m_axi_awaddr(15) <= \<const0>\;
  m_axi_awaddr(14) <= \<const0>\;
  m_axi_awaddr(13) <= \<const0>\;
  m_axi_awaddr(12) <= \<const0>\;
  m_axi_awaddr(11) <= \<const0>\;
  m_axi_awaddr(10) <= \<const0>\;
  m_axi_awaddr(9) <= \<const0>\;
  m_axi_awaddr(8) <= \<const0>\;
  m_axi_awaddr(7) <= \<const0>\;
  m_axi_awaddr(6) <= \<const0>\;
  m_axi_awaddr(5) <= \<const0>\;
  m_axi_awaddr(4) <= \<const0>\;
  m_axi_awaddr(3) <= \<const0>\;
  m_axi_awaddr(2) <= \<const0>\;
  m_axi_awaddr(1) <= \<const0>\;
  m_axi_awaddr(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_rready <= \<const0>\;
  m_axi_wdata(63) <= \<const0>\;
  m_axi_wdata(62) <= \<const0>\;
  m_axi_wdata(61) <= \<const0>\;
  m_axi_wdata(60) <= \<const0>\;
  m_axi_wdata(59) <= \<const0>\;
  m_axi_wdata(58) <= \<const0>\;
  m_axi_wdata(57) <= \<const0>\;
  m_axi_wdata(56) <= \<const0>\;
  m_axi_wdata(55) <= \<const0>\;
  m_axi_wdata(54) <= \<const0>\;
  m_axi_wdata(53) <= \<const0>\;
  m_axi_wdata(52) <= \<const0>\;
  m_axi_wdata(51) <= \<const0>\;
  m_axi_wdata(50) <= \<const0>\;
  m_axi_wdata(49) <= \<const0>\;
  m_axi_wdata(48) <= \<const0>\;
  m_axi_wdata(47) <= \<const0>\;
  m_axi_wdata(46) <= \<const0>\;
  m_axi_wdata(45) <= \<const0>\;
  m_axi_wdata(44) <= \<const0>\;
  m_axi_wdata(43) <= \<const0>\;
  m_axi_wdata(42) <= \<const0>\;
  m_axi_wdata(41) <= \<const0>\;
  m_axi_wdata(40) <= \<const0>\;
  m_axi_wdata(39) <= \<const0>\;
  m_axi_wdata(38) <= \<const0>\;
  m_axi_wdata(37) <= \<const0>\;
  m_axi_wdata(36) <= \<const0>\;
  m_axi_wdata(35) <= \<const0>\;
  m_axi_wdata(34) <= \<const0>\;
  m_axi_wdata(33) <= \<const0>\;
  m_axi_wdata(32) <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(7) <= \<const0>\;
  m_axi_wstrb(6) <= \<const0>\;
  m_axi_wstrb(5) <= \<const0>\;
  m_axi_wstrb(4) <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(11) <= \<const0>\;
  rd_data_count(10) <= \<const0>\;
  rd_data_count(9) <= \<const0>\;
  rd_data_count(8) <= \<const0>\;
  rd_data_count(7) <= \<const0>\;
  rd_data_count(6) <= \<const0>\;
  rd_data_count(5) <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  rd_rst_busy <= \<const1>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  s_axis_tready <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  valid <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(11) <= \<const0>\;
  wr_data_count(10) <= \<const0>\;
  wr_data_count(9) <= \<const0>\;
  wr_data_count(8) <= \<const0>\;
  wr_data_count(7) <= \<const0>\;
  wr_data_count(6) <= \<const0>\;
  wr_data_count(5) <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst_fifo_gen: entity work.uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4_synth_0
     port map (
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      rd_en => rd_en,
      rst => rst,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_UART_with_2x4k_FIFOs_0_0_uart_fifo_fifo_generator_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of uart_UART_with_2x4k_FIFOs_0_0_uart_fifo_fifo_generator_0_0 : entity is "uart_fifo_fifo_generator_0_0,fifo_generator_v13_1_4,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_UART_with_2x4k_FIFOs_0_0_uart_fifo_fifo_generator_0_0 : entity is "uart_fifo_fifo_generator_0_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of uart_UART_with_2x4k_FIFOs_0_0_uart_fifo_fifo_generator_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of uart_UART_with_2x4k_FIFOs_0_0_uart_fifo_fifo_generator_0_0 : entity is "fifo_generator_v13_1_4,Vivado 2017.2";
end uart_UART_with_2x4k_FIFOs_0_0_uart_fifo_fifo_generator_0_0;

architecture STRUCTURE of uart_UART_with_2x4k_FIFOs_0_0_uart_fifo_fifo_generator_0_0 is
  signal NLW_U0_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of U0 : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of U0 : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of U0 : label is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of U0 : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of U0 : label is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of U0 : label is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of U0 : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of U0 : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of U0 : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of U0 : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of U0 : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of U0 : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of U0 : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of U0 : label is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of U0 : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of U0 : label is 12;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of U0 : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of U0 : label is 8;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of U0 : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of U0 : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of U0 : label is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of U0 : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of U0 : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of U0 : label is 8;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of U0 : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of U0 : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of U0 : label is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of U0 : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of U0 : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of U0 : label is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of U0 : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of U0 : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of U0 : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of U0 : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of U0 : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of U0 : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of U0 : label is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of U0 : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of U0 : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of U0 : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of U0 : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of U0 : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of U0 : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of U0 : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of U0 : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of U0 : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of U0 : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of U0 : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of U0 : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of U0 : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of U0 : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of U0 : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of U0 : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of U0 : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of U0 : label is 6;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of U0 : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of U0 : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of U0 : label is 4;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of U0 : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of U0 : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of U0 : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of U0 : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of U0 : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of U0 : label is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of U0 : label is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of U0 : label is "4kx9";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of U0 : label is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of U0 : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of U0 : label is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of U0 : label is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of U0 : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of U0 : label is 4094;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of U0 : label is 4093;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of U0 : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of U0 : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of U0 : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of U0 : label is 12;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of U0 : label is 4096;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of U0 : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of U0 : label is 12;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of U0 : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of U0 : label is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of U0 : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of U0 : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of U0 : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of U0 : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of U0 : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of U0 : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of U0 : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of U0 : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of U0 : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of U0 : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of U0 : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of U0 : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of U0 : label is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of U0 : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of U0 : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of U0 : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of U0 : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of U0 : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of U0 : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of U0 : label is 12;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of U0 : label is 4096;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of U0 : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of U0 : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of U0 : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of U0 : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of U0 : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of U0 : label is 12;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of U0 : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of U0 : label is 1;
begin
U0: entity work.uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4
     port map (
      almost_empty => NLW_U0_almost_empty_UNCONNECTED,
      almost_full => NLW_U0_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_U0_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_U0_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_U0_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_U0_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_U0_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_U0_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_U0_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_U0_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_U0_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_U0_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_U0_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_U0_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_U0_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_U0_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_U0_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_U0_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_U0_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_U0_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_U0_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_U0_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_U0_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_U0_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_U0_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_U0_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_U0_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_U0_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_U0_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_U0_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_U0_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_U0_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_U0_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_U0_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_U0_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_U0_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_U0_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_U0_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_U0_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_U0_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_U0_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_U0_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_U0_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_U0_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_U0_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_U0_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_U0_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_U0_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_U0_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_U0_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_U0_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_U0_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_U0_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_U0_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_U0_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_U0_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => clk,
      data_count(11 downto 0) => NLW_U0_data_count_UNCONNECTED(11 downto 0),
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_U0_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_U0_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_U0_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_U0_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_U0_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_U0_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_U0_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_U0_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_U0_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_U0_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_U0_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_U0_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_U0_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_U0_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_U0_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_U0_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_U0_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_U0_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_U0_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_U0_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_U0_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_U0_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_U0_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_U0_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(0) => '0',
      m_axi_bready => NLW_U0_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => NLW_U0_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_U0_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(0) => NLW_U0_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_U0_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_U0_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_U0_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_U0_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(7 downto 0) => NLW_U0_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tdest(0) => NLW_U0_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_U0_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(0) => NLW_U0_m_axis_tkeep_UNCONNECTED(0),
      m_axis_tlast => NLW_U0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(0) => NLW_U0_m_axis_tstrb_UNCONNECTED(0),
      m_axis_tuser(3 downto 0) => NLW_U0_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_U0_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_U0_overflow_UNCONNECTED,
      prog_empty => NLW_U0_prog_empty_UNCONNECTED,
      prog_empty_thresh(11 downto 0) => B"000000000000",
      prog_empty_thresh_assert(11 downto 0) => B"000000000000",
      prog_empty_thresh_negate(11 downto 0) => B"000000000000",
      prog_full => NLW_U0_prog_full_UNCONNECTED,
      prog_full_thresh(11 downto 0) => B"000000000000",
      prog_full_thresh_assert(11 downto 0) => B"000000000000",
      prog_full_thresh_negate(11 downto 0) => B"000000000000",
      rd_clk => '0',
      rd_data_count(11 downto 0) => NLW_U0_rd_data_count_UNCONNECTED(11 downto 0),
      rd_en => rd_en,
      rd_rst => '0',
      rd_rst_busy => NLW_U0_rd_rst_busy_UNCONNECTED,
      rst => rst,
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_U0_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_U0_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(7 downto 0) => B"00000000",
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(0) => '0',
      s_axis_tlast => '0',
      s_axis_tready => NLW_U0_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(0) => '0',
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_U0_underflow_UNCONNECTED,
      valid => NLW_U0_valid_UNCONNECTED,
      wr_ack => NLW_U0_wr_ack_UNCONNECTED,
      wr_clk => '0',
      wr_data_count(11 downto 0) => NLW_U0_wr_data_count_UNCONNECTED(11 downto 0),
      wr_en => wr_en,
      wr_rst => '0',
      wr_rst_busy => NLW_U0_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \uart_UART_with_2x4k_FIFOs_0_0_uart_fifo_fifo_generator_0_0__xdcDup__1\ is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of \uart_UART_with_2x4k_FIFOs_0_0_uart_fifo_fifo_generator_0_0__xdcDup__1\ : entity is "uart_fifo_fifo_generator_0_0,fifo_generator_v13_1_4,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \uart_UART_with_2x4k_FIFOs_0_0_uart_fifo_fifo_generator_0_0__xdcDup__1\ : entity is "uart_fifo_fifo_generator_0_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \uart_UART_with_2x4k_FIFOs_0_0_uart_fifo_fifo_generator_0_0__xdcDup__1\ : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of \uart_UART_with_2x4k_FIFOs_0_0_uart_fifo_fifo_generator_0_0__xdcDup__1\ : entity is "fifo_generator_v13_1_4,Vivado 2017.2";
end \uart_UART_with_2x4k_FIFOs_0_0_uart_fifo_fifo_generator_0_0__xdcDup__1\;

architecture STRUCTURE of \uart_UART_with_2x4k_FIFOs_0_0_uart_fifo_fifo_generator_0_0__xdcDup__1\ is
  signal NLW_U0_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of U0 : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of U0 : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of U0 : label is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of U0 : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of U0 : label is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of U0 : label is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of U0 : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of U0 : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of U0 : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of U0 : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of U0 : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of U0 : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of U0 : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of U0 : label is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of U0 : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of U0 : label is 12;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of U0 : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of U0 : label is 8;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of U0 : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of U0 : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of U0 : label is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of U0 : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of U0 : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of U0 : label is 8;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of U0 : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of U0 : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of U0 : label is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of U0 : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of U0 : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of U0 : label is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of U0 : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of U0 : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of U0 : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of U0 : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of U0 : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of U0 : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of U0 : label is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of U0 : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of U0 : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of U0 : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of U0 : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of U0 : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of U0 : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of U0 : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of U0 : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of U0 : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of U0 : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of U0 : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of U0 : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of U0 : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of U0 : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of U0 : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of U0 : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of U0 : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of U0 : label is 6;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of U0 : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of U0 : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of U0 : label is 4;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of U0 : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of U0 : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of U0 : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of U0 : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of U0 : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of U0 : label is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of U0 : label is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of U0 : label is "4kx9";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of U0 : label is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of U0 : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of U0 : label is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of U0 : label is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of U0 : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of U0 : label is 4094;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of U0 : label is 4093;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of U0 : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of U0 : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of U0 : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of U0 : label is 12;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of U0 : label is 4096;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of U0 : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of U0 : label is 12;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of U0 : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of U0 : label is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of U0 : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of U0 : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of U0 : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of U0 : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of U0 : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of U0 : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of U0 : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of U0 : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of U0 : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of U0 : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of U0 : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of U0 : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of U0 : label is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of U0 : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of U0 : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of U0 : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of U0 : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of U0 : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of U0 : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of U0 : label is 12;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of U0 : label is 4096;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of U0 : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of U0 : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of U0 : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of U0 : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of U0 : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of U0 : label is 12;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of U0 : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of U0 : label is 1;
begin
U0: entity work.\uart_UART_with_2x4k_FIFOs_0_0_fifo_generator_v13_1_4__2\
     port map (
      almost_empty => NLW_U0_almost_empty_UNCONNECTED,
      almost_full => NLW_U0_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_U0_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_U0_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_U0_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_U0_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_U0_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_U0_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_U0_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_U0_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_U0_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_U0_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_U0_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_U0_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_U0_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_U0_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_U0_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_U0_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_U0_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_U0_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_U0_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_U0_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_U0_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_U0_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_U0_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_U0_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_U0_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_U0_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_U0_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_U0_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_U0_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_U0_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_U0_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_U0_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_U0_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_U0_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_U0_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_U0_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_U0_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_U0_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_U0_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_U0_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_U0_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_U0_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_U0_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_U0_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_U0_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_U0_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_U0_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_U0_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_U0_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_U0_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_U0_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_U0_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_U0_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_U0_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => clk,
      data_count(11 downto 0) => NLW_U0_data_count_UNCONNECTED(11 downto 0),
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_U0_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_U0_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_U0_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_U0_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_U0_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_U0_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_U0_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_U0_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_U0_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_U0_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_U0_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_U0_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_U0_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_U0_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_U0_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_U0_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_U0_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_U0_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_U0_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_U0_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_U0_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_U0_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_U0_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_U0_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(0) => '0',
      m_axi_bready => NLW_U0_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => NLW_U0_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_U0_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(0) => NLW_U0_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_U0_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_U0_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_U0_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_U0_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(7 downto 0) => NLW_U0_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tdest(0) => NLW_U0_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_U0_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(0) => NLW_U0_m_axis_tkeep_UNCONNECTED(0),
      m_axis_tlast => NLW_U0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(0) => NLW_U0_m_axis_tstrb_UNCONNECTED(0),
      m_axis_tuser(3 downto 0) => NLW_U0_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_U0_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_U0_overflow_UNCONNECTED,
      prog_empty => NLW_U0_prog_empty_UNCONNECTED,
      prog_empty_thresh(11 downto 0) => B"000000000000",
      prog_empty_thresh_assert(11 downto 0) => B"000000000000",
      prog_empty_thresh_negate(11 downto 0) => B"000000000000",
      prog_full => NLW_U0_prog_full_UNCONNECTED,
      prog_full_thresh(11 downto 0) => B"000000000000",
      prog_full_thresh_assert(11 downto 0) => B"000000000000",
      prog_full_thresh_negate(11 downto 0) => B"000000000000",
      rd_clk => '0',
      rd_data_count(11 downto 0) => NLW_U0_rd_data_count_UNCONNECTED(11 downto 0),
      rd_en => rd_en,
      rd_rst => '0',
      rd_rst_busy => NLW_U0_rd_rst_busy_UNCONNECTED,
      rst => rst,
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_U0_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_U0_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(7 downto 0) => B"00000000",
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(0) => '0',
      s_axis_tlast => '0',
      s_axis_tready => NLW_U0_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(0) => '0',
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_U0_underflow_UNCONNECTED,
      valid => NLW_U0_valid_UNCONNECTED,
      wr_ack => NLW_U0_wr_ack_UNCONNECTED,
      wr_clk => '0',
      wr_data_count(11 downto 0) => NLW_U0_wr_data_count_UNCONNECTED(11 downto 0),
      wr_en => wr_en,
      wr_rst => '0',
      wr_rst_busy => NLW_U0_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_UART_with_2x4k_FIFOs_0_0_uart_fifo is
  port (
    empty : out STD_LOGIC;
    RsTx_reg : out STD_LOGIC;
    RsTx_reg_0 : out STD_LOGIC;
    clk : in STD_LOGIC;
    send_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    s_out_fifo_rd_en : in STD_LOGIC;
    \s_bitPlace_reg[1]\ : in STD_LOGIC;
    \s_bitPlace_reg[0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_UART_with_2x4k_FIFOs_0_0_uart_fifo : entity is "uart_fifo";
end uart_UART_with_2x4k_FIFOs_0_0_uart_fifo;

architecture STRUCTURE of uart_UART_with_2x4k_FIFOs_0_0_uart_fifo is
  signal FIFO_READ_rd_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fifo_generator_0_n_8 : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fifo_generator_0 : label is "uart_fifo_fifo_generator_0_0,fifo_generator_v13_1_4,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fifo_generator_0 : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fifo_generator_0 : label is "fifo_generator_v13_1_4,Vivado 2017.2";
begin
RsTx_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACAFFF0CACA0F00"
    )
        port map (
      I0 => FIFO_READ_rd_data(5),
      I1 => FIFO_READ_rd_data(7),
      I2 => \s_bitPlace_reg[1]\,
      I3 => FIFO_READ_rd_data(4),
      I4 => \s_bitPlace_reg[0]\,
      I5 => FIFO_READ_rd_data(6),
      O => RsTx_reg
    );
RsTx_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACAFFF0CACA0F00"
    )
        port map (
      I0 => FIFO_READ_rd_data(1),
      I1 => FIFO_READ_rd_data(3),
      I2 => \s_bitPlace_reg[1]\,
      I3 => FIFO_READ_rd_data(0),
      I4 => \s_bitPlace_reg[0]\,
      I5 => FIFO_READ_rd_data(2),
      O => RsTx_reg_0
    );
fifo_generator_0: entity work.uart_UART_with_2x4k_FIFOs_0_0_uart_fifo_fifo_generator_0_0
     port map (
      clk => clk,
      din(7 downto 0) => send_din(7 downto 0),
      dout(7 downto 0) => FIFO_READ_rd_data(7 downto 0),
      empty => empty,
      full => fifo_generator_0_n_8,
      rd_en => s_out_fifo_rd_en,
      rst => '0',
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \uart_UART_with_2x4k_FIFOs_0_0_uart_fifo__xdcDup__1\ is
  port (
    read_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_read_state_reg : out STD_LOGIC;
    s_read_ready_reg : out STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    s_read_state : in STD_LOGIC;
    read_ack : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \uart_UART_with_2x4k_FIFOs_0_0_uart_fifo__xdcDup__1\ : entity is "uart_fifo";
end \uart_UART_with_2x4k_FIFOs_0_0_uart_fifo__xdcDup__1\;

architecture STRUCTURE of \uart_UART_with_2x4k_FIFOs_0_0_uart_fifo__xdcDup__1\ is
  signal FIFO_READ_empty : STD_LOGIC;
  signal fifo_generator_0_n_8 : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fifo_generator_0 : label is "uart_fifo_fifo_generator_0_0,fifo_generator_v13_1_4,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fifo_generator_0 : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fifo_generator_0 : label is "fifo_generator_v13_1_4,Vivado 2017.2";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of s_read_ready_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of s_read_state_i_1 : label is "soft_lutpair19";
begin
fifo_generator_0: entity work.\uart_UART_with_2x4k_FIFOs_0_0_uart_fifo_fifo_generator_0_0__xdcDup__1\
     port map (
      clk => clk,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => read_dout(7 downto 0),
      empty => FIFO_READ_empty,
      full => fifo_generator_0_n_8,
      rd_en => rd_en,
      rst => '0',
      wr_en => wr_en
    );
s_read_ready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2223"
    )
        port map (
      I0 => rd_en,
      I1 => s_read_state,
      I2 => FIFO_READ_empty,
      I3 => read_ack,
      O => s_read_ready_reg
    );
s_read_state_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
        port map (
      I0 => s_read_state,
      I1 => FIFO_READ_empty,
      I2 => read_ack,
      O => s_read_state_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_UART_with_2x4k_FIFOs_0_0_UART is
  port (
    clk : in STD_LOGIC;
    RsRx : in STD_LOGIC;
    RsTx : out STD_LOGIC;
    read_ready : out STD_LOGIC;
    read_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    read_ack : in STD_LOGIC;
    send_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    send_ready : in STD_LOGIC;
    send_delay : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_UART_with_2x4k_FIFOs_0_0_UART : entity is "UART";
end uart_UART_with_2x4k_FIFOs_0_0_UART;

architecture STRUCTURE of uart_UART_with_2x4k_FIFOs_0_0_UART is
  signal TX_n_1 : STD_LOGIC;
  signal TX_n_2 : STD_LOGIC;
  signal TX_n_3 : STD_LOGIC;
  signal TX_n_4 : STD_LOGIC;
  signal dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fifo_rx_queue_n_8 : STD_LOGIC;
  signal fifo_rx_queue_n_9 : STD_LOGIC;
  signal fifo_tx_queue_n_1 : STD_LOGIC;
  signal fifo_tx_queue_n_2 : STD_LOGIC;
  signal reset : STD_LOGIC;
  signal s_in_fifo_rd_en : STD_LOGIC;
  signal s_in_fifo_wr_en0 : STD_LOGIC;
  signal s_out_fifo_empty : STD_LOGIC;
  signal s_out_fifo_rd_en : STD_LOGIC;
  signal s_out_fifo_wr_en : STD_LOGIC;
  signal \s_out_fifo_wr_en__0_i_1_n_0\ : STD_LOGIC;
  signal s_read_state : STD_LOGIC;
  signal s_tx_state : STD_LOGIC;
begin
RX: entity work.uart_UART_with_2x4k_FIFOs_0_0_receive
     port map (
      RsRx => RsRx,
      clk => clk,
      din(7 downto 0) => dout(7 downto 0),
      s_in_fifo_wr_en0 => s_in_fifo_wr_en0,
      wr_en => reset
    );
TX: entity work.uart_UART_with_2x4k_FIFOs_0_0_transmit
     port map (
      RsTx => RsTx,
      clk => clk,
      empty => s_out_fifo_empty,
      \s_bitPlace_reg[0]_0\ => TX_n_1,
      \s_bitPlace_reg[1]_0\ => fifo_tx_queue_n_1,
      \s_bitPlace_reg[1]_1\ => fifo_tx_queue_n_2,
      \s_bitPlace_reg[4]_0\ => TX_n_2,
      s_out_fifo_rd_en => s_out_fifo_rd_en,
      s_tx_send_reg => TX_n_4,
      s_tx_state => s_tx_state,
      s_tx_state_reg => TX_n_3,
      send_delay => send_delay
    );
fifo_rx_queue: entity work.\uart_UART_with_2x4k_FIFOs_0_0_uart_fifo__xdcDup__1\
     port map (
      clk => clk,
      din(7 downto 0) => dout(7 downto 0),
      rd_en => s_in_fifo_rd_en,
      read_ack => read_ack,
      read_dout(7 downto 0) => read_dout(7 downto 0),
      s_read_ready_reg => fifo_rx_queue_n_9,
      s_read_state => s_read_state,
      s_read_state_reg => fifo_rx_queue_n_8,
      wr_en => reset
    );
fifo_tx_queue: entity work.uart_UART_with_2x4k_FIFOs_0_0_uart_fifo
     port map (
      RsTx_reg => fifo_tx_queue_n_1,
      RsTx_reg_0 => fifo_tx_queue_n_2,
      clk => clk,
      empty => s_out_fifo_empty,
      \s_bitPlace_reg[0]\ => TX_n_1,
      \s_bitPlace_reg[1]\ => TX_n_2,
      s_out_fifo_rd_en => s_out_fifo_rd_en,
      send_din(7 downto 0) => send_din(7 downto 0),
      wr_en => s_out_fifo_wr_en
    );
read_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => s_in_fifo_rd_en,
      Q => read_ready,
      R => '0'
    );
s_in_fifo_wr_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => s_in_fifo_wr_en0,
      Q => reset,
      R => '0'
    );
\s_out_fifo_wr_en__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => send_ready,
      I1 => s_out_fifo_wr_en,
      O => \s_out_fifo_wr_en__0_i_1_n_0\
    );
\s_out_fifo_wr_en_reg__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \s_out_fifo_wr_en__0_i_1_n_0\,
      Q => s_out_fifo_wr_en,
      R => '0'
    );
s_read_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => fifo_rx_queue_n_9,
      Q => s_in_fifo_rd_en,
      R => '0'
    );
s_read_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => fifo_rx_queue_n_8,
      Q => s_read_state,
      R => '0'
    );
s_tx_send_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => TX_n_4,
      Q => s_out_fifo_rd_en,
      R => '0'
    );
s_tx_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => TX_n_3,
      Q => s_tx_state,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_UART_with_2x4k_FIFOs_0_0 is
  port (
    clk : in STD_LOGIC;
    RsRx : in STD_LOGIC;
    RsTx : out STD_LOGIC;
    read_ready : out STD_LOGIC;
    read_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    read_ack : in STD_LOGIC;
    send_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    send_ready : in STD_LOGIC;
    send_delay : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of uart_UART_with_2x4k_FIFOs_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of uart_UART_with_2x4k_FIFOs_0_0 : entity is "uart_UART_with_2x4k_FIFOs_0_0,UART,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of uart_UART_with_2x4k_FIFOs_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of uart_UART_with_2x4k_FIFOs_0_0 : entity is "UART,Vivado 2017.2";
end uart_UART_with_2x4k_FIFOs_0_0;

architecture STRUCTURE of uart_UART_with_2x4k_FIFOs_0_0 is
begin
U0: entity work.uart_UART_with_2x4k_FIFOs_0_0_UART
     port map (
      RsRx => RsRx,
      RsTx => RsTx,
      clk => clk,
      read_ack => read_ack,
      read_dout(7 downto 0) => read_dout(7 downto 0),
      read_ready => read_ready,
      send_delay => send_delay,
      send_din(7 downto 0) => send_din(7 downto 0),
      send_ready => send_ready
    );
end STRUCTURE;

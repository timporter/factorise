-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sat Aug 26 12:11:21 2017
-- Host        : timbox running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/sources_1/bd/uart/ip/uart_UART_0_0/uart_UART_0_0_stub.vhdl
-- Design      : uart_UART_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity uart_UART_0_0 is
  Port ( 
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

end uart_UART_0_0;

architecture stub of uart_UART_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,RsRx,RsTx,read_ready,read_dout[7:0],read_ack,send_din[7:0],send_ready,send_delay";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "UART,Vivado 2017.2";
begin
end;

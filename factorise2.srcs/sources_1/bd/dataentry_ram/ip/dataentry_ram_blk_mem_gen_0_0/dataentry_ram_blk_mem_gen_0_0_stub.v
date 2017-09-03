// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Tue Aug 15 22:04:05 2017
// Host        : timbox running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/sources_1/bd/dataentry_ram/ip/dataentry_ram_blk_mem_gen_0_0/dataentry_ram_blk_mem_gen_0_0_stub.v
// Design      : dataentry_ram_blk_mem_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_3_6,Vivado 2017.2" *)
module dataentry_ram_blk_mem_gen_0_0(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[4:0],dina[7:0],clkb,enb,addrb[4:0],doutb[7:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [4:0]addra;
  input [7:0]dina;
  input clkb;
  input enb;
  input [4:0]addrb;
  output [7:0]doutb;
endmodule

// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Sun Aug 13 23:31:21 2017
// Host        : timbox running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/tim/fpgaprojects/factorise2/factorise2.srcs/sources_1/bd/stringsrom/ip/stringsrom_blk_mem_gen_0_0/stringsrom_blk_mem_gen_0_0_stub.v
// Design      : stringsrom_blk_mem_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_3_6,Vivado 2017.2" *)
module stringsrom_blk_mem_gen_0_0(clka, ena, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,addra[9:0],douta[7:0]" */;
  input clka;
  input ena;
  input [9:0]addra;
  output [7:0]douta;
endmodule

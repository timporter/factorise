--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
--Date        : Sun Aug 13 23:29:40 2017
--Host        : timbox running 64-bit major release  (build 9200)
--Command     : generate_target stringsrom.bd
--Design      : stringsrom
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity stringsrom is
  port (
    BRAM_PORTA_addr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    BRAM_PORTA_clk : in STD_LOGIC;
    BRAM_PORTA_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    BRAM_PORTA_en : in STD_LOGIC
  );
  attribute core_generation_info : string;
  attribute core_generation_info of stringsrom : entity is "stringsrom,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=stringsrom,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute hw_handoff : string;
  attribute hw_handoff of stringsrom : entity is "stringsrom.hwdef";
end stringsrom;

architecture STRUCTURE of stringsrom is
  component stringsrom_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component stringsrom_blk_mem_gen_0_0;
  signal BRAM_PORTA_1_ADDR : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal BRAM_PORTA_1_CLK : STD_LOGIC;
  signal BRAM_PORTA_1_DOUT : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal BRAM_PORTA_1_EN : STD_LOGIC;
begin
  BRAM_PORTA_1_ADDR(9 downto 0) <= BRAM_PORTA_addr(9 downto 0);
  BRAM_PORTA_1_CLK <= BRAM_PORTA_clk;
  BRAM_PORTA_1_EN <= BRAM_PORTA_en;
  BRAM_PORTA_dout(7 downto 0) <= BRAM_PORTA_1_DOUT(7 downto 0);
blk_mem_gen_0: component stringsrom_blk_mem_gen_0_0
     port map (
      addra(9 downto 0) => BRAM_PORTA_1_ADDR(9 downto 0),
      clka => BRAM_PORTA_1_CLK,
      douta(7 downto 0) => BRAM_PORTA_1_DOUT(7 downto 0),
      ena => BRAM_PORTA_1_EN
    );
end STRUCTURE;

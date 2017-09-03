--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
--Date        : Sun Aug 13 23:29:40 2017
--Host        : timbox running 64-bit major release  (build 9200)
--Command     : generate_target stringsrom_wrapper.bd
--Design      : stringsrom_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity stringsrom_wrapper is
  port (
    BRAM_PORTA_addr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    BRAM_PORTA_clk : in STD_LOGIC;
    BRAM_PORTA_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    BRAM_PORTA_en : in STD_LOGIC
  );
end stringsrom_wrapper;

architecture STRUCTURE of stringsrom_wrapper is
  component stringsrom is
  port (
    BRAM_PORTA_addr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    BRAM_PORTA_clk : in STD_LOGIC;
    BRAM_PORTA_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    BRAM_PORTA_en : in STD_LOGIC
  );
  end component stringsrom;
begin
stringsrom_i: component stringsrom
     port map (
      BRAM_PORTA_addr(9 downto 0) => BRAM_PORTA_addr(9 downto 0),
      BRAM_PORTA_clk => BRAM_PORTA_clk,
      BRAM_PORTA_dout(7 downto 0) => BRAM_PORTA_dout(7 downto 0),
      BRAM_PORTA_en => BRAM_PORTA_en
    );
end STRUCTURE;

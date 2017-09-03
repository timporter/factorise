--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
--Date        : Tue Aug 15 22:02:43 2017
--Host        : timbox running 64-bit major release  (build 9200)
--Command     : generate_target dataentry_ram_wrapper.bd
--Design      : dataentry_ram_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dataentry_ram_wrapper is
  port (
    BRAM_PORTA_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    BRAM_PORTA_clk : in STD_LOGIC;
    BRAM_PORTA_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BRAM_PORTA_en : in STD_LOGIC;
    BRAM_PORTA_we : in STD_LOGIC_VECTOR ( 0 to 0 );
    BRAM_PORTB_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    BRAM_PORTB_clk : in STD_LOGIC;
    BRAM_PORTB_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    BRAM_PORTB_en : in STD_LOGIC
  );
end dataentry_ram_wrapper;

architecture STRUCTURE of dataentry_ram_wrapper is
  component dataentry_ram is
  port (
    BRAM_PORTA_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    BRAM_PORTA_clk : in STD_LOGIC;
    BRAM_PORTA_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    BRAM_PORTA_en : in STD_LOGIC;
    BRAM_PORTA_we : in STD_LOGIC_VECTOR ( 0 to 0 );
    BRAM_PORTB_addr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    BRAM_PORTB_clk : in STD_LOGIC;
    BRAM_PORTB_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    BRAM_PORTB_en : in STD_LOGIC
  );
  end component dataentry_ram;
begin
dataentry_ram_i: component dataentry_ram
     port map (
      BRAM_PORTA_addr(4 downto 0) => BRAM_PORTA_addr(4 downto 0),
      BRAM_PORTA_clk => BRAM_PORTA_clk,
      BRAM_PORTA_din(7 downto 0) => BRAM_PORTA_din(7 downto 0),
      BRAM_PORTA_en => BRAM_PORTA_en,
      BRAM_PORTA_we(0) => BRAM_PORTA_we(0),
      BRAM_PORTB_addr(4 downto 0) => BRAM_PORTB_addr(4 downto 0),
      BRAM_PORTB_clk => BRAM_PORTB_clk,
      BRAM_PORTB_dout(7 downto 0) => BRAM_PORTB_dout(7 downto 0),
      BRAM_PORTB_en => BRAM_PORTB_en
    );
end STRUCTURE;

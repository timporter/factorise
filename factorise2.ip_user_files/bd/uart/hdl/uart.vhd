--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
--Date        : Sun Aug 13 20:44:14 2017
--Host        : timbox running 64-bit major release  (build 9200)
--Command     : generate_target uart.bd
--Design      : uart
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart is
  port (
    RsRx : in STD_LOGIC;
    RsTx : out STD_LOGIC;
    clk : in STD_LOGIC;
    read_ack : in STD_LOGIC;
    read_dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    read_ready : out STD_LOGIC;
    send_delay : in STD_LOGIC;
    send_din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    send_ready : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of uart : entity is "uart,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=uart,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of uart : entity is "uart.hwdef";
end uart;

architecture STRUCTURE of uart is
  component uart_UART_with_2x4k_FIFOs_0_0 is
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
  end component uart_UART_with_2x4k_FIFOs_0_0;
  signal RsRx_1 : STD_LOGIC;
  signal UART_with_2x4k_FIFOs_0_RsTx : STD_LOGIC;
  signal UART_with_2x4k_FIFOs_0_read_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal UART_with_2x4k_FIFOs_0_read_ready : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal read_ack_1 : STD_LOGIC;
  signal send_delay_1 : STD_LOGIC;
  signal send_din_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal send_ready_1 : STD_LOGIC;
begin
  RsRx_1 <= RsRx;
  RsTx <= UART_with_2x4k_FIFOs_0_RsTx;
  clk_1 <= clk;
  read_ack_1 <= read_ack;
  read_dout(7 downto 0) <= UART_with_2x4k_FIFOs_0_read_dout(7 downto 0);
  read_ready <= UART_with_2x4k_FIFOs_0_read_ready;
  send_delay_1 <= send_delay;
  send_din_1(7 downto 0) <= send_din(7 downto 0);
  send_ready_1 <= send_ready;
UART_with_2x4k_FIFOs_0: component uart_UART_with_2x4k_FIFOs_0_0
     port map (
      RsRx => RsRx_1,
      RsTx => UART_with_2x4k_FIFOs_0_RsTx,
      clk => clk_1,
      read_ack => read_ack_1,
      read_dout(7 downto 0) => UART_with_2x4k_FIFOs_0_read_dout(7 downto 0),
      read_ready => UART_with_2x4k_FIFOs_0_read_ready,
      send_delay => send_delay_1,
      send_din(7 downto 0) => send_din_1(7 downto 0),
      send_ready => send_ready_1
    );
end STRUCTURE;

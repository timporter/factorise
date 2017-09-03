--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
--Date        : Sat Aug 26 12:10:26 2017
--Host        : timbox running 64-bit major release  (build 9200)
--Command     : generate_target uart_wrapper.bd
--Design      : uart_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_wrapper is
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
end uart_wrapper;

architecture STRUCTURE of uart_wrapper is
  component uart is
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
  end component uart;
begin
uart_i: component uart
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

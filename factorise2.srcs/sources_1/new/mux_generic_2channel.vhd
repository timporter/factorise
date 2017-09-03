----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.08.2017 07:46:44
-- Design Name: 
-- Module Name: multiplexer - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_generic_2channel is
    generic (N : integer);
    Port ( inA      : in  STD_LOGIC_VECTOR (N-1 downto 0);
           inB      : in  STD_LOGIC_VECTOR (N-1 downto 0);
           s        : in  STD_LOGIC;
           selected : out STD_LOGIC_VECTOR (N-1 downto 0));
end mux_generic_2channel;

architecture Behavioral of mux_generic_2channel is

begin
    process(s, inA, inB)
    begin
        if (s = '0') then
            selected <= inA;
        else
            selected <= inB;
        end if;
    end process;

end Behavioral;

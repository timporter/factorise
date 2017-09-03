----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.08.2017 22:17:04
-- Design Name: 
-- Module Name: divtest - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity divtest is
    Generic (
        TOP_WIDTH    : integer;
        BOTTOM_WIDTH : integer;
        OFFSET       : integer
    );
    Port ( clk     : in  STD_LOGIC;
           top     : in  STD_LOGIC_VECTOR (TOP_WIDTH - 1 downto 0);
           bottom  : in  STD_LOGIC_VECTOR (BOTTOM_WIDTH - 1 downto 0);
           perfect : out STD_LOGIC);
end divtest;

architecture Behavioral of divtest is

    constant c_offset  : STD_LOGIC_VECTOR(BOTTOM_WIDTH - 1 downto 0) := std_logic_vector(to_unsigned(OFFSET, BOTTOM_WIDTH));
    signal   s_perfect : STD_LOGIC                                   := '0';

begin

    process (clk)
    begin
        if (rising_edge(clk)) then
            if (to_integer(unsigned(top)) mod to_integer(unsigned(bottom + c_offset)) = 0) then
                s_perfect <= '1';
            else
                s_perfect <= '0';
            end if;
        end if;
        perfect <= s_perfect;
    end process;

end Behavioral;

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

entity mux_generic_AB is
    generic (N : integer);
    Port ( inA      : in  STD_LOGIC_VECTOR (N-1 downto 0);
           inB      : in  STD_LOGIC_VECTOR (N-1 downto 0);
           selectA  : in  STD_LOGIC;
           selectB  : in  STD_LOGIC;
           selected : out STD_LOGIC_VECTOR (N-1 downto 0));
end mux_generic_AB;

architecture Behavioral of mux_generic_AB is
    
begin
    process(inA, inB, selectA, selectB)
        type     t_state is (aHI, bHI);
        variable v_state : t_state := aHI;
    begin
        -- It is possible for both selectA and selectB to be high, or for both to be low. In this case we want to go with whatever the previous selection was.
        if (selectA = '1' and v_state = aHI) then
            -- State was already aHI and it should still be active
        elsif (selectB = '1' and v_state = bHI) then
            -- State was already bHI and it should still be active
        elsif (selectA = '0' and selectB = '0') then
            -- State should not change
        elsif (selectA = '1') then
            v_state := aHI;
        else
            v_state := bHI;
        end if;
        if (v_state = aHI) then
            selected <= inA;
        else
            selected <= inB;
        end if;
        
    end process;

end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.08.2017 23:56:39
-- Design Name: 
-- Module Name: keycodes-2-vector64 - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ascii2vector is
    Generic (
           OUTPUT_WIDTH : integer
    );
    Port ( clk      : in     STD_LOGIC;
           trigger  : in     STD_LOGIC;
           reset    : in     STD_LOGIC;
           ascii    : in     STD_LOGIC_VECTOR (7 downto 0);
           dout     : out    STD_LOGIC_VECTOR ((OUTPUT_WIDTH - 1) downto 0)
    );
end ascii2vector;

architecture Behavioral of ascii2vector is
    signal s_dout    : STD_LOGIC_VECTOR((OUTPUT_WIDTH - 1) downto 0) := (others => '0');
begin

    process(clk)
        variable v_digit  : STD_LOGIC_VECTOR(3 downto 0)  := (others => '0');
        variable v_result : STD_LOGIC_VECTOR((OUTPUT_WIDTH) downto 0) := (others => '0'); -- NB: This vector is one wider than dout (eg, we use width, not width-1), it has to take a carry bit
    begin
        if (rising_edge(clk)) then
            if (reset = '1') then
                s_dout    <= (others => '0');
                v_result  := (others => '0');
            elsif (trigger = '1') then
                case ascii is
                    when "00000000" => v_digit := "0000"; -- special zero
                    when "00110000" => v_digit := "0000"; -- real zero
                    when "00110001" => v_digit := "0001"; -- 1
                    when "00110010" => v_digit := "0010"; -- 2
                    when "00110011" => v_digit := "0011"; -- 3
                    when "00110100" => v_digit := "0100"; -- 4
                    when "00110101" => v_digit := "0101"; -- 5
                    when "00110110" => v_digit := "0110"; -- 6
                    when "00110111" => v_digit := "0111"; -- 7
                    when "00111000" => v_digit := "1000"; -- 8
                    when "00111001" => v_digit := "1001"; -- 9
                    when others     => v_digit := "0000"; -- Junk zero
                end case;
                
                -- This is a fast multiply by ten
                -- * by 8 v_result := "0" & s_dout(60 downto 0) & "000";
                -- * by 2 v_result := "0" & s_dout(62 downto 0) & "0";
                v_result := ("0" & s_dout((OUTPUT_WIDTH - 4) downto 0) & "000") + ("0" & s_dout((OUTPUT_WIDTH - 2) downto 0) & "0");                                 
                             
                v_result := v_result + v_digit;
                
                s_dout <= v_result((OUTPUT_WIDTH - 1) downto 0);
            end if;
            dout    <= s_dout;
        end if; -- rising edge
    end process;

end Behavioral;

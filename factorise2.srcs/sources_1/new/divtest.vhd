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
        OPERAND_WIDTH : integer;
        OFFSET        : integer -- can this be constrained to a range?
    );
    Port ( clk     : in  STD_LOGIC;
           top     : in  STD_LOGIC_VECTOR (OPERAND_WIDTH - 1 downto 0);
           bottom  : in  STD_LOGIC_VECTOR (OPERAND_WIDTH - 1 downto 0);
           trigger : in  STD_LOGIC;
           ready   : out STD_LOGIC;
           perfect : out STD_LOGIC);
           -- count   : out STD_LOGIC_VECTOR(15 downto 0)); -- count is debug, can be removed
end divtest;

architecture Behavioral of divtest is

    signal   s_perfect           : STD_LOGIC                                    := '0';
    signal   s_ready             : STD_LOGIC                                    := '1';
    signal   s_inter             : STD_LOGIC_VECTOR(OPERAND_WIDTH - 1 downto 0) := (others => '0');
    signal   s_bottom            : STD_LOGIC_VECTOR(OPERAND_WIDTH - 1 downto 0) := (others => '0');
    -- signal   s_count             : STD_LOGIC_VECTOR(15 downto 0)             := (others => '0'); -- debug, can be removed
    signal   s_top_shift         : integer range 0 to (OPERAND_WIDTH - 1)       := 0;
    signal   s_bottom_shift      : integer range 0 to (OPERAND_WIDTH - 1)       := 0; -- Possibly this range can be reduced, how does VHDL handle the addition later if so?
    signal   s_iterations_needed : integer range 0 to (OPERAND_WIDTH - 1)       := 0; 
    constant c_zero              : STD_LOGIC_VECTOR(OPERAND_WIDTH - 1 downto 0) := (others => '0');
    
begin

    process (clk)
        type t_state is (
            waiting,
            calculate_shifts,
            apply_shifts,
            running
        );
        variable v_state : t_state := waiting;
        
    begin
        if (rising_edge(clk)) then
            if (trigger = '1') then
                if (bottom = 0 or bottom = 1 or bottom >= top) then
                    s_ready   <= '1';
                    s_perfect <= '0';
                else
                    v_state             := calculate_shifts;
                    s_inter             <= top;
                    s_bottom            <= bottom + offset;
                    s_ready             <= '0';
                    -- s_count             <= (others => '0'); -- debug, can be removed
                    s_top_shift         <= OPERAND_WIDTH - 1;
                    s_bottom_shift      <= OPERAND_WIDTH - 1;
                    s_iterations_needed <= 1;
                end if;
            elsif (v_state = calculate_shifts) then
                -- s_count <= s_count + 1; -- debug, can be removed
                -- first we need to identify where the leading bit of each of the two operands is
                if (top(s_top_shift) /= '1') then
                    s_top_shift <= s_top_shift - 1;
                end if;
                -- second, but actually in parallelm we can count leading bits of the bottom part
                if (bottom(s_bottom_shift) /= '1') then
                    s_bottom_shift <= s_bottom_shift - 1;
                end if;
                -- we found the leading bit of each vector
                if (top(s_top_shift) = '1' and bottom(s_bottom_shift) = '1') then
                    -- The shift value are badly named, they are not the number of places the vector needs to be shifted
                    -- They are the offset of the first HI bit.
                    v_state := apply_shifts;
                end if;
            elsif (v_state = apply_shifts) then
                -- s_count <= s_count + 1; -- debug, can be removed
                -- we want to shift the bottom int up until it aligns bit the top int
                if (s_bottom_shift /= s_top_shift) then
                    s_bottom_shift      <= s_bottom_shift + 1;
                    s_bottom            <= s_bottom(OPERAND_WIDTH - 2 downto 0) & "0"; -- -2 because its always -1 anyway, and then we need to chop additional (hopefully LO bit off the top)
                    s_iterations_needed <= s_iterations_needed + 1;
                else
                    v_state := running;
                end if;
            elsif (v_state = running) then
                -- s_count <= s_count + 1; -- debug, can be removed
                if (s_inter = c_zero) then
                    -- somehow we found an exact division, job done.
                    -- We can even exit early at this point if the condition is true.
                    s_perfect <= '1';
                    s_ready   <= '1';
                    v_state   := waiting;
                else
                    if (s_iterations_needed = 0) then
                        s_perfect <= '0';
                        s_ready   <= '1';
                        v_state   := waiting;
                    else
                        if (s_inter >= s_bottom) then
                            s_inter <= s_inter - s_bottom; 
                        end if;
                            s_bottom <= "0" & s_bottom(OPERAND_WIDTH - 1 downto 1); -- shifting back the other way
                        s_iterations_needed <= s_iterations_needed - 1;
                    end if;
                end if;
            end if;
        end if;
        perfect <= s_perfect;
        ready   <= s_ready;
        -- count   <= s_count; -- debug, can be removed
    end process;

end Behavioral;
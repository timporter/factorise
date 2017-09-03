----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.08.2017 09:42:50
-- Design Name: 
-- Module Name: sendMessage - Behavioral
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
-- use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sendMessage is
    Port ( clk        : in  STD_LOGIC;                      -- Clock
           start_addr : in  STD_LOGIC_VECTOR (9 downto 0);  -- Tells this where to start reading the message from in the RAM
           trigger    : in  STD_LOGIC;                      -- Tells this everything is ready and it should being doing its thing
           ram_data   : in  STD_LOGIC_VECTOR (7 downto 0);  -- Data from the RAM
           req_addr   : out STD_LOGIC_VECTOR (9 downto 0);  -- Address that this wants to read from the RAM
           send_data  : out STD_LOGIC_VECTOR (7 downto 0);  -- Output to UART (data)
           send_now   : out STD_LOGIC;                      -- Pulse to tell external UART that this is trying to write a byte
           sending    : out STD_LOGIC;                      -- HI to tell UART-din and UART-ready multiplexers that we want priority
           busy       : out STD_LOGIC);                     -- HI to signal we are not finished sending data
end sendMessage;

architecture Behavioral of sendMessage is

    -- signals here
    signal s_req_addr : STD_LOGIC_VECTOR(9 downto 0) := (others => '0');
    signal s_send_now : STD_LOGIC                    := '0';
    signal s_sending  : STD_LOGIC                    := '0';
    signal s_busy     : STD_LOGIC                    := '0'; 
    
begin
    
    process (clk)
        type t_state is (idle, sending);
        variable v_state  : t_state := idle;
        variable v_count  : integer range 0 to 1000000 := 0; -- Used to delay waiting for the RAM to respond
    begin
        if (rising_edge(clk)) then
            if (v_state = idle and trigger = '1') then
                -- configure for reading ram and sending to UART
                s_req_addr <= start_addr;
                v_count    := 0;
                v_state    := sending;
                s_busy       <= '1';
                s_send_now <= '0';
                s_sending  <= '1';
            elsif(v_state = idle) then
                s_busy       <= '0';
                s_sending  <= '0';
                s_send_now <= '0';
            elsif(v_state = sending) then
                s_send_now <= '0';
                v_count := v_count + 1;
                if (v_count = 500000) then  -- Used to delay waiting for the RAM to respond
                    v_count := 0;
                    -- check if we got to the end of the message in the RAM
                    if (ram_data = X"00") then
                        -- We got to the end of the message in the RAM
                        s_sending <= '0';
                        s_busy    <= '0';
                        v_state   := idle;
                    else
                        send_data  <= ram_data;
                        s_req_addr <= s_req_addr + 1;
                        s_send_now <= '1';
                    end if;
                end if;
            end if;
        end if;
        req_addr <= s_req_addr;
        send_now <= s_send_now;
        sending  <= s_sending;
        busy     <= s_busy;
    end process;

end Behavioral;

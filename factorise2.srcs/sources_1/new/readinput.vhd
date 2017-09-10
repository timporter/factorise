----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.08.2017 20:50:08
-- Design Name: 
-- Module Name: readinput - Behavioral
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

entity readinput is
    Port (
        debug           : out STD_LOGIC_VECTOR(15 downto 0); -- Attach some LEDs for some debug
        clk             : in  STD_LOGIC;                     -- clock
        begin_process   : in  STD_LOGIC;                     -- Pulse high to begin process
        control_char    : in  STD_LOGIC_VECTOR (7 downto 0); -- When we get a character that matches this signal assume it is the end of the message
        uart_read_ready : in  STD_LOGIC;                     -- Signal from external circuit (uart) to tell us that the value on din is correct
        din             : in  STD_LOGIC_VECTOR (7 downto 0); -- Data from external circuit (uart)
        uart_read_ack   : out STD_LOGIC;                     -- ACK to external circuit that we got the current character
        wr_ramdata      : out STD_LOGIC_VECTOR (7 downto 0); -- RAM data we want to write
        wr_ramaddr      : out STD_LOGIC_VECTOR (7 downto 0); -- RAM address we want to write to
        wr_we           : out STD_LOGIC_VECTOR (0 downto 0); -- RAM write enable
        advance_char    : in  STD_LOGIC;                     -- When reading back, a HI signal here tells this to move to the next character 
        rd_ramdata      : in  STD_LOGIC_VECTOR (7 downto 0); -- Data from RAM
        rd_ramaddr      : out STD_LOGIC_VECTOR (7 downto 0); -- RAM address we want to read from
        char_ready      : out STD_LOGIC;                     -- We output HI here to inform external circuit we now have the correct value on dout 
        dout            : out STD_LOGIC_VECTOR (7 downto 0); -- The relevant character in the message
        msg_ready       : out STD_LOGIC;                     -- Outputs HI to signal that we have received a full message and are ready to output it
        msg_ended       : out STD_LOGIC;                     -- Outputs HI to signal to the external circuit that we have replayed the full message
        reset_read      : in  STD_LOGIC;                     -- Move the output pointer back to the start so we can read the same message off again
        reset_all       : in  STD_LOGIC                      -- Reset whole thing, wipe RAM
    );                        
end readinput;

architecture Behavioral of readinput is
    type t_state is (reset, readin_ready, readin_wait, readin_complete, readback_not_yet_ready, readback_ready, readback_complete);
    signal s_wr_ramaddr    : STD_LOGIC_VECTOR(7 downto 0)  := (others => '0');
    signal s_wr_ramdata    : STD_LOGIC_VECTOR(7 downto 0)  := (others => '0');
    signal s_rd_ramaddr    : STD_LOGIC_VECTOR(7 downto 0)  := (others => '0');
    signal s_dout          : STD_LOGIC_VECTOR(7 downto 0)  := (others => '0');
    signal s_msg_ready     : STD_LOGIC                     := '0';
    signal s_msg_ended     : STD_LOGIC                     := '0';
    signal s_wr_we         : STD_LOGIC_VECTOR(0 downto 0)  := "0";
    signal s_uart_read_ack : STD_LOGIC                     := '0';
    signal s_char_ready    : STD_LOGIC                     := '0';
    signal s_debug         : STD_LOGIC_VECTOR(15 downto 0) := X"0000";
begin

    process (clk)
        variable v_state : t_state := reset;
        variable v_count : integer := 0;
    begin
        if (rising_edge(clk)) then
            if (reset_all = '1') then
                v_state := reset;
            elsif (reset_read = '1') then
                v_state := readin_complete;
            -- elsif (v_state = reset and begin_process = '1') then
            elsif (begin_process = '1') then
                -- s_debug      <= "1010101010101001";
                s_wr_we      <= "0";
                s_wr_ramaddr <= (others => '0');
                v_state      := readin_ready;
                s_msg_ready  <= '0';
                s_char_ready <= '0';
                v_count      := 0;
                s_msg_ended  <= '0';
            elsif (v_state = readin_ready) then
                -- s_debug      <= "1100110000110011";
                if (uart_read_ready = '1') then
                    if (din = control_char) then
                        s_uart_read_ack <= '1';
                        v_state         := readin_complete;
                    else
                        s_uart_read_ack <= '1';
                        v_state         := readin_wait;
                        s_wr_ramdata    <= din;
                        s_wr_we         <= "1";
                        -- address is already set
                    end if;
                end if;
            elsif (v_state = readin_wait) then
                s_uart_read_ack <= '0';
                v_count         := v_count + 1;
                if (v_count = 4) then
                    -- overwrite the next byte with a zero, in case this isn't our first usage
                    s_wr_ramaddr <= s_wr_ramaddr + '1';
                    s_wr_ramdata <= X"00";
                elsif (v_count = 8) then
                    v_count      := 0;
                    v_state      := readin_ready;
                end if;
            elsif (v_state = readin_complete) then
                -- s_debug      <= "1111111011111110";
                s_uart_read_ack <= '0';
                s_wr_we         <= "0";
                v_count         := 0;
                v_state         := readback_not_yet_ready;
                s_msg_ready     <= '1';
                s_char_ready    <= '0';
                s_msg_ended     <= '0';
                -- We've signalled that the message is ready, we can put the first character on the output and signal that that is ready shortly....
                s_rd_ramaddr    <= (others => '0');
            elsif (v_state = readback_not_yet_ready) then
                -- sleep a bit and then the char will be ready
                v_count := v_count + 1;
                if (v_count = 3) then
                    -- Ready to send the next character to the output, but lets check if instead we got to the end of the message (null)
                    if (rd_ramdata = X"00") then
                        v_state := readback_complete;
                    else
                        v_count      := 0;
                        s_char_ready <= '1';
                        v_state      := readback_ready;
                    end if;
                end if;
            elsif (v_state = readback_ready) then
                -- now we're just waiting for the external circuit to indicate that it wants the next char...
                if (advance_char = '1') then
                    s_rd_ramaddr <= s_rd_ramaddr + '1';
                    s_char_ready <= '0';
                    v_state      := readback_not_yet_ready;
                end if;
            elsif (v_state = readback_complete) then
                s_msg_ended <= '1';
                -- do nothing, only options at this stage are the various reset options but they're handled elsewhere
            end if;
        end if;
        -- Set the relevant addresses to the RAMs
        wr_ramaddr    <= s_wr_ramaddr;
               
        
--        -- 
--        s_dout        <= rd_ramdata;
--        -- when doing readyback we just passthrough
--        -- s_rd_ramdata  <= rd_ramdata;
--        -- Except this happens at the top
        dout          <= rd_ramdata;
        
        
        msg_ready     <= s_msg_ready;
        wr_we         <= s_wr_we;
        uart_read_ack <= s_uart_read_ack;
        wr_ramdata    <= s_wr_ramdata;
        char_ready    <= s_char_ready;
        msg_ended     <= s_msg_ended;
        rd_ramaddr    <= s_rd_ramaddr;
        --s_debug(15 downto 11) <= s_rd_ramaddr;
        --s_debug(7  downto 3)  <= s_wr_ramaddr;
        --debug         <= s_debug;
    end process;

end Behavioral;

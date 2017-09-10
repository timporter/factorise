----------------------------------------------------------------------------------
-- Company:
-- Engineer:
--
-- Create Date: 12.08.2017 18:02:12
-- Design Name:
-- Module Name: factorise - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity factorise is

  -- 64 operand width
  --    can use 68 dividers, maybe a couple more. Can't use 70 (68 = 20559 LUT, 69 = 20867 LUT, 70 = 21206 LUT)
  -- 70 operand width
  --    can use 62 dividers. can't use 63 (63 = 20965 LUT, 66 = 21840 LUT, 68 = 23078 LUT)
  --    590295810358705651649 21s big factors  25s with new style divider
  --    590295810358705651693 311s prime       
  --    999999999999999989    260s prime
    
  Generic (
    OPERAND_WIDTH : integer := 70; -- Even values only
    DIVIDER_WIDTH : integer := 35; -- According to my calculations this should be set to exactly OPERAND_WIDTH / 2 , but who knows!
    DIVIDER_COUNT : integer := 62  -- was too high, requires 21840 of 20800  -- 70 was too high, 23078 of 20800  -- 68 Degree of parallelism required.
  );
  Port (
    clk  : in  STD_LOGIC;
    RsRx : in  STD_LOGIC;
    RsTx : out STD_LOGIC;
    led  : out STD_LOGIC_VECTOR(15 downto 0)
  );
end factorise;

architecture Behavioral of factorise is
    signal s_debug           : STD_LOGIC_VECTOR(15 downto 0) := X"0000";
    signal s_debug_count     : STD_LOGIC_VECTOR(15 downto 0) := X"0000";
    
    signal s_sendresult_mux_priority : STD_LOGIC := '0';
    signal s_sendresult_message      : STD_LOGIC_VECTOR(7 downto 0) := X"00";
    signal s_sendresult_send_now     : STD_LOGIC := '0';
    
    signal s_uart_din        : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal s_uart_send_now   : STD_LOGIC                    := '0';
    signal s_uart_read_ready : STD_LOGIC                    := '0';
    signal s_uart_read_dout  : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal s_uart_read_ack   : STD_LOGIC                    := '0';
  component uart is
    port (
      RsRx       : in STD_LOGIC;
      RsTx       : out STD_LOGIC;
      clk        : in STD_LOGIC;
      read_ack   : in STD_LOGIC;
      read_dout  : out STD_LOGIC_VECTOR ( 7 downto 0 );
      read_ready : out STD_LOGIC;
      send_delay : in STD_LOGIC;
      send_din   : in STD_LOGIC_VECTOR ( 7 downto 0 );
      send_ready : in STD_LOGIC
    );
  end component uart;
  
  signal s_send_message_start_addr      : STD_LOGIC_VECTOR(9 downto 0) := (others => '0');
  signal s_send_message_trigger         : STD_LOGIC                    := '0';
  signal s_send_message_out_data        : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
  signal s_send_message_mux_priority    : STD_LOGIC                    := '0';
  signal s_send_message_busy            : STD_LOGIC                    := '0';
  signal s_send_message_send_now        : STD_LOGIC                    := '0';
  component sendMessage is
     Port (
         clk        : in  STD_LOGIC;                      -- Clock
         start_addr : in  STD_LOGIC_VECTOR (9 downto 0);  -- Tells this where to start reading the message from in the RAM
         trigger    : in  STD_LOGIC;                      -- Tells this everything is ready and it should being doing its thing
         ram_data   : in  STD_LOGIC_VECTOR (7 downto 0);  -- Data from the RAM
         req_addr   : out STD_LOGIC_VECTOR (9 downto 0);  -- Address that this wants to read from the RAM
         send_data  : out STD_LOGIC_VECTOR (7 downto 0);  -- Output to UART (data)
         send_now   : out STD_LOGIC;                      -- Pulse to tell external UART that this is trying to write a byte
         sending    : out STD_LOGIC;                      -- HI to tell UART-din and UART-ready multiplexers that we want priority
         busy       : out STD_LOGIC                       -- This is busy, don't send more commands.
     );
  end component;
  
  signal s_readinput_begin_process : STD_LOGIC                    := '0';
  signal s_readinput_advance_char  : STD_LOGIC                    := '0';
  signal s_readinput_char_ready    : STD_LOGIC                    := '0';
  signal s_readinput_dout          : STD_LOGIC_VECTOR(7 downto 0) := X"00";
  signal s_readinput_msg_ready     : STD_LOGIC                    := '0';
  signal s_readinput_msg_ended     : STD_LOGIC                    := '0';
  signal s_readinput_reset_read    : STD_LOGIC                    := '0';
  signal s_readinput_reset_all     : STD_LOGIC                    := '0';
  component readinput is
    Port (   debug : out STD_LOGIC_VECTOR(15 downto 0);
             clk             : in  STD_LOGIC;                     -- clock
             begin_process   : in  STD_LOGIC;                     -- Pulse high to begin process
             control_char    : in  STD_LOGIC_VECTOR (7 downto 0); -- When we get a character that matches this signal assume it is the end of the message
             uart_read_ready : in  STD_LOGIC;                     -- Signal from external circuit (uart) to tell us that the value on din is correct
             din             : in  STD_LOGIC_VECTOR (7 downto 0); -- Data from external circuit (uart)
             uart_read_ack   : out STD_LOGIC;
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
             reset_all       : in  STD_LOGIC);                    -- HI, reset whole thing, wipe RAM
  end component;
    
  signal s_asc2vec_trigger : STD_LOGIC                                      := '0';
  signal s_asc2vec_reset   : STD_LOGIC                                      := '0';
  signal s_asc2vec_char_in : STD_LOGIC_VECTOR(7 downto 0)                   := X"00";
  signal s_asc2vec_dout    : STD_LOGIC_VECTOR((OPERAND_WIDTH - 1) downto 0) := (others => '0');
  component ascii2vector is
      Generic (
         OUTPUT_WIDTH : integer
      );
      Port ( clk      : in  STD_LOGIC;
             trigger  : in  STD_LOGIC;
             reset    : in  STD_LOGIC;
             ascii    : in  STD_LOGIC_VECTOR (7 downto 0);
             dout     : out STD_LOGIC_VECTOR ((OUTPUT_WIDTH - 1) downto 0)
      );
  end component ascii2vector;
  
  component mux_generic_AB is
        generic (N : integer);
        Port (
            inA      : in  STD_LOGIC_VECTOR (N-1 downto 0);
            inB      : in  STD_LOGIC_VECTOR (N-1 downto 0);
            selectA  : in  STD_LOGIC;
            selectB  : in  STD_LOGIC;
            selected : out STD_LOGIC_VECTOR (N-1 downto 0)
        );
    end component mux_generic_AB;
  
  signal s_dataentry_write_data : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
  signal s_dataentry_write_addr : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
  signal s_dataentry_write_we   : STD_LOGIC_VECTOR(0 downto 0) := "0";
  signal s_dataentry_read_data  : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
  signal s_dataentry_read_addr  : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
  component dataentry_ram is
    port ( -- A is write, B is read
      BRAM_PORTA_addr : in  STD_LOGIC_VECTOR(7 downto 0);
      BRAM_PORTA_clk  : in  STD_LOGIC;
      BRAM_PORTA_din  : in  STD_LOGIC_VECTOR(7 downto 0);
      BRAM_PORTA_en   : in  STD_LOGIC;
      BRAM_PORTA_we   : in  STD_LOGIC_VECTOR(0 downto 0);
      BRAM_PORTB_addr : in  STD_LOGIC_VECTOR(7 downto 0);
      BRAM_PORTB_clk  : in  STD_LOGIC;
      BRAM_PORTB_dout : out STD_LOGIC_VECTOR(7 downto 0);
      BRAM_PORTB_en   : in  STD_LOGIC
    );
    end component dataentry_ram;
  
  signal s_strings_rom_byte_data : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
  signal s_strings_rom_byte_addr : STD_LOGIC_VECTOR(9 downto 0) := (others => '0');
  component stringsrom is
    port (
      BRAM_PORTA_addr : in  STD_LOGIC_VECTOR(9 downto 0);
      BRAM_PORTA_clk  : in  STD_LOGIC;
      BRAM_PORTA_dout : out STD_LOGIC_VECTOR(7 downto 0);
      BRAM_PORTA_en   : in  STD_LOGIC
    );
    end component stringsrom;
  
  signal   s_divtest_trigger      : STD_LOGIC                                    := '0';
  signal   s_divtest_top          : STD_LOGIC_VECTOR(OPERAND_WIDTH - 1 downto 0) := (others => '0');
  signal   s_divtest_bottom       : STD_LOGIC_VECTOR(OPERAND_WIDTH - 1 downto 0) := (others => '0');
  signal   s_divtest_perfect      : STD_LOGIC_VECTOR(DIVIDER_COUNT - 1 downto 0) := (others => '0');
  signal   s_divtest_ready        : STD_LOGIC_VECTOR(DIVIDER_COUNT - 1 downto 0) := (others => '0');
  constant c_divtest_lo_mask      : STD_LOGIC_VECTOR(DIVIDER_COUNT - 1 downto 0) := (others => '0');
  constant c_divtest_hi_mask      : STD_LOGIC_VECTOR(DIVIDER_COUNT - 1 downto 0) := (others => '1');
    component divtest
        generic (
            OPERAND_WIDTH : integer;
            OFFSET        : integer
        );
        port (
            clk     : in  STD_LOGIC;
            top     : in  STD_LOGIC_VECTOR (OPERAND_WIDTH - 1 downto 0);
            bottom  : in  STD_LOGIC_VECTOR (OPERAND_WIDTH - 1 downto 0);
            trigger : in  STD_LOGIC;
            ready   : out STD_LOGIC;
            perfect : out STD_LOGIC
        );
    end component;

begin

    GEN_DivTest:
    for mod_num in 0 to (DIVIDER_COUNT - 1) generate
        DivTestX : divtest
        GENERIC MAP (
            OPERAND_WIDTH => OPERAND_WIDTH,
            OFFSET        => (mod_num * 2)
        )
        PORT MAP (
            clk       => clk,
            top       => s_divtest_top,
            bottom    => s_divtest_bottom,
            trigger   => s_divtest_trigger,
            ready     => s_divtest_ready(mod_num),
            perfect   => s_divtest_perfect(mod_num)
        );
    end generate GEN_DivTest;

    stringsrom_i: component stringsrom
     port map (
      BRAM_PORTA_addr  => s_strings_rom_byte_addr,
      BRAM_PORTA_clk   => clk,
      BRAM_PORTA_dout  => s_strings_rom_byte_data,
      BRAM_PORTA_en    => '1'
    );
   
    sendmessage_i: component sendMessage
     Port map (
        clk        => clk,                            -- Clock
        start_addr => s_send_message_start_addr,      -- Tells this where to start reading the message from in the RAM
        trigger    => s_send_message_trigger,         -- Tells this everything is ready and it should being doing its thing
        ram_data   => s_strings_rom_byte_data,        -- Data from the RAM
        req_addr   => s_strings_rom_byte_addr,        -- Address that this wants to read from the RAM
        send_data  => s_send_message_out_data,        -- Output to UART (data)
        send_now   => s_send_message_send_now,        -- Pulse to tell external UART that this is trying to write a byte
        sending    => s_send_message_mux_priority,    -- HI to tell UART-din and UART-ready multiplexers that we want priority
        busy       => s_send_message_busy
    );

    dataentry_ram_i: component dataentry_ram
      port map ( -- A is write, B is read
          BRAM_PORTA_addr  => s_dataentry_write_addr,
          BRAM_PORTA_clk   => clk,
          BRAM_PORTA_din   => s_dataentry_write_data,
          BRAM_PORTA_en    => '1',
          BRAM_PORTA_we    => s_dataentry_write_we, -- its a vector
          BRAM_PORTB_addr  => s_dataentry_read_addr,
          BRAM_PORTB_clk   => clk,
          BRAM_PORTB_dout  => s_dataentry_read_data,
          BRAM_PORTB_en    => '1'
    );

    readinput_i: component readinput
    PORT MAP (
       -- debug => led,
       clk             => clk,                       -- clock
       begin_process   => s_readinput_begin_process, -- Pulse high to begin process
       control_char    => "00001101",                -- When we get a character that matches this signal assume it is the end of the message
       uart_read_ready => s_uart_read_ready,         -- Signal from external circuit (uart) to tell us that the value on din is correct
       din             => s_uart_read_dout,          -- Data from external circuit (uart)
       uart_read_ack   => s_uart_read_ack,           -- ACK to external circuit that we got the current character
       wr_ramdata      => s_dataentry_write_data,    -- RAM data we want to write
       wr_ramaddr      => s_dataentry_write_addr,    -- RAM address we want to write to
       wr_we           => s_dataentry_write_we,      -- RAM write enable
       advance_char    => s_readinput_advance_char,  -- When reading back, a HI signal here tells this to move to the next character
       rd_ramdata      => s_dataentry_read_data,     -- Data from RAM
       rd_ramaddr      => s_dataentry_read_addr,     -- RAM address we want to read from
       char_ready      => s_readinput_char_ready,    -- We output HI here to inform external circuit we now have the correct value on dout
       dout            => s_readinput_dout,          -- The relevant character in the message
       msg_ready       => s_readinput_msg_ready,     -- Outputs HI to signal that we have received a full message and are ready to output it
       msg_ended       => s_readinput_msg_ended,     -- Outputs HI to signal to external circuit that this has read back the full message
       reset_read      => s_readinput_reset_read,    -- Move the output pointer back to the start so we can read the same message off again
       reset_all       => s_readinput_reset_all
    );

    ascii2vector_i: component ascii2vector
    Generic map (
        OUTPUT_WIDTH => OPERAND_WIDTH
    )
    Port map(
        clk     => clk,
        trigger => s_asc2vec_trigger,
        reset   => s_asc2vec_reset,
        ascii   => s_asc2vec_char_in,
        dout    => s_asc2vec_dout
    );

    UART_din_mux: component mux_generic_AB
     Generic map (N => 8)
     Port map   (
      inA      => s_sendresult_message,
      inB      => s_send_message_out_data,
      selectA  => s_sendresult_mux_priority,
      selectB  => s_send_message_mux_priority,
      selected => s_uart_din
     );

    UART_send_now_mux: component mux_generic_AB
     Generic map (N => 1)
        Port map   (
         inA(0)      => s_sendresult_send_now,
         inB(0)      => s_send_message_send_now,
         selectA     => s_sendresult_mux_priority,
         selectB     => s_send_message_mux_priority,
         selected(0) => s_uart_send_now
        );

    uart_i: component uart
     port map (
      RsRx       => RsRx,
      RsTx       => RsTx,
      clk        => clk,
      read_ack   => s_uart_read_ack,
      read_dout  => s_uart_read_dout,
      read_ready => s_uart_read_ready,
      send_delay => '0',
      send_din   => s_uart_din,
      send_ready => s_uart_send_now
    );

    process(clk)
        constant c_message_welcome_addr     : STD_LOGIC_VECTOR(9 downto 0) := "0000000000"; -- Welcome. Please enter a number for factorisation:
        constant c_message_confirm_addr     : STD_LOGIC_VECTOR(9 downto 0) := "0010000000"; -- You entered:
        constant c_message_vector_addr      : STD_LOGIC_VECTOR(9 downto 0) := "0100000000"; -- I converted it to a binary vector, here that is:
        constant c_message_factorising_addr : STD_LOGIC_VECTOR(9 downto 0) := "0110000000"; -- Factorising
        constant c_message_wasprime_addr    : STD_LOGIC_VECTOR(9 downto 0) := "1000000000"; -- I didn't find any factors. I guess it was a prime
        constant c_message_foundfactor_addr : STD_LOGIC_VECTOR(9 downto 0) := "1010000000"; -- I found at least one factor. The factor I found is:
        constant c_v_division_count_start   : STD_LOGIC_VECTOR(DIVIDER_WIDTH - 1 downto 0) := (1 => '1', 0 => '0', others => '0'); -- ie, 0000000010
        
        constant c_divider_count            : STD_LOGIC_VECTOR(DIVIDER_WIDTH - 1 downto 0) := std_logic_vector(to_unsigned(DIVIDER_COUNT, DIVIDER_WIDTH));
        constant c_divider_count_double     : STD_LOGIC_VECTOR(DIVIDER_WIDTH - 1 downto 0) := std_logic_vector(to_unsigned(DIVIDER_COUNT * 2, DIVIDER_WIDTH));            

        variable v_factor                   : STD_LOGIC_VECTOR(DIVIDER_WIDTH - 1 downto 0) := (others => '0');
        
        type t_state is (
            send_welcome,
            get_input, finish_get_input,
            convert_input_to_vector_begin, convert_input_to_vector_trigger, convert_input_to_vector_wait,
            display_on_uart_preamble, display_on_uart_prep, display_on_uart, display_on_uart_next_bit,
            prep_factorisation, run_factorisation_delay, run_factorisation,
            prep_result, result_message, result_result, print_factor, print_factor_wait
        );
        variable v_state  : t_state   := send_welcome;
        
        variable v_division_count           : STD_LOGIC_VECTOR(DIVIDER_WIDTH - 1 downto 0) := (others => '0');
        variable v_half_way_there           : STD_LOGIC                                    := '0';
        variable v_div_overflow             : STD_LOGIC                                    := '0';
        variable v_is_prime                 : STD_LOGIC                                    := '1';
        variable v_count                    : integer                                      := 0;
        variable v_readout_bit_number       : integer                                      := 0;
        
    begin
        if (rising_edge(clk)) then
            if (v_state = send_welcome) then            
                -- send the welcome message, then move on
                v_state := get_input;
                s_send_message_start_addr <= c_message_welcome_addr;
                s_send_message_trigger    <= '1';
                s_readinput_begin_process <= '1';
                s_debug(2 downto 0) <= "001";
            elsif (v_state = get_input) then
                -- We're now waiting for the input reader to tell us that it got a complete message
                s_send_message_trigger    <= '0';
                s_readinput_begin_process <= '0';
                s_debug(2 downto 0) <= "010";
                if (s_readinput_msg_ready = '1' and s_readinput_char_ready = '1') then
                    s_debug(2 downto 0) <= "011";
                    s_send_message_start_addr <= c_message_confirm_addr; -- "You entered: "
                    s_send_message_trigger    <= '1';
                    v_state := finish_get_input;
                    v_count := 0;
                end if;
                
                s_debug(3) <= s_uart_read_ack;
                
                s_debug(15 downto 8) <= s_uart_read_dout;
                s_debug(4) <= s_uart_read_ready;
                
            elsif (v_state = finish_get_input) then
                s_debug(2 downto 0) <= "100";
                -- We're still sending "You entered: ", it appears that the s_send_message_busy does not come HI immediately so wait 50 ticks before even checking it
                s_send_message_trigger <= '0'; -- previously we sent "You entered: ", we want to stop repeating that.
                if (v_count < 50) then
                    v_count := v_count + 1;
                end if;
                if (s_send_message_busy = '0' and v_count = 50) then
                    v_count := 0;
                    v_state := convert_input_to_vector_begin;
                end if;
            elsif (v_state = convert_input_to_vector_begin) then
                s_sendresult_mux_priority <= '1';
                s_sendresult_send_now     <= '0';
                s_asc2vec_trigger         <= '0'; -- Make sure the converter doesn't start early
                s_asc2vec_reset           <= '1'; -- Reset the converter
                v_count                   := 0;
                v_state                   := convert_input_to_vector_trigger;
            elsif (v_state = convert_input_to_vector_trigger) then
                s_asc2vec_reset  <= '0';
                s_readinput_advance_char <= '0';
                if (v_count < 20) then
                    v_count := v_count + 1;
                elsif (s_readinput_msg_ended = '1') then
                    v_state := display_on_uart_preamble;
                elsif (s_readinput_char_ready = '1') then
                    s_asc2vec_trigger     <= '1';
                    s_asc2vec_char_in     <= s_readinput_dout;
                    s_sendresult_message  <= s_readinput_dout;
                    s_sendresult_send_now <= '1';
                    v_state               := convert_input_to_vector_wait;
                end if;
            elsif (v_state = convert_input_to_vector_wait) then
                v_count                  := 0;
                s_sendresult_send_now    <= '0';
                s_asc2vec_trigger        <= '0';
                s_readinput_advance_char <= '1';
                v_state                  := convert_input_to_vector_trigger;
            elsif (v_state = display_on_uart_preamble) then
                s_sendresult_mux_priority <= '0'; -- Allow the sendMESSAGE circuit to grab priority
                s_send_message_start_addr <= c_message_vector_addr; -- "You entered: "
                s_send_message_trigger    <= '1';
                --led                       <= s_asc2vec_dout(15 downto 0);
                v_count                   := 0;
                v_state                   := display_on_uart_prep;
            elsif (v_state = display_on_uart_prep) then
                s_send_message_trigger    <= '0';
                if (v_count < 50) then
                    v_count := v_count + 1;
                end if;
                if (s_send_message_busy = '0' and v_count = 50) then
                    v_count := 0;
                    v_state := display_on_uart;
                end if;
                v_readout_bit_number      := 0;
            elsif (v_state = display_on_uart) then
                s_sendresult_mux_priority <= '1';
                s_sendresult_send_now     <= '1';
                if (s_asc2vec_dout((OPERAND_WIDTH - 1) - v_readout_bit_number) = '1') then
                    s_sendresult_message <= "00110001";
                else
                    s_sendresult_message <= "00110000";
                end if;
                v_state := display_on_uart_next_bit;
            elsif (v_state = display_on_uart_next_bit) then
                s_sendresult_send_now    <= '0';
                v_readout_bit_number := v_readout_bit_number + 1;
                if (v_readout_bit_number = OPERAND_WIDTH) then
                    s_sendresult_mux_priority <= '0';
                    s_send_message_start_addr <= c_message_factorising_addr;
                    s_send_message_trigger    <= '1';
                    v_count                   := 0;
                    v_state                   := prep_factorisation;
                else
                    v_state                   := display_on_uart;
                end if;
            elsif (v_state = prep_factorisation) then
                s_send_message_trigger <= '0';
                if (v_count < 50) then
                    v_count := v_count + 1;
                elsif (v_count = 50 and s_send_message_busy = '0') then
                    v_state                      := run_factorisation_delay;
                    v_count                      := 0;
                    v_division_count             := c_v_division_count_start; -- We skip %0 and %1, go straight to %2. So we're initially testing 2,4,6,8,10,12,14, etc, really we only care about the 2
                    v_half_way_there             := '0';
                    v_div_overflow               := '0';
                    s_divtest_top                <= s_asc2vec_dout;
                    s_divtest_bottom                             <= (others => '0');
                    s_divtest_bottom(DIVIDER_WIDTH - 1 downto 0) <= v_division_count;
                    s_debug                      <= (others => '1');
                    s_divtest_trigger            <= '1';
                    v_is_prime                   := '1';
                end if;
            elsif (v_state = run_factorisation_delay) then
                -- We have to delay for one clock cycle for the trigger to propagate
                s_divtest_trigger <= '0';
                v_state           := run_factorisation;
            elsif (v_state = run_factorisation) then
                -- First wait for everything to become ready
                if (s_divtest_ready = c_divtest_hi_mask) then
                    if (s_divtest_perfect = c_divtest_lo_mask) then
                        -- Nothing matched.
                        -- Is it time to terminate?
                        if (v_div_overflow = '1') then
                            -- Didn't find any results, and we overflower anyway, this is a prime
                            v_state := prep_result;
                        else
                            -- We should try the next set of dividers
                            if (v_division_count = c_v_division_count_start) then
                                -- We already tested a bunch of even numbers, 2,4,6,8,10,12 etc, now shift up to the odd numbers ,3,5,7,9,11,13 etc
                                v_division_count := v_division_count + 1;
                            else
                                -- now move to the next odd numbers, 15,17,19,21,23 etc
                                v_division_count := v_division_count + c_divider_count_double;
                            end if;

                            -- some pretty debug on the LEDs
                            s_debug_count <= s_debug_count + "1";
                            if (s_debug_count = "100000000000000") then
                                s_debug <= s_debug + "1";
                                s_debug_count <= (others => '0');
                            end if;
                            
                            if (v_half_way_there = '1' and v_division_count(DIVIDER_WIDTH - 1) = '0') then
                                -- We've looped round, complete this final round of division and then bail out.
                                v_div_overflow := '1';
                            end if;
                            -- We need to know once we're over half way (so that next time we detect the top bit as a '0', we know we've looped round
                            if (v_division_count(DIVIDER_WIDTH - 1) = '1') then
                                v_half_way_there := '1';
                            end if;
                            
                            s_divtest_bottom(DIVIDER_WIDTH - 1 downto 0) <= v_division_count; -- Top bits should already by zero
                            s_divtest_trigger <= '1';
                            v_state           := run_factorisation_delay;
                        end if;
                    else
                        -- something actually matched, we found a factor
                        v_state := prep_result;
                    end if;
                end if;
            elsif (v_state = prep_result) then
                -- We get to the state when either we find a perfect division, or we exhaust the search space
                -- So we don't yet know if we found a prime or not.
                if (s_divtest_perfect = c_divtest_lo_mask) then
                    -- It was a prime
                    v_is_prime := '1';
                    v_state    := result_message;
                else
                    -- Use v_count to loop through all the bits in the perfect vector
                    -- Go from LSB to MSB
                    if (s_divtest_perfect(v_count) = '1') then
                        -- we found it
                        -- The factor is v_count plus whatever the offset originally was
                        -- We need to multiply v_count by two as the dividers are initialised to not check even numbers (apart from first pass)
                        v_factor            := v_division_count + std_logic_vector(to_unsigned(v_count * 2, DIVIDER_WIDTH));
                        v_is_prime          := '0';
                        v_state             := result_message;
                    else
                        -- We didn't find it here, move on
                        v_count := v_count + 1;
                    end if;
                end if;
            elsif (v_state = result_message) then
                s_sendresult_mux_priority <= '0'; -- Allow the sendMESSAGE circuit to grab priority
                if (v_is_prime = '1') then
                    s_send_message_start_addr <= c_message_wasprime_addr; -- "...was a prime..."
                else
                    s_send_message_start_addr <= c_message_foundfactor_addr; -- "..found factor..."
                end if;
                s_send_message_trigger    <= '1';
                v_count                   := 0;
                v_state                   := result_result;
            elsif (v_state = result_result) then
                s_send_message_trigger <= '0';
                if (v_count < 50) then
                    v_count := v_count + 1;
                elsif (v_count = 50 and s_send_message_busy = '0') then
                    if (v_is_prime = '1') then
                        v_state := send_welcome;
                    else
                        v_state              := print_factor;
                        v_readout_bit_number := 0;
                    end if;
                end if;
            elsif (v_state = print_factor) then
                s_sendresult_mux_priority <= '1';
                s_sendresult_send_now     <= '1';
                if (v_factor((DIVIDER_WIDTH - v_readout_bit_number) - 1) = '1') then
                    s_sendresult_message <= "00110001";
                else
                    s_sendresult_message <= "00110000";
                end if;
                v_state := print_factor_wait;
                v_count := 0;
            elsif (v_state = print_factor_wait) then
                s_sendresult_send_now  <= '0';
                if (v_count < 50) then
                    v_count := v_count + 1;
                else
                    v_readout_bit_number   := v_readout_bit_number + 1;
                    if (v_readout_bit_number = DIVIDER_WIDTH) then
                        s_sendresult_mux_priority <= '0';
                        v_state                   := send_welcome;
                        v_count                   := 0;
                        v_readout_bit_number      := 0;
                    else
                        v_state := print_factor;
                    end if;
                end if;
            end if;
            
            led <= s_debug;
            
        end if;

    end process;

end Behavioral;
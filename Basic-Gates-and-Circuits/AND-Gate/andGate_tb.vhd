-- ==========================================================
-- VHDL Testbench: AND Gate
-- Description: Testbench to verify the functionality of 2-input AND gate
-- Author: Sudeep Mishra
-- ==========================================================

library IEEE;
use IEEE.std_logic_1164.all;

-- ===================== ENTITY ============================
-- Testbench entity has no ports
entity andGate_tb is
end andGate_tb;

-- ================== ARCHITECTURE ========================
architecture Behavioral of andGate_tb is

    -- Declare the AND gate component
    component andGate
        port(
            A : in  std_logic;  -- First input
            B : in  std_logic;  -- Second input
            Y : out std_logic   -- Output
        );
    end component;

    -- Signals to connect to the AND gate inputs and output
    signal A_tb : std_logic := '0';  -- Testbench input A
    signal B_tb : std_logic := '0';  -- Testbench input B
    signal Y_tb : std_logic;         -- Testbench output Y

begin
    -- ================== INSTANTIATE UNIT UNDER TEST (UUT) ==================
    uut: andGate port map (
        A => A_tb,
        B => B_tb,
        Y => Y_tb
    );

    -- ================== STIMULUS PROCESS ==================
    -- This process applies different input combinations to the AND gate
    stim_proc: process
    begin
        -- Test case 1: A=0, B=0
        wait for 100 ns;
        A_tb <= '0';
        B_tb <= '0';

        -- Test case 2: A=0, B=1
        wait for 100 ns;
        A_tb <= '0';
        B_tb <= '1';

        -- Test case 3: A=1, B=0
        wait for 100 ns;
        A_tb <= '1';
        B_tb <= '0';

        -- Test case 4: A=1, B=1
        wait for 100 ns;
        A_tb <= '1';
        B_tb <= '1';

        -- Stop simulation
        wait;
    end process;

end Behavioral;
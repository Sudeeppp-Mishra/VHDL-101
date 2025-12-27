-- ==========================================================
-- VHDL Code: AND Gate
-- Description: 2-input AND gate
-- Author: Sudeep Mishra
-- ==========================================================

-- Include IEEE standard logic library for using std_logic type
library IEEE;
use IEEE.std_logic_1164.all;

-- ===================== ENTITY ============================
-- Entity declaration defines the interface of the AND gate
-- Ports:
--   A : input 1
--   B : input 2
--   Y : output
entity andGate is
    port( 
        A : in  std_logic;    -- First input
        B : in  std_logic;    -- Second input
        Y : out std_logic     -- Output (A AND B)
    );
end andGate;

-- ================== ARCHITECTURE ========================
-- Behavioral architecture defines the functionality
-- Here, output Y is logic AND of inputs A and B
architecture Behavioral of andGate is
begin
    -- Concurrent assignment: Y is high only when both A and B are high
    Y <= A and B;
end Behavioral;
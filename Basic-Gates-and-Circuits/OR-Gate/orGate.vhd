library IEEE;
use IEEE.std_logic_1164.all;

entity orGate is
    port(
        A : in std_logic;
        B : in std_logic;
        Y : out std_logic;
    );
end orGate;

architecture Behavioral of orGate is
    begin
        Y <= A or B;
end Behavioral;
library IEEE;
use IEEE.std_logic_1164.all;

entity Half_Adder is
    port(
        A, B : in std_logic;
        Sum, Cout : out std_logic
        );
end Half_Adder;

architecture Behavioral of Half_Adder is
begin
    Sum <= A xor B;
    Cout <= A and B;
end Behavioral;

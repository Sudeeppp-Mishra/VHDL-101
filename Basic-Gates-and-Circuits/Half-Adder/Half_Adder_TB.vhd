library IEEE;
use IEEE.std_logic_1164.all;

entity Half_Adder_TB is
end Half_Adder_TB;

architecture Behavioral of Half_Adder_TB is
    component Half_Adder
        port(
            A, B : in std_logic;
            Sum, Cout : out std_logic
        );
    end component;

    signal A, B : std_logic := '0';
    signal Sum, Cout : std_logic;

begin
    dut : Half_Adder -- dut = Device Under Test 
        port map(
            A => A, 
            B => B,
            Sum => Sum,
            Cout => Cout
        );

    stim_proc: process
    begin
        A <= '0';
        B <= '0';
        wait for 100 ns;

        A <= '0';
        B <= '1';
        wait for 100 ns;

        A <= '1';
        B <= '0';
        wait for 100 ns;

        A <= '1';
        B <= '1';
        wait for 100 ns;

        wait;
    end process;
end Behavioral;

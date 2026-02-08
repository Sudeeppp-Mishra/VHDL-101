library IEEE;
use IEEE.std_logic_1164.all;

entity orGate_tb is
end orGate_tb;

architecture Behavioral of orGate_tb is
    component orGate
        port(
            A : in std_logic;
            B : in std_logic;
            Y : out std_logic
        );
    end component;

    signal A_tb, B_tb : std_logic := '0';
    signal Y_tb : std_logic;

begin
    uut: orGate
        port map(
            A => A_tb,
            B => B_tb,
            Y => Y_tb
        );

    stim_proc : process
    begin
        A_tb <= '0';
        B_tb <= '0';
        wait for 100 ns;

        A_tb <= '0';
        B_tb <= '1';
        wait for 100 ns;

        A_tb <= '1';
        B_tb <= '0';
        wait for 100 ns;

        A_tb <= '1';
        B_tb <= '1';
        wait for 100 ns;

        wait;
    end process;
end Behavioral;
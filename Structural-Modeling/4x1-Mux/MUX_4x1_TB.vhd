library IEEE;
use IEEE.std_logic_1164.all;

entity MUX_4x1_TB is
end MUX_4x1_TB;

architecture Behavioral of MUX_4x1_TB is
    component MUX_4x1
    port(
        I0, I1, I2, I3, S0, S1 : in std_logic;
        Y : out std_logic
    );
    end component;

    signal I0, I1, I2, I3, S0, S1 : std_logic := '0';
    signal Y : std_logic;

begin
    uut : MUX_4x1
    port map(
        I0 => I0, I1 => I1, I2 => I2, I3 => I3, S0 => S0, S1 => S1, Y => Y
    );

    stim_proc : process 
    begin
        I0 <= '0';
        I1 <= '1';
        I2 <= '0';
        I3 <= '1';

        S0 <= '0';
        S1 <= '0';
        wait for 200 ns;

        S0 <= '1';
        S1 <= '0';
        wait for 200 ns;

        S0 <= '0';
        S1 <= '1';
        wait for 200 ns;

        S0 <= '1';
        S1 <= '1';
        wait for 200 ns;

        wait;
    end process;
end Behavioral; 
library IEEE;
use IEEE.std_logic_1164.all;

entity MUX_2x1_TB is
end MUX_2x1_TB;

architecture Behavioral of MUX_2x1_TB is
    component MUX_2x1
    port(
        I0, I1 : in std_logic_vector(3 downto 0);
        S : in std_logic;
        Y : out std_logic_vector(3 downto 0)
    );
    end component;

    signal I0, I1 : std_logic_vector(3 downto 0) := "0000";
    signal S : std_logic := '0';
    signal Y : std_logic_vector(3 downto 0);

begin
    uut : MUX_2x1
    port map(
        I0 => I0, 
        I1 => I1,
        S => S, 
        Y => Y
    );

    stim_proc : process 
    begin
        I0 <= "0001";
        I1 <= "1010";

        S <= '0';
        wait for 200 ns;

        S <= '1';
        wait for 200 ns;

        wait;
    end process;
end Behavioral;
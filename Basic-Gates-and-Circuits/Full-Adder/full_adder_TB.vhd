library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder_TB is
end full_adder_TB;

architecture Behavioral of full_adder_TB is
    component full_adder
        port (
            A, B, Cin : in std_logic;
            S, Cout : out std_logic
        );
    end component;

    signal A, B, Cin : std_logic := '0';
    signal S, Cout : std_logic;

begin
    uut: full_adder
        port map(
            A => A, 
            B => B,
            Cin => Cin,
            S => S, 
            Cout => Cout
        );

    stim_proc:process
    begin
        A <= '0';
        B <= '0';
        Cin <= '0';
        wait for 100 ns;

        A <= '0';
        B <= '0';
        Cin <= '1';
        wait for 100 ns;

        A <= '0';
        B <= '1';
        Cin <= '0';
        wait for 100 ns;

        A <= '0';
        B <= '1';
        Cin <= '1';
        wait for 100 ns;
        
        A <= '1';
        B <= '0';
        Cin <= '0';
        wait for 100 ns;        

        A <= '1';
        B <= '0';
        Cin <= '1';
        wait for 100 ns;

        A <= '1';
        B <= '1';
        Cin <= '0';
        wait for 100 ns;

        A <= '1';
        B <= '1';
        Cin <= '1';
        wait for 100 ns;

        wait;
    end process;
end Behavioral;
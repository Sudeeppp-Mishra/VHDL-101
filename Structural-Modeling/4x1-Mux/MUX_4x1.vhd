library IEEE;
use IEEE.std_logic_1164.all;

entity MUX_4x1 is
    port(
        I0, I1, I2, I3 : in std_logic;
        S0, S1 : in std_logic;
        Y : out std_logic
    );
end MUX_4x1;

architecture Structural of MUX_4x1 is
    component MUX_2x1 
    port(
        I0, I1 : in std_logic;
        S : in std_logic;
        Y : out std_logic
    );
    end component;

    signal sig1, sig2 : std_logic;

begin
    MUX0 : MUX_2x1
    port map(
        I0 => I0, I1 => I1, S => S0, Y => sig1
    );

    MUX1 : MUX_2x1
    port map(
        I0 => I2, I1 => I3, S => S0, Y => sig2
    );

    MUX3 : MUX_2x1
    port map(
        I0 => sig1, I1 => sig2, S => S1, Y => Y
    );
end Structural;
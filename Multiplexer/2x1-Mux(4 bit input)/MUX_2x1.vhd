library IEEE;
use IEEE.std_logic_1164.all;

entity MUX_2x1 is
    port(
        I0, I1 : in std_logic_vector(3 downto 0);
        S : in std_logic;
        Y : out std_logic_vector(3 downto 0)
    );
end MUX_2x1;

architecture Behavioral of MUX_2x1 is
begin
    process(I0, I1, S)
    begin
        case S is
            when '0' => Y <= I0;
            when '1' => Y <= I1;
            when others => Y <= '0';
        end case;
    end process;
end Behavioral ; 
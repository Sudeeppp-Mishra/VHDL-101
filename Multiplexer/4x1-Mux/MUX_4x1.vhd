library IEEE;
use IEEE.std_logic_1164.all;

entity MUX4x1 is
    port(
        I0, I1, I2, I3 : in std_logic;
        S0, S1        : in std_logic;
        Y             : out std_logic
    );
end MUX4x1;

architecture Behavioral of MUX4x1 is
	 signal sel : std_logic_vector(1 downto 0);
begin
	 sel <= (S1 & S0);
    process(I0, I1, I2, I3, S0, S1)
    begin
        case sel is
            when "00" => Y <= I0;
            when "01" => Y <= I1;
            when "10" => Y <= I2;
            when "11" => Y <= I3;
            when others => Y <= '0';
        end case;
    end process;
end Behavioral;


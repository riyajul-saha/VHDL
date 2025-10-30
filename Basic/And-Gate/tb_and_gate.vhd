library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_AND_GATE is
end tb_AND_GATE;

architecture behavior of tb_AND_GATE is
    component AND_GATE
        Port (
            A : in STD_LOGIC;
            B : in STD_LOGIC;
            Y : out STD_LOGIC
        );
    end component;

    signal A, B, Y : STD_LOGIC;
begin
    uut: AND_GATE port map (A => A, B => B, Y => Y);

    process
    begin
        A <= '0'; B <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; wait for 10 ns;
        wait;
    end process;
end behavior;

library ieee;
use ieee.std_logic_1164.all;

entity tb_xor_gate is
end tb_xor_gate;

architecture test of tb_xor_gate is
	signal A,B,Y : std_logic;
	begin
		uut:entity work.xor_gate
		port map(
			a => A,
			b => B,
			y => Y
		);
		process
			begin
				A <= '0'; B <= '0';wait for 10 ns;
				A <= '0'; B <= '1';wait for 10 ns;
				A <= '1'; B <= '0';wait for 10 ns;
				A <= '1'; B <= '1';wait for 10 ns;
				wait;
		end process;
end architecture;
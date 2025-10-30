library ieee;
use ieee.std_logic_1164.all;

entity tb_nand_gate is
end entity;

architecture test of tb_nand_gate is
	signal A,B,Y:std_logic;
	begin
		UUT: entity work.nand_gate
		port map(
			a => A,
			b => B,
			y => Y
		);
		process
			begin
				A <= '0';B<='0';wait for 10 ns;
				A <= '0';B<='1';wait for 10 ns;
				A <= '1';B<='0';wait for 10 ns;
				A <= '1';B<='1';wait for 10 ns;
				wait;
		end process;
end architecture;
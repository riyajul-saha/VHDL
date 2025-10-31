library ieee;
use ieee.std_logic_1164.all;

entity tb_half_substractor is
end entity;

architecture test of tb_half_substractor is
	signal A,B,D,Br:std_logic;
	begin
		UUT: entity work.half_substractor
			port map(
				input1 => A,
				input2 => B,
				difference => D,
				borrow => Br
			);
		process
			begin
				A <= '0';B <= '0';wait for 10 ns;--- 0 to 10 ns
				A <= '0';B <= '1';wait for 10 ns;--- 10 to 20 ns 
				A <= '1';B <= '0';wait for 10 ns;--- 20 to 30 ns 
				A <= '1';B <= '1';wait for 10 ns; ---30 to 40 ns
				wait;
		end process;
end architecture;
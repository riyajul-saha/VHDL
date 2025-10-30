library ieee;
use ieee.std_logic_1164.all;

entity tb_or_gate is
end entity;

architecture test of tb_or_gate is
	signal in1,in2,out1 :std_logic;
	begin
		UUT: entity work.or_gate
			port map(
				input1 => in1,
				input2 => in2,
				output => out1
		);
		process
		begin
			in1 <= '0' ; in2 <= '0'; wait for 10 ns;
			in1 <= '1' ; in2 <= '1'; wait for 10 ns;
			in1 <= '1' ; in2 <= '0'; wait for 10 ns;
			in1 <= '1' ; in2 <= '1'; wait for 10 ns;
			wait;
		end process;
	end architecture;
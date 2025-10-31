library ieee;
use ieee.std_logic_1164.all;

entity tb_half_adder is
end entity;

architecture test of tb_half_adder is
	signal A,B,S,C : std_logic;
	begin
		UUT: entity work.half_adder
			port map(
				a => A,
				b => B,
				s => S,
				c => C
			);
		process
			begin
				A <= '0' ; B <= '0';wait for 10 ns;
				report "A = '0' , B = '0',Sum = "&std_logic'image(S)&",Carry = "&std_logic'image(C);
				A <= '0' ; B <= '1';wait for 10 ns;
				report "A = '0' , B = '1',Sum = "&std_logic'image(S)&",Carry = "&std_logic'image(C);
				A <= '1' ; B <= '0';wait for 10 ns;
				report "A = '1' , B = '0',Sum = "&std_logic'image(S)&",Carry = "&std_logic'image(C);
				A <= '1' ; B <= '1';wait for 10 ns;
				report "A = '1' , B = '1',Sum = "&std_logic'image(S)&",Carry = "&std_logic'image(C);
				wait;
		end process;
end architecture;
library ieee;
use ieee.std_logic_1164.all;

entity xor_gate is
	port(
		a : in std_logic;
		b : in std_logic;
		y : out std_logic
	);
end entity;

architecture logic of xor_gate is
	signal p,q,r:std_logic;
	begin
		p <= a nand b;
		q <= p nand a;
		r <= p nand b;
		y <= q nand r;
end architecture;
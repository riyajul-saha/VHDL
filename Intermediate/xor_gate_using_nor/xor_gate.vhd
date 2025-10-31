library ieee;
use ieee.std_logic_1164.all;

entity xor_gate is
	port(
		a : in std_logic;
		b : in std_logic;
		y : out std_logic
	);
end entity;

architecture test of xor_gate is
	signal p,q,r : std_logic;
	begin
		p <= a nor b;
		q <= p nor a;
		r <= p nor b;
		y <= (q nor r) nor (q nor r);
end architecture;
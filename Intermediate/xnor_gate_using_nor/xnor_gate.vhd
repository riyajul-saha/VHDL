library ieee;
use ieee.std_logic_1164.all;

entity xnor_gate is
	port(
		a : in std_logic;
		b : in std_logic;
		y : out std_logic
	);
end entity;

architecture logic of xnor_gate is
	signal p,q,r : std_logic;
	begin 
		p <= a nor b;
		q <= p nor a;
		r <= p nor b;
		y <= q nor r;
end architecture;
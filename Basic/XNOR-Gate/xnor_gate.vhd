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
	begin
		y <= (not a and not b) or (a and b);
end architecture;
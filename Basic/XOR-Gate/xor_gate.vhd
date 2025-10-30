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
	begin
		y <= (not a and b) or (a and not b);
end architecture;
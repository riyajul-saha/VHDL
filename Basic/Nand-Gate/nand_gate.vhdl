library ieee;
use ieee.std_logic_1164.all;

entity nand_gate is
	port(
		a : in std_logic;
		b : in std_logic;
		y : out std_logic
	);
end entity;

architecture logic of nand_gate is
	signal x : std_logic;
	begin
	 x <= a and b;
	 y <= not x;
end architecture;
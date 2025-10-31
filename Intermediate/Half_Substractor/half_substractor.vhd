library ieee;
use ieee.std_logic_1164.all;

entity half_substractor is
	port(
		input1 : in std_logic;
		input2 : in std_logic;
		difference : out std_logic;
		borrow : out std_logic
	);
end entity;

architecture logic of half_substractor is
	begin
		difference <= input1 xor input2;
		borrow <= not input1 and input2;
end architecture;
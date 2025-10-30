library ieee;
use ieee.std_logic_1164.all;

entity or_gate is
	port(
		input1 , input2 : in std_logic;
		output : out std_logic
	);
end entity;

architecture logic of or_gate is
	begin
		output <= input1 or input2;
	end architecture;
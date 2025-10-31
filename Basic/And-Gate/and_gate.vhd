library IEEE;
use IEEE.std_logic_1164.all;

entity AND_GATE is
    Port
	( 
		A : in STD_LOGIC;
		B : in STD_LOGIC; 
		Y : out STD_LOGIC
	);
end entity;

architecture logic of AND_GATE is
begin
    Y <= A AND B; ---And Gate logic 
end architecture;
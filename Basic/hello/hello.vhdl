library ieee;
use ieee.std_logic_1164.all;

entity hello is
    port(
        a : in std_logic;
        b : in std_logic;
        y : out std_logic
    );
end entity;

architecture behav of hello is
begin
    y <= a and b;
end architecture;


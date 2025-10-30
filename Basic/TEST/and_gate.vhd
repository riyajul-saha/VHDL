library ieee;
use ieee.std_logic_1164.all;

entity and_gate is
    port (
        A : in std_logic;
        B : in std_logic;
        Y : out std_logic
    );
end entity;

-- architecture behavior of and_gate is
-- begin
    -- normal instant connection
    -- Y <= A and B;
-- end architecture;
architecture behavior of and_gate is
begin
    -- add 2 ns delay to output
    Y <= A and B after 2 ns;
end architecture;


library ieee;
use ieee.std_logic_1164.all;
entity flip is
port(
clk,d: in std_logic;
q: out std_logic
);
end flip;
architecture flop of flip is
begin
process(clk)
begin
if (rising_edge(clk)) then
q<=d;
end if;
end process;
end flop;
d=ab+cd ;



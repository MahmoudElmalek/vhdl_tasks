library ieee;
use ieee.std_logic_1164.all;
entity flip1 is
end flip1;
architecture flop1 of flip1 is
component flip is
port(
clk,d : in std_logic;
q: out std_logic
);
end component;
signal clk,d,q : std_logic;
begin
tree : flip port map (clk=>clk,d=>d,q=>q);
process
begin
clk <='0';
d <='0';
wait for 1 ns;
clk <='0';
d <='1';
wait for 1 ns;
clk <='1';
d <='0';
wait for 1 ns;
clk <='1';
d <='1';
wait for 1 ns;
clk <='1';
d <='0';
wait for 1 ns;
clk <='1';
d <='0';
wait for 1 ns;
clk <='1';
d <='1';
wait for 1 ns;
clk <='1';
d <='0';
assert false report "end of file";
wait;
end process;
end flop1;

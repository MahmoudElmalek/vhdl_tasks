library ieee;
use ieee.std_logic_1164.all;
entity mux1 is
end mux1;
architecture m1 of mux1 is
component mux is
port(
sel : in std_logic_vector(1 downto 0);
a,b,c,d : in std_logic;
o : out std_logic
);
end component;
signal sel : std_logic_vector(1 downto 0);
signal a,b,c,d,o : std_logic;
begin
tree : mux port map (sel=>sel,a=>a,b=>b,c=>c,d=>d,o=>o);
process
begin
sel<="00";
a<='0';
b<='0';
c<='0';
d<='1';
wait for 1 ns;
sel<="01";
a<='0';
b<='0';
c<='0';
d<='1';
wait for 1 ns;
sel<="10";
a<='0';
b<='0';
c<='0';
d<='1';
wait for 1 ns;
sel<="11";
a<='0';
b<='0';
c<='0';
d<='1';
wait for 1 ns;
sel<="00";
a<='0';
b<='1';
c<='0';
d<='0';
wait for 1 ns;
assert false report "end of file";
wait;
end process;
end m1;


library ieee;
use ieee.std_logic_1164.all;
entity comp1 is
end comp1;
architecture c1 of comp1 is
component comp
port(
a,b : in std_logic_vector(3 downto 0);
z: out std_logic
);
end component;
signal a,b : std_logic_vector(3 downto 0);
signal z : std_logic;

begin
tree : comp port map (a=>a,b=>b,z=>z);
process
begin
a<="0000";
b<="0001";
wait for 1 ns;
a<="0001";
b<="0001";
wait for 1 ns;
a<="0010";
b<="0001";
wait for 1 ns;
a<="1000";
b<="1001";
wait for 1 ns;
a<="1000";
b<="1000";
wait for 1 ns;
a<="0010";
b<="0010";
wait for 1 ns;
assert false report "end of file";
wait;
end process;
end c1;

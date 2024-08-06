library ieee;
use ieee.std_logic_1164.all;
entity comp is
port(
a,b :in std_logic_vector(3 downto 0);
z :out std_logic
);
end comp;
architecture c of comp is
begin
process(a,b)
begin
if(a=b) then
z<='1';
else z<='0';
end if;
end process;
--z<='1' when (a=b) else '0';
end c;

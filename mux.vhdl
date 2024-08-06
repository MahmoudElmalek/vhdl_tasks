library ieee;
use ieee.std_logic_1164.all;
entity mux is
port(
sel : in std_logic_vector(1 downto 0);
a,b,c,d : in std_logic;
o : out std_logic
);
end mux;
architecture m of mux is
begin
process(sel)
begin
case sel is 
when "00" => o<=a;
when "01" => o<=b;
when "10" => o<=c;
when "11" => o<=d;
when others => o<='0';
end case;
end process;
end m;

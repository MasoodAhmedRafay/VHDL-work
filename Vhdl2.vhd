Library ieee;
Use ieee.std_logic_1164.ALL;
Use ieee.std_logic_unsigned.ALL;

Entity lab3 is

port( nrst, clk: in std_logic;
      --D: inout std_logic;
      --Q: buffer std_logic;
clk_out : out std_logic_vector(2 downto 0)
);

End Entity;

Architecture rtl of lab3 is
signal Q: std_logic_vector(2 downto 0) := "000";
begin

freq_Div_2: process(nrst,clk)              -- Asynchronous reset 
--variable Q: std_logic := '0';
begin
     if nrst = '0' then               -- Active low
               Q <= "000";
     elsif clk'event and clk='1' then
Q <= Q +1;
        End if;
      

End process;
clk_out <= Q;

End Architecture;
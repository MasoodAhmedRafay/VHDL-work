Library ieee;
Use ieee.std_logic_1164.ALL;

Entity lab3 is

port( nrst, clk: in std_logic;
clk_out : out std_logic
);

End Entity;

Architecture rtl of lab3 is
signal Q: std_logic := '0';
begin

freq_Div_2: process(nrst,clk)              -- Asynchronous reset 
--variable Q: std_logic := '0';
begin
     if nrst = '0' then               -- Active low
               Q <= '0';
     elsif clk'event and clk='1' then
Q <= not Q;
        End if;
      

End process;
clk_out <= Q;


End Architecture;
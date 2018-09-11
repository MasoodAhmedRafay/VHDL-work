LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY Clock  IS
GENERIC(N: integer:=5);
PORT (
       clk_50MHz: IN std_logic;
       clk_1Hz: OUT std_logic
        
);
END Entity;

ARCHITECTURE clock_div of Clock IS 
BEGIN

process(clk_50MHz)

VARIABLE count50: integer range 0 to 50000000:=0;
BEGIN 

IF(Rising_edge(clk_50MHz)) THEN
count50:=count50+1;

IF (count50=1 and count50<=N) THEN
clk_1Hz<='0';
END if;

IF(count50>N and count50<2*N) THEN
clk_1Hz<='1';
END if;

IF (count50=2*N) THEN
count50:=0;
END if;

END if;
END process;
END ARCHITECTURE;
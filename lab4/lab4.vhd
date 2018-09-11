Library IEEE;
USE IEEE.std_logic_1164.all;

Entity lab4 IS

PORT( rst, clk : IN std_logic;
shift_in : IN std_logic;
shift_out: OUT std_logic_vector(15 downto 0)
);

END lab4;

--15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0

--rst clk Figure: Linear feedback shit-register (LFSR)


ARCHITECTURE behavior OF lab4 IS
signal shift_reg: std_logic_vector(15 downto 0);
Signal Tem:std_logic;

BEGIN
Tem <= shift_reg(15) xor shift_reg(14) xor shift_reg(12) xor shift_reg(3);

Process (clk,rst)
BEGIN
IF rst='0' THEN
shift_reg<=(X"8000");
ELSIF clk'event and clk='1' THEN

shift_reg(15 downto 1)<=shift_reg(14 downto 0);
shift_reg(0)<= Tem;
END IF;
END Process;
shift_out<=shift_reg;
End behavior;
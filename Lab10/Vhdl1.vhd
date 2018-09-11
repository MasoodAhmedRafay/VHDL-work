LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.All;

ENTITY Vhdl1 IS

	PORT (bcd: IN STD_LOGIC_VECTOR(3 downto 0);
			sevensegment: OUT STD_LOGIC_VECTOR(6 downto 0));

END ENTITY;

ARCHITECTURE RTL OF Vhdl1 IS

--0 1 2 3 4 5 6 7 8 9 A B 
--C D E F 
--Figure 1: Hexadecimal digits 


BEGIN 
process (bcd)

BEGIN 
case bcd is 
when "0000" => sevensegment<="1000000"; --0 
when "0001" => sevensegment<="1111001"; --1 
when "0010" => sevensegment<="0100100"; --2 
when "0011" => sevensegment<="0110000"; --3 
when "0100" => sevensegment<="0011001"; --4 
when "0101" => sevensegment<="0010010"; --5 
when "0110" => sevensegment<="0000010"; --6 
when "0111" => sevensegment<="1111000"; --7 
when "1000" => sevensegment<="0000000"; --8 
when "1001" => sevensegment<="0010000"; --9 
when "1010" => sevensegment<="0001000"; --10 
when "1011" => sevensegment<="0000011"; --11 
when "1100" => sevensegment<="1000110"; --12 
when "1101" => sevensegment<="0100001"; --13 
when "1110" => sevensegment<="0000110"; --14 
when "1111" => sevensegment<="0001110"; --15 
when others => sevensegment<="XXXXXXX";  
 
 
 END case; 
 END process;
 END RTL; 




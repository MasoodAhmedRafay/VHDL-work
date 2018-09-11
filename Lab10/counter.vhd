LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_signed.ALL;

ENTITY counter IS

	PORT (pressed: IN STD_LOGIC;
			rst: IN STD_LOGIC;
			up_down: IN STD_LOGIC;
			counts: OUT STD_LOGIC_VECTOR(3 downto 0)
			);

END ENTITY;

ARCHITECTURE updown_counter OF counter IS

BEGIN
process(up_down, rst)

variable COUNT: STD_LOGIC_VECTOR(3 downto 0);
BEGIN
if (rst = '0') then
COUNT:= (others=>'0');

elsif (up_down'event and up_down = '1') then

case pressed IS

WHEN '1'		=> COUNT:= COUNT+1;
WHEN others => COUNT:= COUNT-1;

END case;

counts <= COUNT;
END IF;
END PROCESS;
END ARCHITECTURE;			
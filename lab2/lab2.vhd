Library ieee; 
Use ieee.std_logic_1164.All; 

 

Entity lab2 is 
port 
	(a,b,c,d: in std_logic_vector(3 downto 0); 
	 s : in std_logic_vector(1 downto 0); 
	 x : out std_logic_vector(3 downto 0) 
	 ); 

End Entity;

 
Architecture mux4 of lab2 is 
begin 
 x <= a when s= "00" else 
 b when s= "01" else 
 c when s= "10" else 
 d when s= "11" else 
 (others=>'X'); 
 
End mux4; 
library ieee;
use ieee.std_logic_1164.all;

entity FULL_ADDER is 
	port(
		x,y,c:IN std_logic;
		si,cp:OUT std_logic);
end FULL_ADDER;

architecture FULL_ADDER_DATAFLOW of FULL_ADDER is
	begin
	si<=x XOR y XOR c;
	cp<=(x AND y) OR (x AND c) OR (y AND c);
	

end architecture;


	
	



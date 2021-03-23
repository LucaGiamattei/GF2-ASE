----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:11:12 11/26/2016 
-- Design Name: 
-- Module Name:    Controllo_Overflow - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- si genera overflow
-- se sommiamo due positivi e otteniamo un risultato negativo 
-- se sommiamo due negativi e otteniamo un risultato positivo 
-- se sottraggo un operando positivo ed uno negativo e il risultato è negativo
-- se sottraggo un operando negativo ed uno positivo e il risultato è positivo
--Questo è quello dei peppi
--with add_sub_n select overflow <= segno xor (a(num_bit-1) and b(num_bit-1)) when '0', ((not segno) and a(num_bit-1) and not b_effettivo(num_bit-1)) or (segno and not a(num_bit-1) and b_effettivo(num_bit-1)) when '1', '0' when others;

--overflow <= segno xor (a(num_bit-1) and b(num_bit-1));
entity Controllo_Overflow is
port (
		x : in std_logic ;
		y: in std_logic ;
	   somma: in std_logic;
		overflow : out std_logic 
);
end Controllo_Overflow;

architecture Behavioral of Controllo_Overflow is

signal x1: STD_LOGIC ; 
signal x2: STD_LOGIC ;
signal overf :  std_logic := '0' ;

begin

overflow <= overf ;
x1 <= x ;
x2 <= y ;
-- Se sommi 2 valori positivi e hai un risultato negativo oppure sommi 2 negativi
-- ed hai un risultato positivo allora c'è overflow
proc : process (x1,x2,somma) begin

if ( ( (x1 xor x2) = '0')  and (x1 xor somma) = '1'  ) then
overf <= '1' ;
else 
overf <= '0' ; 
end if ;

end process ;


end Behavioral;


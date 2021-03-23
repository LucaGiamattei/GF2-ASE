----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:48:21 02/20/2019 
-- Design Name: 
-- Module Name:    nor_3_in - Behavioral 
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

entity nor_3_in is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
			  c : in STD_LOGIC;
           o : out  STD_LOGIC);
end nor_3_in;

architecture nor_3_in of nor_3_in is

begin
	process (a,b,c)
	
	variable temp :STD_LOGIC;
	
	begin
	
	temp := not (a or b or c);
	o <= temp after 6 ns;
	
	end process;

end nor_3_in;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:48:11 02/20/2019 
-- Design Name: 
-- Module Name:    nor_2_in - nor_2_in 
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

entity nor_2_in is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           o : out  STD_LOGIC);
end nor_2_in;

architecture nor_2_in of nor_2_in is

begin
	process (a,b)
	
	variable temp :STD_LOGIC;
	
	begin
	
	temp := not (a or b);
	o <= temp after 6 ns;
	
	end process;

end nor_2_in;


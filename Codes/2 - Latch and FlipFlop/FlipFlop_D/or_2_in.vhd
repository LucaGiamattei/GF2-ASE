----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:53:59 02/20/2019 
-- Design Name: 
-- Module Name:    or_2_in - or_2_in 
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

entity or_2_in is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           o : out  STD_LOGIC);
end or_2_in;

architecture or_2_in of or_2_in is

begin
	process (a,b)
	
	variable temp :STD_LOGIC;
	
	begin
	
	temp := a or b;
	o <= temp after 6 ns;
	
	end process;

end or_2_in;


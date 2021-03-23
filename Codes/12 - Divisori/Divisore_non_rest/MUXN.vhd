----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:17:11 03/14/2019 
-- Design Name: 
-- Module Name:    MUXN - Behavioral 
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

entity MUXN is
	generic (N: integer := 8);
	port( 
		a : in std_logic_vector(N-1 downto 0);
		b : in std_logic_vector(N-1 downto 0);
		sel : in std_logic;
		o : out std_logic_vector(N-1 downto 0)
		);
end MUXN;

--signal temp_n : std_logic_vector(N-1 downto 0) ;

architecture Behavioral of MUXN is

begin
		with sel select
		o<= a when '1',
	    b when '0',
	    (others => 'X') when others;

end Behavioral;


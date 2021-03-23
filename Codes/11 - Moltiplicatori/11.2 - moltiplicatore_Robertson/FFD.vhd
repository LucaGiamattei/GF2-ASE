----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:55:42 03/04/2019 
-- Design Name: 
-- Module Name:    FFD - Behavioral 
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

entity FFD is
    Port ( clk : in  STD_LOGIC;
           en : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end FFD;

architecture Behavioral of FFD is

begin
	
		
	process (reset_n, clk) begin
	
			if( reset_n = '0') then
				Q<='0';
			elsif( rising_edge(clk) ) then
				if(en='1') then
					Q<=D;
				end if;
			end if;
	end process;		


end Behavioral;


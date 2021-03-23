----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:24:08 03/05/2019 
-- Design Name: 
-- Module Name:    registro - Behavioral 
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

entity registro is
	generic (N: integer:= 8);
		port(
			valore_in: in std_logic_vector(N-1 downto 0);
			reset_n:in std_logic;
			enable:in std_logic;
			clk: in std_logic;
			valore_out: out std_logic_vector(N-1 downto 0
			));
end registro;

architecture Behavioral of registro is
	signal temp: std_logic_vector(N-1 downto 0);
	
	
		
		

begin
	valore_out <= temp;
	process( clk, reset_n) begin
			if( reset_n = '0') then
				temp <= (others=>'0');
			elsif rising_edge(clk) then
				if(enable = '1') then
				temp<=valore_in;
				end if;
			end if;
			
	end process;
end Behavioral;


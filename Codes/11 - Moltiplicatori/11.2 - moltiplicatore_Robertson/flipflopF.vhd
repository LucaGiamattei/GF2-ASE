----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:00:13 03/05/2019 
-- Design Name: 
-- Module Name:    flipflop_msb - Behavioral 
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

entity flipflopF is
	port(
		Q_lsb: in std_logic;
		M_msb: in std_logic;
		reset_n: in std_logic;
		clk: in std_logic;
		F: out std_logic
		);
end flipflopF;

architecture Behavioral of flipflopF is
signal temp: std_logic:='0';
begin
	process(clk,reset_n) begin
		if(reset_n = '0' ) then
			temp<= '0';
		elsif (rising_edge(clk)) then
			if( Q_lsb = '1' and M_msb ='1') then
				temp<= '1';
			end if;
		end if;
		
	end process;
	F <= temp;

end Behavioral;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:59:08 11/19/2012 
-- Design Name: 
-- Module Name:    reg_clock - Behavioral 
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
-- arithmetic functions with Signed or Unsigned valores
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reg is
	 Generic(width : integer := 8);
    Port ( valore : in  STD_LOGIC_VECTOR (width-1 downto 0);
           clock : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (width-1 downto 0));
end reg;

architecture Behavioral of reg is

signal reg_signal: std_logic_vector(width-1 downto 0);

begin

regist: process(clock, valore, reset_n, enable)

begin

	if reset_n = '0' then
		reg_signal <= (others => '0');
	elsif rising_edge(clock) and enable = '1' then
		reg_signal <= valore;
	end if;
	
	end process;

output <= reg_signal;

end Behavioral;


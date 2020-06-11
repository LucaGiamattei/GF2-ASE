----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:42:32 09/16/2012 
-- Design Name: 
-- Module Name:    anodes_manager - Behavioral 
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

entity anodes_manager is
    Port ( counter : in  STD_LOGIC_VECTOR (1 downto 0);
           enable_digit : in  STD_LOGIC_VECTOR (3 downto 0);
           anodes : out  STD_LOGIC_VECTOR (3 downto 0)
			  );
end anodes_manager;

architecture Behavioral of anodes_manager is

signal anodes_swhitching : std_logic_vector(3 downto 0) := (others => '0');

begin


anodes_process: process(counter, enable_digit)
begin

	case counter is
		when "00" =>
			anodes_swhitching <= x"1"; -- 0001
		when "01" =>
			anodes_swhitching <= x"2"; -- 0010
		when "10" =>
			anodes_swhitching <= x"4"; -- 0100
		when "11" =>
			anodes_swhitching <= x"8"; -- 1000
		when others =>
			anodes_swhitching <= (others => 'X');
	end case;

end process;

anodes <= not anodes_swhitching OR not enable_digit;

end Behavioral;


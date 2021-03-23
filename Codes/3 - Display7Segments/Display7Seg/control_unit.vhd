----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:59:27 10/23/2012 
-- Design Name: 
-- Module Name:    control_unit - Behavioral 
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

entity control_unit is
    Port ( 
			  clock : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
			  load_lsb_value : in  STD_LOGIC;
           load_msb_value : in  STD_LOGIC;
           load_dots_enable : in  STD_LOGIC;
			  in_byte : in STD_LOGIC_VECTOR(7 downto 0);
           value : out  STD_LOGIC_VECTOR(15 downto 0);
           dots : out  STD_LOGIC_VECTOR(3 downto 0);
           enable : out  STD_LOGIC_VECTOR(3 downto 0)
			  );
end control_unit;

architecture Behavioral of control_unit is

signal reg_value : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal reg_dots, reg_enable : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
signal reset : std_logic;

begin

reset <= not reset_n;

value <= reg_value;
dots <= reg_dots;
enable <= reg_enable;

main: process(clock, reset, load_lsb_value, load_msb_value, load_dots_enable)
begin

	if reset = '1' then
		reg_value <= (others => '0');
		reg_dots <= (others => '0');
		reg_enable <= (others => '0');
	elsif clock'event and clock = '1' then
		if load_lsb_value = '1' then
			reg_value(7 downto 0) <= in_byte;
		elsif load_msb_value = '1' then
			reg_value(15 downto 8) <= in_byte;
		elsif load_dots_enable = '1' then
			reg_dots <= in_byte(7 downto 4);
			reg_enable <= in_byte(3 downto 0);
		end if;
	end if;

end process;


end Behavioral;


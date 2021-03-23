----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:08:44 10/23/2012 
-- Design Name: 
-- Module Name:    display_on_board - Behavioral 
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

entity display_on_board is
	Port(
		  clock : in  STD_LOGIC;
		  reset : in  STD_LOGIC;
		  load_lsb_value : in  STD_LOGIC;
		  load_msb_value : in  STD_LOGIC;
		  load_dots_enable : in  STD_LOGIC;
		  in_byte : in STD_LOGIC_VECTOR(7 downto 0);
		  anodes : out  STD_LOGIC_VECTOR (3 downto 0);
		  cathodes : out  STD_LOGIC_VECTOR (7 downto 0)
			  );
end display_on_board;

architecture Structural of display_on_board is

COMPONENT display_seven_segments
	GENERIC(
				clock_frequency_in : integer := 50000000;
				clock_frequency_out : integer := 5000000
				);
	PORT(
		clock : IN std_logic;
		reset_n : IN std_logic;
		value : IN std_logic_vector(15 downto 0);
		enable : IN std_logic_vector(3 downto 0);
		dots : IN std_logic_vector(3 downto 0);          
		anodes : OUT std_logic_vector(3 downto 0);
		cathodes : OUT std_logic_vector(7 downto 0)
		);
END COMPONENT;

COMPONENT control_unit
	PORT(
		clock : IN std_logic;
		reset_n : IN std_logic;
		load_lsb_value : IN std_logic;
		load_msb_value : IN std_logic;
		load_dots_enable : IN std_logic;
		in_byte : IN std_logic_vector(7 downto 0);          
		value : OUT std_logic_vector(15 downto 0);
		dots : OUT std_logic_vector(3 downto 0);
		enable : OUT std_logic_vector(3 downto 0)
		);
END COMPONENT;

signal reset_n : std_logic;
signal cu_value : std_logic_vector(15 downto 0);
signal cu_enable : std_logic_vector(3 downto 0);
signal cu_dots : std_logic_vector(3 downto 0);

begin

reset_n <= not reset;

seven_segment_array: display_seven_segments GENERIC MAP(
	clock_frequency_in => 50000000,
	clock_frequency_out => 25
	)
	PORT MAP(
		clock => clock,
		reset_n => reset_n,
		value => cu_value,
		enable => cu_enable,
		dots => cu_dots,
		anodes => anodes,
		cathodes => cathodes
);

cu: control_unit PORT MAP(
		clock => clock,
		reset_n => reset_n,
		load_lsb_value => load_lsb_value,
		load_msb_value => load_msb_value,
		load_dots_enable => load_dots_enable,
		in_byte => in_byte,
		value => cu_value,
		dots => cu_dots,
		enable => cu_enable
	);

end Structural;


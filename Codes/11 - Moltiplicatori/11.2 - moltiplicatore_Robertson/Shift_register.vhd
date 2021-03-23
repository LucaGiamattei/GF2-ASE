----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:54:43 03/04/2019 
-- Design Name: 
-- Module Name:    Shift_register - Behavioral 
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

entity Shift_register is
	generic( N:integer:= 8; shift_right_left:std_logic := '0');
	port( 
		reg_in: in std_logic_vector(N-1 downto 0);
		scan_in: in std_logic;
		scan_enable: in std_logic;
		clk: in std_logic;
		reset_n: in std_logic;
		enable: in std_logic;
		Q: out std_logic_vector(N-1 downto 0);
		scan_out:out std_logic
		);
end Shift_register;

architecture Behavioral of Shift_register is
	component flipflopmux 
	port(
		scan_in: in std_logic;
		D: in std_logic;
		scan_enable: in std_logic;
		clk: in std_logic;
		reset_n: in std_logic;
		enable: in std_logic;
		Q: out std_logic
		);
end component;
	signal temp_vector :std_logic_vector(N downto 0);
begin
	--shift verso destra
	
	LOOP_FOR_ISTANTIATE_FFM:for i in N-1 downto 0 generate
	
		shift_right: if( shift_right_left= '0') generate
						ffm: flipflopmux port map( scan_in=>temp_vector(i+1), D=>reg_in(i), 
								scan_enable=>scan_enable,
								clk=>clk,reset_n=>reset_n, 
								enable=>enable,Q=>temp_vector(i));
						temp_vector(N)<=scan_in;
						scan_out<= temp_vector(0);
						Q<=temp_vector(N-1 downto 0);
		end generate shift_right;
		
		shift_left: if( shift_right_left= '1') generate
						ffm: flipflopmux port map( scan_in=>temp_vector(i-1), D=>reg_in(i), 
								scan_enable=>scan_enable,
								clk=>clk,reset_n=>reset_n, 
								enable=>enable,Q=>temp_vector(i));
						temp_vector(0)<=scan_in;
						scan_out<= temp_vector(N);
						Q<=temp_vector(N-1 downto 0);
		end generate shift_left;
		
	end generate LOOP_FOR_ISTANTIATE_FFM;
	
	
		
	

end Behavioral;


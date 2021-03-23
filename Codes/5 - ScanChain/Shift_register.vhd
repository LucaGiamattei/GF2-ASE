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
		mux_scan_in: std_logic;
		reg_in: in std_logic_vector(N-1 downto 0);
		scan_in_dato: in std_logic;
		scan_in_controllo: in std_logic;
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

component MUX2 
	port( 
		in0: in std_logic;
		in1: in std_logic;
		sel: in std_logic;
		out_mux: out std_logic);
end component;

	signal temp_vector :std_logic_vector(N downto 0);
	signal out_temp:std_logic;
begin
	--shift verso destra
	mux: MUX2 port map( in0=>scan_in_dato, in1=>scan_in_controllo, sel=>mux_scan_in, out_mux=>out_temp);
	
	LOOP_FOR_ISTANTIATE_FFM:for i in N-1 downto 0 generate
	
		shift_right: if( shift_right_left= '0') generate
						ffm: flipflopmux port map( scan_in=>temp_vector(i+1), D=>reg_in(i), 
								scan_enable=>scan_enable,
								clk=>clk,reset_n=>reset_n, 
								enable=>enable,Q=>temp_vector(i));
						temp_vector(N)<=out_temp;
						scan_out<= temp_vector(0);
						Q<=temp_vector(N-1 downto 0);
		end generate shift_right;
		--shift verso sinistra
		shift_left: if( shift_right_left= '1') generate
						ffm: flipflopmux port map( scan_in=>temp_vector(i-1), D=>reg_in(i), 
								scan_enable=>scan_enable,
								clk=>clk,reset_n=>reset_n, 
								enable=>enable,Q=>temp_vector(i));
						temp_vector(0)<=out_temp;
						scan_out<= temp_vector(N);
						Q<=temp_vector(N-1 downto 0);
		end generate shift_left;
		
	end generate LOOP_FOR_ISTANTIATE_FFM;
	
	
		
	

end Behavioral;


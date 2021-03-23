----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:40:52 03/04/2019 
-- Design Name: 
-- Module Name:    flipflipmux - Behavioral 
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

entity flipflopmux is
	port(
		scan_in: in std_logic;
		D: in std_logic;
		scan_enable: in std_logic;
		clk: in std_logic;
		reset_n: in std_logic;
		enable: in std_logic;
		Q: out std_logic
		);
end flipflopmux;

architecture Structural of flipflopmux is
	component MUX2 
	port( 
		in0: in std_logic;
		in1: in std_logic;
		sel: in std_logic;
		out_mux: out std_logic);
end component;

	component FFD 
    Port ( clk : in  STD_LOGIC;
           en : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC);
	end component;

	signal out_temp:std_logic;
	
begin
	
	mux: MUX2 port map( in0=>D, in1=>scan_in, sel=>scan_enable, out_mux=>out_temp);
	
	flipflop: FFD port map( clk=>clk,en=>enable, reset_n=>reset_n, D=>out_temp,Q=>Q);
	
	

end Structural;


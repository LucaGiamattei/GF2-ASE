----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:31:08 03/04/2019 
-- Design Name: 
-- Module Name:    MUX2 - Behavioral 
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

entity MUX2 is
	port( 
		in0: in std_logic;
		in1: in std_logic;
		sel: in std_logic;
		out_mux: out std_logic);
end MUX2;

architecture dataflow of MUX2 is
signal temp_out_mux:std_logic;
begin
	out_mux<= temp_out_mux;
	with(sel) select
		temp_out_mux <= in0 when '0',
			in1 when '1',
			'X' when others;


end dataflow;


----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:06:01 10/22/2012 
-- Design Name: 
-- Module Name:    clock_filter - Behavioral 
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
use IEEE.math_real.all;
use IEEE.std_logic_arith.all ;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clock_filter is
	 generic(
				clock_frequency_in : integer := 50000000;
				clock_frequency_out : integer := 5000000
				);
    Port ( clock_in : in  STD_LOGIC;
				reset_n : in STD_LOGIC;
           clock_out : out  STD_LOGIC);
end clock_filter;

architecture Structural of clock_filter is


component counter_modN is
	generic (n: Integer := 4);
    Port ( clock : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
			  enable : in STD_LOGIC;
           counter : out STD_LOGIC_VECTOR(integer (floor(LOG2(real(N-1))))DOWNTO 0);
			  overflow: out std_logic);
			  
end component;




constant count_max_value : integer := clock_frequency_in/(clock_frequency_out)-1;

begin
counter_modx : counter_modN 
	generic map(n => count_max_value) 
	port map( 
		clock=>clock_in,
		reset_n => reset_n,
		enable=>'1',
		counter=>open,
		overflow =>clock_out);
	
end Structural;


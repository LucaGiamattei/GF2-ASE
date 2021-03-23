----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:49:41 09/16/2012 
-- Design Name: 
-- Module Name:    counter_mod4 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter_modN is
	generic (n: Integer := 4);
    Port ( clock : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
			  enable : in STD_LOGIC;
           counter : out STD_LOGIC_VECTOR(integer (floor(LOG2(real(N-1))))DOWNTO 0);
			  overflow: out std_logic);
			  
end counter_modN;

architecture Behavioral of counter_modN is

signal c : STD_LOGIC_VECTOR(integer (floor(LOG2(real(N-1))))DOWNTO 0) := (others => '0');
signal reset : std_logic;


begin

counter <= c;

reset <= not reset_n;


counter_process: process(clock, reset)
begin
	
	if reset = '1' then
		c <= (others => '0');
		overflow <= '0';
	elsif clock'event AND clock = '1' AND enable = '1' then
		--if unsigned(c) = 0 then
		--	overflow <= '0';	
		--end if;
		c <= CONV_STD_LOGIC_VECTOR(unsigned(c) + 1, integer (floor(LOG2(real(N)))));
		if unsigned(c) = 0 then 
			overflow <= '1';
		else
			overflow <= '0';
		end if;
		
			
	end if;
	
end process;

end Behavioral;


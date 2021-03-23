----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:15:08 03/10/2019 
-- Design Name: 
-- Module Name:    Counter - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter is
	generic (N:integer:=8);
	port(
		clock: in std_logic;
		reset_n: in std_logic;
		enable:in std_logic;
		-- se il contatore è mod N vuol dire che può contare fino a 8 quindi ho bisogno di log2(N+1) bit
		count_max: in std_logic_vector(integer(Floor((log2(real(N-1))))) downto 0);
		res_out: out std_logic:='0';
		Handle_zero: out std_logic:='0'
		);
		
		
end Counter;

architecture Behavioral of Counter is
	--signal count: std_logic_vector(integer(Floor((log2(real(N)))))-1 downto 0):=(others=>'0');
	signal count :integer range 0 to N-1 ;
	signal temp_out: std_logic;
	signal temp_out1: std_logic;
	signal c_max: integer;

begin
	c_max <= conv_integer(unsigned(count_max));
	res_out <= temp_out;
	Handle_zero<= temp_out1;

	counter_process: process(clock,enable,reset_n) begin
						
						if(reset_n='0') then
							count<=0;
							temp_out <= '0';
							temp_out1<= '0';
						elsif( rising_edge(clock) and enable ='1') then
							count <= count+1;
							if(c_max=0) then
								count<=0;
								temp_out1<= '1';
							elsif(count = c_max-1) then
								count<=0;
								temp_out<= '1';
								temp_out1<= '0';
							else 
								temp_out<= '0';
								temp_out1<= '0';
							end if;
							
						end if;
	
	
	end process;
	


end Behavioral;


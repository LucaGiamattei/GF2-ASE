----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:19:37 03/16/2019 
-- Design Name: 
-- Module Name:    FSM - Behavioral 
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

entity FSM is
	port(
		i: in std_logic;
		clk: in std_logic;
		reset_n : in std_logic;
		Q:out std_logic
	);
end FSM;

architecture Behavioral of FSM is
--1011001
	type stato is ( idle, stato1, stato10,stato101,stato1011, stato10110, stato101100, stato1011001);
	signal current, next_state: stato := idle;
begin

	NS_TO_CS: process (clk, reset_n) begin
		if( reset_n ='0') then
			current <= idle;
		elsif(rising_edge(clk)) then
			current<= next_state;
		end if;
	end process;

	Combinatorial: process( current,i) begin
	
	case current is
		when idle=>
			if(i='0')then
				next_state<= idle;
				Q<='0';
			else
				next_state<=stato1;
				Q<='0';
			end if;
		when stato1=>
			if(i='0')then
				next_state<= stato10;
				Q<='0';
			else
				next_state<=stato1;
				Q<='0';
			end if;
		
		when stato10 =>
			if(i='0')then
				next_state<= idle;
				Q<='0';
			else
				next_state<=stato101;
				Q<='0';
			end if;
			
		when stato101 =>
			if(i='0')then
				next_state<= stato10;
				Q<='0';
			else
				next_state<=stato1011;
				Q<='0';
			end if;
		
		when stato1011 =>
			if(i='0')then
				next_state<= stato10110;
				Q<='0';
			else
				next_state<=stato1;
				Q<='0';
			end if;
			
		when stato10110 =>
			if(i='0')then
				next_state<= stato101100;
				Q<='0';
			else
				next_state<=stato101;
				Q<='0';
			end if;
			
		when stato101100 =>
			if(i='0')then
				next_state<= idle;
				Q<='0';
			else
				next_state<=stato1011001;
				Q<='0';
			end if;
		
		when stato1011001 =>
			if(i='0')then
				next_state<= idle;
				Q<='1';
			else
				next_state<=idle;
				Q<='1';
			end if;
		end case;
				
	end process;




end Behavioral;


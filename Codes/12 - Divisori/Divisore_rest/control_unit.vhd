----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:40:11 12/21/2016 
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
    Port ( clock : in  STD_LOGIC;
			  start : in  STD_LOGIC;
			  reset_n : in STD_LOGIC;
           counter_hit : in  STD_LOGIC;
			  s : in STD_LOGIC;
			  div_zero : in STD_LOGIC;
           stop : out  STD_LOGIC;
           reset_a : out  STD_LOGIC;
			  reset_q : out  STD_LOGIC;
           reset_count : out  STD_LOGIC;
           en_a : out  STD_LOGIC;
           en_q : out  STD_LOGIC;
           en_v : out  STD_LOGIC;
			  en_s : out STD_LOGIC;
			  operazione: out STD_LOGIC;
           count_up : out  STD_LOGIC;
           shift_A : out  STD_LOGIC;
			  shift_Q : out  STD_LOGIC;
			  shift_S : out  STD_LOGIC;
			  sel_A_in : out  STD_LOGIC
			  );
			  
end control_unit;

architecture Behavioral of control_unit is

type state is (idle, init, operation, left_shift, correzione);

signal stato_corrente, nxt_stato : state := idle;

begin

state_proc: process(clock, reset_n)
begin
	if reset_n = '0' then
		stato_corrente <= idle;
	elsif rising_edge(clock) then
		stato_corrente <= nxt_stato;
	end if;
end process;

fsm: process(stato_corrente, start, reset_n, counter_hit, s)
begin

	stop <= '0';
	reset_a <= '0';
	reset_q <= '0';
	reset_count <= '0';
	en_a <= '0';
	en_q <= '0';
	en_v <= '0';
	en_s <= '0';
	count_up <= '0';
	shift_A <= '0';
	shift_Q <= '0';
	shift_S <= '0';
	sel_A_in <= '0';
	operazione<='1'; --ad ogni passo deve fare sottrazioni
	
	case stato_corrente is
		when idle =>
			stop <= '1';
			if start = '1' then
				nxt_stato <= init;
			else
				nxt_stato <= idle;
			end if;
			
		when init =>
				en_q <= '1';
				en_v <= '1';
				en_a<='1';
				en_s<='1';
				reset_count <= '1';
				sel_A_in <= '1';
			if div_zero = '1' then
				stop <= '1';
				nxt_stato<=idle;
			else
				nxt_stato <= left_shift;
			end if;
		
		when left_shift =>
			en_a <= '1';
			en_s <= '1';
			shift_A <= '1';
			shift_S <= '1';
			nxt_stato <= operation;
								
		when operation =>
			en_a <= '1';
			en_s<='1';
			en_v<='1';
			en_q <= '1';
			shift_Q <= '1';
		
			if s='1' then nxt_stato<=correzione;
			elsif counter_hit = '0' then
				count_up <= '1';
				nxt_stato <= left_shift;
			else nxt_stato <= idle;
			end if;
	
		when correzione =>
			en_a <= '1';
			en_s<='1';
			en_v<='1';
			operazione<='0'; --nelle stato correzione si effettua una somma
			
			if counter_hit = '0' then
				count_up <= '1';
				nxt_stato <= left_shift;
			else nxt_stato <= idle;
			end if;
		
	end case;

end process;

end Behavioral;



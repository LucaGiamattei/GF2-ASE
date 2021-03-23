----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:28:12 12/12/2016 
-- Design Name: 
-- Module Name:    ControlUnit - Behavioral 
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

entity ControlUnit is
port(	start: in STD_LOGIC;
		clock: in STD_LOGIC;
		reset_n : in STD_LOGIC;
		reset_a : out  STD_LOGIC;
		reset_conteggio: out STD_LOGIC;
		stop : out STD_LOGIC;
		en_a, en_q, en_m : out STD_LOGIC;
		q_lessSignificantBit : in STD_LOGIC;
		shift : out STD_LOGIC;
		conteggio_up : out STD_LOGIC;
		counter_hit : in  STD_LOGIC--serve a stoppare il conteggio
		);
end ControlUnit;

architecture Behavioral of ControlUnit is

Type Stati is (idle, init, scelta_operazione, shift_stato, add_sub);
signal stato_corrente,next_stato : Stati := idle;

begin

cambio_stato: process(clock, reset_n)
begin
	if reset_n = '0' then
		stato_corrente <= idle;
	elsif rising_edge(clock) then
		stato_corrente <= next_stato;
	end if;
end process;

FSM: process (stato_corrente, start, reset_n, counter_hit, q_lessSignificantBit)
begin
	shift<= '0';
	conteggio_up <='0';
	stop <= '0';
	reset_a <= '0';
	reset_conteggio <= '0';
	en_a <= '0';
	en_q <= '0';
	en_m <= '0';

	case stato_corrente is
		 when idle =>
			stop <= '1';
			if start = '1' then
				next_stato <= init;
			else
				next_stato <= idle;
			end if;
			
		 when init =>
			reset_a <= '1'; 
			reset_conteggio <= '1';
			en_q <= '1';--abilitazione per leggere l'operando 2(moltiplicatore)
			en_m <= '1';--abilitazione per leggere l'operando 1(moltiplicando)
			next_stato <= scelta_operazione;
			
	    when scelta_operazione =>
			if q_lessSignificantBit = '0' then
				next_stato <= shift_stato;
			else
				next_stato <= add_sub;
			end if;
			
		 when add_sub =>
			en_a <= '1'; --abilita a ma lo shift è 0 
			next_stato <= shift_stato;
			
		 when shift_stato =>
			en_q <= '1'; --abilito sia a che q con shift 1 poichè li devo shiftare entrambi
			shift <= '1';
			en_a <= '1';
			if counter_hit = '0' then -- se non il contatore non ha ancora terminato(N_bit-1), abilita il conteggio
				conteggio_up <= '1'; 
				next_stato <= scelta_operazione;
			else
				next_stato <= idle; -- a conteggio terminato torna nello stato idle!
			end if;
		
	end case;
end process;

end Behavioral;


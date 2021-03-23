----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:02:08 03/10/2019 
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
use IEEE.math_real.all;
use IEEE.std_logic_arith.all ;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ControlUnit is
	
	port(
		
		reset_n:in std_logic;
	--segnale di stato
		--mi dice quando il contatore ha finito il conteggio
			finished:in std_logic;
			Handle_zero:in std_logic;
	--ingressi di controllo
			--è il segnale di start per avviare una delle due operazioni
			start: in std_logic;
			--0 è per fare la semplice scrittura su registro altrimenti 1 per fare la modalità shifter
			mode:in std_logic;
			--è la variabile di sincronismo
			clock:in std_logic;
	--segnali di controllo
			--segnale di controllo che comanda il modo di operare dello shift register
			control_mode: out std_logic;
			--segnali di controllo che abilitano rispettivamente il contatore e il registro
			control_enable_conter: out std_logic;
			control_enable_reg: out std_logic;
			--segnali di reset contatore e di reset registro
			control_reset_counter:out std_logic;
			control_reset_reg: out std_logic;
			--segnale di controllo che permette di cambiare il segnale in ingresso scan_in allo shift register
			--0 come scan_in si ha l'ingresso di dato
			--1 come scan_in si ha la catena chiusa
			control_mux:out std_logic;
			--segnale di controllo che dice quando è finita l'operazione richiesta
			stop: out std_logic;
			--abilitazione registro che contiene il valore del count_max
			control_enable_count_max_reg: out std_logic
			);
			
end ControlUnit;

architecture Behavioral of ControlUnit is

	type state is (idle, One_Shift, NormalMode, init,ControlZero,initShift,shiftModeCicle);
	signal current, next_state: state := idle;
	
begin
	process(clock,reset_n) begin
		if(reset_n = '0' ) then
			current<=idle;
			elsif( rising_edge(clock)) then
			current<= next_state;
			end if;
	end process;
	
	process(current, start,Handle_zero, mode,finished, reset_n) begin
	control_enable_count_max_reg<='0';
	stop <='0';
	
	control_enable_conter<= '0';
	control_enable_reg<='0';
	
	control_reset_counter<='1';
	control_reset_reg<='1';
	
	control_mode<='0';
	control_mux<='0';
	
	case current is
		when idle =>
			stop<= '1';
			if(start='1') then
				next_state <= init;
			else
				next_state <= idle;
			end if;
			--
		when init =>
			if(mode ='0') then
					next_state <= NormalMode;
					else
					next_state <= initShift;
				end if;
		when initShift =>
			--resetto il contatore
				control_reset_counter<='0';
			--abilita un registro che dovrà contenere il valore massimo di conteggi 
			--a leggere il valore massimo di conteggi definito dai segnali di ingresso
			--per poi presentare tale valore come ingresso del contatore
				control_enable_count_max_reg<='1';
				next_state <= One_Shift;
		when NormalMode => 
		--modalià Normal
			control_mode<= '0';
		--abilito il registro a leggere di Shift
			control_enable_reg <= '1';
			next_state<=idle;
		
		when One_Shift => 
		--modalità Shift in questo caso viene utilizzato come scan_in l'ingresso di dato
			control_mode<= '1';
		--abilito il registro di Shift a leggere
			control_enable_reg <= '1';
		--abilito il registro di Shift a fare un solo conteggio
			control_enable_conter<= '1';
		--	next_state <= shiftMode;
			
			next_state <= ControlZero;
				
		
		
		when ControlZero =>
				if(handle_zero='1') then
					next_state <= idle;
				else
					next_state <= shiftModeCicle;
				end if;
			
			
		when shiftModeCicle =>			
				--scollego lo scan_in dello shift register dall'ingresso di dato e lo corto circuito allo Scan_out realizzando 
				--una catena chiusa
				control_mux<= '1';
				--modalità di shift
				control_mode<= '1';
				--registro in modalità abilitata
				control_enable_reg <= '1';
				--abilito il contatore a fare un conteggio
				control_enable_conter<= '1';
				
				if(finished='1') then
					next_state <= idle;
			else
				next_state <= shiftModeCicle;
			end if;
			end case; 
	end process;
	
	
end Behavioral;


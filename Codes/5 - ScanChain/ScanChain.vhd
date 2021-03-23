----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:40:52 03/11/2019 
-- Design Name: 
-- Module Name:    ScanChain - Behavioral 
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

entity ScanChain is 
	--N è la dimensione dello shift register e quindi definisce anche il il modulo del contatore
	generic (N : integer := 8) ;
	port (
		start:in std_logic;
		reset_n:in std_logic;
		
	--ingressi di dato
			--mi dice il valore di scan_out in uscita dallo shift register
			scan_in:in std_logic;
			reg_in: in std_logic_vector(N-1 downto 0);
	--ingressi di sincronismo
			--è la variabile di sincronismo
			clock:in std_logic;
	--ingressi di controllo
			--è la posizione in cui inserire il valore
			posizione: in std_logic_vector(integer(Floor(log2(real(N-1)))) downto 0);
			--0 è per fare la semplice scrittura su registro altrimenti 1 per fare la modalità shifter
			mode:in std_logic;
			
			
	--uscite di dato Q
			Q:out std_logic_vector( N-1 downto 0);
			
	--uscite di Stato
			stop:out std_logic
			);
end ScanChain;


architecture Structural of ScanChain is

component Shift_register 
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
end component;

component registro 
	generic (N: integer:= 8);
		port(
			valore_in: in std_logic_vector(N-1 downto 0);
			reset_n:in std_logic;
			enable:in std_logic;
			clk: in std_logic;
			valore_out: out std_logic_vector(N-1 downto 0
			));
end component;

component Counter 
	generic (N:integer:=8);
	port(
		clock: in std_logic;
		reset_n: in std_logic;
		enable:in std_logic;
		-- se il contatore è mod N vuol dire che può contare fino a 8 quindi ho bisogno di log2(N+1) bit
		count_max: in std_logic_vector(integer(Floor(log2(real(N-1)))) downto 0);
		res_out: out std_logic:='0';
		Handle_zero: out std_logic:='0'
		);
		
		
end component;




component ControlUnit 
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
			--1 come scan_in si ha l'ingresso di controllo control_scan_in
			control_mux:out std_logic;
			--segnale di controllo che dice quando è finita l'operazione richiesta
			stop: out std_logic;
			--abilitazione registro che contiene il valore del count_max
			control_enable_count_max_reg: out std_logic
			);
			
end component;


	signal reset_counter: std_logic;
	signal reset_register:std_logic;
	
	--signal posizione_temp: STD_LOGIC_VECTOR (  integer(Ceil(real(log2(real(N+1)))))-1 DOWNTO 0) ;
	signal Handle_zero_temp,scan_out_temp,finished_temp,res_out_temp,control_mode_temp,control_enable_conter_temp,control_enable_reg_temp,
	control_reset_counter_temp,control_reset_reg_temp,control_mux_temp :std_logic;
	--signal control_counter_max_temp: STD_LOGIC_VECTOR (  integer(Ceil(real(log2(real(N+1)))))-1 DOWNTO 0) ;
	signal reset_reg: std_logic;
	--control_mux_temp
	
	signal enable_temp: std_logic; 
	signal Count_max_temp: std_logic_vector(integer(Floor(log2(real(N-1)))) downto 0);
	
begin
	reset_counter <= reset_n and control_reset_counter_temp;
	reset_register <= reset_n and control_reset_reg_temp;
	countMaxReg: registro 
	generic map (N=>integer(Floor(log2(real(N-1))))+1)
		port map(
			valore_in=>posizione,
			reset_n=>reset_n,
			enable=>enable_temp,
			clk=>clock,
			valore_out=>Count_max_temp
			);
			
	cu: ControlUnit 
	port map(
		reset_n=>reset_n,
	--segnale di stato proveniente dalla parte operativa
		finished=>finished_temp,
	--ingressi di controllo
			start=>start,
			mode=>mode,
			clock=>clock,
	--segnali di controllo
			control_mode=>control_mode_temp,
			control_enable_conter=> control_enable_conter_temp,
			control_enable_reg=>control_enable_reg_temp,
			control_reset_counter=>control_reset_counter_temp,
			control_reset_reg=>control_reset_reg_temp,
			control_mux=>control_mux_temp,
			stop=>stop,
			--abilitazione registro che contiene il valore del count_max
			control_enable_count_max_reg=>enable_temp,
			Handle_zero=>handle_zero_temp
			);
			
	sr :Shift_register 
	generic map( N=>N, shift_right_left=>'0')
	port map( 
		mux_scan_in=>control_mux_temp,
		reg_in=>reg_in,
		scan_in_dato=>scan_in,
		scan_in_controllo=>scan_out_temp,
		scan_enable=>control_mode_temp,
		clk=>clock,
		reset_n=>reset_register,
		enable=>control_enable_reg_temp,
		Q=>Q,
		scan_out=>scan_out_temp
		);
		
  contatore: Counter 
	generic map(N=>N)
	port map(
		clock=>clock,
		reset_n=>reset_counter,
		enable=>control_enable_conter_temp,
		-- se il contatore è mod N vuol dire che può contare fino a 8 quindi ho bisogno di log2(N+1) bit
		count_max=>Count_max_temp,
		res_out=>finished_temp,
		Handle_zero=>Handle_zero_temp
		);
		
		
end Structural;


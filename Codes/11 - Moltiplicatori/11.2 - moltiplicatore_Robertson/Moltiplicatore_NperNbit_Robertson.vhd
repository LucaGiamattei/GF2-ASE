----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:07:03 03/05/2019 
-- Design Name: 
-- Module Name:    Moltiplicatore_NperNbit_Robertson - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
--use work.log_functions.ALL;
use IEEE.math_real.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Moltiplicatore_NperNbit_Robertson is
	generic(N:integer:=8);
   Port ( op1 : in  STD_LOGIC_VECTOR(N-1 downto 0);
           op2 : in  STD_LOGIC_VECTOR(N-1 downto 0);
           start : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           stop : out  STD_LOGIC;
           risultato : out  STD_LOGIC_VECTOR(2*N-1 downto 0));
end Moltiplicatore_NperNbit_Robertson;

architecture Behavioral of Moltiplicatore_NperNbit_Robertson is

	component RCA_ADD_SUB is
	generic( N: integer :=  8);
	port(
			OP1: in std_logic_vector(N-1 downto 0);
			OP2: in std_logic_vector(N-1 downto 0);
			add_sub_n: in std_logic;
			s: out std_logic_vector (N-1 downto 0);
			overflow: out std_logic
			);
			
	end component;
	
	component  Counter_ModN  is 
	generic (N : integer := 4) ;
	 port ( clock : in  STD_LOGIC;
			  reset_n : in  STD_LOGIC;
			  enable : in STD_LOGIC;
			  counter : out  STD_LOGIC_VECTOR (  integer ((floor(LOG2 (real(N - 1 ))))  ) DOWNTO 0) ; 
			  res_out : out std_logic := '0'); 
	end component;
	
	component Shift_register is
	generic( N:integer:= 8; shift_right_left:std_logic := '0');
	port( 
		reg_in: in std_logic_vector(N-1 downto 0);
		scan_in: in std_logic;
		scan_enable: in std_logic;
		clk: in std_logic;
		reset_n: in std_logic;
		enable: in std_logic;
		Q: out std_logic_vector(N-1 downto 0);
		scan_out:out std_logic
		);
	end component;
	
	component ControlUnit is
	port(	start: in STD_LOGIC;
				clock: in STD_LOGIC;
				reset_n : in STD_LOGIC;
				q_lessSignificantBit : in STD_LOGIC;
				counter_hit : in  STD_LOGIC;--serve a stoppare il conteggio;
				reset_a : out  STD_LOGIC;
				reset_conteggio: out STD_LOGIC;
				stop : out STD_LOGIC;
				en_a, en_q, en_m : out STD_LOGIC;
				
				shift : out STD_LOGIC;
				conteggio_up : out STD_LOGIC
				
		);
	end component;


	component flipflopF is
	port(
		Q_lsb: in std_logic;
		M_msb: in std_logic;
		reset_n: in std_logic;
		clk: in std_logic;
		F: out std_logic
		);
	end component;
	
	component registro is
			generic (N: integer:= 8);
				port(
					valore_in: in std_logic_vector(N-1 downto 0);
					reset_n:in std_logic;
					enable:in std_logic;
					clk: in std_logic;
					valore_out: out std_logic_vector(N-1 downto 0
					));
	end component;
	
	signal conteggio_up_temp,reset_ff_temp, 
	en_a_temp,en_q_temp,en_m_temp,
	reset_conteggio_temp, counter_hit_temp, reset_conteggio_cu_temp, reset_a_cu_temp,
	shift_temp,
	lsb_q_temp,
	msb_a_temp,
	reset_a_temp,
	msb_q_temp,
	new_msb_a_temp
	: std_logic;
	
	signal a_temp,m_temp,Q_temp,somma_a_temp:STD_LOGIC_VECTOR(N-1 downto 0);
	signal valore_in_q:STD_LOGIC_VECTOR(N downto 0);
	
begin

	--reset_ff_temp <= reset_n and not((m_temp(N-1) and op1(N-1)) and counter_hit_temp);
 --(2)	
	reset_a_temp <= reset_n and not reset_a_cu_temp;
	reset_conteggio_temp <= reset_n and not reset_conteggio_cu_temp;
	risultato <= a_temp(N-1 downto 0 )&Q_temp(N-1 downto 0);
	--msb_a_temp <= reset_ff_temp and (new_msb_a_temp or (counter_hit_temp and a_temp(N-1)));
	reset_ff_temp <= reset_n and not counter_hit_temp;	 	
	msb_a_temp <=  (new_msb_a_temp and not counter_hit_temp) or ((m_temp(N-1) xor op1(N-1)) and counter_hit_temp);
	
	
	
	
	
	
	
	--istanzio un contatore mod n
	Inst_Counter_ModN: Counter_ModN 
	 generic map( N =>N)
	  Port map(	clock => clock ,
					reset_n => reset_conteggio_temp ,
					enable => conteggio_up_temp,
					
					counter => open,
					res_out => counter_hit_temp);
	cu:ControlUnit 
		port map(		start=>start,
							clock=>clock,
							q_lessSignificantBit=>lsb_q_temp,
							reset_n=>reset_n,
							counter_hit=>counter_hit_temp,
							
							reset_a=>reset_a_cu_temp, 
							reset_conteggio=>reset_conteggio_cu_temp,
							stop=> stop,
							en_a=>en_a_temp, 
							en_q=>en_q_temp,
							en_m=>en_m_temp,
							shift=>shift_temp,
							conteggio_up=>conteggio_up_temp
							
							);
	
	registro_A: Shift_register 
			generic map( N=>N, shift_right_left=>'0')
			port map( 
				reg_in=>somma_a_temp,
				scan_in=>msb_a_temp,
				scan_enable=>shift_temp,
				clk=>clock,
				reset_n=>reset_a_temp,
				enable=>en_a_temp,
				
				Q=>a_temp,
				scan_out=>msb_q_temp
				);
	
	registro_Q: Shift_register 
			generic map( N=>N, shift_right_left=>'0')
			port map( 
				reg_in=>op1,
				scan_in=>msb_q_temp,
				scan_enable=>shift_temp,
				clk=>clock,
				reset_n=>reset_n,
				enable=>en_q_temp,
				
				Q=>Q_temp,
				scan_out=>lsb_q_temp
				);
				
	registro_m:registro
				generic map(N=>N)
				port map(
					valore_in=>op2,
					reset_n=>reset_n,
					enable=>en_m_temp,
					clk=>clock,
					valore_out=>m_temp
					);
	
	ff_msb: flipflopF 
				port map(
					Q_lsb=>lsb_q_temp,
					M_msb=>m_temp(N-1),
					reset_n=>reset_ff_temp,
					clk=>clock,
					F=>new_msb_a_temp
					);
					
					
	Add_Sub_pm: RCA_ADD_SUB 
				generic map( N=>N)
				port map(
						OP1=>a_temp,
						OP2=>m_temp,
						add_sub_n=>counter_hit_temp,
						s=>somma_a_temp,
						overflow=>open
						);
			
	
			

end Behavioral;


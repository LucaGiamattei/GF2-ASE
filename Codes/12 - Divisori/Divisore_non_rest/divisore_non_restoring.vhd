----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:54:24 01/04/2016 
-- Design Name: 
-- Module Name:    divisore_non_restoring - Behavioral 
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
use IEEE.math_real.all;


-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity divisore_non_restoring is
	generic (n : integer := 4);
    Port ( dividendo : in  STD_LOGIC_VECTOR (2*n-1 downto 0);
           divisore : in  STD_LOGIC_VECTOR (n-1 downto 0);
			  start : in  STD_LOGIC;
           clock : in  STD_LOGIC;
			  reset_n : in STD_LOGIC;
           stop : out  STD_LOGIC;
			  div_zero : out  STD_LOGIC;
			  overflow : out  STD_LOGIC;
           quoziente : out  STD_LOGIC_VECTOR (n-1 downto 0);
           resto : out  STD_LOGIC_VECTOR (n-1 downto 0));
end divisore_non_restoring;

architecture Structural of divisore_non_restoring is


component control_unit
    Port ( clock : in  STD_LOGIC;
			  start : in  STD_LOGIC;
			  reset_n : in STD_LOGIC;
           counter_hit : in  STD_LOGIC;
			  s: in STD_LOGIC;
			  div_zero : in STD_LOGIC;
			  s_corr : in STD_LOGIC;
           stop : out  STD_LOGIC;
           reset_a : out  STD_LOGIC;
			  reset_q : out  STD_LOGIC;
           reset_count : out  STD_LOGIC;
           en_a : out  STD_LOGIC;
           en_q : out  STD_LOGIC;
           en_v : out  STD_LOGIC;
			  en_s : out  STD_LOGIC;
			  operazione: out STD_LOGIC;
           count_up : out  STD_LOGIC;
           shift_A : out  STD_LOGIC;
			  shift_Q : out  STD_LOGIC;
			  shift_S : out  STD_LOGIC;
			  sel_A_in : out  STD_LOGIC);
end component;


component Counter_ModN  is generic (N : integer := 4) ;
  port (
		clock : in  STD_LOGIC;
      reset_n : in  STD_LOGIC;
		enable : in STD_LOGIC;
      counter : out  STD_LOGIC_VECTOR (  integer ((floor(LOG2 (real(N - 1 ))))  ) DOWNTO 0) ; 
		res_out : out std_logic := '0'
		); 
end component;

component ff_d
port(	data_in:	in std_logic;
		reset_n : in std_logic;
		clock: in std_logic;
		enable:		in std_logic;
		data_out:	out std_logic
);
end component;

component reg is
	 Generic(width : integer := 8);
    Port ( valore : in  STD_LOGIC_VECTOR (width-1 downto 0);
           clock : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (width-1 downto 0));
end component;

component RCAddSub is
	 Generic(num_bit : integer := 8);
    Port ( a : in  STD_LOGIC_VECTOR(num_bit-1 downto 0);
			  b : in  STD_LOGIC_VECTOR(num_bit-1 downto 0);
			  add_sub_n : in STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (num_bit-1 downto 0);
           overflow : out  STD_LOGIC);
end component;

component Shift_register is
	generic( N:integer:= 8; shift_dx_o_sx:std_logic := '1');
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

component MUXN is
	generic (N: integer := 8);
	port( 
		a : in std_logic_vector(N-1 downto 0);
		b : in std_logic_vector(N-1 downto 0);
		sel : in std_logic;
		o : out std_logic_vector(N-1 downto 0)
		);
end component;


signal a, q, v, temp_A_in : std_logic_vector (n-1 downto 0);
signal operando1_temp, operando2_temp, risultato_temp : std_logic_vector (n downto 0);
signal stop_temp, enable_v, enable_a, enable_s, enable_q, temp_shift_S,temp_shift_A, temp_shift_Q, reset_a, reset_a_cu, reset_q, reset_q_cu, reset_count, reset_count_cu, q_out_q, cnt_in, cnt_out: std_logic;
signal s, s_in, operazione,sel_A_in : std_logic;
signal temp_div_zero, temp_no_overflow_flag : std_logic;
signal temp_s,temp_s_q : std_logic_vector (0 downto 0);


begin		 

temp_s(0)<= risultato_temp(n);
s <= temp_s_q(0);
operando1_temp<=s & a;
operando2_temp<='0' & v;

reset_count <= reset_n and not reset_count_cu;
reset_a <= reset_n AND not reset_a_cu;
reset_q <= reset_n AND not reset_q_cu;

quoziente<=q;
resto<=a;
stop<=stop_temp;

reg_v: reg generic map (
	width=>n) port map (
	valore=>divisore,
	clock=>clock,
	enable=>enable_v,
	reset_n=>reset_n,
	output=>v
	);
	

reg_s: shift_register generic map (n => 1) port map (
	reg_in=>temp_s,
	reset_n=>reset_n,
	clk=>clock,
	scan_enable=>temp_shift_S,
	scan_in=>s_in,
	scan_out=>open,
	q=>temp_s_q,
	enable=>enable_s
	);
	

reg_a: Shift_Register generic map (
	n=>n) port map (
	reg_in=>temp_A_in,
	reset_n=>reset_a,
	clk=>clock,
	scan_enable=>temp_shift_A,
	scan_in=>q_out_q,
	scan_out=>s_in,
	Q=>a,
	enable=>enable_a
	);
	
muxA : MUXN generic map(N=>N) 
	port map( 
		a => dividendo (2*n-1 downto n),
		b => risultato_temp(n-1 downto 0),
		sel => sel_A_in,
		o => temp_A_in
		);
	
reg_q: Shift_Register generic map (
	n=>n) port map (
	reg_in=>dividendo (n-1 downto 0),
	reset_n=>reset_q,
	clk=>clock,
	scan_enable=>temp_shift_Q,
	scan_in=>not risultato_temp(n),
	scan_out=>q_out_q,
	Q=>q,
	enable=>enable_q
	);

counter_mod_n: Counter_ModN generic map (
	n=>n) port map(
	clock=>clock,
	reset_n=>reset_count,
	enable=>cnt_in,
	counter=>open,
	res_out=>cnt_out
);


rca: RCAddSub 
	generic map (num_bit=>n+1)
	port map (
	a=>operando1_temp,
	b=>operando2_temp,
	add_sub_n=>operazione,
	s=>risultato_temp,
	overflow=>open
	);
		
	
cu: control_unit port map(
	  clock => clock,
	  start => start,
	  reset_n => reset_n,
	  counter_hit => cnt_out,
	  s=>s,
	  s_corr => risultato_temp(n),
	  div_zero => temp_div_zero,
	  stop => stop_temp,
	  reset_a => reset_a_cu,
	  reset_q => reset_q_cu,
	  reset_count => reset_count_cu,
	  en_a => enable_a,
	  en_q => enable_q,
	  en_v => enable_v,
	  en_s => enable_s,
	  operazione=>operazione,
	  count_up => cnt_in,
	  shift_A => temp_shift_A,
	  shift_Q => temp_shift_Q,
	  shift_S => temp_shift_S,
	  sel_A_in => sel_A_in
);


temp_div_zero<= '1' when divisore = (divisore'range => '0') else
					 '0';
					 
-- overflow se il resto  maggiore o uguale al divisore
overflow<= '1' when unsigned(a) >= unsigned(divisore) and stop_temp = '1' and divisore /= (divisore'range => '0') else '0';

div_zero <= temp_div_zero;

end Structural;


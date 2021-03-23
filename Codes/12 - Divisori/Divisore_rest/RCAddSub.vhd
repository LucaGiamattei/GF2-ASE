----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:36:55 11/19/2012 
-- Design Name: 
-- Module Name:    RCAddSub - Behavioral 
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

entity RCAddSub is
	 Generic(num_bit : integer := 8);
    Port ( a : in  STD_LOGIC_VECTOR(num_bit-1 downto 0);
			  b : in  STD_LOGIC_VECTOR(num_bit-1 downto 0);
			  add_sub_n : in STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (num_bit-1 downto 0);
           overflow : out  STD_LOGIC);
end RCAddSub;

architecture Structural of RCAddSub is

Component Controllo_Overflow is  
port (
		x : in std_logic ;
		y: in std_logic ;
	   somma: in std_logic;
		overflow : out std_logic 
);
end component ;

COMPONENT ripple_carry
	Generic(num_bit : integer := 8);
	PORT(
		operando1 : IN std_logic_vector(num_bit-1 downto 0);
		operando2 : IN std_logic_vector(num_bit-1 downto 0);
		riporto_in : IN std_logic;          
		somma : OUT std_logic_vector(num_bit-1 downto 0);
		riporto_out : OUT std_logic
		);
END COMPONENT;

COMPONENT xorInversion
	Generic(num_bit : integer := 8);
	PORT(
		input : IN std_logic_vector(num_bit-1 downto 0);
		inverti : IN std_logic;          
		output : OUT std_logic_vector(num_bit-1 downto 0)
		);
END COMPONENT;
--segnale b che si vuole cosiderare in base all'operazione scelta
signal b_effettivo : std_logic_vector(num_bit -1 downto 0); 
signal somma : std_logic_vector(num_bit -1 downto 0); 

begin

s <= somma ;

xor_inversione : xorInversion generic map(
		num_bit => num_bit
	)port map(
		input => b,
		inverti => add_sub_n,
		output => b_effettivo
	);

rca: ripple_carry generic map(
		num_bit => num_bit
	)port map(
		operando1 => a,
		operando2 => b_effettivo,
		riporto_in => add_sub_n,
		somma  => somma
			);
	
controllo : Controllo_Overflow  port map
(
	x =>  a (num_bit-1) ,
	y =>  b_effettivo (num_bit -1 )	,
	somma => somma(num_bit -1 ) ,
	overflow => overflow
	
) ;


end Structural;


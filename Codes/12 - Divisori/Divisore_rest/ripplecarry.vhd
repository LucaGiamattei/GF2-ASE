----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:09:03 11/22/2016 
-- Design Name: 
-- Module Name:    ripplecarry - Behavioral 
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

entity ripple_carry is
	generic(num_bit: integer:= 8); --numero di bit dei due operandi
	Port ( operando1 : in STD_LOGIC_VECTOR(num_bit-1 downto 0);
	       operando2 : in STD_LOGIC_VECTOR(num_bit-1 downto 0);
			 riporto_in : in STD_LOGIC;
          riporto_out : out STD_LOGIC;
			 somma : out STD_LOGIC_VECTOR(num_bit-1 downto 0)
   );
 end ripple_carry;

 architecture Structural of ripple_carry is
		component full_adder
		Port ( a : in STD_LOGIC;
				 b : in STD_LOGIC;
				riporto_in : in STD_LOGIC;
				riporto_out : out STD_LOGIC;
				somma : out STD_LOGIC);
		end component;
 
 signal vettore_riporti : STD_LOGIC_VECTOR(num_bit downto 0); --
--i riporti sono uguali a num_bit perchè sono: uno uscente da ogni FA più quello in ingresso

 begin
 vettore_riporti(0) <= riporto_in;		--Setto il riporto entrante al primo full adder
 riporto_out <= vettore_riporti(num_bit);  --Indico come riporto uscente al RippleCarry l'ultimo elemento di vettore_riporti

 serie_di_fa: for i in 0 to num_bit-1 generate
		fa: full_adder port map( --instanzio tanti FA quanti i bit degli operandi
		a =>operando1(i),
		b =>operando2(i),
		riporto_in => vettore_riporti(i),
		somma => somma(i),
		riporto_out => vettore_riporti(i+1)
 );
 end generate;

 end Structural;
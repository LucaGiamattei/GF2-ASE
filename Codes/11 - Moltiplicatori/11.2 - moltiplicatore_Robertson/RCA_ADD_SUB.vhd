----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:21:19 03/05/2019 
-- Design Name: 
-- Module Name:    RCA_ADD_SUB - Behavioral 
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

entity RCA_ADD_SUB is
	generic( N: integer :=  8);
	port(
			OP1: in std_logic_vector(N-1 downto 0);
			OP2: in std_logic_vector(N-1 downto 0);
			add_sub_n: in std_logic;
			s: out std_logic_vector (N-1 downto 0);
			overflow: out std_logic
			);
			
end RCA_ADD_SUB;

architecture Structural of RCA_ADD_SUB is
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

COMPONENT XOR_Inversion
	Generic(N : integer := 8);
	PORT(
		input : IN std_logic_vector(N-1 downto 0);
		inverti : IN std_logic;          
		output : OUT std_logic_vector(N-1 downto 0)
		);
END COMPONENT;


Component Controllo_Overflow is  
port (
		x : in std_logic ;
		y: in std_logic ;
	   somma: in std_logic;
		overflow : out std_logic 
);
end component ;



	signal somma_temp : std_logic_vector(N -1 downto 0);
	signal OP2_effettivo: std_logic_vector(N -1 downto 0);
	
begin
	s<=somma_temp;
	xor_inv: XOR_Inversion 
							generic map(N=>N)
							port map(
										input=>OP2,
										inverti=>add_sub_n,
										output=>OP2_effettivo
										);
	rca: ripple_carry generic map(
								num_bit => N
									)
							port map(
								operando1 => OP1,
								operando2 => OP2_effettivo,
								riporto_in => add_sub_n,
								somma  => somma_temp
									);
									
	controllo : Controllo_Overflow  
							port map
										(
											x =>  OP1 (N-1) ,
											y =>  OP2_effettivo (N-1 ),
											somma => somma_temp(N-1 ),
											overflow => overflow
											
										) ;

end Structural;


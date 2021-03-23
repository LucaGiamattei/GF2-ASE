----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:07:43 03/02/2019 
-- Design Name: 
-- Module Name:    Contenitore - Behavioral 
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

library work;
use work.extentionwork.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Contenitore is
	generic(
		n_addendi:integer:=100;
		n_bit:integer:=8
		
	);
	port ( 		 
						addendi: in vett_au((n_addendi-1) downto 0, n_bit-1 downto 0);
						uscite_s: out vett_au(0 downto 0, nome_funzione(n_addendi,n_bit)-1 downto 0);
						uscite_c: out vett_au(0 downto 0, nome_funzione(n_addendi,n_bit)-1 downto 0)
				);
end Contenitore;

architecture Behavioral of Contenitore is
	
	
component CSL_TREE 
			generic (
					n_addendi:integer := 448 ;
					n_addendi_uscita:integer:=1;
					N :integer:=8;
					bit_in_uscita:integer:=12
					
					);
			port ( 		 
						addendi: in vett_au((n_addendi-1) downto 0, N-1 downto 0);
						uscite_s: out vett_au(0 downto 0, bit_in_uscita-1 downto 0);
						uscite_c: out vett_au(0 downto 0, bit_in_uscita-1 downto 0)
				);
end component;

begin
	csl: CSL_TREE generic map (
					n_addendi=> n_addendi ,
					n_addendi_uscita=>n_addendi rem 3,
					N =>n_bit,
					bit_in_uscita=> nome_funzione(n_addendi,n_bit)

					
					)
			port map( 		 
						addendi=>addendi,
						uscite_s=>uscite_s,
						uscite_c=>uscite_c
				);


end Behavioral;


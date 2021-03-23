----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:31:36 02/26/2019 
-- Design Name: 
-- Module Name:    TOPADDER - Behavioral 
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
use ieee.math_real.all;

use IEEE.std_logic_arith.all;

entity CSL_TREE is
			generic (
					n_addendi:integer := 7 ;
					n_addendi_uscita:integer:=1;
					N :integer:=8;
					bit_in_uscita:integer:=12
					);
			port ( 	 
						addendi: in vett_au((n_addendi-1) downto 0, N-1 downto 0);
						uscite_s: out vett_au(0 downto 0, bit_in_uscita-1 downto 0);
						uscite_c: out vett_au(0 downto 0, bit_in_uscita-1 downto 0)
				);
		

end CSL_TREE;


architecture Structural of CSL_TREE is

component LEVEL_CSL 
				generic (
					n_addendi:integer := 100;
					N : integer := 5
					);
				port ( 	
					 addendi: in vett_au((n_addendi-1) downto 0, N-1 downto 0);
					 uscite_s: out vett_au((integer(Floor(real(n_addendi/3)))-1) downto 0, N downto 0);
					 uscite_c: out vett_au(Integer(Floor(real(n_addendi/3)))-1 downto 0, N downto 0)
				
				);
end component;


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
	
	
signal temp_uscite_s, temp_uscite_c: vett_au((integer(Floor(real(n_addendi/3)))-1) downto 0, N downto 0);
--signal temp_addendi_uscite :vett_au(n_addendi_uscita -1 downto 0);
signal concatenate: vett_au((integer(Floor(real(n_addendi/3)))*2-1) downto 0, N downto 0);

signal concatenate1: vett_au(((integer(Floor(real(n_addendi/3)))*2)+n_addendi_uscita)-1 downto 0, N downto 0);
type vet_uscite_temp is array( (n_addendi-1) downto 0) of std_logic_vector(N downto 0);
	signal  vet_uscite_c_temp:vet_uscite_temp;
	signal  vet_uscite_s_temp: vet_uscite_temp;


begin


		NO_RESTO_SI_FINE:  if((n_addendi_uscita) = 0) and (integer(Floor(real(n_addendi/3))) = 1) generate
		livelloFinale: LEVEL_CSL
					generic map (n_addendi=>n_addendi,N=>N)
					port map (addendi=>addendi, uscite_s=>temp_uscite_s,uscite_c=>temp_uscite_c
					);
					
					process (temp_uscite_c,temp_uscite_s) begin
													for i in (integer(Floor(real(n_addendi/3)))-1) downto 0 loop
														for j in  N downto 0 loop
																uscite_s(i,j)<=temp_uscite_s(i,j);
																uscite_c((integer(Floor(real(n_addendi/3)))-1)+i,j)<=temp_uscite_c(i,j);
														end loop;
													end loop;
													
													end process;
					
		end generate NO_RESTO_SI_FINE;
					
					
		NO_RESTO_NO_FINE:   if((n_addendi_uscita) = 0) and (integer(Floor(real(n_addendi/3))) /= 1) generate
					livelloNonFinale: LEVEL_CSL
									generic map (n_addendi=>n_addendi, N => N)
									port map (addendi=>addendi, uscite_s=>temp_uscite_s,uscite_c=>temp_uscite_c --addendi-uscita non ci sono qui
									);
									
										process (temp_uscite_s,temp_uscite_c) begin
													for i in (integer(Floor(real(n_addendi/3)))-1) downto 0 loop
														for j in  N downto 0 loop
																concatenate(i,j)<=temp_uscite_s(i,j);
																--concatenate1((integer(Floor(real(n_addendi/3)))-1)+i,j)<=temp_uscite_c(i,j);
															
														end loop;
													end loop;
													
													for i in (integer(Floor(real(n_addendi/3)))*2-1) downto (integer(Floor(real(n_addendi/3)))) loop
														for j in  N downto 0 loop
																--concatenate1(i,j)<=temp_uscite_s(i,j);
																concatenate(i,j)<=temp_uscite_c(i-integer(Floor(real(n_addendi/3))),j);
															
														end loop;
													end loop;
													
													
										end process;
	
				ricorsione: CSL_TREE
							generic map(
									n_addendi => integer(Floor(real(n_addendi/3)))*2,
									n_addendi_uscita  =>(integer(Floor(real(n_addendi/3)))*2)rem 3,
									N=>N+1,
									bit_in_uscita=>bit_in_uscita
										)	--
							port map( 	
									 addendi => concatenate,
									 uscite_s=> uscite_s,
									 uscite_c=> uscite_c
									 );
		end generate NO_RESTO_NO_FINE;
--					

		SI_RESTO_NO_FINE:   if((n_addendi_uscita) /= 0)  generate
					livelloNonFinale1: LEVEL_CSL
									generic map (n_addendi=>n_addendi, N=>N)
									port map (addendi=>addendi, uscite_s=>temp_uscite_s,uscite_c=>temp_uscite_c --addendi-uscita non ci sono qui
									);
									--concatenate1 <= temp_uscite_s(temp_uscite_s'length-1 downto 0) & temp_uscite_c(temp_uscite_c'length-1 downto 0) & addendi((n_addendi-1)downto ((n_addendi-n_addendi_uscita)));
									process (temp_uscite_s,temp_uscite_c,addendi) begin
									
													for i in (integer(Floor(real(n_addendi/3)))-1) downto 0 loop
														for j in  N downto 0 loop
																concatenate1(i,j)<=temp_uscite_s(i,j);
																--concatenate1((integer(Floor(real(n_addendi/3)))-1)+i,j)<=temp_uscite_c(i,j);
															
														end loop;
													end loop;
													
													for i in (integer(Floor(real(n_addendi/3)))*2-1) downto (integer(Floor(real(n_addendi/3)))) loop
														for j in  N downto 0 loop
																--concatenate1(i,j)<=temp_uscite_s(i,j);
																concatenate1(i,j)<=temp_uscite_c(i-integer(Floor(real(n_addendi/3))),j);
															
														end loop;
													end loop;
													
													for i in (((integer(Floor(real(n_addendi/3)))*2)+n_addendi_uscita)-1 ) downto (integer(Floor(real(n_addendi/3))))*2 loop
														for j in  N-1 downto 0 loop
																concatenate1(i,j)<=addendi(i-integer(Floor(real(n_addendi/3)))*2 +(n_addendi-n_addendi_uscita),j);
															
														end loop;
														concatenate1(i,N)<='0';
													end loop;
									
									end process;
					ricorsione1: CSL_TREE 
							generic map(
									N=>N+1,
									n_addendi => (integer(Floor(real(n_addendi/3)))*2+n_addendi_uscita),
									n_addendi_uscita  =>(integer(Floor(real(n_addendi/3)))*2+n_addendi_uscita)rem 3,
									bit_in_uscita=>bit_in_uscita
										)	--
							port map( 	
									 addendi => concatenate1,
									 uscite_s=> uscite_s,
									 uscite_c=> uscite_c
									 );
		end generate SI_RESTO_NO_FINE;

						

end Structural;
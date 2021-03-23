----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:34:52 02/26/2019 
-- Design Name: 
-- Module Name:    ADDER_CV - Structural 
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
library ieee;
use ieee.numeric_std.all;
library ieee;
use ieee.math_real.all;
library ieee;
use IEEE.std_logic_arith.all;


library work;
use work.extentionwork.all;

	
entity LEVEL_CSL is
	
	
	generic (
		n_addendi:integer := 6;
		N : integer := 8
		);
	
	
	
	port ( 	

		 addendi: in vett_au((n_addendi-1) downto 0, N-1 downto 0);
		 uscite_s: out vett_au((integer(Floor(real(n_addendi/3)))-1) downto 0, N downto 0);
		 uscite_c: out vett_au(Integer(Floor(real(n_addendi/3)))-1 downto 0, N downto 0)
	
	);
	
	
	
	
end LEVEL_CSL;

architecture Structural of LEVEL_CSL is
	type vet_addendi_temp is array( (n_addendi-1) downto 0) of std_logic_vector(N-1 downto 0);
	signal c : vet_addendi_temp ;
	type vet_uscite_temp is array( (integer(Floor(real(n_addendi/3)))-1) downto 0) of std_logic_vector(N downto 0);
	signal  vet_uscite_c_temp:vet_uscite_temp;
	signal  vet_uscite_s_temp: vet_uscite_temp;
	
		
	component CSL is
			generic( nbit: integer := 10);
			port(
			signal ingresso_uno: in std_logic_vector(nbit-1 downto 0);
			signal ingresso_due: in std_logic_vector(nbit-1 downto 0);
			signal ingresso_tre: in std_logic_vector(nbit-1 downto 0);
			signal uscite_s: out std_logic_vector(nbit downto 0);
			signal uscite_c: out std_logic_vector(nbit downto 0)
			);
			
	
	end component;


begin
	process (addendi) begin
	for i in  n_addendi-1 downto 0 loop
		for j in N -1 downto 0 loop
				c(i)(j)<=  addendi(i,j)  ;
		end loop;
	end loop;
	
	end process;
	
	process(vet_uscite_c_temp, vet_uscite_s_temp) begin
	for i in (integer(Floor(real(n_addendi/3)))-1) downto 0 loop
		for j in  N downto 0 loop
				uscite_c(i,j)<=vet_uscite_c_temp(i)(j);
				uscite_s(i,j)<=vet_uscite_s_temp(i)(j);
		end loop;
	end loop;
	end process;
	
	GEN: for i in integer(Floor(real((n_addendi/3))))-1 downto 0 generate
		csl_istantiate: CSL 
			generic map( nbit=> N)
			port map(
				ingresso_uno =>c(i*3),
				ingresso_due=>c(i*3+1),
				ingresso_tre=>c(i*3+2),
				uscite_s => vet_uscite_s_temp(i),
				uscite_c => vet_uscite_c_temp(i)
				);
		end generate GEN;
		
	


end Structural;
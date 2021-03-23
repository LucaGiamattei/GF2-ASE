----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:54:35 02/26/2019 
-- Design Name: 
-- Module Name:    extentionwork - Behavioral 
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
use ieee.math_real.all;

use IEEE.std_logic_arith.all;

package extentionwork is
		
		--constant const_n_bit_addendi: integer := nome_funzione;
		type vett_au is array (integer range <>, integer range <>) of std_logic;
		Function nome_funzione ( n_addendi : in integer;
    n_bit : in integer) return integer ;
		
end extentionwork;

package body extentionwork is

  Function nome_funzione ( n_addendi : in integer;
    n_bit : in integer) return integer 
	 is 
	 
	 variable na:integer := n_addendi;
	 variable nb:integer:= n_bit+1;
	 begin
	 while(na/=3) loop
		na:= Integer(Floor(real(na/3)))*2 + (na rem 3);
		nb:=nb+1;
		report "nb";
	 end loop;
	 return nb;
	 end nome_funzione;
  
end extentionwork;




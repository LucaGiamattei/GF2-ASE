-- TestBench Template 
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

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;
	library work;
	use work.extentionwork.all;
  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
          COMPONENT Contenitore
							 generic(
								n_addendi:integer:=14;
								n_bit:integer:=8
						
							);
								port ( 		 
									addendi: in vett_au((n_addendi-1) downto 0, n_bit-1 downto 0);
									uscite_s: out vett_au(0 downto 0, nome_funzione(n_addendi,n_bit)-1 downto 0);
									uscite_c: out vett_au(0 downto 0, nome_funzione(n_addendi,n_bit)-1 downto 0)
							);
          END COMPONENT;

					signal addendi:  vett_au((14-1) downto 0, 8-1 downto 0);
					signal uscite_s: vett_au(0 downto 0, nome_funzione(14,8)-1 downto 0);
					signal uscite_c: vett_au(0 downto 0, nome_funzione(14,8)-1 downto 0);
          

  BEGIN

  -- Component Instantiation
          uut: Contenitore 
			 generic map(
					n_addendi=>14,
					n_bit=>8
					)
				
			 PORT MAP(
                 addendi=>addendi,
					  uscite_s=>uscite_s,
					  uscite_c=>uscite_c
          );


  --  Test Bench Statements
     tb : PROCESS
     BEGIN
			addendi(0,0)<= '0';
			addendi(0,1)<= '1';
			addendi(0,2)<= '1';
			addendi(0,3)<= '1';
			addendi(0,4)<= '0';
			addendi(0,5)<= '1';
			addendi(0,6)<= '0';
			addendi(0,7)<= '1';
			
			
			addendi(1,0)<= '0';
			addendi(1,1)<= '1';
			addendi(1,2)<= '1';
			addendi(1,3)<= '1';
			addendi(1,4)<= '0';
			addendi(1,5)<= '1';
			addendi(1,6)<= '0';
			addendi(1,7)<= '1';
			
			addendi(2,0)<= '0';
			addendi(2,1)<= '1';
			addendi(2,2)<= '0';
			addendi(2,3)<= '1';
			addendi(2,4)<= '0';
			addendi(2,5)<= '0';
			addendi(2,6)<= '0';
			addendi(2,7)<= '1';
			
			addendi(3,0)<= '0';
			addendi(3,1)<= '0';
			addendi(3,2)<= '0';
			addendi(3,3)<= '0';
			addendi(3,4)<= '0';
			addendi(3,5)<= '1';
			addendi(3,6)<= '0';
			addendi(3,7)<= '1';
			
			addendi(4,0)<= '0';
			addendi(4,1)<= '1';
			addendi(4,2)<= '1';
			addendi(4,3)<= '1';
			addendi(4,4)<= '0';
			addendi(4,5)<= '1';
			addendi(4,6)<= '0';
			addendi(4,7)<= '1';
			
			addendi(5,0)<= '0';
			addendi(5,1)<= '1';
			addendi(5,2)<= '0';
			addendi(5,3)<= '1';
			addendi(5,4)<= '0';
			addendi(5,5)<= '0';
			addendi(5,6)<= '0';
			addendi(5,7)<= '1';
			
			addendi(6,0)<= '0';
			addendi(6,1)<= '1';
			addendi(6,2)<= '0';
			addendi(6,3)<= '1';
			addendi(6,4)<= '0';
			addendi(6,5)<= '0';
			addendi(6,6)<= '0';
			addendi(6,7)<= '1';
			
			
			addendi(7,0)<= '0';
			addendi(7,1)<= '1';
			addendi(7,2)<= '1';
			addendi(7,3)<= '1';
			addendi(7,4)<= '0';
			addendi(7,5)<= '1';
			addendi(7,6)<= '0';
			addendi(7,7)<= '1';
			
			
			addendi(8,0)<= '0';
			addendi(8,1)<= '1';
			addendi(8,2)<= '1';
			addendi(8,3)<= '1';
			addendi(8,4)<= '0';
			addendi(8,5)<= '1';
			addendi(8,6)<= '0';
			addendi(8,7)<= '1';
			
			addendi(9,0)<= '0';
			addendi(9,1)<= '1';
			addendi(9,2)<= '0';
			addendi(9,3)<= '1';
			addendi(9,4)<= '0';
			addendi(9,5)<= '0';
			addendi(9,6)<= '0';
			addendi(9,7)<= '1';
			
			addendi(10,0)<= '0';
			addendi(10,1)<= '0';
			addendi(10,2)<= '0';
			addendi(10,3)<= '0';
			addendi(10,4)<= '0';
			addendi(10,5)<= '1';
			addendi(10,6)<= '0';
			addendi(10,7)<= '1';
			
			addendi(11,0)<= '0';
			addendi(11,1)<= '1';
			addendi(11,2)<= '1';
			addendi(11,3)<= '1';
			addendi(11,4)<= '0';
			addendi(11,5)<= '1';
			addendi(11,6)<= '0';
			addendi(11,7)<= '1';
			
			addendi(12,0)<= '0';
			addendi(12,1)<= '1';
			addendi(12,2)<= '0';
			addendi(12,3)<= '1';
			addendi(12,4)<= '0';
			addendi(12,5)<= '0';
			addendi(12,6)<= '0';
			addendi(12,7)<= '1';
			
			addendi(13,0)<= '0';
			addendi(13,1)<= '1';
			addendi(13,2)<= '0';
			addendi(13,3)<= '1';
			addendi(13,4)<= '0';
			addendi(13,5)<= '0';
			addendi(13,6)<= '0';
			addendi(13,7)<= '1';

        wait for 100 ns; -- wait until global set/reset completes

        -- Add user defined stimulus here

        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;

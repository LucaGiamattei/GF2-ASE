----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:54:03 11/22/2016 
-- Design Name: 
-- Module Name:    Counter_ModN - Behavioral 
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
use IEEE.math_real.all;
use IEEE.std_logic_arith.all ;


entity  Counter_ModN  is generic (N : integer := 4) ;
  port (
		clock : in  STD_LOGIC;
      reset_n : in  STD_LOGIC;
		set_cmd : in std_logic := '0' ;
		enable : in STD_LOGIC;
		val_set : in STD_LOGIC_VECTOR (  integer ((floor(LOG2 (real(N - 1 ))))  ) DOWNTO 0)  := ( others => '0' );
      counter : out  STD_LOGIC_VECTOR (  integer ((floor(LOG2 (real(N - 1 ))))  ) DOWNTO 0) ; 
		res_out : out std_logic := '0'
		); 
end Counter_ModN;

architecture Behavioral of Counter_ModN is

constant  DIM : integer  :=integer ((floor(LOG2 (real(N - 1))))) + 1   ; --LA DIMENSIONE DEL VETTORE DEL NOSTRO CONTATORE--
constant cost : std_logic_vector (  DIM - 1  DOWNTO 0)  :=  CONV_STD_LOGIC_VECTOR ( N-1, DIM   ) ; --COSTANTE DI CONTEGGIO--
signal c : std_logic_vector (  DIM - 1 DOWNTO 0)  := (others => '0'); --Counter Interno--
signal reset : std_logic; --Segnale di RESET--
signal res_out_temp  : std_logic := '0' ;
begin

counter <= CONV_STD_LOGIC_VECTOR ( unsigned (c) , DIM  ); --Uscita del Counter --

reset <= not reset_n;
res_out <= res_out_temp ;

pr: process (clock , reset , enable  )
begin


if reset = '1' or  set_cmd = '1' then 
	if set_cmd = '1' then
			c <= val_set ; -- Setta un valore di input --
			else 
			res_out_temp <= '0' ; 
			c <= (others => '0' ) ; -- Resetta --
	end if ;
	
	else if clock'event and clock = '1' then
		 if enable = '1' then  
			c <= CONV_STD_LOGIC_VECTOR  ( unsigned (c) + 1 , DIM )  ;  -- Incrementa Contatore -- 
			if c = CONV_STD_LOGIC_VECTOR  ( unsigned (cost) - 1 , DIM )   then
						res_out_temp <= '1';  -- Alza l' Uscita id Reset del contatore --
						else
						res_out_temp <= '0'; 
						if c = cost then  -- resetta contatore --
						c <= (others => '0' ) ;
						end if ;
			
			end if ;
		end if ;
	end if ;

end if; 


end process ;

 
 


end Behavioral;

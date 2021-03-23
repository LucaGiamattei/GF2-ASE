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
		enable : in STD_LOGIC;
      counter : out  STD_LOGIC_VECTOR (  integer ((floor(LOG2 (real(N - 1 ))))  ) DOWNTO 0) ; 
		res_out : out std_logic := '0'
		); 
end Counter_ModN;

architecture Behavioral of Counter_ModN is

constant  DIM : integer  :=integer ((floor(LOG2 (real(N))))) + 1   ; --LA DIMENSIONE DEL VETTORE DEL NOSTRO CONTATORE--
constant cost : std_logic_vector (  DIM - 1  DOWNTO 0)  :=  CONV_STD_LOGIC_VECTOR ( N-2 , DIM   ) ; --COSTANTE DI CONTEGGIO--
signal c : std_logic_vector (  DIM - 1 DOWNTO 0)  := (others => '0'); --Counter Interno--
signal reset : std_logic; --Segnale di RESET--

begin

counter <= CONV_STD_LOGIC_VECTOR ( unsigned (c) , DIM  ); --Uscita del Counter --

reset <= not reset_n;

counter_process: process(clock, reset, c)
begin
	 
	if reset = '1'   then
	--Se il segnale di Reset o se il Counter è uguale alla nostra costante di conteggio resettiamo il Counter--
	   c <= (others => '0'); 
      res_out <= '0';		
	elsif clock'event AND clock = '1' AND enable = '1' then
		c <= CONV_STD_LOGIC_VECTOR  (unsigned (c) + 1 , DIM )  ; --Incremento il contatore --
		if c = cost  then
		res_out <= '1'; -- Alziamo Il segnale di uscita che indica il Reset -- 
		else
		res_out <= '0';
		end if  ;
		
	end if;

end process;

 


end Behavioral;


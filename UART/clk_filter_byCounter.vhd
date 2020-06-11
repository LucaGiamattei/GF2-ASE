----------------------------------------------------------------------------------
-- Company: 
-- Engineer:  
-- 
-- Create Date:    20:20:43 11/22/2016 
-- Design Name: 
-- Module Name:    clk_filter - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity clk_filter_by_Counter  is
	 generic(
				clock_frequency_in : integer := 50000000; --Frequenza Entrante --
				clock_frequency_out : integer := 5000000 --Frequenza Desiderata in uscita--
				);
    Port ( clock_in : in  STD_LOGIC; --Clock Entrante --
				reset_n : in STD_LOGIC; -- Reset --
           clock_out : out  STD_LOGIC); --Clock Uscente --
			  
end clk_filter_by_Counter ;

architecture Structural of clk_filter_by_Counter is

constant cont : integer := integer ( clock_frequency_in / clock_frequency_out) ; -- Fattore di divisione --

Component  Counter_ModN  is generic (N : integer := 4) ;
  port (
		clock : in  STD_LOGIC;
      reset_n : in  STD_LOGIC;
		set_cmd : in std_logic := '0' ;
		enable : in STD_LOGIC;
		val_set : in STD_LOGIC_VECTOR (  integer ((floor(LOG2 (real(N - 1 ))))  ) DOWNTO 0)  := ( others => '0' );
      counter : out  STD_LOGIC_VECTOR (  integer ((floor(LOG2 (real(N - 1 ))))  ) DOWNTO 0) ; 
		res_out : out std_logic := '0'
		); 
end Component ;

begin

 contatore: Counter_ModN generic map ( N => cont )
		PORT MAP (
          clock => clock_in ,
          reset_n => reset_n,
          enable => '1',
          counter => open , -- Non serve in questo caso --
			 res_out => clock_out -- Segnale che avrà frequenza pari a quella desiderata --
        );


end Structural ;


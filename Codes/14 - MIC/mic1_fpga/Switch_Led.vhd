----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:30:15 02/14/2019 
-- Design Name: 
-- Module Name:    Switch_Led - Behavioral 
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

entity Switch_Led is
    Port ( 
			CE_SW		: in std_logic 	:= '0';
			Ck : in  STD_LOGIC;
			Switches_val : in std_logic_vector(7 downto 0):= (others=>'0');--aggiungi alla toplevel entity
			IO_MDR :inout std_logic_vector(31 downto 0) := "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
			RD		: in std_logic 	:= '0'; --SEGNALE DI LETTURA DAGLI SWITCH
			load : in Std_logic := '0';
			done : in std_logic := '0';
			WR		: in std_logic 	:= '0'; --segnale di scrittura SUI LED
			LEDS : out std_logic_vector(7 downto 0) --aggiungi alla toplevel entity
	 );
end Switch_Led;

architecture Behavioral of Switch_Led is

signal reg_led : std_logic_vector(7 downto 0) := (others => '0');

begin


leggi_switches : process(ck)
	begin
		if falling_edge(ck) then
			if wr='0' and rd ='1' and ce_sw = '1' and done = '1' then
				io_mdr(7 downto 0) <= Switches_val;
			elsif wr='0' and rd ='1' and ce_sw = '1' and done ='0' then 
				io_mdr<= (others =>'0');
			else
				io_mdr<= (others =>'Z');
			end if;
			
		end if;
	end process;
	
scrivi_led : process(ck)
	begin
		if falling_edge(ck) then
			if wr='1' and rd ='0' and ce_sw = '1' then
				reg_led <= io_mdr(7 downto 0);
			end if;
			
		end if;
	end process;
	
	leds <= reg_led;

end Behavioral;


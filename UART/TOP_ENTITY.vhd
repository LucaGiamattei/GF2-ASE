----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:39:18 03/18/2019 
-- Design Name: 
-- Module Name:    TOP_ENTITY - Behavioral 
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

entity TOP_ENTITY is
	start_trasm: in std_logic; -- Comando per avviare trasmissione --
	load_trasm: in std_logic;
	start_trasm2: in std_logic; -- Comando per avviare trasmissione --
	load_trasm2: in std_logic;
	switch : in STD_LOGIC_VECTOR(7 downto 0);
	led_OE		: out std_logic;
	led_FE		: out std_logic;
	led_PE		: out std_logic;
	anodes : out  STD_LOGIC_VECTOR (3 downto 0);
   cathodes : out  STD_LOGIC_VECTOR (7 downto 0)

end TOP_ENTITY;

architecture Behavioral of TOP_ENTITY is

COMPONENT TOP_UART is port (
	RXD 	: in  std_logic;	 -- Collegamento ingresso Uart --
	TXD 	: out  std_logic;	--aggiunto per trasmissione
	clock : in std_logic  ;
	reset : in std_logic  ; 
	start_trasm: in std_logic; -- Comando per avviare trasmissione --
	load_trasm: in std_logic; -- Comando per caricare i valori degli switch nel registro --
	switch : in STD_LOGIC_VECTOR(7 downto 0);
	led_OE		: out std_logic;
	led_FE		: out std_logic;
	led_PE		: out std_logic;
	anodes : out  STD_LOGIC_VECTOR (3 downto 0);
   cathodes : out  STD_LOGIC_VECTOR (7 downto 0)
); 
end component; 

signal buf1,buf2 : STD_LOGIC := '0'  ;

begin

UART: TOP_UART 
    Port map (
	RXD 	=> buf1
	TXD 	=> buf2
	clock => clock
	reset =>
	start_trasm
	load_trasm
	switch 
	led_OE		
	led_FE		
	led_PE		
	anodes 
   cathodes 




end Behavioral;


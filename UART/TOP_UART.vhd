----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:     
-- Design Name: 
-- Module Name:    TOP_UART - Behavioral 
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
use IEEE.math_real.all;
use IEEE.std_logic_arith.all ;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TOP_UART is port (
	pin1 	: inout  std_logic;	 -- Collegamento ingresso Uart --
	pin2 	: inout  std_logic;	--aggiunto per trasmissione
	clock : in std_logic  ;
	reset : in std_logic  ; 
	start_trasm: in std_logic; -- Comando per avviare trasmissione --
	start_trasm2: in std_logic; -- Comando per avviare trasmissione --
	switch : in STD_LOGIC_VECTOR(7 downto 0);
	led_OE		: out std_logic;
	led_FE		: out std_logic;
	led_PE		: out std_logic;
	led_OE2		: out std_logic;
	led_FE2		: out std_logic;
	led_PE2		: out std_logic;
	anodes : out  STD_LOGIC_VECTOR (3 downto 0);
   cathodes : out  STD_LOGIC_VECTOR (7 downto 0)
); 
end TOP_UART; 
 
architecture Behavioral of TOP_UART is

Component display_seven_segments is
	Generic(
				clock_frequency_in : integer := 50000000;
				clock_frequency_out : integer := 5000000
				); 
    Port ( clock : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           value : in  STD_LOGIC_VECTOR (15 downto 0);
           enable : in  STD_LOGIC_VECTOR (3 downto 0);
           dots : in  STD_LOGIC_VECTOR (3 downto 0);
           anodes : out  STD_LOGIC_VECTOR (3 downto 0);
           cathodes : out  STD_LOGIC_VECTOR (7 downto 0));
end Component;

component Rs232RefComp is
    Port ( 
		TXD 	: out std_logic  	:= '1';
    	RXD 	: in  std_logic;					
    	CLK 	: in  std_logic;								--Master Clock
		DBIN 	: in  std_logic_vector (7 downto 0);	--Data Bus in  (mi serve per caricare i dati da trasmettere)
		DBOUT : out std_logic_vector (7 downto 0);	--Data Bus out  (da cui prelevo i dati ricevuti
		RDA	: inout std_logic;						--Read Data Available (alzato in automatico a fine ricezione? -> abbasso io?)
		TBE	: inout std_logic 	:= '1';			--Transfer Bus Empty
		RD		: in  std_logic;					--Read Strobe
		WR		: in  std_logic;					--Write Strobe
		PE		: out std_logic;					--Parity Error Flag
		FE		: out std_logic;					--Frame Error Flag
		OE		: out std_logic;					--Overwrite Error Flag
		RST		: in  std_logic	:= '0'  	--Master Reset
		);
end component ;

component reg is
	 Generic(width : integer := 8);
    Port ( valore : in  STD_LOGIC_VECTOR (width-1 downto 0);
           clock : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (width-1 downto 0));
end component;

signal RDA,RDA2 : STD_LOGIC;
signal start : STD_LOGIC := '0'  ;
signal TBE,TBE2 : STD_LOGIC  ;
signal RD_TEMP,RD_TEMP2 : STD_LOGIC := '0'  ;
signal WR_TEMP,WR_TEMP2 : STD_LOGIC := '0'  ;
signal DBOUT,DBOUT2 :  std_logic_vector (7 downto 0) := (Others => '0' ); --vettore di 8 bit dove carico valori ricevuti
signal temp_read,reg_read_out,reg2_read_out :  std_logic_vector (7 downto 0) := (Others => '0' );
signal value_display :  std_logic_vector (15 downto 0) := (Others => '0' );




type state_type is (init , lettura , scrittura ) ;
signal state , next_state : state_type := init; 

begin

cambio_stato: process(clock, reset )
begin
	if reset = '1' then
		state  <= init ;
	elsif rising_edge(clock) then
		state <= next_state;
	end if;
end process;

prc_read : process (clock, DBOUT, RDA, RD_TEMP) 
begin
	if clock'event and clock = '1' then
		if RDA = '1' then
			RD_TEMP <= '1';	
		else
		RD_TEMP <= '0';					-- se ho disponibile da laggere il dato alzo RD_TEMP sarebbe il read_Strobe (da vedere che fa)
		end if ;
	end if ;
end process;

prc_read2: process (clock, DBOUT, RDA, RD_TEMP) 
begin
	if clock'event and clock = '1' then
		if RDA2 = '1' then
			RD_TEMP2 <= '1';	
		else
		RD_TEMP2 <= '0';					-- se ho disponibile da laggere il dato alzo RD_TEMP sarebbe il read_Strobe (da vedere che fa)
		end if ;
	end if ;
end process;

prc_write : process (clock, start_trasm) 
begin
	if clock'event and clock = '1' then
		if start_trasm = '1' then
			WR_TEMP <= '1';
		else 
			WR_TEMP <= '0';
		end if ;
	end if ;
end process;

prc_write2 : process (clock, start_trasm) 
begin
	if clock'event and clock = '1' then
		if start_trasm2 = '1' then
			WR_TEMP2 <= '1';
		else 
			WR_TEMP2 <= '0';
		end if ;
	end if ;
end process;

reg_read: reg port map(
							valore => DBOUT,
						    clock=> clock,	--en_reg_read,
							 enable=> RDA ,
							 reset_n=> not reset ,
							 output => reg_read_out); -- da caricare sul display

reg2_read: reg port map(
							valore => DBOUT2,
						    clock=> clock,	--en_reg_read,
							 enable=> RDA2 ,
							 reset_n=> not reset ,
							 output => reg2_read_out); -- da caricare sul display



rs233: Rs232RefComp 
    Port map (
		TXD 	=> 	pin1,
    	RXD 	=> '0' ,
    	CLK 	=>		CLOCK,					--Master Clock
		DBIN 	=> 	switch,				--Data Bus in
		DBOUT => 	DBOUT ,		--Data Bus out
		RDA	=>		RDA , 				--Read Data Available
		TBE	=>		TBE , 		--Transfer Bus Empty
		RD		=> 	RD_TEMP ,				--Read Strobe
		WR		=>		WR_TEMP ,			--Write Strobe	
		PE		=> 	led_PE ,				--Parity Error Flag _DISPARI_ --
		FE		=> 	led_FE ,	--Frame Error Flag
		OE		=>  	led_OE ,  --Overwrite Error Flag
		RST  => reset
		);
		
rs2332: Rs232RefComp 
    Port map (
		TXD 	=> 	open,
    	RXD 	=> 	pin2 ,
    	CLK 	=>		CLOCK,					--Master Clock
		DBIN 	=> 	"00000000",				--Data Bus in
		DBOUT => 	DBOUT2 ,		--Data Bus out
		RDA	=>		RDA2 , 				--Read Data Available
		TBE	=>		TBE2, 		--Transfer Bus Empty
		RD		=> 	RD_TEMP2 ,				--Read Strobe
		WR		=>		WR_TEMP2 ,			--Write Strobe	
		PE		=> 	led_PE2 ,				--Parity Error Flag _DISPARI_ --
		FE		=> 	led_FE2 ,	--Frame Error Flag
		OE		=>  	led_OE2 ,  --Overwrite Error Flag
		RST  => reset
		);


disp : display_seven_segments generic map ( clock_frequency_out =>  400 ) 
	port map (
			  clock => clock , 
           reset_n => not reset ,
           value =>   value_display ,
           enable => "1111" ,
           dots => "0000" ,
           anodes => anodes ,
           cathodes => cathodes
	  );

value_display <= reg2_read_out & reg_read_out;

end Behavioral;
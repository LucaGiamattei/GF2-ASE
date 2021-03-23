

----------------------------------------------------------------------------
-- File automaticamente generato dal programma ivm2vhdl tool
-- Copyright (c) 2019 Author Antonino Mazzeo corso ASE-2018-19
----------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
library work;
entity boot_rom is port (
ADDRESS : in  std_logic_vector(8 downto 0);  --9 bit indirizzi = 512  locazioni per control store (2x256 locazioni)    
CE : in std_logic;
DATA : out std_logic_vector(7 downto 0));
end entity boot_rom;
architecture basic of boot_rom is
constant width   : integer := 8;  --larghezza word
constant memsize : integer := 512;
--dichiarazione label della control store
constant BIPUSH :std_logic_vector(7 downto 0):=  x"10";
constant DUP :std_logic_vector(7 downto 0):=  x"59";
constant GOTO :std_logic_vector(7 downto 0):=  x"A7";
constant IADD :std_logic_vector(7 downto 0):=  x"60";
constant IAND :std_logic_vector(7 downto 0):=  x"7E";
constant IFEQ :std_logic_vector(7 downto 0):=  x"99";
constant IFLT :std_logic_vector(7 downto 0):=  x"9B";
constant IF_ICMPEQ :std_logic_vector(7 downto 0):=  x"9F";
constant IINC :std_logic_vector(7 downto 0):=  x"84";
constant ILOAD :std_logic_vector(7 downto 0):=  x"15";
constant INVOKEVIRTUAL :std_logic_vector(7 downto 0):=  x"B6";
constant IOR :std_logic_vector(7 downto 0):=  x"B0";
constant IRETURN :std_logic_vector(7 downto 0):= x"AC";
constant ISTORE :std_logic_vector(7 downto 0):= x"36";
constant ISUB :std_logic_vector(7 downto 0):= x"64";
constant LDC_W :std_logic_vector(7 downto 0):= x"13";
constant NOP :std_logic_vector(7 downto 0):=  x"00";
constant POP :std_logic_vector(7 downto 0):=  x"57";
constant SWAP :std_logic_vector(7 downto 0):= x"5F";
constant WIDE :std_logic_vector(7 downto 0):= x"C4";
constant HALT :std_logic_vector(7 downto 0):= x"FF";
constant ERR :std_logic_vector(7 downto 0):=  x"FE";
constant OUTT :std_logic_vector(7 downto 0):= x"FD";
constant INN :std_logic_vector(7 downto 0):=  x"FC";
constant IMUL :std_logic_vector(7 downto 0):= x"78";
constant IDIV :std_logic_vector(7 downto 0):= x"E0";
type rom_array is array(0 to memsize-1) of std_logic_vector(width-1 downto 0); 
constant rom_data : rom_array := (

x"FC",
x"59",
x"10",
x"00",
x"9F",
x"00",
x"0D",
x"36",
x"00",
x"00",
x"15",
x"00",
x"13",
x"00",
x"00",
x"60",
x"FD",
x"57",
x"A7",
x"FF",
x"EE",

others=>(others=>'0')
);
begin 
DATA <= rom_data(conv_integer(ADDRESS)) when CE = '1' else (others => 'Z'); 
end architecture basic; 


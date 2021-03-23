

----------------------------------------------------------------------------
-- File automaticamente generato dal programma ivm2vhdl tool
--Copyright (c) 2019 Author Antonino Mazzeo corso ASE-2018-19
----------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library work;
entity cpool_rom is port (
ADDRESS : in  std_logic_vector(4 downto 0);  --7 bit indirizzi = 128  locazioni
DATA : inout std_logic_vector(31 downto 0);
CE : in std_logic);
end entity cpool_rom;
architecture basic of cpool_rom is
constant width   : integer := 32;  --larghezza word
constant memsize : integer := 32;  --64 locazioni
type rom_array is array(0 to memsize-1) of std_logic_vector(width-1 downto 0);
constant rom_data : rom_array := (


x"00000032",

others=>(others=>'0')
);
begin
DATA <= rom_data(conv_integer(ADDRESS)) when CE='1' else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
end architecture basic;


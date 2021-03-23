----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:40:56 12/09/2016 
-- Design Name: 
-- Module Name:    xorInversion - Behavioral 
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

entity xorInversion is
 Generic(num_bit : integer := 8);
    Port ( input : in  STD_LOGIC_VECTOR (num_bit - 1 downto 0);
           inverti : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (num_bit - 1 downto 0));
end xorInversion;

architecture Dataflow of xorInversion is
begin
  with inverti select
	output <= not input when '1',
				 input when others;


end Dataflow;


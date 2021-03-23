----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:36:28 02/22/2019 
-- Design Name: 
-- Module Name:    invert - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;

entity invert is
generic (
	DELAY_INERTIAL: time := 3 ns;
	DELAY_TRANSPORT: time := 15 ns
);

port(
	I: IN std_ulogic ;
	O: out std_ulogic);

end invert;


architecture dataflow of invert is

begin

O <= REJECT DELAY_INERTIAL INERTIAL (NOT(I)) after DELAY_TRANSPORT;


end architecture;


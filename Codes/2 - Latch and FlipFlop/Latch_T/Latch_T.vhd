----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:54:22 02/21/2019 
-- Design Name: 
-- Module Name:    data_flow - data_flow 
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

entity Latch_T is
generic (
	DELAYQT: time := 1.0 ns;
	DELAYNQT: time := 1.0 ns;
	DELAY_INERTIAL_NOR: time := 3 ns;
	DELAY_TRANSPORT_NOR: time := 5 ns;
	DELAY_TAN : time := 1.0	ns;
	DELAY_TNA : time := 2.0 ns;
	DELAY_INERTIAL_AND: time := 1 ns;
	DELAY_TRANSPORT_AND: time := 3 ns
	
);

port(
	T,Clear,preset: IN std_ulogic ;
	Q,NQ: inout std_ulogic);

end Latch_T;


architecture dataflow of Latch_T is

signal DeltaQ: std_ulogic;
signal DeltaNQ: std_ulogic;
signal DeltaANR: std_ulogic;
signal DeltaNAQ: std_ulogic;
signal DeltaANS: std_ulogic;
signal DeltaNANQ: std_ulogic;

signal R: std_ulogic;
signal S: std_ulogic;

begin

DeltaQ <= TRANSPORT Q after DELAYQT ;
DeltaNQ <= TRANSPORT NQ after DELAYNQT ;
DeltaANR <= TRANSPORT R after DELAY_TAN ;
DeltaNANQ <= TRANSPORT NQ after DELAY_TNA ;
DeltaANS <= TRANSPORT S after DELAY_TAN ;
DeltaNAQ <= TRANSPORT Q after DELAY_TNA ;


Q <= REJECT DELAY_INERTIAL_NOR INERTIAL (NOT(DeltaANR OR DeltaNQ OR Clear)) after DELAY_TRANSPORT_NOR ;
NQ <=REJECT DELAY_INERTIAL_NOR INERTIAL (NOT(DeltaANS OR DeltaQ OR preset)) after DELAY_TRANSPORT_NOR ;

S <= REJECT DELAY_INERTIAL_AND INERTIAL (T AND DeltaNANQ) after DELAY_TRANSPORT_AND ;
R <=REJECT DELAY_INERTIAL_AND INERTIAL (T AND DeltaNAQ) after DELAY_TRANSPORT_AND ;


end architecture;


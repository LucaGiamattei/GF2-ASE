----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:12:25 02/22/2019 
-- Design Name: 
-- Module Name:    FF_RSMS - Behavioral 
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

entity Latch_rs is
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
	E,R,S: IN std_ulogic ;
	Q,NQ: inout std_ulogic);

end Latch_rs;


architecture dataflow of Latch_rs is

signal DeltaQ: std_ulogic;
signal DeltaNQ: std_ulogic;
signal DeltaANR: std_ulogic;
signal DeltaANS: std_ulogic;


signal RR: std_ulogic;
signal SS: std_ulogic;

begin

DeltaQ <= TRANSPORT Q after DELAYQT ;
DeltaNQ <= TRANSPORT NQ after DELAYNQT ;
DeltaANR <= TRANSPORT RR after DELAY_TAN ;
DeltaANS <= TRANSPORT SS after DELAY_TAN ;



Q <= REJECT DELAY_INERTIAL_NOR INERTIAL (NOT(DeltaANR OR DeltaNQ )) after DELAY_TRANSPORT_NOR ;
NQ <=REJECT DELAY_INERTIAL_NOR INERTIAL (NOT(DeltaANS OR DeltaQ)) after DELAY_TRANSPORT_NOR ;

SS <= REJECT DELAY_INERTIAL_AND INERTIAL (S AND E) after DELAY_TRANSPORT_AND ;
RR <=REJECT DELAY_INERTIAL_AND INERTIAL (R AND E) after DELAY_TRANSPORT_AND ;


end architecture;


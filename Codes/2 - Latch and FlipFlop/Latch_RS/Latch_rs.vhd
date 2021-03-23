library ieee;
use ieee.std_logic_1164.all;

entity Latch_rs is
generic (DELAYQT: time := 1.0 ns; DELAYNQT: time := 1.0 ns; DELAY_INERTIAL_NOR: time := 3 ns;DELAY_TRANSPORT_NOR: time := 5 ns);

port(
R,S,Clear,preset: IN std_ulogic ;
Q,NQ: inout std_ulogic);

end Latch_rs;


architecture dataflow of Latch_rs is

signal DeltaQ: std_ulogic;
signal DeltaNQ: std_ulogic;

begin

DeltaQ <= TRANSPORT Q after DELAYQT ;
DeltaNQ <= TRANSPORT NQ after DELAYNQT ;
Q <= REJECT DELAY_INERTIAL_NOR INERTIAL (NOT(R OR DeltaNQ OR Clear)) after DELAY_TRANSPORT_NOR ;
NQ <=REJECT DELAY_INERTIAL_NOR INERTIAL (NOT(S OR DeltaQ OR preset)) after DELAY_TRANSPORT_NOR ;


end architecture;

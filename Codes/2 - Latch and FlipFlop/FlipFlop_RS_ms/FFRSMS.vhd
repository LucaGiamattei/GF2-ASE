----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:18:53 02/22/2019 
-- Design Name: 
-- Module Name:    FFRSMS - Behavioral 
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

entity FFRSMS is
Port ( RF : in  STD_LOGIC;
		 SF : in  STD_LOGIC;
       Clk : in  STD_LOGIC;
       QF : out  STD_LOGIC;
       NQF : out  STD_LOGIC);
end FFRSMS;

architecture Structural of FFRSMS is

COMPONENT Latch_rs
generic (
	DELAYQT: time := 1.0 ns;
	DELAYNQT: time := 1.0 ns;
	DELAY_INERTIAL_NOR: time := 3 ns;
	DELAY_TRANSPORT_NOR: time := 5 ns;
	DELAY_TAN : time := 1.0	ns;
	DELAY_INERTIAL_AND: time := 1 ns;
	DELAY_TRANSPORT_AND: time := 3 ns
);
	PORT(
 	E,R,S: IN std_ulogic ;
	Q,NQ: INOUT std_ulogic
	);
END COMPONENT;

COMPONENT invert
generic (
	DELAY_INERTIAL: time := 3 ns;
	DELAY_TRANSPORT: time := 25 ns
);
	PORT(
 	I: IN std_ulogic ;
	O: OUT std_ulogic
	);
END COMPONENT;


signal tQm : std_logic := '0' ;
signal tNQm : std_logic := '0' ;
signal tQF : std_logic := '0' ;
signal tNQF : std_logic := '0' ;
signal NClk : std_logic := '0' ;


begin

Master : Latch_rs PORT MAP(
	E => Clk,
	R => RF,
	S => SF,
	Q => tQm,
	NQ => tNQm
);

Inverter: invert PORT MAP(
	I => Clk,
	O => NClk
);

Slave : Latch_rs PORT MAP(
	E => NClk,
	R => tNQm,
	S => tQm,
	Q => tQF,
	NQ => tNQF
);

QF <= tQF;
NQF <= tNQF;

end Structural;


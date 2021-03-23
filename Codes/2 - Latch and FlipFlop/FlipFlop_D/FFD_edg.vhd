----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:58:39 02/20/2019 
-- Design Name: 
-- Module Name:    FFD_edg - Structural 
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


entity FFD_edg is
    Port ( D : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           QN : out  STD_LOGIC);
end FFD_edg;

architecture Structural of FFD_edg is

COMPONENT nor_2_in 
	PORT(
		a : IN std_logic;
		b : IN std_logic;
		o : OUT std_logic
	);
END COMPONENT;

COMPONENT or_2_in
	PORT(
		a : IN std_logic;
		b : IN std_logic;
		o : OUT std_logic
	);
END COMPONENT;

COMPONENT nor_3_in
	PORT(
		a : IN std_logic;
		b : IN std_logic;
		c : IN std_logic;
		o : OUT std_logic
	);
END COMPONENT;

signal x : std_logic := '0' ;
signal z : std_logic := '0' ;
signal y : std_logic := '0' ;
signal w : std_logic := '0' ;
signal tQ : std_logic := '0' ;
signal tQN : std_logic := '0' ;

begin

G1 : nor_2_in PORT MAP(
	a => D,
	b => z,
	o => x
);

G4 : nor_2_in PORT MAP(
	a => w,
	b => x,
	o => y
);

G3 : nor_2_in PORT MAP(
	a => y,
	b => Clk,
	o => w
);

--or_c_w : or_2_in PORT MAP(
--	a => w,
--	b => Clk,
--	o => cw
--);

--G2 : nor_3_in PORT MAP(
--	a => x,
--	b => Clk,
--	c => w,
--	o => z
--);

G2 : nor_2_in PORT MAP(
	a => Clk,
	b => w,
	o => z
);

G6 : nor_2_in PORT MAP(
	a => w,
	b => tQN,
	o => tQ
);

G5 : nor_2_in PORT MAP(
	a => z,
	b => tQ,
	o => tQN
);

Q <= tQ;
QN <= tQN;

end Structural;


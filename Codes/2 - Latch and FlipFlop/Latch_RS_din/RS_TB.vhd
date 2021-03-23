-- Vhdl test bench created from schematic /home/luca/ISE_ws/Latch_RS/Latch_RS.sch - Tue Feb 19 20:58:46 2019
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY Latch_RS_Latch_RS_sch_tb IS
END Latch_RS_Latch_RS_sch_tb;
ARCHITECTURE behavioral OF Latch_RS_Latch_RS_sch_tb IS 

   COMPONENT Latch_RS
   PORT( Q	:	OUT	STD_LOGIC; 
          S	:	IN	STD_LOGIC; 
          R	:	IN	STD_LOGIC; 
          NQ	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL Q	:	STD_LOGIC;
   SIGNAL S	:	STD_LOGIC;
   SIGNAL R	:	STD_LOGIC;
   SIGNAL NQ	:	STD_LOGIC;

BEGIN

   UUT: Latch_RS PORT MAP(
		Q => Q, 
		S => S, 
		R => R, 
		NQ => NQ
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
	
			R	<= '0', '1' after 10 ns , '0' after 20 ns;
	 
    S	<= '1', '1' after 10 ns , '0' after 20 ns;
	
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;

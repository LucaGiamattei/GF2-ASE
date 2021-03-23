-- Vhdl test bench created from schematic /home/luca/ISE_ws/FlipFlop_T/FF_T.sch - Thu Feb 21 17:27:11 2019
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
ENTITY FF_T_FF_T_sch_tb IS
END FF_T_FF_T_sch_tb;
ARCHITECTURE behavioral OF FF_T_FF_T_sch_tb IS 

   COMPONENT FF_T
   PORT( Q	:	OUT	STD_LOGIC; 
          T	:	IN	STD_LOGIC; 
          Pre	:	IN	STD_LOGIC; 
          Clk	:	IN	STD_LOGIC; 
          Clr	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL Q	:	STD_LOGIC;
   SIGNAL T	:	STD_LOGIC;
   SIGNAL Pre	:	STD_LOGIC;
   SIGNAL Clk	:	STD_LOGIC;
   SIGNAL Clr	:	STD_LOGIC;
	
	
	constant Clk_period : time := 40 ns;
 
BEGIN

   UUT: FF_T PORT MAP(
		Q => Q, 
		T => T, 
		Pre => Pre, 
		Clk => Clk, 
		Clr => Clr
   );
	
	  -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 



-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
	
	Clr <= '1', '0' after 10 ns;
	Pre <= '0';
	
	T <= '0', '1' after 90 ns,
--	'0' after 110 ns, '1' after 130 ns,
	'0' after 150 ns;
	
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;

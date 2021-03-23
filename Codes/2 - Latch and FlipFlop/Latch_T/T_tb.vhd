--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:59:35 02/21/2019
-- Design Name:   
-- Module Name:   /home/luca/ISE_ws/Latch_rs/Rs_tb.vhd
-- Project Name:  Latch_rs
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Latch_rs
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY Rs_tb IS
END Rs_tb;
 
ARCHITECTURE behavior OF Rs_tb IS 

    COMPONENT Latch_rs
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

    PORT(
			T : IN std_logic;
         Clear : IN  std_logic;
         preset : IN  std_logic;
         Q : INOUT  std_logic;
         NQ : INOUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clear : std_logic := '0';
   signal preset : std_logic := '0';
	signal T : std_logic := '0';

	--BiDirs
   signal Q : std_logic;
   signal NQ : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Latch_rs PORT MAP (
          T => T,
          Clear => Clear,
          preset => preset,
          Q => Q,
          NQ => NQ
        );



   -- Stimulus process
   stim_proc: process
   begin		

	preset <= '0';
	Clear <= '1', '0' after 10 ns;
	
	T <= '0', '1' after 50 ns, '0' after 76 ns;

      wait;
   end process;

END;

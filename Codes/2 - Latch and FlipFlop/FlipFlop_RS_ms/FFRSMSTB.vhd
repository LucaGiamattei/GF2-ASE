--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:51:41 02/22/2019
-- Design Name:   
-- Module Name:   /home/luca/ISE_ws/FlipFlopRSMS/FFRSMSTB.vhd
-- Project Name:  FlipFlopRSMS
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FFRSMS
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY FFRSMSTB IS
END FFRSMSTB;
 
ARCHITECTURE behavior OF FFRSMSTB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FFRSMS
    PORT(
         RF : IN  std_logic;
         SF : IN  std_logic;
         Clk : IN  std_logic;
         QF : OUT  std_logic;
         NQF : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal RF : std_logic := '0';
   signal SF : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal QF : std_logic;
   signal NQF : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FFRSMS PORT MAP (
          RF => RF,
          SF => SF,
          Clk => Clk,
          QF => QF,
          NQF => NQF
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		SF <= '1', '0' after 10 ns, '1' after 145 ns, '0' after 160 ns, '1' after 280 ns, '0' after 310 ns;
		RF <= '0', '1' after 20 ns, '0' after 60 ns , '1' after 245 ns, '0' after 260 ns;

      wait for Clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

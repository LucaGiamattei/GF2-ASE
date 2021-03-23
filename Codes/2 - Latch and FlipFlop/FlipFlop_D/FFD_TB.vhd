--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:28:10 02/20/2019
-- Design Name:   
-- Module Name:   /home/luca/ISE_ws/FFD_edg/FFD_TB.vhd
-- Project Name:  FFD_edg
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FFD_edg
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
 
ENTITY FFD_TB IS
END FFD_TB;
 
ARCHITECTURE behavior OF FFD_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FFD_edg
    PORT(
         D : IN  std_logic;
         Clk : IN  std_logic;
         Q : OUT  std_logic;
         QN : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal QN : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 60 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FFD_edg PORT MAP (
          D => D,
          Clk => Clk,
          Q => Q,
          QN => QN
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
      wait for 100 ns;	

      wait for Clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

	tb : process
	begin
	
	D <= '0', '1' after 140 ns, '0' after 210 ns, '1' after 350 ns, '0' after 390 ns;
	
	wait;
	end process;

END;

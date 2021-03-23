--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:27:55 03/13/2019
-- Design Name:   
-- Module Name:   /home/giorgio/Documenti/ScanChain/tb_contatore.vhd
-- Project Name:  ScanChain
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Counter
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
 
ENTITY tb_contatore IS
END tb_contatore;
 
ARCHITECTURE behavior OF tb_contatore IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Counter
    PORT(
         clock : IN  std_logic;
         reset_n : IN  std_logic;
         enable : IN  std_logic;
         count_max : IN  std_logic_vector(-1 to 0);
         res_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal reset_n : std_logic := '0';
   signal enable : std_logic := '0';
   signal count_max : std_logic_vector(-1 to 0) := (others => '0');

 	--Outputs
   signal res_out : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Counter PORT MAP (
          clock => clock,
          reset_n => reset_n,
          enable => enable,
          count_max => count_max,
          res_out => res_out
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

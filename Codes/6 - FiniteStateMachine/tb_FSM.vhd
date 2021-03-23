--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:47:33 03/16/2019
-- Design Name:   
-- Module Name:   /home/giorgio/Documenti/FSM/tb_FSM.vhd
-- Project Name:  FSM
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FSM
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
 
ENTITY tb_FSM IS
END tb_FSM;
 
ARCHITECTURE behavior OF tb_FSM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FSM
    PORT(
         i : IN  std_logic;
         clk : IN  std_logic;
         reset_n : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset_n : std_logic := '1';

 	--Outputs
   signal Q : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FSM PORT MAP (
          i => i,
          clk => clk,
          reset_n => reset_n,
          Q => Q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
      wait for clk_period*10;

      -- insert stimulus here 
		wait for 1 ns;
		wait for clk_period ;
		i<= '1';
		wait for clk_period ;
		i<= '0';
		wait for clk_period ;
		i<= '1';
		wait for clk_period ;
		i<= '1';
		wait for clk_period ;
		i<= '0';
		wait for clk_period ;
		i<= '0';
		wait for clk_period ;
		i<= '1';
		wait for clk_period ;
      wait;
   end process;

END;

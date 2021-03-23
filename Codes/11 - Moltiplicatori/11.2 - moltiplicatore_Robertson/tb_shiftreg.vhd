--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:25:56 03/04/2019
-- Design Name:   
-- Module Name:   /home/giorgio/FFD/FFD/tb_shiftreg.vhd
-- Project Name:  FFD
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Shift_register
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
 
ENTITY tb_shiftreg IS
END tb_shiftreg;
 
ARCHITECTURE behavior OF tb_shiftreg IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Shift_register
    PORT(
         reg_in : IN  std_logic_vector(7 downto 0);
         scan_in : IN  std_logic;
         scan_enable : IN  std_logic;
         clk : IN  std_logic;
         reset_n : IN  std_logic;
         enable : IN  std_logic;
         Q : OUT  std_logic_vector(7 downto 0);
         scan_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal reg_in : std_logic_vector(7 downto 0) := ('1','1','0','1',others => '0');
   signal scan_in : std_logic := '0';
   signal scan_enable : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset_n : std_logic := '0';
   signal enable : std_logic := '1';

 	--Outputs
   signal Q : std_logic_vector(7 downto 0);
   signal scan_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
	reset_n<='1';
	scan_in<= '1' after 13 ns;
	
	scan_enable<= '1' after 13 ns;
	enable<='0' after 21 ns;
	
	-- Instantiate the Unit Under Test (UUT)
   uut: Shift_register PORT MAP (
          reg_in => reg_in,
          scan_in => scan_in,
          scan_enable => scan_enable,
          clk => clk,
          reset_n => reset_n,
          enable => enable,
          Q => Q,
          scan_out => scan_out
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

      wait;
   end process;

END;

--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:26:35 03/13/2019
-- Design Name:   
-- Module Name:   /home/giorgio/Documenti/ScanChain/tb_sc1.vhd
-- Project Name:  ScanChain
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ScanChain
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
 
ENTITY tb_sc1 IS
END tb_sc1;
 
ARCHITECTURE behavior OF tb_sc1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ScanChain
    PORT(
         start : IN  std_logic;
         reset_n : IN  std_logic;
         scan_in : IN  std_logic;
         reg_in : IN  std_logic_vector(7 downto 0);
         clock : IN  std_logic;
         posizione : IN  std_logic_vector(-9999 to 0);
         mode : IN  std_logic;
         Q : OUT  std_logic_vector(7 downto 0);
         stop : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal start : std_logic := '0';
   signal reset_n : std_logic := '0';
   signal scan_in : std_logic := '0';
   signal reg_in : std_logic_vector(7 downto 0) := (others => '0');
   signal clock : std_logic := '0';
   signal posizione : std_logic_vector(-9999 to 0) := (others => '0');
   signal mode : std_logic := '0';

 	--Outputs
   signal Q : std_logic_vector(7 downto 0);
   signal stop : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ScanChain PORT MAP (
          start => start,
          reset_n => reset_n,
          scan_in => scan_in,
          reg_in => reg_in,
          clock => clock,
          posizione => posizione,
          mode => mode,
          Q => Q,
          stop => stop
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

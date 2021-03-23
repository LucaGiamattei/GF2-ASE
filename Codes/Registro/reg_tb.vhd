--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:57:28 02/27/2019
-- Design Name:   
-- Module Name:   /home/luca/ISE_ws/Registro/reg_tb.vhd
-- Project Name:  Registro
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: reg
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
 
ENTITY reg_tb IS
END reg_tb;
 
ARCHITECTURE behavior OF reg_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT reg
    PORT(
         value : IN  std_logic_vector(7 downto 0);
         clock : IN  std_logic;
         enable : IN  std_logic;
         reset_n : IN  std_logic;
         output : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal value : std_logic_vector(7 downto 0) := (others => '0');
   signal clock : std_logic := '0';
   signal enable : std_logic := '1';
   signal reset_n : std_logic := '1';

 	--Outputs
   signal output : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: reg PORT MAP (
          value => value,
          clock => clock,
          enable => enable,
          reset_n => reset_n,
          output => output
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

		value <= "00001111" after 300 ns, "00000000" after 400 ns;

      -- insert stimulus here 

      wait;
   end process;

END;

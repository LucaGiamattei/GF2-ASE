--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:15:13 02/26/2019
-- Design Name:   
-- Module Name:   C:/Users/Marco/Desktop/mic1_fpga-20190226T151123Z-001/mic1_fpga/mic_tb_echo.vhd
-- Project Name:  mic1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sistema_mic1
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
 
ENTITY mic_tb_echo IS
END mic_tb_echo;
 
ARCHITECTURE behavior OF mic_tb_echo IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sistema_mic1
    PORT(
         Sw : IN  std_logic_vector(7 downto 0);
         LED : OUT  std_logic_vector(7 downto 0);
         ck : IN  std_logic;
         load : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Sw : std_logic_vector(7 downto 0) := (others => '0');
   signal ck : std_logic := '0';
   signal load : std_logic := '0';

 	--Outputs
   signal LED : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant ck_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sistema_mic1 PORT MAP (
          Sw => Sw,
          LED => LED,
          ck => ck,
          load => load
        );

   -- Clock process definitions
  ck_process :process
   begin
		ck <= '0';
		wait for ck_period/2;
		ck <= '1';
		wait for ck_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
  
	load<='1';
	sw<=x"35"; 
	
	wait for 8 us;
	--load<='0';
	--sw<=x"06";
      wait;
   end process;

END;

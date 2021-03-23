--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:52:25 10/23/2012
-- Design Name:   
-- Module Name:   C:/Users/Mario/Desktop/Display7Segs/Display7Seg/tb_display.vhd
-- Project Name:  Display7Seg
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: display_seven_segments
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
 
ENTITY tb_clock_filter IS
END tb_clock_filter;
 
ARCHITECTURE behavior OF tb_clock_filter IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT clock_filter
    PORT ( clock_in : in  STD_LOGIC;
				reset_n : STD_LOGIC;
           clock_out : out  STD_LOGIC);
    END COMPONENT;
    

   --Inputs
   signal clock_in : std_logic := '0';
   signal reset_n : std_logic := '1';

 	--Outputs
   signal clock_out : std_logic := '0';


   -- Clock period definitions
   constant clock_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: clock_filter PORT MAP (
          clock_in => clock_in,
          reset_n => reset_n,
          clock_out => clock_out
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock_in <= '0';
		wait for clock_period/2;
		clock_in <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here
		reset_n <= '1';

      wait;
   end process;

END;

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
 
ENTITY tb_display IS
END tb_display;
 
ARCHITECTURE behavior OF tb_display IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT display_seven_segments
    PORT(
         clock : IN  std_logic;
         reset : IN  std_logic;
         value : IN  std_logic_vector(15 downto 0);
         enable : IN  std_logic_vector(3 downto 0);
         dots : IN  std_logic_vector(3 downto 0);
         anodes : OUT  std_logic_vector(3 downto 0);
         cathodes : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal reset : std_logic := '0';
   signal value : std_logic_vector(15 downto 0) := (others => '0');
   signal enable : std_logic_vector(3 downto 0) := (others => '0');
   signal dots : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal anodes : std_logic_vector(3 downto 0);
   signal cathodes : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: display_seven_segments PORT MAP (
          clock => clock,
          reset => reset,
          value => value,
          enable => enable,
          dots => dots,
          anodes => anodes,
          cathodes => cathodes
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
		reset <= '0';
		enable <= x"F";
		value <= x"0893";
		dots <= x"A";

      wait;
   end process;

END;

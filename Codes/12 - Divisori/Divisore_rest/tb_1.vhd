--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:59:12 03/14/2019
-- Design Name:   
-- Module Name:   /home/luca/ISE_ws/Divisore_rest/tb_1.vhd
-- Project Name:  Divisore_rest
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: divisore_restoring
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
 
ENTITY tb_1 IS
END tb_1;
 
ARCHITECTURE behavior OF tb_1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Divisore_Restoring
    PORT(
         dividendo : IN  std_logic_vector(7 downto 0);
         divisore : IN  std_logic_vector(3 downto 0);
         start : IN  std_logic;
         clock : IN  std_logic;
         reset_n : IN  std_logic;
         stop : OUT  std_logic;
         div_zero : OUT  std_logic;
         overflow : OUT  std_logic;
         quoziente : OUT  std_logic_vector(3 downto 0);
         resto : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal dividendo : std_logic_vector(7 downto 0) := (others => '0');
   signal divisore : std_logic_vector(3 downto 0) := (others => '0');
   signal start : std_logic := '0';
   signal clock : std_logic := '0';
   signal reset_n : std_logic := '1';

 	--Outputs
   signal stop : std_logic;
   signal div_zero : std_logic;
   signal overflow : std_logic;
   signal quoziente : std_logic_vector(3 downto 0);
   signal resto : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Divisore_Restoring PORT MAP (
          dividendo => dividendo,
          divisore => divisore,
          start => start,
          clock => clock,
          reset_n => reset_n,
          stop => stop,
          div_zero => div_zero,
          overflow => overflow,
          quoziente => quoziente,
          resto => resto
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

		
	   dividendo<="00001111";
		divisore<="1110";
		start<='1';
		wait for clock_period*2;
		start<='0';
		wait until stop = '1';

 --overflow
--		dividendo<="10011001";
--		divisore<="0010";
--		start<='1';
--		wait for clock_period*2;
--		start<='0';
--		wait until stop = '1';
--
----div per 0
--		dividendo<="00001010";
--		divisore<="0000";
--		start<='1';
--		wait for clock_period*2;
--		start<='0';
--		wait until stop = '1';

 
      wait;
   end process;

END;


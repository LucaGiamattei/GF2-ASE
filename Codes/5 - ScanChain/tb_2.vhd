--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:39:45 03/13/2019
-- Design Name:   
-- Module Name:   /home/luca/ISE_ws/Scan_Chain/tb_2.vhd
-- Project Name:  Scan_Chain
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
use IEEE.math_real.all;
use IEEE.std_logic_arith.all ;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_2 IS
generic (N : integer := 8);
END tb_2;
 

ARCHITECTURE behavior OF tb_2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ScanChain is 
	--N è la dimensione dello shift register e quindi definisce anche il il modulo del contatore
	port (
		start:in std_logic;
		reset_n:in std_logic;
		
	--ingressi di dato
			--mi dice il valore di scan_out in uscita dallo shift register
			scan_in:in std_logic;
			reg_in: in std_logic_vector(7 downto 0);
	--ingressi di sincronismo
			--è la variabile di sincronismo
			clock:in std_logic;
	--ingressi di controllo
			--è la posizione in cui inserire il valore
			posizione: in std_logic_vector(2 downto 0);
			--0 è per fare la semplice scrittura su registro altrimenti 1 per fare la modalità shifter
			mode:in std_logic;
			
			
	--uscite di dato Q
			Q:out std_logic_vector( 7 downto 0);
			
	--uscite di Stato
			stop:out std_logic
			);
end component;
    

   --Inputs
   signal start : std_logic := '0';
   signal reset_n : std_logic := '1';
   signal scan_in : std_logic := '0';
   signal reg_in : std_logic_vector(7 downto 0) := ("10101101");
   signal clock : std_logic := '0';
   signal posizione : std_logic_vector(2 downto 0) := ("011");
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
		mode<= '0';
		wait for 10*clock_period/2;
		start<='1' ;
		wait for 30 ns;
		--wait for 13*clock_period/2;
		-- ;
		wait until stop ='1';
		start<='0';
	--	wait until stop ='1';
		
		wait for 50		ns;
		scan_in<= '1';
		mode <= '1' ;
		start<='1' ;
		wait for 30 ns;
		start<='0';
		--10*clock_period/2, '0' after 13*clock_period/2;
--		--wait until stop = '1';
		
--		--start <= '0' after 70 ns;
--      wait for 100 ns;	
--
--      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

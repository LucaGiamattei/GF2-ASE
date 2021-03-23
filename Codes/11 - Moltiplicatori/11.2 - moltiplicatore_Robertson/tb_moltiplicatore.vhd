--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:57:09 03/05/2019
-- Design Name:   
-- Module Name:   /home/giorgio/Documenti/shiftregister/shiftregister/tb_moltiplicatore.vhd
-- Project Name:  shiftregister
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Moltiplicatore_NperNbit_Robertson
-- 
-- Dependencies:
------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY test IS
END test;
 
ARCHITECTURE behavior OF test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Moltiplicatore_NperNbit_Robertson
    PORT(
         op1 : IN  std_logic_vector(7 downto 0);
         op2 : IN  std_logic_vector(7 downto 0);
         start : IN  std_logic;
         clock : IN  std_logic;
         reset_n : IN  std_logic;
         stop : OUT  std_logic;
         risultato : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
     
   
   --Inputs
   signal op1 : std_logic_vector(7 downto 0) := (others => '0');
   signal op2 : std_logic_vector(7 downto 0) := (others => '0');
   signal start : std_logic := '0';
   signal clock : std_logic := '0';
   signal reset_n : std_logic := '1';

 	--Outputs
   signal stop : std_logic;
   signal risultato : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Moltiplicatore_NperNbit_Robertson PORT MAP (
          op1 => op1,
          op2 => op2,
          start => start,
          clock => clock,
          reset_n => reset_n,
          stop => stop,
          risultato => risultato
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
--		op1 <= x"FD";  -- meno3
--		op2 <= x"07";  --7 , ci aspettiamo -21 cio 01011 e tutti 1 prima
--		start <= '1';
--		
--		wait for clock_period*2;
--		start <= '0';
--		
--		wait until stop = '1';
--		
--		wait for 50 ns;
--		op1 <= x"FD";  -- meno3
--		op2 <= x"F9";  --meno7 , ci aspettiamo 21 cio 10101 e tutti 0 prima
--		start <= '1';
--		
--		wait for clock_period*2;
--		start <= '0';
--		
--		wait until stop = '1';
--		
--		wait for 50 ns;
--		op1 <= x"03";  -- 3
--		op2 <= x"F9";  --meno7 , ci aspettiamo -21
--		start <= '1';
--		
--		wait for clock_period*2;
--		start <= '0';
--		 
--		wait until stop = '1';
--esempio slide
--      op1 <= "10110011";  -- -77
--		op2 <= "11010101";  -- -48
--		start <= '1';
--		
--		wait for clock_period*2;
--		start <= '0';
--		
--		wait until stop = '1';
 --25*9
--		op1<="00011001";
--		op2<="00001001";
--		wait for 5 ns;
--		start<='1';
--		wait for clock_period*2;
--		start <='0';		
--
--		wait until stop = '1';
--		wait for 2 ns;
--		
--		assert risultato = std_logic_vector(signed(op1)*signed(op2)) report "Valore non corretto";
----		--25*-9
--		op1<="00011001"; 
--		op2<="11110111";
--		wait for 5 ns;
--		start<='1';
--		wait for clock_period*2;
--		start <='0';		
--
--		wait until stop = '1';
--		wait for 2 ns;
--
--		assert risultato = std_logic_vector(signed(op1)*signed(op2)) report "valore non corretto";
		
      -- -25*-9
		op1<="01100111"; 
		op2<="11110100";
		wait for 5 ns;
		start<='1';
		wait for clock_period*2;
		start <='0';		

		wait until stop = '1';
		wait for 2 ns;
		
		assert risultato = std_logic_vector(signed(op1)*signed(op2)) report "valore non corretto";
		op1<="11100110"; 
		op2<="01110100";
		wait for 5 ns;
		start<='1';
		wait for clock_period*2;
		start <='0';		

		wait until stop = '1';
		wait for 2 ns;
--       -- -25*9
--		op1<="11100111"; 
--		op2<="00001001";
--		wait for 5 ns;
--		start<='1';
--		wait for clock_period*2;
--		start <='0';		
--
--		wait until stop = '1';
--		wait for 2 ns;
--
--		assert risultato = std_logic_vector(signed(op1)*signed(op2)) report "valore non corretto";

 

      wait;
   end process;

END;

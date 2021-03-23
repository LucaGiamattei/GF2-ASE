----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:38:20 12/12/2016 
-- Design Name: 
-- Module Name:    shift_register - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


entity shift_register is
    generic(N : integer := 8; shift_dx_o_sx : std_logic := '1');
    Port ( reg_in : in  STD_LOGIC_VECTOR (N-1 downto 0); --valore da shiftare
           scan_in : in  STD_LOGIC;   
           scan_enable : in  STD_LOGIC; --selezione mux
           enable : in  STD_LOGIC; --
			  reset_n : in STD_LOGIC;
           clk : in  STD_LOGIC;
           scan_out : out  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (N-1 downto 0));
end shift_register;

architecture Behavioral of shift_register is

signal connections : std_logic_vector(N downto 0);

COMPONENT flipflopmux
	PORT(
		D : IN std_logic;
		scan_in : IN std_logic;
		scan_en : IN std_logic;
		en : IN std_logic;
		reset_n : in STD_LOGIC;
		clock : IN std_logic;          
		q : OUT std_logic
		);
END COMPONENT;

begin

shift_reg: for i in 0 to N-1 generate
 --shift a sx
	shift_reg_left: if shift_dx_o_sx = '1' generate
		ffd_with_mux: flipflopmux port map(
			d => reg_in(i),
			clock => clk,
			en => enable,
			reset_n => reset_n,
			scan_en => scan_enable,
			scan_in => connections(i),
			q => connections(i+1)
			);
	   connections(0) <= scan_in;
		scan_out <= connections(N);
		q <= connections(N downto 1);
	end generate;

--shift a dx

	shift_reg_right: if shift_dx_o_sx = '0' generate
		ffd_with_mux: flipflopmux port map(
			d => reg_in(i),
			clock => clk,
			en => enable,
			reset_n => reset_n,
			scan_en => scan_enable,
			scan_in => connections(i+1),
			q => connections(i)
			);
		connections(N) <= scan_in;
		scan_out <= connections(0);
		q <= connections(N-1 downto 0);
	end generate;
	
end generate;


end Behavioral;


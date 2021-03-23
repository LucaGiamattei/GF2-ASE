----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:10:21 11/22/2016 
-- Design Name: 
-- Module Name:    fulladder - Behavioral 
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


entity full_adder is
 Port ( 	a : in STD_LOGIC;
		   b : in STD_LOGIC;
		   riporto_in : in STD_LOGIC;
			riporto_out : out STD_LOGIC;
			somma : out STD_LOGIC);
 end full_adder;

 architecture Dataflow of full_adder is
 begin
		riporto_out <= (a and b) or (riporto_in and (a xor b)); --riporto in uscita
		somma <= a xor b xor riporto_in; --somma in uscita di due bit
 end Dataflow;

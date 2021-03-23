----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:15:57 02/26/2019 
-- Design Name: 
-- Module Name:    CSL - Structural 
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
----use UNISIM.VComponents.all;
--GEN: for I in 31 downto 0 generate
--Rules_mem1 : Ram1024_8
--        port map (
--            clka => clk,
--            dina => data_in_a,
--            addra => address_a,
--            wea => wr_en_a,
--            douta => outd(I));
--end generate GEN;
entity CSL is
	generic( nbit: integer := 3);
	port(
		ingresso_uno: in std_logic_vector(nbit-1 downto 0);
		ingresso_due: in std_logic_vector(nbit-1 downto 0);
		ingresso_tre: in std_logic_vector(nbit-1 downto 0);
		uscite_s: out std_logic_vector(nbit downto 0);
		uscite_c: out std_logic_vector(nbit downto 0)
	);
	
	
end CSL;

architecture Structural of CSL is
		component FULL_ADDER is
		port(
		x,y,c:IN std_logic;
		si,cp:OUT std_logic);
		end component;
	
		
begin
	
	uscite_s(nbit) <= '0';
	uscite_c(0) <= '0';
	
	
	GEN:for i in nbit-1 downto 0 generate
		FA: FULL_ADDER port map(x=> ingresso_uno(i),y=> ingresso_due(i),c=>ingresso_tre(i),si=>uscite_s(i) ,cp=>uscite_c(i+1));
		end generate GEN;
		
end Structural;


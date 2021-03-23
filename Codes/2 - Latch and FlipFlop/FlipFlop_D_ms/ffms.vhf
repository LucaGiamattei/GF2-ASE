--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : ffms.vhf
-- /___/   /\     Timestamp : 02/22/2019 12:26:57
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /home/luca/ISE_ws/FF_ms/ffms.vhf -w /home/luca/ISE_ws/FF_ms/ffms.sch
--Design Name: ffms
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity ffms is
   port ( Clk : in    std_logic; 
          D   : in    std_logic; 
          Q   : out   std_logic);
end ffms;

architecture BEHAVIORAL of ffms is
   attribute BOX_TYPE   : string ;
   signal XLXN_7 : std_logic;
   signal XLXN_8 : std_logic;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component LD
      generic( INIT : bit :=  '0');
      port ( D : in    std_logic; 
             G : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of LD : component is "BLACK_BOX";
   
begin
   XLXI_6 : INV
      port map (I=>Clk,
                O=>XLXN_7);
   
   XLXI_7 : LD
      port map (D=>D,
                G=>Clk,
                Q=>XLXN_8);
   
   XLXI_9 : LD
      port map (D=>XLXN_8,
                G=>XLXN_7,
                Q=>Q);
   
end BEHAVIORAL;



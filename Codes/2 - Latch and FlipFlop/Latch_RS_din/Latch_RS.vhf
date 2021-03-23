--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Latch_RS.vhf
-- /___/   /\     Timestamp : 02/19/2019 20:55:17
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /home/luca/ISE_ws/Latch_RS/Latch_RS.vhf -w /home/luca/ISE_ws/Latch_RS/Latch_RS.sch
--Design Name: Latch_RS
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

entity Latch_RS is
   port ( R  : in    std_logic; 
          S  : in    std_logic; 
          NQ : out   std_logic; 
          Q  : out   std_logic);
end Latch_RS;

architecture BEHAVIORAL of Latch_RS is
   attribute BOX_TYPE   : string ;
   signal XLXN_2  : std_logic;
   signal Q_DUMMY : std_logic;
   component NOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of NOR2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   Q <= Q_DUMMY;
   XLXI_8 : NOR2
      port map (I0=>XLXN_2,
                I1=>R,
                O=>Q_DUMMY);
   
   XLXI_9 : NOR2
      port map (I0=>S,
                I1=>Q_DUMMY,
                O=>XLXN_2);
   
   XLXI_10 : INV
      port map (I=>Q_DUMMY,
                O=>NQ);
   
end BEHAVIORAL;



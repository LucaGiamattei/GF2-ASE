--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : FF_T.vhf
-- /___/   /\     Timestamp : 02/21/2019 17:25:46
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl /home/luca/ISE_ws/FlipFlop_T/FF_T.vhf -w /home/luca/ISE_ws/FlipFlop_T/FF_T.sch
--Design Name: FF_T
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

entity FF_T is
   port ( Clk : in    std_logic; 
          Clr : in    std_logic; 
          Pre : in    std_logic; 
          T   : in    std_logic; 
          Q   : out   std_logic);
end FF_T;

architecture BEHAVIORAL of FF_T is
   attribute BOX_TYPE   : string ;
   signal XLXN_1  : std_logic;
   signal Q_DUMMY : std_logic;
   component FDCP
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             PRE : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCP : component is "BLACK_BOX";
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
begin
   Q <= Q_DUMMY;
   XLXI_6 : FDCP
      port map (C=>Clk,
                CLR=>Clr,
                D=>XLXN_1,
                PRE=>Pre,
                Q=>Q_DUMMY);
   
   XLXI_7 : XOR2
      port map (I0=>T,
                I1=>Q_DUMMY,
                O=>XLXN_1);
   
end BEHAVIORAL;



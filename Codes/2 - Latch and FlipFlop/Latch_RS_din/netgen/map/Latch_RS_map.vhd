--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Latch_RS_map.vhd
-- /___/   /\     Timestamp: Tue Feb 19 19:59:33 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf Latch_RS.pcf -rpw 100 -tpw 0 -ar Structure -tm Latch_RS -w -dir netgen/map -ofmt vhdl -sim Latch_RS_map.ncd Latch_RS_map.vhd 
-- Device	: 3s500efg320-4 (PRODUCTION 1.27 2013-10-13)
-- Input file	: Latch_RS_map.ncd
-- Output file	: /home/luca/ISE_ws/Latch_RS/netgen/map/Latch_RS_map.vhd
-- # of Entities	: 1
-- Design Name	: Latch_RS
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity Latch_RS is
  port (
    Q : out STD_LOGIC; 
    R : in STD_LOGIC := 'X'; 
    S : in STD_LOGIC := 'X' 
  );
end Latch_RS;

architecture Structure of Latch_RS is
  signal Q_OBUF_13 : STD_LOGIC; 
  signal R_IBUF_14 : STD_LOGIC; 
  signal S_IBUF_15 : STD_LOGIC; 
  signal Q_O : STD_LOGIC; 
  signal R_INBUF : STD_LOGIC; 
  signal S_INBUF : STD_LOGIC; 
  signal Q_OBUF_pack_1 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  Q_OBUF : X_OBUF
    port map (
      I => Q_O,
      O => Q
    );
  R_IBUF : X_BUF
    generic map(
      PATHPULSE => 798 ps
    )
    port map (
      I => R,
      O => R_INBUF
    );
  R_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 798 ps
    )
    port map (
      I => R_INBUF,
      O => R_IBUF_14
    );
  S_IBUF : X_BUF
    generic map(
      PATHPULSE => 798 ps
    )
    port map (
      I => S,
      O => S_INBUF
    );
  S_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 798 ps
    )
    port map (
      I => S_INBUF,
      O => S_IBUF_15
    );
  Q_OBUF_XUSED : X_BUF
    generic map(
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_OBUF_pack_1,
      O => Q_OBUF_13
    );
  XLXI_4 : X_LUT4
    generic map(
      INIT => X"BABA"
    )
    port map (
      ADR0 => S_IBUF_15,
      ADR1 => R_IBUF_14,
      ADR2 => Q_OBUF_13,
      ADR3 => VCC,
      O => Q_OBUF_pack_1
    );
  Q_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_OBUF_13,
      O => Q_O
    );
  NlwBlock_Latch_RS_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;


--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: FFD_edg_map.vhd
-- /___/   /\     Timestamp: Wed Feb 20 12:44:31 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf FFD_edg.pcf -rpw 100 -tpw 0 -ar Structure -tm FFD_edg -w -dir netgen/map -ofmt vhdl -sim FFD_edg_map.ncd FFD_edg_map.vhd 
-- Device	: 3s500efg320-4 (PRODUCTION 1.27 2013-10-13)
-- Input file	: FFD_edg_map.ncd
-- Output file	: /home/luca/ISE_ws/FFD_edg/netgen/map/FFD_edg_map.vhd
-- # of Entities	: 1
-- Design Name	: FFD_edg
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

entity FFD_edg is
  port (
    Clk : in STD_LOGIC := 'X'; 
    D : in STD_LOGIC := 'X'; 
    Q : out STD_LOGIC; 
    QN : out STD_LOGIC 
  );
end FFD_edg;

architecture Structure of FFD_edg is
  signal G5_o_or0000 : STD_LOGIC; 
  signal D_IBUF_32 : STD_LOGIC; 
  signal Clk_IBUF_34 : STD_LOGIC; 
  signal G1_o_or0000 : STD_LOGIC; 
  signal G3_o_or0000 : STD_LOGIC; 
  signal QN_O : STD_LOGIC; 
  signal D_INBUF : STD_LOGIC; 
  signal Q_O : STD_LOGIC; 
  signal Clk_INBUF : STD_LOGIC; 
  signal Q_OBUF_86 : STD_LOGIC; 
  signal G5_o_or0000_pack_5 : STD_LOGIC; 
  signal G3_o_or0000_pack_4 : STD_LOGIC; 
  signal G1_o_or0000_pack_5 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  QN_OBUF : X_OBUF
    port map (
      I => QN_O,
      O => QN
    );
  D_IBUF : X_BUF
    generic map(
      PATHPULSE => 798 ps
    )
    port map (
      I => D,
      O => D_INBUF
    );
  D_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 798 ps
    )
    port map (
      I => D_INBUF,
      O => D_IBUF_32
    );
  Q_OBUF : X_OBUF
    port map (
      I => Q_O,
      O => Q
    );
  Clk_IBUF : X_BUF
    generic map(
      PATHPULSE => 798 ps
    )
    port map (
      I => Clk,
      O => Clk_INBUF
    );
  Clk_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 798 ps
    )
    port map (
      I => Clk_INBUF,
      O => Clk_IBUF_34
    );
  Q_OBUF_YUSED : X_BUF
    generic map(
      PATHPULSE => 798 ps
    )
    port map (
      I => G5_o_or0000_pack_5,
      O => G5_o_or0000
    );
  G5_o_or00001 : X_LUT4
    generic map(
      INIT => X"AA20"
    )
    port map (
      ADR0 => G3_o_or0000,
      ADR1 => Clk_IBUF_34,
      ADR2 => G1_o_or0000,
      ADR3 => G5_o_or0000,
      O => G5_o_or0000_pack_5
    );
  G3_o_or0000_XUSED : X_BUF
    generic map(
      PATHPULSE => 798 ps
    )
    port map (
      I => G3_o_or0000_pack_4,
      O => G3_o_or0000
    );
  G3_o_or0000_YUSED : X_BUF
    generic map(
      PATHPULSE => 798 ps
    )
    port map (
      I => G1_o_or0000_pack_5,
      O => G1_o_or0000
    );
  G1_o_or00001 : X_LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      ADR0 => G1_o_or0000,
      ADR1 => G3_o_or0000,
      ADR2 => Clk_IBUF_34,
      ADR3 => D_IBUF_32,
      O => G1_o_or0000_pack_5
    );
  G6_o1 : X_LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      ADR0 => G5_o_or0000,
      ADR1 => G1_o_or0000,
      ADR2 => G3_o_or0000,
      ADR3 => Clk_IBUF_34,
      O => Q_OBUF_86
    );
  G3_o_or00001 : X_LUT4
    generic map(
      INIT => X"EAEA"
    )
    port map (
      ADR0 => Clk_IBUF_34,
      ADR1 => G3_o_or0000,
      ADR2 => G1_o_or0000,
      ADR3 => VCC,
      O => G3_o_or0000_pack_4
    );
  QN_OUTPUT_OFF_OMUX : X_INV
    generic map(
      PATHPULSE => 798 ps
    )
    port map (
      I => G5_o_or0000,
      O => QN_O
    );
  Q_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 798 ps
    )
    port map (
      I => Q_OBUF_86,
      O => Q_O
    );
  NlwBlock_FFD_edg_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;


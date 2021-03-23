--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: FF_T_timesim.vhd
-- /___/   /\     Timestamp: Thu Feb 21 17:40:36 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf FF_T.pcf -rpw 100 -tpw 0 -ar Structure -tm FF_T -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim FF_T.ncd FF_T_timesim.vhd 
-- Device	: 3s500efg320-4 (PRODUCTION 1.27 2013-10-13)
-- Input file	: FF_T.ncd
-- Output file	: /home/luca/ISE_ws/FlipFlop_T/netgen/par/FF_T_timesim.vhd
-- # of Entities	: 1
-- Design Name	: FF_T
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

entity FF_T is
  port (
    Clk : in STD_LOGIC := 'X'; 
    Clr : in STD_LOGIC := 'X'; 
    Q : out STD_LOGIC; 
    T : in STD_LOGIC := 'X'; 
    Pre : in STD_LOGIC := 'X' 
  );
end FF_T;

architecture Structure of FF_T is
  signal Q_OBUF_27 : STD_LOGIC; 
  signal T_IBUF_28 : STD_LOGIC; 
  signal Clk_BUFGP : STD_LOGIC; 
  signal Pre_INBUF : STD_LOGIC; 
  signal Q_O : STD_LOGIC; 
  signal T_INBUF : STD_LOGIC; 
  signal Clk_INBUF : STD_LOGIC; 
  signal Clr_INBUF : STD_LOGIC; 
  signal Clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal Clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal Q_OBUF_DYMUX_88 : STD_LOGIC; 
  signal XLXN_1 : STD_LOGIC; 
  signal Q_OBUF_CLKINV_76 : STD_LOGIC; 
  signal Q_OBUF_FFY_SET : STD_LOGIC; 
  signal Q_OBUF_FFY_RSTAND_95 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  Pre_IBUF : X_BUF
    generic map(
      LOC => "PAD232",
      PATHPULSE => 638 ps
    )
    port map (
      I => Pre,
      O => Pre_INBUF
    );
  Q_OBUF : X_OBUF
    generic map(
      LOC => "PAD6"
    )
    port map (
      I => Q_O,
      O => Q
    );
  T_IBUF : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 638 ps
    )
    port map (
      I => T,
      O => T_INBUF
    );
  T_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD230",
      PATHPULSE => 638 ps
    )
    port map (
      I => T_INBUF,
      O => T_IBUF_28
    );
  Clk_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IPAD28",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk,
      O => Clk_INBUF
    );
  Clr_IBUF : X_BUF
    generic map(
      LOC => "PAD229",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clr,
      O => Clr_INBUF
    );
  Clk_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y10"
    )
    port map (
      I0 => Clk_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => Clk_BUFGP_BUFG_S_INVNOT,
      O => Clk_BUFGP
    );
  Clk_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => Clk_BUFGP_BUFG_S_INVNOT
    );
  Clk_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_INBUF,
      O => Clk_BUFGP_BUFG_I0_INV
    );
  Q_OBUF_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X5Y88",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXN_1,
      O => Q_OBUF_DYMUX_88
    );
  Q_OBUF_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X5Y88",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => Q_OBUF_CLKINV_76
    );
  XLXI_7 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X5Y88"
    )
    port map (
      ADR0 => VCC,
      ADR1 => T_IBUF_28,
      ADR2 => VCC,
      ADR3 => Q_OBUF_27,
      O => XLXN_1
    );
  XLXI_6 : X_FF
    generic map(
      LOC => "SLICE_X5Y88",
      INIT => '0'
    )
    port map (
      I => Q_OBUF_DYMUX_88,
      CE => VCC,
      CLK => Q_OBUF_CLKINV_76,
      SET => Q_OBUF_FFY_SET,
      RST => Q_OBUF_FFY_RSTAND_95,
      O => Q_OBUF_27
    );
  Q_OBUF_FFY_SETOR : X_BUF
    generic map(
      LOC => "SLICE_X5Y88",
      PATHPULSE => 638 ps
    )
    port map (
      I => Pre_INBUF,
      O => Q_OBUF_FFY_SET
    );
  Q_OBUF_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X5Y88",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clr_INBUF,
      O => Q_OBUF_FFY_RSTAND_95
    );
  Q_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD6",
      PATHPULSE => 638 ps
    )
    port map (
      I => Q_OBUF_27,
      O => Q_O
    );
  NlwBlock_FF_T_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_FF_T_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;


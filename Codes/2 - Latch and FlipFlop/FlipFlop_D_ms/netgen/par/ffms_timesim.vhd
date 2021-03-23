--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: ffms_timesim.vhd
-- /___/   /\     Timestamp: Fri Feb 22 12:41:20 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf ffms.pcf -rpw 100 -tpw 0 -ar Structure -tm ffms -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim ffms.ncd ffms_timesim.vhd 
-- Device	: 3s500efg320-4 (PRODUCTION 1.27 2013-10-13)
-- Input file	: ffms.ncd
-- Output file	: /home/luca/ISE_ws/FF_ms/netgen/par/ffms_timesim.vhd
-- # of Entities	: 1
-- Design Name	: ffms
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

entity ffms is
  port (
    Clk : in STD_LOGIC := 'X'; 
    D : in STD_LOGIC := 'X'; 
    Q : out STD_LOGIC 
  );
end ffms;

architecture Structure of ffms is
  signal Q_OBUF_20 : STD_LOGIC; 
  signal Clk_BUFGP : STD_LOGIC; 
  signal XLXN_8 : STD_LOGIC; 
  signal D_INBUF : STD_LOGIC; 
  signal Q_O : STD_LOGIC; 
  signal Clk_INBUF : STD_LOGIC; 
  signal Clk_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal Clk_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal XLXN_8_DYMUX_55 : STD_LOGIC; 
  signal XLXN_8_CLKINVNOT : STD_LOGIC; 
  signal Q_OBUF_DYMUX_64 : STD_LOGIC; 
  signal Q_OBUF_CLKINV_62 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal NlwInverterSignal_XLXI_7_CLK : STD_LOGIC; 
  signal NlwInverterSignal_XLXI_9_CLK : STD_LOGIC; 
begin
  D_IBUF : X_BUF
    generic map(
      LOC => "PAD232",
      PATHPULSE => 638 ps
    )
    port map (
      I => D,
      O => D_INBUF
    );
  Q_OBUF : X_OBUF
    generic map(
      LOC => "PAD12"
    )
    port map (
      I => Q_O,
      O => Q
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
  XLXN_8_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y90",
      PATHPULSE => 638 ps
    )
    port map (
      I => D_INBUF,
      O => XLXN_8_DYMUX_55
    );
  XLXN_8_CLKINV : X_INV
    generic map(
      LOC => "SLICE_X13Y90",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => XLXN_8_CLKINVNOT
    );
  Q_OBUF_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X13Y91",
      PATHPULSE => 638 ps
    )
    port map (
      I => XLXN_8,
      O => Q_OBUF_DYMUX_64
    );
  Q_OBUF_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X13Y91",
      PATHPULSE => 638 ps
    )
    port map (
      I => Clk_BUFGP,
      O => Q_OBUF_CLKINV_62
    );
  XLXI_7 : X_LATCHE
    generic map(
      LOC => "SLICE_X13Y90",
      INIT => '0'
    )
    port map (
      I => XLXN_8_DYMUX_55,
      GE => VCC,
      CLK => NlwInverterSignal_XLXI_7_CLK,
      SET => GND,
      RST => GND,
      O => XLXN_8
    );
  XLXI_9 : X_LATCHE
    generic map(
      LOC => "SLICE_X13Y91",
      INIT => '0'
    )
    port map (
      I => Q_OBUF_DYMUX_64,
      GE => VCC,
      CLK => NlwInverterSignal_XLXI_9_CLK,
      SET => GND,
      RST => GND,
      O => Q_OBUF_20
    );
  Q_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD12",
      PATHPULSE => 638 ps
    )
    port map (
      I => Q_OBUF_20,
      O => Q_O
    );
  NlwBlock_ffms_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_ffms_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwInverterBlock_XLXI_7_CLK : X_INV
    port map (
      I => XLXN_8_CLKINVNOT,
      O => NlwInverterSignal_XLXI_7_CLK
    );
  NlwInverterBlock_XLXI_9_CLK : X_INV
    port map (
      I => Q_OBUF_CLKINV_62,
      O => NlwInverterSignal_XLXI_9_CLK
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;


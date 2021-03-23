--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: ScanChain_map.vhd
-- /___/   /\     Timestamp: Fri Mar 15 11:17:18 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf ScanChain.pcf -rpw 100 -tpw 0 -ar Structure -tm ScanChain -w -dir netgen/map -ofmt vhdl -sim ScanChain_map.ncd ScanChain_map.vhd 
-- Device	: 3s100etq144-4 (PRODUCTION 1.27 2013-10-13)
-- Input file	: ScanChain_map.ncd
-- Output file	: /home/giorgio/Documenti/ES_SCAN_CHAIN/netgen/map/ScanChain_map.vhd
-- # of Entities	: 1
-- Design Name	: ScanChain
-- Xilinx	: /home/giorgio/14.7/ISE_DS/ISE/
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

entity ScanChain is
  port (
    scan_in : in STD_LOGIC := 'X'; 
    reset_n : in STD_LOGIC := 'X'; 
    stop : out STD_LOGIC; 
    start : in STD_LOGIC := 'X'; 
    mode : in STD_LOGIC := 'X'; 
    clock : in STD_LOGIC := 'X'; 
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    posizione : in STD_LOGIC_VECTOR ( 2 downto 0 ); 
    reg_in : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end ScanChain;

architecture Structure of ScanChain is
  signal contatore_temp_out1_272 : STD_LOGIC; 
  signal cu_current_FSM_FFd3_273 : STD_LOGIC; 
  signal cu_current_FSM_FFd2_274 : STD_LOGIC; 
  signal control_mux_temp_0 : STD_LOGIC; 
  signal mode_IBUF_279 : STD_LOGIC; 
  signal reset_n_IBUF_280 : STD_LOGIC; 
  signal scan_in_IBUF_282 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_285 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_286 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_287 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_288 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_289 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_290 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_291 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_292 : STD_LOGIC; 
  signal reg_in_0_IBUF_293 : STD_LOGIC; 
  signal reg_in_1_IBUF_294 : STD_LOGIC; 
  signal reg_in_2_IBUF_295 : STD_LOGIC; 
  signal start_IBUF_296 : STD_LOGIC; 
  signal reg_in_3_IBUF_298 : STD_LOGIC; 
  signal reg_in_4_IBUF_299 : STD_LOGIC; 
  signal reg_in_5_IBUF_300 : STD_LOGIC; 
  signal reg_in_6_IBUF_301 : STD_LOGIC; 
  signal reg_in_7_IBUF_302 : STD_LOGIC; 
  signal clock_BUFGP : STD_LOGIC; 
  signal cu_current_FSM_FFd1_305 : STD_LOGIC; 
  signal cu_current_FSM_FFd3_In_SW1_O : STD_LOGIC; 
  signal contatore_temp_out_307 : STD_LOGIC; 
  signal N22_0 : STD_LOGIC; 
  signal N9_0 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N20_0 : STD_LOGIC; 
  signal control_enable_reg_temp_0 : STD_LOGIC; 
  signal control_enable_conter_temp : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux_SW0_O : STD_LOGIC; 
  signal contatore_reset_n_inv_0 : STD_LOGIC; 
  signal contatore_count_mux0002_2_1_SW0_O : STD_LOGIC; 
  signal enable_temp : STD_LOGIC; 
  signal control_mux_temp : STD_LOGIC; 
  signal contatore_temp_out_not0001 : STD_LOGIC; 
  signal stop_O : STD_LOGIC; 
  signal mode_INBUF : STD_LOGIC; 
  signal reset_n_INBUF : STD_LOGIC; 
  signal posizione_0_INBUF : STD_LOGIC; 
  signal scan_in_INBUF : STD_LOGIC; 
  signal posizione_1_INBUF : STD_LOGIC; 
  signal posizione_2_INBUF : STD_LOGIC; 
  signal Q_0_O : STD_LOGIC; 
  signal Q_1_O : STD_LOGIC; 
  signal Q_2_O : STD_LOGIC; 
  signal Q_3_O : STD_LOGIC; 
  signal Q_4_O : STD_LOGIC; 
  signal Q_5_O : STD_LOGIC; 
  signal Q_6_O : STD_LOGIC; 
  signal Q_7_O : STD_LOGIC; 
  signal reg_in_0_INBUF : STD_LOGIC; 
  signal reg_in_1_INBUF : STD_LOGIC; 
  signal reg_in_2_INBUF : STD_LOGIC; 
  signal start_INBUF : STD_LOGIC; 
  signal clock_INBUF : STD_LOGIC; 
  signal reg_in_3_INBUF : STD_LOGIC; 
  signal reg_in_4_INBUF : STD_LOGIC; 
  signal reg_in_5_INBUF : STD_LOGIC; 
  signal reg_in_6_INBUF : STD_LOGIC; 
  signal reg_in_7_INBUF : STD_LOGIC; 
  signal clock_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clock_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal cu_current_FSM_FFd3_DXMUX_550 : STD_LOGIC; 
  signal cu_current_FSM_FFd3_In_547 : STD_LOGIC; 
  signal cu_current_FSM_FFd3_In_SW1_O_pack_2 : STD_LOGIC; 
  signal cu_current_FSM_FFd3_CLKINV_533 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal contatore_Msub_count_sub0000_cy_2_pack_1 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal contatore_count_sub0000_2_pack_1 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_DXMUX_635 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_out_temp : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux_SW0_O_pack_1 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_CLKINV_617 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_CEINV_616 : STD_LOGIC; 
  signal contatore_temp_out_DXMUX_673 : STD_LOGIC; 
  signal contatore_count_cmp_eq0001 : STD_LOGIC; 
  signal N11_pack_1 : STD_LOGIC; 
  signal contatore_temp_out_CLKINV_657 : STD_LOGIC; 
  signal contatore_temp_out_CEINV_656 : STD_LOGIC; 
  signal contatore_count_0_DXMUX_711 : STD_LOGIC; 
  signal contatore_count_mux0002_2_1_SW0_O_pack_2 : STD_LOGIC; 
  signal contatore_count_0_CLKINV_695 : STD_LOGIC; 
  signal contatore_count_0_CEINV_694 : STD_LOGIC; 
  signal contatore_count_1_DYMUX_737 : STD_LOGIC; 
  signal contatore_count_1_CLKINV_728 : STD_LOGIC; 
  signal contatore_count_1_CEINV_727 : STD_LOGIC; 
  signal contatore_temp_out1_DXMUX_783 : STD_LOGIC; 
  signal contatore_count_cmp_eq0000 : STD_LOGIC; 
  signal contatore_temp_out1_DYMUX_767 : STD_LOGIC; 
  signal contatore_temp_out1_SRINV_759 : STD_LOGIC; 
  signal contatore_temp_out1_CLKINV_758 : STD_LOGIC; 
  signal contatore_temp_out1_CEINV_757 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_DXMUX_829 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_out_temp : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_DYMUX_813 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_out_temp : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_SRINVNOT : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_CLKINV_803 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_CEINV_802 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_DXMUX_875 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_out_temp : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_DYMUX_859 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_out_temp : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_SRINVNOT : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_CLKINV_849 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_CEINV_848 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_DXMUX_921 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_out_temp : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_DYMUX_905 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_out_temp : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_SRINVNOT : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_CLKINV_895 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_CEINV_894 : STD_LOGIC; 
  signal cu_current_FSM_FFd2_DXMUX_967 : STD_LOGIC; 
  signal stop_OBUF_964 : STD_LOGIC; 
  signal cu_current_FSM_FFd2_DYMUX_951 : STD_LOGIC; 
  signal cu_current_FSM_FFd1_In : STD_LOGIC; 
  signal cu_current_FSM_FFd2_SRINVNOT : STD_LOGIC; 
  signal cu_current_FSM_FFd2_CLKINV_942 : STD_LOGIC; 
  signal countMaxReg_temp_1_DXMUX_994 : STD_LOGIC; 
  signal countMaxReg_temp_1_DYMUX_985 : STD_LOGIC; 
  signal countMaxReg_temp_1_SRINVNOT : STD_LOGIC; 
  signal countMaxReg_temp_1_CLKINV_982 : STD_LOGIC; 
  signal countMaxReg_temp_1_CEINV_981 : STD_LOGIC; 
  signal countMaxReg_temp_2_DYMUX_1011 : STD_LOGIC; 
  signal countMaxReg_temp_2_CLKINV_1008 : STD_LOGIC; 
  signal countMaxReg_temp_2_CEINV_1007 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_DXMUX_1049 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_out_temp : STD_LOGIC; 
  signal control_enable_conter_temp_pack_1 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_CLKINV_1031 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_CEINV_1030 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal contatore_reset_n_inv_1090 : STD_LOGIC; 
  signal enable_temp_pack_1 : STD_LOGIC; 
  signal control_enable_reg_temp : STD_LOGIC; 
  signal cu_current_FSM_FFd3_FFX_RSTAND_555 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_FFX_RSTAND_641 : STD_LOGIC; 
  signal contatore_temp_out_FFX_RSTAND_679 : STD_LOGIC; 
  signal contatore_count_0_FFX_RSTAND_717 : STD_LOGIC; 
  signal contatore_count_1_FFY_RSTAND_743 : STD_LOGIC; 
  signal countMaxReg_temp_2_FFY_RSTAND_1017 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_FFX_RSTAND_1055 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal contatore_Msub_count_sub0000_cy : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal contatore_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal countMaxReg_temp : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal contatore_count_sub0000 : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal contatore_count_mux0002 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  control_mux_temp_XUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => control_mux_temp,
      O => control_mux_temp_0
    );
  contatore_temp_out_not00011 : X_LUT4
    generic map(
      INIT => X"1C00"
    )
    port map (
      ADR0 => contatore_temp_out1_272,
      ADR1 => cu_current_FSM_FFd2_274,
      ADR2 => cu_current_FSM_FFd3_273,
      ADR3 => contatore_Msub_count_sub0000_cy(2),
      O => contatore_temp_out_not0001
    );
  stop_OBUF : X_OBUF
    port map (
      I => stop_O,
      O => stop
    );
  mode_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => mode,
      O => mode_INBUF
    );
  mode_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => mode_INBUF,
      O => mode_IBUF_279
    );
  reset_n_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n,
      O => reset_n_INBUF
    );
  reset_n_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_INBUF,
      O => reset_n_IBUF_280
    );
  posizione_0_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => posizione(0),
      O => posizione_0_INBUF
    );
  scan_in_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => scan_in,
      O => scan_in_INBUF
    );
  scan_in_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => scan_in_INBUF,
      O => scan_in_IBUF_282
    );
  posizione_1_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => posizione(1),
      O => posizione_1_INBUF
    );
  posizione_2_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => posizione(2),
      O => posizione_2_INBUF
    );
  Q_0_OBUF : X_OBUF
    port map (
      I => Q_0_O,
      O => Q(0)
    );
  Q_1_OBUF : X_OBUF
    port map (
      I => Q_1_O,
      O => Q(1)
    );
  Q_2_OBUF : X_OBUF
    port map (
      I => Q_2_O,
      O => Q(2)
    );
  Q_3_OBUF : X_OBUF
    port map (
      I => Q_3_O,
      O => Q(3)
    );
  Q_4_OBUF : X_OBUF
    port map (
      I => Q_4_O,
      O => Q(4)
    );
  Q_5_OBUF : X_OBUF
    port map (
      I => Q_5_O,
      O => Q(5)
    );
  Q_6_OBUF : X_OBUF
    port map (
      I => Q_6_O,
      O => Q(6)
    );
  Q_7_OBUF : X_OBUF
    port map (
      I => Q_7_O,
      O => Q(7)
    );
  reg_in_0_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in(0),
      O => reg_in_0_INBUF
    );
  reg_in_0_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in_0_INBUF,
      O => reg_in_0_IBUF_293
    );
  reg_in_1_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in(1),
      O => reg_in_1_INBUF
    );
  reg_in_1_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in_1_INBUF,
      O => reg_in_1_IBUF_294
    );
  reg_in_2_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in(2),
      O => reg_in_2_INBUF
    );
  reg_in_2_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in_2_INBUF,
      O => reg_in_2_IBUF_295
    );
  start_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => start,
      O => start_INBUF
    );
  start_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => start_INBUF,
      O => start_IBUF_296
    );
  clock_BUFGP_IBUFG : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clock,
      O => clock_INBUF
    );
  reg_in_3_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in(3),
      O => reg_in_3_INBUF
    );
  reg_in_3_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in_3_INBUF,
      O => reg_in_3_IBUF_298
    );
  reg_in_4_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in(4),
      O => reg_in_4_INBUF
    );
  reg_in_4_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in_4_INBUF,
      O => reg_in_4_IBUF_299
    );
  reg_in_5_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in(5),
      O => reg_in_5_INBUF
    );
  reg_in_5_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in_5_INBUF,
      O => reg_in_5_IBUF_300
    );
  reg_in_6_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in(6),
      O => reg_in_6_INBUF
    );
  reg_in_6_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in_6_INBUF,
      O => reg_in_6_IBUF_301
    );
  reg_in_7_IBUF : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in(7),
      O => reg_in_7_INBUF
    );
  reg_in_7_IFF_IMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in_7_INBUF,
      O => reg_in_7_IBUF_302
    );
  clock_BUFGP_BUFG : X_BUFGMUX
    port map (
      I0 => clock_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => clock_BUFGP_BUFG_S_INVNOT,
      O => clock_BUFGP
    );
  clock_BUFGP_BUFG_SINV : X_INV
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => clock_BUFGP_BUFG_S_INVNOT
    );
  clock_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_INBUF,
      O => clock_BUFGP_BUFG_I0_INV
    );
  cu_current_FSM_FFd3_DXMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_current_FSM_FFd3_In_547,
      O => cu_current_FSM_FFd3_DXMUX_550
    );
  cu_current_FSM_FFd3_YUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_current_FSM_FFd3_In_SW1_O_pack_2,
      O => cu_current_FSM_FFd3_In_SW1_O
    );
  cu_current_FSM_FFd3_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => cu_current_FSM_FFd3_CLKINV_533
    );
  cu_current_FSM_FFd3_In_SW1 : X_LUT4
    generic map(
      INIT => X"DDD9"
    )
    port map (
      ADR0 => cu_current_FSM_FFd2_274,
      ADR1 => cu_current_FSM_FFd3_273,
      ADR2 => contatore_temp_out_307,
      ADR3 => contatore_temp_out1_272,
      O => cu_current_FSM_FFd3_In_SW1_O_pack_2
    );
  N22_XUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => N22,
      O => N22_0
    );
  N22_YUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_Msub_count_sub0000_cy_2_pack_1,
      O => contatore_Msub_count_sub0000_cy(2)
    );
  contatore_Msub_count_sub0000_cy_2_11 : X_LUT4
    generic map(
      INIT => X"FEFE"
    )
    port map (
      ADR0 => countMaxReg_temp(2),
      ADR1 => countMaxReg_temp(0),
      ADR2 => countMaxReg_temp(1),
      ADR3 => VCC,
      O => contatore_Msub_count_sub0000_cy_2_pack_1
    );
  N20_XUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => N20,
      O => N20_0
    );
  N20_YUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_count_sub0000_2_pack_1,
      O => contatore_count_sub0000(2)
    );
  contatore_Msub_count_sub0000_xor_2_11 : X_LUT4
    generic map(
      INIT => X"A9A9"
    )
    port map (
      ADR0 => countMaxReg_temp(2),
      ADR1 => countMaxReg_temp(0),
      ADR2 => countMaxReg_temp(1),
      ADR3 => VCC,
      O => contatore_count_sub0000_2_pack_1
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_DXMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_out_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_DXMUX_635
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_YUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux_SW0_O_pack_1,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux_SW0_O
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_CLKINV_617
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_CEINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => control_enable_reg_temp_0,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_CEINV_616
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux_SW0 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => scan_in_IBUF_282,
      ADR1 => sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_285,
      ADR2 => control_mux_temp_0,
      ADR3 => VCC,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux_SW0_O_pack_1
    );
  contatore_temp_out_DXMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_count_cmp_eq0001,
      O => contatore_temp_out_DXMUX_673
    );
  contatore_temp_out_YUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => N11_pack_1,
      O => N11
    );
  contatore_temp_out_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => contatore_temp_out_CLKINV_657
    );
  contatore_temp_out_CEINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_temp_out_not0001,
      O => contatore_temp_out_CEINV_656
    );
  contatore_count_0_DXMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_count_mux0002(2),
      O => contatore_count_0_DXMUX_711
    );
  contatore_count_0_YUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_count_mux0002_2_1_SW0_O_pack_2,
      O => contatore_count_mux0002_2_1_SW0_O
    );
  contatore_count_0_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => contatore_count_0_CLKINV_695
    );
  contatore_count_0_CEINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => control_enable_conter_temp,
      O => contatore_count_0_CEINV_694
    );
  contatore_count_1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_count_mux0002(1),
      O => contatore_count_1_DYMUX_737
    );
  contatore_count_1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => contatore_count_1_CLKINV_728
    );
  contatore_count_1_CEINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => control_enable_conter_temp,
      O => contatore_count_1_CEINV_727
    );
  contatore_temp_out1_DXMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_count_cmp_eq0000,
      O => contatore_temp_out1_DXMUX_783
    );
  contatore_temp_out1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_count_mux0002(0),
      O => contatore_temp_out1_DYMUX_767
    );
  contatore_temp_out1_SRINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_reset_n_inv_0,
      O => contatore_temp_out1_SRINV_759
    );
  contatore_temp_out1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => contatore_temp_out1_CLKINV_758
    );
  contatore_temp_out1_CEINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => control_enable_conter_temp,
      O => contatore_temp_out1_CEINV_757
    );
  contatore_count_mux0002_0_Q : X_LUT4
    generic map(
      INIT => X"CCC8"
    )
    port map (
      ADR0 => countMaxReg_temp(1),
      ADR1 => N20_0,
      ADR2 => countMaxReg_temp(0),
      ADR3 => countMaxReg_temp(2),
      O => contatore_count_mux0002(0)
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_DXMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_out_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_DXMUX_829
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_DYMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_out_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_DYMUX_813
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_SRINV : X_INV
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_280,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_SRINVNOT
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_CLKINV_803
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_CEINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => control_enable_reg_temp_0,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_CEINV_802
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => reg_in_0_IBUF_293,
      ADR1 => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_286,
      ADR2 => control_enable_conter_temp,
      ADR3 => VCC,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_out_temp
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_DXMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_out_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_DXMUX_875
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_DYMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_out_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_DYMUX_859
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_SRINV : X_INV
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_280,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_SRINVNOT
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_CLKINV_849
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_CEINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => control_enable_reg_temp_0,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_CEINV_848
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => reg_in_2_IBUF_295,
      ADR1 => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_288,
      ADR2 => control_enable_conter_temp,
      ADR3 => VCC,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_out_temp
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_DXMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_out_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_DXMUX_921
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_DYMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_out_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_DYMUX_905
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_SRINV : X_INV
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_280,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_SRINVNOT
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_CLKINV_895
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_CEINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => control_enable_reg_temp_0,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_CEINV_894
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => reg_in_4_IBUF_299,
      ADR1 => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_290,
      ADR2 => control_enable_conter_temp,
      ADR3 => VCC,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_out_temp
    );
  cu_current_FSM_FFd2_DXMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_current_FSM_FFd1_305,
      O => cu_current_FSM_FFd2_DXMUX_967
    );
  cu_current_FSM_FFd2_DYMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_current_FSM_FFd1_In,
      O => cu_current_FSM_FFd2_DYMUX_951
    );
  cu_current_FSM_FFd2_SRINV : X_INV
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_280,
      O => cu_current_FSM_FFd2_SRINVNOT
    );
  cu_current_FSM_FFd2_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => cu_current_FSM_FFd2_CLKINV_942
    );
  cu_current_FSM_FFd1_In2 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => start_IBUF_296,
      ADR1 => cu_current_FSM_FFd1_305,
      ADR2 => cu_current_FSM_FFd3_273,
      ADR3 => cu_current_FSM_FFd2_274,
      O => cu_current_FSM_FFd1_In
    );
  countMaxReg_temp_1_DXMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => posizione_1_INBUF,
      O => countMaxReg_temp_1_DXMUX_994
    );
  countMaxReg_temp_1_DYMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => posizione_0_INBUF,
      O => countMaxReg_temp_1_DYMUX_985
    );
  countMaxReg_temp_1_SRINV : X_INV
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_280,
      O => countMaxReg_temp_1_SRINVNOT
    );
  countMaxReg_temp_1_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => countMaxReg_temp_1_CLKINV_982
    );
  countMaxReg_temp_1_CEINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => enable_temp,
      O => countMaxReg_temp_1_CEINV_981
    );
  countMaxReg_temp_2_DYMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => posizione_2_INBUF,
      O => countMaxReg_temp_2_DYMUX_1011
    );
  countMaxReg_temp_2_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => countMaxReg_temp_2_CLKINV_1008
    );
  countMaxReg_temp_2_CEINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => enable_temp,
      O => countMaxReg_temp_2_CEINV_1007
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_DXMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_out_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_DXMUX_1049
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_YUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => control_enable_conter_temp_pack_1,
      O => control_enable_conter_temp
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_CLKINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_CLKINV_1031
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_CEINV : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => control_enable_reg_temp_0,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_CEINV_1030
    );
  cu_control_mode1 : X_LUT4
    generic map(
      INIT => X"1C1C"
    )
    port map (
      ADR0 => contatore_temp_out1_272,
      ADR1 => cu_current_FSM_FFd2_274,
      ADR2 => cu_current_FSM_FFd3_273,
      ADR3 => VCC,
      O => control_enable_conter_temp_pack_1
    );
  N9_XUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => N9,
      O => N9_0
    );
  contatore_count_mux0002_0_SW0 : X_LUT4
    generic map(
      INIT => X"7777"
    )
    port map (
      ADR0 => contatore_count(1),
      ADR1 => contatore_count(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => N9
    );
  contatore_reset_n_inv_XUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_reset_n_inv_1090,
      O => contatore_reset_n_inv_0
    );
  contatore_reset_n_inv_YUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => enable_temp_pack_1,
      O => enable_temp
    );
  contatore_reset_n_inv_SW0 : X_LUT4
    generic map(
      INIT => X"8888"
    )
    port map (
      ADR0 => cu_current_FSM_FFd1_305,
      ADR1 => mode_IBUF_279,
      ADR2 => VCC,
      ADR3 => VCC,
      O => enable_temp_pack_1
    );
  control_enable_reg_temp_YUSED : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => control_enable_reg_temp,
      O => control_enable_reg_temp_0
    );
  cu_control_enable_reg1 : X_LUT4
    generic map(
      INIT => X"AEAE"
    )
    port map (
      ADR0 => cu_current_FSM_FFd2_274,
      ADR1 => cu_current_FSM_FFd3_273,
      ADR2 => contatore_temp_out1_272,
      ADR3 => VCC,
      O => control_enable_reg_temp
    );
  control_mux_temp1 : X_LUT4
    generic map(
      INIT => X"0404"
    )
    port map (
      ADR0 => contatore_temp_out1_272,
      ADR1 => cu_current_FSM_FFd3_273,
      ADR2 => cu_current_FSM_FFd2_274,
      ADR3 => VCC,
      O => control_mux_temp
    );
  contatore_temp_out1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => contatore_temp_out1_DXMUX_783,
      CE => contatore_temp_out1_CEINV_757,
      CLK => contatore_temp_out1_CLKINV_758,
      SET => GND,
      RST => contatore_temp_out1_SRINV_759,
      O => contatore_temp_out1_272
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_DYMUX_813,
      CE => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_CEINV_802,
      CLK => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_CLKINV_803,
      SET => GND,
      RST => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_SRINVNOT,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_285
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => reg_in_1_IBUF_294,
      ADR1 => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_287,
      ADR2 => control_enable_conter_temp,
      ADR3 => VCC,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_out_temp
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_DXMUX_829,
      CE => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_CEINV_802,
      CLK => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_CLKINV_803,
      SET => GND,
      RST => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_SRINVNOT,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_286
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_DYMUX_859,
      CE => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_CEINV_848,
      CLK => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_CLKINV_849,
      SET => GND,
      RST => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_SRINVNOT,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_287
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => reg_in_3_IBUF_298,
      ADR1 => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_289,
      ADR2 => control_enable_conter_temp,
      ADR3 => VCC,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_out_temp
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_DXMUX_875,
      CE => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_CEINV_848,
      CLK => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_CLKINV_849,
      SET => GND,
      RST => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_SRINVNOT,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_288
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_DYMUX_905,
      CE => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_CEINV_894,
      CLK => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_CLKINV_895,
      SET => GND,
      RST => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_SRINVNOT,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_289
    );
  cu_current_FSM_FFd3_In : X_LUT4
    generic map(
      INIT => X"2F2F"
    )
    port map (
      ADR0 => cu_current_FSM_FFd1_305,
      ADR1 => mode_IBUF_279,
      ADR2 => cu_current_FSM_FFd3_In_SW1_O,
      ADR3 => VCC,
      O => cu_current_FSM_FFd3_In_547
    );
  cu_current_FSM_FFd3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => cu_current_FSM_FFd3_DXMUX_550,
      CE => VCC,
      CLK => cu_current_FSM_FFd3_CLKINV_533,
      SET => GND,
      RST => cu_current_FSM_FFd3_FFX_RSTAND_555,
      O => cu_current_FSM_FFd3_273
    );
  cu_current_FSM_FFd3_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_280,
      O => cu_current_FSM_FFd3_FFX_RSTAND_555
    );
  contatore_count_cmp_eq00014_SW4_SW0 : X_LUT4
    generic map(
      INIT => X"9F9F"
    )
    port map (
      ADR0 => contatore_count(0),
      ADR1 => contatore_count(1),
      ADR2 => contatore_Msub_count_sub0000_cy(2),
      ADR3 => VCC,
      O => N22
    );
  contatore_count_mux0002_0_SW1 : X_LUT4
    generic map(
      INIT => X"9198"
    )
    port map (
      ADR0 => contatore_count(2),
      ADR1 => N9_0,
      ADR2 => N11,
      ADR3 => contatore_count_sub0000(2),
      O => N20
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux : X_LUT4
    generic map(
      INIT => X"E2E2"
    )
    port map (
      ADR0 => reg_in_7_IBUF_302,
      ADR1 => control_enable_conter_temp,
      ADR2 => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux_SW0_O,
      ADR3 => VCC,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_out_temp
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_DXMUX_635,
      CE => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_CEINV_616,
      CLK => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_CLKINV_617,
      SET => GND,
      RST => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_FFX_RSTAND_641,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_292
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_280,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_FFX_RSTAND_641
    );
  contatore_count_cmp_eq00014_SW0 : X_LUT4
    generic map(
      INIT => X"BDDB"
    )
    port map (
      ADR0 => contatore_count(0),
      ADR1 => countMaxReg_temp(0),
      ADR2 => contatore_count(1),
      ADR3 => countMaxReg_temp(1),
      O => N11_pack_1
    );
  contatore_count_cmp_eq00014 : X_LUT4
    generic map(
      INIT => X"4004"
    )
    port map (
      ADR0 => N11,
      ADR1 => contatore_Msub_count_sub0000_cy(2),
      ADR2 => contatore_count_sub0000(2),
      ADR3 => contatore_count(2),
      O => contatore_count_cmp_eq0001
    );
  contatore_temp_out : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => contatore_temp_out_DXMUX_673,
      CE => contatore_temp_out_CEINV_656,
      CLK => contatore_temp_out_CLKINV_657,
      SET => GND,
      RST => contatore_temp_out_FFX_RSTAND_679,
      O => contatore_temp_out_307
    );
  contatore_temp_out_FFX_RSTAND : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_reset_n_inv_0,
      O => contatore_temp_out_FFX_RSTAND_679
    );
  contatore_count_mux0002_2_1_SW0 : X_LUT4
    generic map(
      INIT => X"8241"
    )
    port map (
      ADR0 => countMaxReg_temp(1),
      ADR1 => contatore_count(2),
      ADR2 => countMaxReg_temp(2),
      ADR3 => contatore_count(1),
      O => contatore_count_mux0002_2_1_SW0_O_pack_2
    );
  contatore_count_mux0002_2_1 : X_LUT4
    generic map(
      INIT => X"0444"
    )
    port map (
      ADR0 => contatore_count(0),
      ADR1 => contatore_Msub_count_sub0000_cy(2),
      ADR2 => countMaxReg_temp(0),
      ADR3 => contatore_count_mux0002_2_1_SW0_O,
      O => contatore_count_mux0002(2)
    );
  contatore_count_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => contatore_count_0_DXMUX_711,
      CE => contatore_count_0_CEINV_694,
      CLK => contatore_count_0_CLKINV_695,
      SET => GND,
      RST => contatore_count_0_FFX_RSTAND_717,
      O => contatore_count(0)
    );
  contatore_count_0_FFX_RSTAND : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_reset_n_inv_0,
      O => contatore_count_0_FFX_RSTAND_717
    );
  contatore_count_mux0002_1_1 : X_LUT4
    generic map(
      INIT => X"00F6"
    )
    port map (
      ADR0 => contatore_count(2),
      ADR1 => contatore_count_sub0000(2),
      ADR2 => N11,
      ADR3 => N22_0,
      O => contatore_count_mux0002(1)
    );
  contatore_count_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => contatore_count_1_DYMUX_737,
      CE => contatore_count_1_CEINV_727,
      CLK => contatore_count_1_CLKINV_728,
      SET => GND,
      RST => contatore_count_1_FFY_RSTAND_743,
      O => contatore_count(1)
    );
  contatore_count_1_FFY_RSTAND : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_reset_n_inv_0,
      O => contatore_count_1_FFY_RSTAND_743
    );
  contatore_count_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => contatore_temp_out1_DYMUX_767,
      CE => contatore_temp_out1_CEINV_757,
      CLK => contatore_temp_out1_CLKINV_758,
      SET => GND,
      RST => contatore_temp_out1_SRINV_759,
      O => contatore_count(2)
    );
  contatore_count_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0101"
    )
    port map (
      ADR0 => countMaxReg_temp(1),
      ADR1 => countMaxReg_temp(0),
      ADR2 => countMaxReg_temp(2),
      ADR3 => VCC,
      O => contatore_count_cmp_eq0000
    );
  countMaxReg_temp_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => countMaxReg_temp_2_DYMUX_1011,
      CE => countMaxReg_temp_2_CEINV_1007,
      CLK => countMaxReg_temp_2_CLKINV_1008,
      SET => GND,
      RST => countMaxReg_temp_2_FFY_RSTAND_1017,
      O => countMaxReg_temp(2)
    );
  countMaxReg_temp_2_FFY_RSTAND : X_INV
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_280,
      O => countMaxReg_temp_2_FFY_RSTAND_1017
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => reg_in_6_IBUF_301,
      ADR1 => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_292,
      ADR2 => control_enable_conter_temp,
      ADR3 => VCC,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_out_temp
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_DXMUX_1049,
      CE => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_CEINV_1030,
      CLK => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_CLKINV_1031,
      SET => GND,
      RST => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_FFX_RSTAND_1055,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_291
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_FFX_RSTAND : X_INV
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_280,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_FFX_RSTAND_1055
    );
  contatore_reset_n_inv : X_LUT4
    generic map(
      INIT => X"10FF"
    )
    port map (
      ADR0 => cu_current_FSM_FFd2_274,
      ADR1 => cu_current_FSM_FFd3_273,
      ADR2 => enable_temp,
      ADR3 => reset_n_IBUF_280,
      O => contatore_reset_n_inv_1090
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"CACA"
    )
    port map (
      ADR0 => reg_in_5_IBUF_300,
      ADR1 => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_291,
      ADR2 => control_enable_conter_temp,
      ADR3 => VCC,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_out_temp
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_DXMUX_921,
      CE => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_CEINV_894,
      CLK => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_CLKINV_895,
      SET => GND,
      RST => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_SRINVNOT,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_290
    );
  cu_current_FSM_FFd1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => cu_current_FSM_FFd2_DYMUX_951,
      CE => VCC,
      CLK => cu_current_FSM_FFd2_CLKINV_942,
      SET => GND,
      RST => cu_current_FSM_FFd2_SRINVNOT,
      O => cu_current_FSM_FFd1_305
    );
  cu_current_FSM_FFd1_In11 : X_LUT4
    generic map(
      INIT => X"0101"
    )
    port map (
      ADR0 => cu_current_FSM_FFd1_305,
      ADR1 => cu_current_FSM_FFd3_273,
      ADR2 => cu_current_FSM_FFd2_274,
      ADR3 => VCC,
      O => stop_OBUF_964
    );
  cu_current_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => cu_current_FSM_FFd2_DXMUX_967,
      CE => VCC,
      CLK => cu_current_FSM_FFd2_CLKINV_942,
      SET => GND,
      RST => cu_current_FSM_FFd2_SRINVNOT,
      O => cu_current_FSM_FFd2_274
    );
  countMaxReg_temp_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => countMaxReg_temp_1_DYMUX_985,
      CE => countMaxReg_temp_1_CEINV_981,
      CLK => countMaxReg_temp_1_CLKINV_982,
      SET => GND,
      RST => countMaxReg_temp_1_SRINVNOT,
      O => countMaxReg_temp(0)
    );
  countMaxReg_temp_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => countMaxReg_temp_1_DXMUX_994,
      CE => countMaxReg_temp_1_CEINV_981,
      CLK => countMaxReg_temp_1_CLKINV_982,
      SET => GND,
      RST => countMaxReg_temp_1_SRINVNOT,
      O => countMaxReg_temp(1)
    );
  stop_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => stop_OBUF_964,
      O => stop_O
    );
  Q_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_285,
      O => Q_0_O
    );
  Q_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_286,
      O => Q_1_O
    );
  Q_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_287,
      O => Q_2_O
    );
  Q_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_288,
      O => Q_3_O
    );
  Q_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_289,
      O => Q_4_O
    );
  Q_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_290,
      O => Q_5_O
    );
  Q_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_291,
      O => Q_6_O
    );
  Q_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_292,
      O => Q_7_O
    );
  NlwBlock_ScanChain_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_ScanChain_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;


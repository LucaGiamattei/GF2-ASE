--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: ScanChain_timesim.vhd
-- /___/   /\     Timestamp: Fri Mar 15 11:42:19 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf ScanChain.pcf -rpw 100 -tpw 0 -ar Structure -tm ScanChain -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim ScanChain.ncd ScanChain_timesim.vhd 
-- Device	: 3s100etq144-4 (PRODUCTION 1.27 2013-10-13)
-- Input file	: ScanChain.ncd
-- Output file	: /home/giorgio/Documenti/ES_SCAN_CHAIN/netgen/par/ScanChain_timesim.vhd
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
  signal control_enable_conter_temp_0 : STD_LOGIC; 
  signal clock_BUFGP : STD_LOGIC; 
  signal contatore_reset_n_inv_0 : STD_LOGIC; 
  signal N15_0 : STD_LOGIC; 
  signal contatore_temp_out1_292 : STD_LOGIC; 
  signal cu_current_FSM_FFd4_293 : STD_LOGIC; 
  signal reset_n_IBUF_294 : STD_LOGIC; 
  signal N4_0 : STD_LOGIC; 
  signal mode_IBUF_301 : STD_LOGIC; 
  signal cu_current_FSM_FFd6_302 : STD_LOGIC; 
  signal cu_current_FSM_FFd3_303 : STD_LOGIC; 
  signal cu_current_FSM_FFd1_304 : STD_LOGIC; 
  signal control_enable_reg_temp : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_308 : STD_LOGIC; 
  signal reg_in_0_IBUF_309 : STD_LOGIC; 
  signal cu_current_FSM_FFd5_310 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_311 : STD_LOGIC; 
  signal cu_current_FSM_FFd7_312 : STD_LOGIC; 
  signal scan_in_IBUF_313 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_314 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_315 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_316 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_317 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_318 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_319 : STD_LOGIC; 
  signal reg_in_1_IBUF_320 : STD_LOGIC; 
  signal reg_in_2_IBUF_321 : STD_LOGIC; 
  signal start_IBUF_322 : STD_LOGIC; 
  signal reg_in_3_IBUF_324 : STD_LOGIC; 
  signal reg_in_4_IBUF_325 : STD_LOGIC; 
  signal reg_in_5_IBUF_326 : STD_LOGIC; 
  signal reg_in_6_IBUF_327 : STD_LOGIC; 
  signal reg_in_7_IBUF_328 : STD_LOGIC; 
  signal N17_0 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal cu_current_FSM_FFd7_In_SW0_O : STD_LOGIC; 
  signal contatore_temp_out_334 : STD_LOGIC; 
  signal cu_current_FSM_FFd2_335 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux_SW0_O : STD_LOGIC; 
  signal contatore_count_mux0002_2_1_SW0_O : STD_LOGIC; 
  signal contatore_count_2_DXMUX_376 : STD_LOGIC; 
  signal contatore_count_2_DYMUX_361 : STD_LOGIC; 
  signal contatore_count_cmp_eq0000 : STD_LOGIC; 
  signal contatore_count_2_SRINV_352 : STD_LOGIC; 
  signal contatore_count_2_CLKINV_351 : STD_LOGIC; 
  signal contatore_count_2_CEINV_350 : STD_LOGIC; 
  signal contatore_reset_n_inv : STD_LOGIC; 
  signal countMaxReg_temp_1_DXMUX_416 : STD_LOGIC; 
  signal countMaxReg_temp_1_DYMUX_407 : STD_LOGIC; 
  signal countMaxReg_temp_1_SRINVNOT : STD_LOGIC; 
  signal countMaxReg_temp_1_CLKINV_404 : STD_LOGIC; 
  signal countMaxReg_temp_1_CEINV_403 : STD_LOGIC; 
  signal countMaxReg_temp_2_DYMUX_433 : STD_LOGIC; 
  signal countMaxReg_temp_2_CLKINV_430 : STD_LOGIC; 
  signal countMaxReg_temp_2_CEINV_429 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal cu_current_FSM_FFd3_DXMUX_479 : STD_LOGIC; 
  signal cu_current_FSM_FFd3_DYMUX_471 : STD_LOGIC; 
  signal cu_current_FSM_FFd4_In : STD_LOGIC; 
  signal cu_current_FSM_FFd3_SRINVNOT : STD_LOGIC; 
  signal cu_current_FSM_FFd3_CLKINV_460 : STD_LOGIC; 
  signal control_enable_conter_temp : STD_LOGIC; 
  signal contatore_temp_out_not0001 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_DXMUX_540 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_out_temp : STD_LOGIC; 
  signal control_enable_reg_temp_pack_3 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_CLKINV_523 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_CEINV_522 : STD_LOGIC; 
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
  signal N17 : STD_LOGIC; 
  signal contatore_Msub_count_sub0000_cy_2_pack_1 : STD_LOGIC; 
  signal N15 : STD_LOGIC; 
  signal contatore_count_sub0000_2_pack_1 : STD_LOGIC; 
  signal cu_current_FSM_FFd7_DXMUX_797 : STD_LOGIC; 
  signal cu_current_FSM_FFd7_In_794 : STD_LOGIC; 
  signal cu_current_FSM_FFd7_In_SW0_O_pack_2 : STD_LOGIC; 
  signal cu_current_FSM_FFd7_CLKINV_781 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_DXMUX_833 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_out_temp : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux_SW0_O_pack_2 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_CLKINV_816 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_CEINV_815 : STD_LOGIC; 
  signal contatore_temp_out_DXMUX_871 : STD_LOGIC; 
  signal contatore_count_cmp_eq0001 : STD_LOGIC; 
  signal N6_pack_1 : STD_LOGIC; 
  signal contatore_temp_out_CLKINV_855 : STD_LOGIC; 
  signal contatore_temp_out_CEINV_854 : STD_LOGIC; 
  signal contatore_count_0_DXMUX_909 : STD_LOGIC; 
  signal contatore_count_mux0002_2_1_SW0_O_pack_2 : STD_LOGIC; 
  signal contatore_count_0_CLKINV_893 : STD_LOGIC; 
  signal contatore_count_0_CEINV_892 : STD_LOGIC; 
  signal contatore_count_1_DYMUX_935 : STD_LOGIC; 
  signal contatore_count_1_CLKINV_926 : STD_LOGIC; 
  signal contatore_count_1_CEINV_925 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_DXMUX_981 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_out_temp : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_DYMUX_966 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_out_temp : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_SRINVNOT : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_CLKINV_957 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_CEINV_956 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_DXMUX_1027 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_out_temp : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_DYMUX_1012 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_out_temp : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_SRINVNOT : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_CLKINV_1003 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_CEINV_1002 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_DXMUX_1073 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_out_temp : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_DYMUX_1058 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_out_temp : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_SRINVNOT : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_CLKINV_1049 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_CEINV_1048 : STD_LOGIC; 
  signal cu_current_FSM_FFd2_DXMUX_1107 : STD_LOGIC; 
  signal cu_current_FSM_FFd2_DYMUX_1099 : STD_LOGIC; 
  signal cu_current_FSM_FFd1_In : STD_LOGIC; 
  signal cu_current_FSM_FFd2_SRINVNOT : STD_LOGIC; 
  signal cu_current_FSM_FFd2_CLKINV_1090 : STD_LOGIC; 
  signal cu_current_FSM_FFd6_DXMUX_1149 : STD_LOGIC; 
  signal cu_current_FSM_FFd6_In : STD_LOGIC; 
  signal cu_current_FSM_FFd6_DYMUX_1133 : STD_LOGIC; 
  signal cu_current_FSM_FFd5_In : STD_LOGIC; 
  signal cu_current_FSM_FFd6_SRINVNOT : STD_LOGIC; 
  signal cu_current_FSM_FFd6_CLKINV_1122 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_FFX_RSTAND_546 : STD_LOGIC; 
  signal countMaxReg_temp_2_FFY_RSTAND_439 : STD_LOGIC; 
  signal cu_current_FSM_FFd7_FFX_SET : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_FFX_RSTAND_839 : STD_LOGIC; 
  signal contatore_temp_out_FFX_RSTAND_877 : STD_LOGIC; 
  signal contatore_count_0_FFX_RSTAND_915 : STD_LOGIC; 
  signal contatore_count_1_FFY_RSTAND_941 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal countMaxReg_temp : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal contatore_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal contatore_Msub_count_sub0000_cy : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal contatore_count_sub0000 : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal contatore_count_mux0002 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  contatore_count_2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_count_mux0002(0),
      O => contatore_count_2_DXMUX_376
    );
  contatore_count_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_count_cmp_eq0000,
      O => contatore_count_2_DYMUX_361
    );
  contatore_count_2_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_reset_n_inv_0,
      O => contatore_count_2_SRINV_352
    );
  contatore_count_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => contatore_count_2_CLKINV_351
    );
  contatore_count_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => control_enable_conter_temp_0,
      O => contatore_count_2_CEINV_350
    );
  contatore_count_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"0005",
      LOC => "SLICE_X1Y37"
    )
    port map (
      ADR0 => countMaxReg_temp(1),
      ADR1 => VCC,
      ADR2 => countMaxReg_temp(2),
      ADR3 => countMaxReg_temp(0),
      O => contatore_count_cmp_eq0000
    );
  contatore_reset_n_inv_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_reset_n_inv,
      O => contatore_reset_n_inv_0
    );
  contatore_reset_n_inv1 : X_LUT4
    generic map(
      INIT => X"FF0F",
      LOC => "SLICE_X1Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => reset_n_IBUF_294,
      ADR3 => cu_current_FSM_FFd4_293,
      O => contatore_reset_n_inv
    );
  countMaxReg_temp_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => posizione_1_INBUF,
      O => countMaxReg_temp_1_DXMUX_416
    );
  countMaxReg_temp_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => posizione_0_INBUF,
      O => countMaxReg_temp_1_DYMUX_407
    );
  countMaxReg_temp_1_SRINV : X_INV
    generic map(
      LOC => "SLICE_X0Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_294,
      O => countMaxReg_temp_1_SRINVNOT
    );
  countMaxReg_temp_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => countMaxReg_temp_1_CLKINV_404
    );
  countMaxReg_temp_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_current_FSM_FFd4_293,
      O => countMaxReg_temp_1_CEINV_403
    );
  countMaxReg_temp_2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => posizione_2_INBUF,
      O => countMaxReg_temp_2_DYMUX_433
    );
  countMaxReg_temp_2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => countMaxReg_temp_2_CLKINV_430
    );
  countMaxReg_temp_2_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_current_FSM_FFd4_293,
      O => countMaxReg_temp_2_CEINV_429
    );
  N4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => N4,
      O => N4_0
    );
  contatore_count_mux0002_0_SW0 : X_LUT4
    generic map(
      INIT => X"0FFF",
      LOC => "SLICE_X3Y36"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => contatore_count(1),
      ADR3 => contatore_count(0),
      O => N4
    );
  cu_current_FSM_FFd3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_current_FSM_FFd4_293,
      O => cu_current_FSM_FFd3_DXMUX_479
    );
  cu_current_FSM_FFd3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_current_FSM_FFd4_In,
      O => cu_current_FSM_FFd3_DYMUX_471
    );
  cu_current_FSM_FFd3_SRINV : X_INV
    generic map(
      LOC => "SLICE_X0Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_294,
      O => cu_current_FSM_FFd3_SRINVNOT
    );
  cu_current_FSM_FFd3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => cu_current_FSM_FFd3_CLKINV_460
    );
  cu_current_FSM_FFd4_In1 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X0Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cu_current_FSM_FFd6_302,
      ADR2 => mode_IBUF_301,
      ADR3 => VCC,
      O => cu_current_FSM_FFd4_In
    );
  control_enable_conter_temp_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => control_enable_conter_temp,
      O => control_enable_conter_temp_0
    );
  contatore_temp_out_not00011 : X_LUT4
    generic map(
      INIT => X"F0A0",
      LOC => "SLICE_X0Y37"
    )
    port map (
      ADR0 => cu_current_FSM_FFd3_303,
      ADR1 => VCC,
      ADR2 => contatore_Msub_count_sub0000_cy(2),
      ADR3 => cu_current_FSM_FFd1_304,
      O => contatore_temp_out_not0001
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_out_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_DXMUX_540
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => control_enable_reg_temp_pack_3,
      O => control_enable_reg_temp
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_CLKINV_523
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => control_enable_reg_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_CEINV_522
    );
  stop_OBUF : X_OBUF
    generic map(
      LOC => "PAD102"
    )
    port map (
      I => stop_O,
      O => stop
    );
  mode_IBUF : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 638 ps
    )
    port map (
      I => mode,
      O => mode_INBUF
    );
  mode_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD103",
      PATHPULSE => 638 ps
    )
    port map (
      I => mode_INBUF,
      O => mode_IBUF_301
    );
  reset_n_IBUF : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n,
      O => reset_n_INBUF
    );
  reset_n_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_INBUF,
      O => reset_n_IBUF_294
    );
  posizione_0_IBUF : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 638 ps
    )
    port map (
      I => posizione(0),
      O => posizione_0_INBUF
    );
  scan_in_IBUF : X_BUF
    generic map(
      LOC => "IPAD90",
      PATHPULSE => 638 ps
    )
    port map (
      I => scan_in,
      O => scan_in_INBUF
    );
  scan_in_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD90",
      PATHPULSE => 638 ps
    )
    port map (
      I => scan_in_INBUF,
      O => scan_in_IBUF_313
    );
  posizione_1_IBUF : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 638 ps
    )
    port map (
      I => posizione(1),
      O => posizione_1_INBUF
    );
  posizione_2_IBUF : X_BUF
    generic map(
      LOC => "IPAD104",
      PATHPULSE => 638 ps
    )
    port map (
      I => posizione(2),
      O => posizione_2_INBUF
    );
  Q_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD92"
    )
    port map (
      I => Q_0_O,
      O => Q(0)
    );
  Q_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD97"
    )
    port map (
      I => Q_1_O,
      O => Q(1)
    );
  Q_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD96"
    )
    port map (
      I => Q_2_O,
      O => Q(2)
    );
  Q_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD101"
    )
    port map (
      I => Q_3_O,
      O => Q(3)
    );
  Q_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD88"
    )
    port map (
      I => Q_4_O,
      O => Q(4)
    );
  Q_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD87"
    )
    port map (
      I => Q_5_O,
      O => Q(5)
    );
  Q_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => Q_6_O,
      O => Q(6)
    );
  Q_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD83"
    )
    port map (
      I => Q_7_O,
      O => Q(7)
    );
  reg_in_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD100",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in(0),
      O => reg_in_0_INBUF
    );
  reg_in_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD100",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in_0_INBUF,
      O => reg_in_0_IBUF_309
    );
  reg_in_1_IBUF : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in(1),
      O => reg_in_1_INBUF
    );
  reg_in_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD99",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in_1_INBUF,
      O => reg_in_1_IBUF_320
    );
  reg_in_2_IBUF : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in(2),
      O => reg_in_2_INBUF
    );
  reg_in_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD98",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in_2_INBUF,
      O => reg_in_2_IBUF_321
    );
  start_IBUF : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 638 ps
    )
    port map (
      I => start,
      O => start_INBUF
    );
  start_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 638 ps
    )
    port map (
      I => start_INBUF,
      O => start_IBUF_322
    );
  clock_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IPAD12",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock,
      O => clock_INBUF
    );
  reg_in_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD95",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in(3),
      O => reg_in_3_INBUF
    );
  reg_in_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD95",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in_3_INBUF,
      O => reg_in_3_IBUF_324
    );
  reg_in_4_IBUF : X_BUF
    generic map(
      LOC => "PAD89",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in(4),
      O => reg_in_4_INBUF
    );
  reg_in_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD89",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in_4_INBUF,
      O => reg_in_4_IBUF_325
    );
  reg_in_5_IBUF : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in(5),
      O => reg_in_5_INBUF
    );
  reg_in_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD91",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in_5_INBUF,
      O => reg_in_5_IBUF_326
    );
  reg_in_6_IBUF : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in(6),
      O => reg_in_6_INBUF
    );
  reg_in_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD94",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in_6_INBUF,
      O => reg_in_6_IBUF_327
    );
  reg_in_7_IBUF : X_BUF
    generic map(
      LOC => "PAD93",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in(7),
      O => reg_in_7_INBUF
    );
  reg_in_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD93",
      PATHPULSE => 638 ps
    )
    port map (
      I => reg_in_7_INBUF,
      O => reg_in_7_IBUF_328
    );
  clock_BUFGP_BUFG : X_BUFGMUX
    generic map(
      LOC => "BUFGMUX_X2Y10"
    )
    port map (
      I0 => clock_BUFGP_BUFG_I0_INV,
      I1 => GND,
      S => clock_BUFGP_BUFG_S_INVNOT,
      O => clock_BUFGP
    );
  clock_BUFGP_BUFG_SINV : X_INV
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => '1',
      O => clock_BUFGP_BUFG_S_INVNOT
    );
  clock_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_INBUF,
      O => clock_BUFGP_BUFG_I0_INV
    );
  N17_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => N17,
      O => N17_0
    );
  N17_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_Msub_count_sub0000_cy_2_pack_1,
      O => contatore_Msub_count_sub0000_cy(2)
    );
  contatore_Msub_count_sub0000_cy_2_11 : X_LUT4
    generic map(
      INIT => X"FFFC",
      LOC => "SLICE_X1Y35"
    )
    port map (
      ADR0 => VCC,
      ADR1 => countMaxReg_temp(2),
      ADR2 => countMaxReg_temp(1),
      ADR3 => countMaxReg_temp(0),
      O => contatore_Msub_count_sub0000_cy_2_pack_1
    );
  N15_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => N15,
      O => N15_0
    );
  N15_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_count_sub0000_2_pack_1,
      O => contatore_count_sub0000(2)
    );
  contatore_Msub_count_sub0000_xor_2_11 : X_LUT4
    generic map(
      INIT => X"F0A5",
      LOC => "SLICE_X1Y36"
    )
    port map (
      ADR0 => countMaxReg_temp(1),
      ADR1 => VCC,
      ADR2 => countMaxReg_temp(2),
      ADR3 => countMaxReg_temp(0),
      O => contatore_count_sub0000_2_pack_1
    );
  cu_current_FSM_FFd7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_current_FSM_FFd7_In_794,
      O => cu_current_FSM_FFd7_DXMUX_797
    );
  cu_current_FSM_FFd7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_current_FSM_FFd7_In_SW0_O_pack_2,
      O => cu_current_FSM_FFd7_In_SW0_O
    );
  cu_current_FSM_FFd7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => cu_current_FSM_FFd7_CLKINV_781
    );
  cu_current_FSM_FFd7_In_SW0 : X_LUT4
    generic map(
      INIT => X"B3A0",
      LOC => "SLICE_X0Y33"
    )
    port map (
      ADR0 => cu_current_FSM_FFd2_335,
      ADR1 => start_IBUF_322,
      ADR2 => contatore_temp_out1_292,
      ADR3 => cu_current_FSM_FFd7_312,
      O => cu_current_FSM_FFd7_In_SW0_O_pack_2
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_out_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_DXMUX_833
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux_SW0_O_pack_2,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux_SW0_O
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_CLKINV_816
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => control_enable_reg_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_CEINV_815
    );
  contatore_temp_out_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_count_cmp_eq0001,
      O => contatore_temp_out_DXMUX_871
    );
  contatore_temp_out_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X0Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => N6_pack_1,
      O => N6
    );
  contatore_temp_out_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => contatore_temp_out_CLKINV_855
    );
  contatore_temp_out_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_temp_out_not0001,
      O => contatore_temp_out_CEINV_854
    );
  contatore_count_0_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X3Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_count_mux0002(2),
      O => contatore_count_0_DXMUX_909
    );
  contatore_count_0_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X3Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_count_mux0002_2_1_SW0_O_pack_2,
      O => contatore_count_mux0002_2_1_SW0_O
    );
  contatore_count_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => contatore_count_0_CLKINV_893
    );
  contatore_count_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X3Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => control_enable_conter_temp_0,
      O => contatore_count_0_CEINV_892
    );
  contatore_count_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_count_mux0002(1),
      O => contatore_count_1_DYMUX_935
    );
  contatore_count_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => contatore_count_1_CLKINV_926
    );
  contatore_count_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => control_enable_conter_temp_0,
      O => contatore_count_1_CEINV_925
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_out_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_DXMUX_981
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_out_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_DYMUX_966
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_SRINV : X_INV
    generic map(
      LOC => "SLICE_X0Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_294,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_SRINVNOT
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_CLKINV_957
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => control_enable_reg_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_CEINV_956
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"FE02",
      LOC => "SLICE_X0Y25"
    )
    port map (
      ADR0 => reg_in_1_IBUF_320,
      ADR1 => cu_current_FSM_FFd1_304,
      ADR2 => cu_current_FSM_FFd3_303,
      ADR3 => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_314,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_out_temp
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_out_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_DXMUX_1027
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_out_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_DYMUX_1012
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_SRINV : X_INV
    generic map(
      LOC => "SLICE_X0Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_294,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_SRINVNOT
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_CLKINV_1003
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => control_enable_reg_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_CEINV_1002
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"F0E2",
      LOC => "SLICE_X0Y21"
    )
    port map (
      ADR0 => reg_in_3_IBUF_324,
      ADR1 => cu_current_FSM_FFd3_303,
      ADR2 => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_316,
      ADR3 => cu_current_FSM_FFd1_304,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_out_temp
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_out_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_DXMUX_1073
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_out_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_DYMUX_1058
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_SRINV : X_INV
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_294,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_SRINVNOT
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_CLKINV_1049
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => control_enable_reg_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_CEINV_1048
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"CCD8",
      LOC => "SLICE_X0Y20"
    )
    port map (
      ADR0 => cu_current_FSM_FFd3_303,
      ADR1 => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_318,
      ADR2 => reg_in_5_IBUF_326,
      ADR3 => cu_current_FSM_FFd1_304,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_out_temp
    );
  cu_current_FSM_FFd2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_current_FSM_FFd3_303,
      O => cu_current_FSM_FFd2_DXMUX_1107
    );
  cu_current_FSM_FFd2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X0Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_current_FSM_FFd1_In,
      O => cu_current_FSM_FFd2_DYMUX_1099
    );
  cu_current_FSM_FFd2_SRINV : X_INV
    generic map(
      LOC => "SLICE_X0Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_294,
      O => cu_current_FSM_FFd2_SRINVNOT
    );
  cu_current_FSM_FFd2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X0Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => cu_current_FSM_FFd2_CLKINV_1090
    );
  cu_current_FSM_FFd1_In1 : X_LUT4
    generic map(
      INIT => X"2F22",
      LOC => "SLICE_X0Y31"
    )
    port map (
      ADR0 => cu_current_FSM_FFd1_304,
      ADR1 => contatore_temp_out_334,
      ADR2 => contatore_temp_out1_292,
      ADR3 => cu_current_FSM_FFd2_335,
      O => cu_current_FSM_FFd1_In
    );
  cu_current_FSM_FFd6_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_current_FSM_FFd6_In,
      O => cu_current_FSM_FFd6_DXMUX_1149
    );
  cu_current_FSM_FFd6_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X1Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_current_FSM_FFd5_In,
      O => cu_current_FSM_FFd6_DYMUX_1133
    );
  cu_current_FSM_FFd6_SRINV : X_INV
    generic map(
      LOC => "SLICE_X1Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_294,
      O => cu_current_FSM_FFd6_SRINVNOT
    );
  cu_current_FSM_FFd6_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X1Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => cu_current_FSM_FFd6_CLKINV_1122
    );
  cu_current_FSM_FFd5_In1 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X1Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => mode_IBUF_301,
      ADR2 => cu_current_FSM_FFd6_302,
      ADR3 => VCC,
      O => cu_current_FSM_FFd5_In
    );
  contatore_temp_out1 : X_FF
    generic map(
      LOC => "SLICE_X1Y37",
      INIT => '0'
    )
    port map (
      I => contatore_count_2_DYMUX_361,
      CE => contatore_count_2_CEINV_350,
      CLK => contatore_count_2_CLKINV_351,
      SET => GND,
      RST => contatore_count_2_SRINV_352,
      O => contatore_temp_out1_292
    );
  contatore_count_cmp_eq00014_SW4_SW0 : X_LUT4
    generic map(
      INIT => X"99FF",
      LOC => "SLICE_X1Y35"
    )
    port map (
      ADR0 => contatore_count(1),
      ADR1 => contatore_count(0),
      ADR2 => VCC,
      ADR3 => contatore_Msub_count_sub0000_cy(2),
      O => N17
    );
  cu_current_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X0Y32",
      INIT => '0'
    )
    port map (
      I => cu_current_FSM_FFd3_DXMUX_479,
      CE => VCC,
      CLK => cu_current_FSM_FFd3_CLKINV_460,
      SET => GND,
      RST => cu_current_FSM_FFd3_SRINVNOT,
      O => cu_current_FSM_FFd3_303
    );
  cu_current_FSM_Out51 : X_LUT4
    generic map(
      INIT => X"FFF0",
      LOC => "SLICE_X0Y37"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => cu_current_FSM_FFd3_303,
      ADR3 => cu_current_FSM_FFd1_304,
      O => control_enable_conter_temp
    );
  cu_current_FSM_Out41 : X_LUT4
    generic map(
      INIT => X"FFFC",
      LOC => "SLICE_X1Y24"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cu_current_FSM_FFd5_310,
      ADR2 => cu_current_FSM_FFd1_304,
      ADR3 => cu_current_FSM_FFd3_303,
      O => control_enable_reg_temp_pack_3
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"ABA8",
      LOC => "SLICE_X1Y24"
    )
    port map (
      ADR0 => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_308,
      ADR1 => cu_current_FSM_FFd3_303,
      ADR2 => cu_current_FSM_FFd1_304,
      ADR3 => reg_in_0_IBUF_309,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_out_temp
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp : X_FF
    generic map(
      LOC => "SLICE_X1Y24",
      INIT => '0'
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_DXMUX_540,
      CE => sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_CEINV_522,
      CLK => sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_CLKINV_523,
      SET => GND,
      RST => sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_FFX_RSTAND_546,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_311
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X1Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_294,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_FFX_RSTAND_546
    );
  contatore_count_mux0002_0_Q : X_LUT4
    generic map(
      INIT => X"CCC8",
      LOC => "SLICE_X1Y37"
    )
    port map (
      ADR0 => countMaxReg_temp(2),
      ADR1 => N15_0,
      ADR2 => countMaxReg_temp(0),
      ADR3 => countMaxReg_temp(1),
      O => contatore_count_mux0002(0)
    );
  contatore_count_2 : X_FF
    generic map(
      LOC => "SLICE_X1Y37",
      INIT => '0'
    )
    port map (
      I => contatore_count_2_DXMUX_376,
      CE => contatore_count_2_CEINV_350,
      CLK => contatore_count_2_CLKINV_351,
      SET => GND,
      RST => contatore_count_2_SRINV_352,
      O => contatore_count(2)
    );
  countMaxReg_temp_0 : X_FF
    generic map(
      LOC => "SLICE_X0Y34",
      INIT => '0'
    )
    port map (
      I => countMaxReg_temp_1_DYMUX_407,
      CE => countMaxReg_temp_1_CEINV_403,
      CLK => countMaxReg_temp_1_CLKINV_404,
      SET => GND,
      RST => countMaxReg_temp_1_SRINVNOT,
      O => countMaxReg_temp(0)
    );
  countMaxReg_temp_1 : X_FF
    generic map(
      LOC => "SLICE_X0Y34",
      INIT => '0'
    )
    port map (
      I => countMaxReg_temp_1_DXMUX_416,
      CE => countMaxReg_temp_1_CEINV_403,
      CLK => countMaxReg_temp_1_CLKINV_404,
      SET => GND,
      RST => countMaxReg_temp_1_SRINVNOT,
      O => countMaxReg_temp(1)
    );
  countMaxReg_temp_2 : X_FF
    generic map(
      LOC => "SLICE_X1Y34",
      INIT => '0'
    )
    port map (
      I => countMaxReg_temp_2_DYMUX_433,
      CE => countMaxReg_temp_2_CEINV_429,
      CLK => countMaxReg_temp_2_CLKINV_430,
      SET => GND,
      RST => countMaxReg_temp_2_FFY_RSTAND_439,
      O => countMaxReg_temp(2)
    );
  countMaxReg_temp_2_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X1Y34",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_294,
      O => countMaxReg_temp_2_FFY_RSTAND_439
    );
  cu_current_FSM_FFd4 : X_FF
    generic map(
      LOC => "SLICE_X0Y32",
      INIT => '0'
    )
    port map (
      I => cu_current_FSM_FFd3_DYMUX_471,
      CE => VCC,
      CLK => cu_current_FSM_FFd3_CLKINV_460,
      SET => GND,
      RST => cu_current_FSM_FFd3_SRINVNOT,
      O => cu_current_FSM_FFd4_293
    );
  contatore_count_mux0002_0_SW1 : X_LUT4
    generic map(
      INIT => X"8C32",
      LOC => "SLICE_X1Y36"
    )
    port map (
      ADR0 => N6,
      ADR1 => contatore_count(2),
      ADR2 => contatore_count_sub0000(2),
      ADR3 => N4_0,
      O => N15
    );
  cu_current_FSM_FFd7_In : X_LUT4
    generic map(
      INIT => X"FFF8",
      LOC => "SLICE_X0Y33"
    )
    port map (
      ADR0 => cu_current_FSM_FFd1_304,
      ADR1 => contatore_temp_out_334,
      ADR2 => cu_current_FSM_FFd7_In_SW0_O,
      ADR3 => cu_current_FSM_FFd5_310,
      O => cu_current_FSM_FFd7_In_794
    );
  cu_current_FSM_FFd7 : X_FF
    generic map(
      LOC => "SLICE_X0Y33",
      INIT => '1'
    )
    port map (
      I => cu_current_FSM_FFd7_DXMUX_797,
      CE => VCC,
      CLK => cu_current_FSM_FFd7_CLKINV_781,
      SET => cu_current_FSM_FFd7_FFX_SET,
      RST => GND,
      O => cu_current_FSM_FFd7_312
    );
  cu_current_FSM_FFd7_FFX_SETOR : X_INV
    generic map(
      LOC => "SLICE_X0Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_294,
      O => cu_current_FSM_FFd7_FFX_SET
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux_SW0 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X1Y20"
    )
    port map (
      ADR0 => sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_311,
      ADR1 => scan_in_IBUF_313,
      ADR2 => cu_current_FSM_FFd1_304,
      ADR3 => VCC,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux_SW0_O_pack_2
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux : X_LUT4
    generic map(
      INIT => X"F0E4",
      LOC => "SLICE_X1Y20"
    )
    port map (
      ADR0 => cu_current_FSM_FFd1_304,
      ADR1 => reg_in_7_IBUF_328,
      ADR2 => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux_SW0_O,
      ADR3 => cu_current_FSM_FFd3_303,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_out_temp
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp : X_FF
    generic map(
      LOC => "SLICE_X1Y20",
      INIT => '0'
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_DXMUX_833,
      CE => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_CEINV_815,
      CLK => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_CLKINV_816,
      SET => GND,
      RST => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_FFX_RSTAND_839,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_319
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X1Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_294,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_FFX_RSTAND_839
    );
  contatore_count_cmp_eq00014_SW0 : X_LUT4
    generic map(
      INIT => X"E7BD",
      LOC => "SLICE_X0Y36"
    )
    port map (
      ADR0 => countMaxReg_temp(0),
      ADR1 => contatore_count(1),
      ADR2 => contatore_count(0),
      ADR3 => countMaxReg_temp(1),
      O => N6_pack_1
    );
  contatore_count_cmp_eq00014 : X_LUT4
    generic map(
      INIT => X"0090",
      LOC => "SLICE_X0Y36"
    )
    port map (
      ADR0 => contatore_count(2),
      ADR1 => contatore_count_sub0000(2),
      ADR2 => contatore_Msub_count_sub0000_cy(2),
      ADR3 => N6,
      O => contatore_count_cmp_eq0001
    );
  contatore_temp_out : X_FF
    generic map(
      LOC => "SLICE_X0Y36",
      INIT => '0'
    )
    port map (
      I => contatore_temp_out_DXMUX_871,
      CE => contatore_temp_out_CEINV_854,
      CLK => contatore_temp_out_CLKINV_855,
      SET => GND,
      RST => contatore_temp_out_FFX_RSTAND_877,
      O => contatore_temp_out_334
    );
  contatore_temp_out_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X0Y36",
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_reset_n_inv_0,
      O => contatore_temp_out_FFX_RSTAND_877
    );
  contatore_count_mux0002_2_1_SW0 : X_LUT4
    generic map(
      INIT => X"8421",
      LOC => "SLICE_X3Y37"
    )
    port map (
      ADR0 => countMaxReg_temp(1),
      ADR1 => countMaxReg_temp(2),
      ADR2 => contatore_count(1),
      ADR3 => contatore_count(2),
      O => contatore_count_mux0002_2_1_SW0_O_pack_2
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"AAB8",
      LOC => "SLICE_X0Y21"
    )
    port map (
      ADR0 => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_317,
      ADR1 => cu_current_FSM_FFd3_303,
      ADR2 => reg_in_4_IBUF_325,
      ADR3 => cu_current_FSM_FFd1_304,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_out_temp
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp : X_FF
    generic map(
      LOC => "SLICE_X0Y21",
      INIT => '0'
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_DXMUX_1027,
      CE => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_CEINV_1002,
      CLK => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_CLKINV_1003,
      SET => GND,
      RST => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_SRINVNOT,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_316
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp : X_FF
    generic map(
      LOC => "SLICE_X0Y20",
      INIT => '0'
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_DYMUX_1058,
      CE => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_CEINV_1048,
      CLK => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_CLKINV_1049,
      SET => GND,
      RST => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_SRINVNOT,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_317
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"FE10",
      LOC => "SLICE_X0Y20"
    )
    port map (
      ADR0 => cu_current_FSM_FFd3_303,
      ADR1 => cu_current_FSM_FFd1_304,
      ADR2 => reg_in_6_IBUF_327,
      ADR3 => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_319,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_out_temp
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp : X_FF
    generic map(
      LOC => "SLICE_X0Y20",
      INIT => '0'
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_DXMUX_1073,
      CE => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_CEINV_1048,
      CLK => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_CLKINV_1049,
      SET => GND,
      RST => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_SRINVNOT,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_318
    );
  cu_current_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X0Y31",
      INIT => '0'
    )
    port map (
      I => cu_current_FSM_FFd2_DYMUX_1099,
      CE => VCC,
      CLK => cu_current_FSM_FFd2_CLKINV_1090,
      SET => GND,
      RST => cu_current_FSM_FFd2_SRINVNOT,
      O => cu_current_FSM_FFd1_304
    );
  cu_current_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X0Y31",
      INIT => '0'
    )
    port map (
      I => cu_current_FSM_FFd2_DXMUX_1107,
      CE => VCC,
      CLK => cu_current_FSM_FFd2_CLKINV_1090,
      SET => GND,
      RST => cu_current_FSM_FFd2_SRINVNOT,
      O => cu_current_FSM_FFd2_335
    );
  cu_current_FSM_FFd5 : X_FF
    generic map(
      LOC => "SLICE_X1Y32",
      INIT => '0'
    )
    port map (
      I => cu_current_FSM_FFd6_DYMUX_1133,
      CE => VCC,
      CLK => cu_current_FSM_FFd6_CLKINV_1122,
      SET => GND,
      RST => cu_current_FSM_FFd6_SRINVNOT,
      O => cu_current_FSM_FFd5_310
    );
  contatore_count_mux0002_2_1 : X_LUT4
    generic map(
      INIT => X"1050",
      LOC => "SLICE_X3Y37"
    )
    port map (
      ADR0 => contatore_count(0),
      ADR1 => countMaxReg_temp(0),
      ADR2 => contatore_Msub_count_sub0000_cy(2),
      ADR3 => contatore_count_mux0002_2_1_SW0_O,
      O => contatore_count_mux0002(2)
    );
  contatore_count_0 : X_FF
    generic map(
      LOC => "SLICE_X3Y37",
      INIT => '0'
    )
    port map (
      I => contatore_count_0_DXMUX_909,
      CE => contatore_count_0_CEINV_892,
      CLK => contatore_count_0_CLKINV_893,
      SET => GND,
      RST => contatore_count_0_FFX_RSTAND_915,
      O => contatore_count(0)
    );
  contatore_count_0_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X3Y37",
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_reset_n_inv_0,
      O => contatore_count_0_FFX_RSTAND_915
    );
  contatore_count_mux0002_1_1 : X_LUT4
    generic map(
      INIT => X"00BE",
      LOC => "SLICE_X0Y35"
    )
    port map (
      ADR0 => N6,
      ADR1 => contatore_count_sub0000(2),
      ADR2 => contatore_count(2),
      ADR3 => N17_0,
      O => contatore_count_mux0002(1)
    );
  contatore_count_1 : X_FF
    generic map(
      LOC => "SLICE_X0Y35",
      INIT => '0'
    )
    port map (
      I => contatore_count_1_DYMUX_935,
      CE => contatore_count_1_CEINV_925,
      CLK => contatore_count_1_CLKINV_926,
      SET => GND,
      RST => contatore_count_1_FFY_RSTAND_941,
      O => contatore_count(1)
    );
  contatore_count_1_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X0Y35",
      PATHPULSE => 638 ps
    )
    port map (
      I => contatore_reset_n_inv_0,
      O => contatore_count_1_FFY_RSTAND_941
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp : X_FF
    generic map(
      LOC => "SLICE_X0Y25",
      INIT => '0'
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_DYMUX_966,
      CE => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_CEINV_956,
      CLK => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_CLKINV_957,
      SET => GND,
      RST => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_SRINVNOT,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_308
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"FE02",
      LOC => "SLICE_X0Y25"
    )
    port map (
      ADR0 => reg_in_2_IBUF_321,
      ADR1 => cu_current_FSM_FFd1_304,
      ADR2 => cu_current_FSM_FFd3_303,
      ADR3 => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_315,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_out_temp
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp : X_FF
    generic map(
      LOC => "SLICE_X0Y25",
      INIT => '0'
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_DXMUX_981,
      CE => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_CEINV_956,
      CLK => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_CLKINV_957,
      SET => GND,
      RST => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_SRINVNOT,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_314
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp : X_FF
    generic map(
      LOC => "SLICE_X0Y21",
      INIT => '0'
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_DYMUX_1012,
      CE => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_CEINV_1002,
      CLK => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_CLKINV_1003,
      SET => GND,
      RST => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_SRINVNOT,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_315
    );
  cu_current_FSM_FFd6_In1 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X1Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cu_current_FSM_FFd7_312,
      ADR2 => start_IBUF_322,
      ADR3 => VCC,
      O => cu_current_FSM_FFd6_In
    );
  cu_current_FSM_FFd6 : X_FF
    generic map(
      LOC => "SLICE_X1Y32",
      INIT => '0'
    )
    port map (
      I => cu_current_FSM_FFd6_DXMUX_1149,
      CE => VCC,
      CLK => cu_current_FSM_FFd6_CLKINV_1122,
      SET => GND,
      RST => cu_current_FSM_FFd6_SRINVNOT,
      O => cu_current_FSM_FFd6_302
    );
  stop_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD102",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_current_FSM_FFd7_312,
      O => stop_O
    );
  Q_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD92",
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_311,
      O => Q_0_O
    );
  Q_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD97",
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_308,
      O => Q_1_O
    );
  Q_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD96",
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_314,
      O => Q_2_O
    );
  Q_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD101",
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_315,
      O => Q_3_O
    );
  Q_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD88",
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_316,
      O => Q_4_O
    );
  Q_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD87",
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_317,
      O => Q_5_O
    );
  Q_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD84",
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_318,
      O => Q_6_O
    );
  Q_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 638 ps
    )
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_319,
      O => Q_7_O
    );
  NlwBlock_ScanChain_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_ScanChain_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;


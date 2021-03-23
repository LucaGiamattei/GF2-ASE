--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Moltiplicatore_Booth_timesim.vhd
-- /___/   /\     Timestamp: Sun Mar 10 13:27:27 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf Moltiplicatore_Booth.pcf -rpw 100 -tpw 0 -ar Structure -tm Moltiplicatore_Booth -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim Moltiplicatore_Booth.ncd Moltiplicatore_Booth_timesim.vhd 
-- Device	: 3s100etq144-4 (PRODUCTION 1.27 2013-10-13)
-- Input file	: Moltiplicatore_Booth.ncd
-- Output file	: /home/giorgio/Documenti/Prova/netgen/par/Moltiplicatore_Booth_timesim.vhd
-- # of Entities	: 1
-- Design Name	: Moltiplicatore_Booth
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

entity Moltiplicatore_Booth is
  port (
    reset_n : in STD_LOGIC := 'X'; 
    stop : out STD_LOGIC; 
    start : in STD_LOGIC := 'X'; 
    clock : in STD_LOGIC := 'X'; 
    risultato : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    op1 : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    op2 : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end Moltiplicatore_Booth;

architecture Structure of Moltiplicatore_Booth is
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_521 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_523 : STD_LOGIC; 
  signal reset_n_IBUF_524 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_8_shift_right_ffm_flipflop_temp_Q_525 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_526 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_527 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_528 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_529 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_530 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_531 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_532 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_533 : STD_LOGIC; 
  signal start_IBUF_534 : STD_LOGIC; 
  signal op1_0_IBUF_536 : STD_LOGIC; 
  signal op1_1_IBUF_537 : STD_LOGIC; 
  signal op1_2_IBUF_538 : STD_LOGIC; 
  signal op1_3_IBUF_539 : STD_LOGIC; 
  signal op1_4_IBUF_541 : STD_LOGIC; 
  signal op1_5_IBUF_543 : STD_LOGIC; 
  signal op1_6_IBUF_545 : STD_LOGIC; 
  signal op1_7_IBUF_547 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_549 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_551 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_553 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_555 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_556 : STD_LOGIC; 
  signal clock_BUFGP : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_559 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal shift_temp : STD_LOGIC; 
  signal en_a_temp_0 : STD_LOGIC; 
  signal Inst_Counter_ModN_reset_0 : STD_LOGIC; 
  signal Add_Sub_pm_rca_vettore_riporti_3_Q : STD_LOGIC; 
  signal Add_Sub_pm_OP2_effettivo_3_0 : STD_LOGIC; 
  signal N18_0 : STD_LOGIC; 
  signal N20_0 : STD_LOGIC; 
  signal Add_Sub_pm_OP2_effettivo_5_Q : STD_LOGIC; 
  signal N51_0 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd2_579 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd2_In_SW0_O : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd3_581 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd1_582 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_583 : STD_LOGIC; 
  signal Inst_Counter_ModN_res_out_584 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd3_In_SW0_O : STD_LOGIC; 
  signal Add_Sub_pm_rca_vettore_riporti_1_Q : STD_LOGIC; 
  signal Add_Sub_pm_rca_vettore_riporti_2_0 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_mux_temp_out_mux_SW1_O : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_mux_temp_out_mux_SW1_O : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_mux_temp_out_mux_SW0_O : STD_LOGIC; 
  signal N50_0 : STD_LOGIC; 
  signal Add_Sub_pm_OP2_effettivo_7_Q : STD_LOGIC; 
  signal Add_Sub_pm_OP2_effettivo_6_Q : STD_LOGIC; 
  signal N24_0 : STD_LOGIC; 
  signal N25_0 : STD_LOGIC; 
  signal Add_Sub_pm_rca_serie_di_fa_5_fa_riporto_out1_SW1_O : STD_LOGIC; 
  signal N35_0 : STD_LOGIC; 
  signal Add_Sub_pm_rca_vettore_riporti_5_0 : STD_LOGIC; 
  signal conteggio_up_temp_0 : STD_LOGIC; 
  signal en_m_temp_0 : STD_LOGIC; 
  signal N63_0 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd2_1_610 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd3_1_611 : STD_LOGIC; 
  signal risultato_5_O : STD_LOGIC; 
  signal stop_O : STD_LOGIC; 
  signal risultato_6_O : STD_LOGIC; 
  signal reset_n_INBUF : STD_LOGIC; 
  signal risultato_7_O : STD_LOGIC; 
  signal risultato_8_O : STD_LOGIC; 
  signal risultato_9_O : STD_LOGIC; 
  signal risultato_10_O : STD_LOGIC; 
  signal risultato_11_O : STD_LOGIC; 
  signal risultato_12_O : STD_LOGIC; 
  signal risultato_13_O : STD_LOGIC; 
  signal risultato_14_O : STD_LOGIC; 
  signal risultato_15_O : STD_LOGIC; 
  signal start_INBUF : STD_LOGIC; 
  signal clock_INBUF : STD_LOGIC; 
  signal op1_0_INBUF : STD_LOGIC; 
  signal op1_1_INBUF : STD_LOGIC; 
  signal op1_2_INBUF : STD_LOGIC; 
  signal op1_3_INBUF : STD_LOGIC; 
  signal op2_0_INBUF : STD_LOGIC; 
  signal op1_4_INBUF : STD_LOGIC; 
  signal op2_1_INBUF : STD_LOGIC; 
  signal op1_5_INBUF : STD_LOGIC; 
  signal op2_2_INBUF : STD_LOGIC; 
  signal op1_6_INBUF : STD_LOGIC; 
  signal op2_3_INBUF : STD_LOGIC; 
  signal op1_7_INBUF : STD_LOGIC; 
  signal op2_4_INBUF : STD_LOGIC; 
  signal risultato_0_O : STD_LOGIC; 
  signal op2_5_INBUF : STD_LOGIC; 
  signal risultato_1_O : STD_LOGIC; 
  signal op2_6_INBUF : STD_LOGIC; 
  signal risultato_2_O : STD_LOGIC; 
  signal op2_7_INBUF : STD_LOGIC; 
  signal risultato_3_O : STD_LOGIC; 
  signal risultato_4_O : STD_LOGIC; 
  signal clock_BUFGP_BUFG_S_INVNOT : STD_LOGIC; 
  signal clock_BUFGP_BUFG_I0_INV : STD_LOGIC; 
  signal N27_F5MUX_890 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N27_BXINV_883 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N28_F5MUX_915 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N28_BXINV_908 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N47_F5MUX_940 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N47_BXINV_933 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N48_F5MUX_965 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N48_BXINV_957 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_DXMUX_998 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_F5MUX_996 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_rt_994 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_BXINV_986 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_mux_temp_out_mux1 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_CLKINV_978 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_CEINV_977 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_DXMUX_1037 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_F5MUX_1035 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_BXINV_1028 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_CLKINV_1020 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_CEINV_1019 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal Add_Sub_pm_OP2_effettivo_5_pack_1 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd2_DXMUX_1098 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd2_FXMUX_1097 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd2_In_1095 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd2_In_SW0_O_pack_3 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd2_CLKINV_1082 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd3_DXMUX_1134 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd3_FXMUX_1133 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd3_In_1131 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd3_In_SW0_O_pack_2 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd3_CLKINV_1117 : STD_LOGIC; 
  signal Add_Sub_pm_rca_vettore_riporti_2_Q : STD_LOGIC; 
  signal Add_Sub_pm_rca_vettore_riporti_1_pack_1 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_DXMUX_1195 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_out_temp : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_mux_temp_out_mux_SW1_O_pack_2 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_CLKINV_1179 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_CEINV_1178 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_DXMUX_1233 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_out_temp : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_mux_temp_out_mux_SW1_O_pack_2 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_CLKINV_1217 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_CEINV_1216 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_DXMUX_1271 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_out_temp : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_mux_temp_out_mux_SW0_O_pack_2 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_CLKINV_1255 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_CEINV_1254 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal Add_Sub_pm_OP2_effettivo_6_pack_1 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal Add_Sub_pm_OP2_effettivo_7_pack_1 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_DXMUX_1357 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_out_temp : STD_LOGIC; 
  signal Add_Sub_pm_rca_serie_di_fa_5_fa_riporto_out1_SW1_O_pack_2 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_CLKINV_1341 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_CEINV_1340 : STD_LOGIC; 
  signal Inst_Counter_ModN_res_out_DXMUX_1403 : STD_LOGIC; 
  signal Inst_Counter_ModN_res_out_cmp_eq0000 : STD_LOGIC; 
  signal Inst_Counter_ModN_res_out_DYMUX_1387 : STD_LOGIC; 
  signal Inst_Counter_ModN_res_out_SRINV_1378 : STD_LOGIC; 
  signal Inst_Counter_ModN_res_out_CLKINV_1377 : STD_LOGIC; 
  signal Inst_Counter_ModN_res_out_CEINV_1376 : STD_LOGIC; 
  signal en_m_temp : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_DYMUX_1433 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_GYMUX_1432 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_out_temp : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_CLKINV_1424 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_CEINV_1423 : STD_LOGIC; 
  signal Inst_Counter_ModN_reset : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd1_DYMUX_1470 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd1_In : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd1_CLKINV_1461 : STD_LOGIC; 
  signal conteggio_up_temp : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_DYMUX_1507 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_out_temp : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_CLKINV_1497 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_CEINV_1496 : STD_LOGIC; 
  signal en_a_temp : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_DYMUX_1545 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_out_temp : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_CLKINV_1536 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_CEINV_1535 : STD_LOGIC; 
  signal stop_OBUF_1596 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_DYMUX_1583 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_out_temp : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_CLKINV_1574 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_CEINV_1573 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_DXMUX_1637 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_out_temp : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_DYMUX_1622 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_out_temp : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_SRINVNOT : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_CLKINV_1613 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_CEINV_1612 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_DXMUX_1683 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_out_temp : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_DYMUX_1668 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_out_temp : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_SRINVNOT : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_CLKINV_1659 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_CEINV_1658 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_8_shift_right_ffm_flipflop_temp_Q_DYMUX_1714 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_8_shift_right_ffm_out_temp : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_8_shift_right_ffm_flipflop_temp_Q_CLKINV_1705 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_8_shift_right_ffm_flipflop_temp_Q_CEINV_1704 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_DYMUX_1747 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_out_temp : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_CLKINV_1738 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_CEINV_1737 : STD_LOGIC; 
  signal Inst_Counter_ModN_c_0_DXMUX_1784 : STD_LOGIC; 
  signal Inst_Counter_ModN_c_0_DYMUX_1775 : STD_LOGIC; 
  signal Inst_Counter_ModN_c_0_SRINV_1765 : STD_LOGIC; 
  signal Inst_Counter_ModN_c_0_CLKINV_1764 : STD_LOGIC; 
  signal Inst_Counter_ModN_c_0_CEINV_1763 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal Add_Sub_pm_OP2_effettivo_3_Q : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_DYMUX_1861 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_CLKINV_1858 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_CEINV_1857 : STD_LOGIC; 
  signal registro_m_temp_1_DXMUX_1889 : STD_LOGIC; 
  signal registro_m_temp_1_DYMUX_1880 : STD_LOGIC; 
  signal registro_m_temp_1_SRINVNOT : STD_LOGIC; 
  signal registro_m_temp_1_CLKINV_1877 : STD_LOGIC; 
  signal registro_m_temp_1_CEINV_1876 : STD_LOGIC; 
  signal registro_m_temp_3_DXMUX_1917 : STD_LOGIC; 
  signal registro_m_temp_3_DYMUX_1908 : STD_LOGIC; 
  signal registro_m_temp_3_SRINVNOT : STD_LOGIC; 
  signal registro_m_temp_3_CLKINV_1905 : STD_LOGIC; 
  signal registro_m_temp_3_CEINV_1904 : STD_LOGIC; 
  signal registro_m_temp_5_DXMUX_1945 : STD_LOGIC; 
  signal registro_m_temp_5_DYMUX_1936 : STD_LOGIC; 
  signal registro_m_temp_5_SRINVNOT : STD_LOGIC; 
  signal registro_m_temp_5_CLKINV_1933 : STD_LOGIC; 
  signal registro_m_temp_5_CEINV_1932 : STD_LOGIC; 
  signal registro_m_temp_7_DXMUX_1973 : STD_LOGIC; 
  signal registro_m_temp_7_DYMUX_1964 : STD_LOGIC; 
  signal registro_m_temp_7_SRINVNOT : STD_LOGIC; 
  signal registro_m_temp_7_CLKINV_1961 : STD_LOGIC; 
  signal registro_m_temp_7_CEINV_1960 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd2_1_DYMUX_1988 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd2_1_CLKINV_1985 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd3_1_DYMUX_2002 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd3_1_CLKINV_1999 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_DXMUX_2039 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_out_temp : STD_LOGIC; 
  signal shift_temp_pack_2 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_CLKINV_2021 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_CEINV_2020 : STD_LOGIC; 
  signal Add_Sub_pm_rca_vettore_riporti_5_Q : STD_LOGIC; 
  signal Add_Sub_pm_rca_vettore_riporti_3_pack_1 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND_1004 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND_1043 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_8_shift_right_ffm_flipflop_temp_Q_FFY_RSTAND_1720 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd2_FFX_RSTAND_1103 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd3_FFX_RSTAND_1139 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND_1201 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND_1239 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND_1277 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND_1363 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_FFY_RSTAND_1439 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd1_FFY_RSTAND_1475 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_FFY_RSTAND_1753 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_FFY_RSTAND_1867 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_FFY_RSTAND_1513 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_FFY_RSTAND_1551 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_FFY_RSTAND_1589 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd2_1_FFY_RSTAND_1993 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd3_1_FFY_RSTAND_2007 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND_2045 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal registro_m_temp : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Inst_Counter_ModN_c : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 2 downto 1 ); 
begin
  risultato_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD43"
    )
    port map (
      I => risultato_5_O,
      O => risultato(5)
    );
  stop_OBUF : X_OBUF
    generic map(
      LOC => "PAD51"
    )
    port map (
      I => stop_O,
      O => stop
    );
  risultato_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD37"
    )
    port map (
      I => risultato_6_O,
      O => risultato(6)
    );
  reset_n_IBUF : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n,
      O => reset_n_INBUF
    );
  reset_n_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_INBUF,
      O => reset_n_IBUF_524
    );
  risultato_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD38"
    )
    port map (
      I => risultato_7_O,
      O => risultato(7)
    );
  risultato_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD39"
    )
    port map (
      I => risultato_8_O,
      O => risultato(8)
    );
  risultato_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD29"
    )
    port map (
      I => risultato_9_O,
      O => risultato(9)
    );
  risultato_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD34"
    )
    port map (
      I => risultato_10_O,
      O => risultato(10)
    );
  risultato_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD52"
    )
    port map (
      I => risultato_11_O,
      O => risultato(11)
    );
  risultato_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD35"
    )
    port map (
      I => risultato_12_O,
      O => risultato(12)
    );
  risultato_13_OBUF : X_OBUF
    generic map(
      LOC => "PAD30"
    )
    port map (
      I => risultato_13_O,
      O => risultato(13)
    );
  risultato_14_OBUF : X_OBUF
    generic map(
      LOC => "PAD25"
    )
    port map (
      I => risultato_14_O,
      O => risultato(14)
    );
  risultato_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD31"
    )
    port map (
      I => risultato_15_O,
      O => risultato(15)
    );
  start_IBUF : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 638 ps
    )
    port map (
      I => start,
      O => start_INBUF
    );
  start_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 638 ps
    )
    port map (
      I => start_INBUF,
      O => start_IBUF_534
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
  op1_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD50",
      PATHPULSE => 638 ps
    )
    port map (
      I => op1(0),
      O => op1_0_INBUF
    );
  op1_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD50",
      PATHPULSE => 638 ps
    )
    port map (
      I => op1_0_INBUF,
      O => op1_0_IBUF_536
    );
  op1_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD46",
      PATHPULSE => 638 ps
    )
    port map (
      I => op1(1),
      O => op1_1_INBUF
    );
  op1_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD46",
      PATHPULSE => 638 ps
    )
    port map (
      I => op1_1_INBUF,
      O => op1_1_IBUF_537
    );
  op1_2_IBUF : X_BUF
    generic map(
      LOC => "PAD42",
      PATHPULSE => 638 ps
    )
    port map (
      I => op1(2),
      O => op1_2_INBUF
    );
  op1_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD42",
      PATHPULSE => 638 ps
    )
    port map (
      I => op1_2_INBUF,
      O => op1_2_IBUF_538
    );
  op1_3_IBUF : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 638 ps
    )
    port map (
      I => op1(3),
      O => op1_3_INBUF
    );
  op1_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 638 ps
    )
    port map (
      I => op1_3_INBUF,
      O => op1_3_IBUF_539
    );
  op2_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD27",
      PATHPULSE => 638 ps
    )
    port map (
      I => op2(0),
      O => op2_0_INBUF
    );
  op1_4_IBUF : X_BUF
    generic map(
      LOC => "IPAD32",
      PATHPULSE => 638 ps
    )
    port map (
      I => op1(4),
      O => op1_4_INBUF
    );
  op1_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD32",
      PATHPULSE => 638 ps
    )
    port map (
      I => op1_4_INBUF,
      O => op1_4_IBUF_541
    );
  op2_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD26",
      PATHPULSE => 638 ps
    )
    port map (
      I => op2(1),
      O => op2_1_INBUF
    );
  op1_5_IBUF : X_BUF
    generic map(
      LOC => "IPAD41",
      PATHPULSE => 638 ps
    )
    port map (
      I => op1(5),
      O => op1_5_INBUF
    );
  op1_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD41",
      PATHPULSE => 638 ps
    )
    port map (
      I => op1_5_INBUF,
      O => op1_5_IBUF_543
    );
  op2_2_IBUF : X_BUF
    generic map(
      LOC => "PAD33",
      PATHPULSE => 638 ps
    )
    port map (
      I => op2(2),
      O => op2_2_INBUF
    );
  op1_6_IBUF : X_BUF
    generic map(
      LOC => "IPAD36",
      PATHPULSE => 638 ps
    )
    port map (
      I => op1(6),
      O => op1_6_INBUF
    );
  op1_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD36",
      PATHPULSE => 638 ps
    )
    port map (
      I => op1_6_INBUF,
      O => op1_6_IBUF_545
    );
  op2_3_IBUF : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 638 ps
    )
    port map (
      I => op2(3),
      O => op2_3_INBUF
    );
  op1_7_IBUF : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 638 ps
    )
    port map (
      I => op1(7),
      O => op1_7_INBUF
    );
  op1_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 638 ps
    )
    port map (
      I => op1_7_INBUF,
      O => op1_7_IBUF_547
    );
  op2_4_IBUF : X_BUF
    generic map(
      LOC => "IPAD23",
      PATHPULSE => 638 ps
    )
    port map (
      I => op2(4),
      O => op2_4_INBUF
    );
  risultato_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD53"
    )
    port map (
      I => risultato_0_O,
      O => risultato(0)
    );
  op2_5_IBUF : X_BUF
    generic map(
      LOC => "PAD22",
      PATHPULSE => 638 ps
    )
    port map (
      I => op2(5),
      O => op2_5_INBUF
    );
  risultato_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD44"
    )
    port map (
      I => risultato_1_O,
      O => risultato(1)
    );
  op2_6_IBUF : X_BUF
    generic map(
      LOC => "PAD21",
      PATHPULSE => 638 ps
    )
    port map (
      I => op2(6),
      O => op2_6_INBUF
    );
  risultato_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD48"
    )
    port map (
      I => risultato_2_O,
      O => risultato(2)
    );
  op2_7_IBUF : X_BUF
    generic map(
      LOC => "IPAD20",
      PATHPULSE => 638 ps
    )
    port map (
      I => op2(7),
      O => op2_7_INBUF
    );
  risultato_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD47"
    )
    port map (
      I => risultato_3_O,
      O => risultato(3)
    );
  risultato_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD45"
    )
    port map (
      I => risultato_4_O,
      O => risultato(4)
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
  N27_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => N27_F5MUX_890,
      O => N27
    );
  N27_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X28Y33"
    )
    port map (
      IA => N73,
      IB => N74,
      SEL => N27_BXINV_883,
      O => N27_F5MUX_890
    );
  N27_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_530,
      O => N27_BXINV_883
    );
  Add_Sub_pm_rca_serie_di_fa_3_fa_riporto_out1_SW0_F : X_LUT4
    generic map(
      INIT => X"0820",
      LOC => "SLICE_X28Y33"
    )
    port map (
      ADR0 => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_529,
      ADR1 => registro_m_temp(4),
      ADR2 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_559,
      ADR3 => registro_m_temp(3),
      O => N73
    );
  Add_Sub_pm_rca_serie_di_fa_3_fa_riporto_out1_SW0_G : X_LUT4
    generic map(
      INIT => X"3EBC",
      LOC => "SLICE_X28Y33"
    )
    port map (
      ADR0 => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_529,
      ADR1 => registro_m_temp(4),
      ADR2 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_559,
      ADR3 => registro_m_temp(3),
      O => N74
    );
  N28_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => N28_F5MUX_915,
      O => N28
    );
  N28_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X28Y29"
    )
    port map (
      IA => N71,
      IB => N72,
      SEL => N28_BXINV_908,
      O => N28_F5MUX_915
    );
  N28_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_m_temp(4),
      O => N28_BXINV_908
    );
  Add_Sub_pm_rca_serie_di_fa_3_fa_riporto_out1_SW1_G : X_LUT4
    generic map(
      INIT => X"8AFE",
      LOC => "SLICE_X28Y29"
    )
    port map (
      ADR0 => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_530,
      ADR1 => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_529,
      ADR2 => registro_m_temp(3),
      ADR3 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_559,
      O => N72
    );
  Add_Sub_pm_rca_serie_di_fa_3_fa_riporto_out1_SW1_F : X_LUT4
    generic map(
      INIT => X"EFA8",
      LOC => "SLICE_X28Y29"
    )
    port map (
      ADR0 => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_530,
      ADR1 => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_529,
      ADR2 => registro_m_temp(3),
      ADR3 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_559,
      O => N71
    );
  N47_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => N47_F5MUX_940,
      O => N47
    );
  N47_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X28Y30"
    )
    port map (
      IA => N53,
      IB => N54,
      SEL => N47_BXINV_933,
      O => N47_F5MUX_940
    );
  N47_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_m_temp(2),
      O => N47_BXINV_933
    );
  Add_Sub_pm_rca_serie_di_fa_2_fa_riporto_out1_SW0_SW0_F : X_LUT4
    generic map(
      INIT => X"F840",
      LOC => "SLICE_X28Y30"
    )
    port map (
      ADR0 => registro_m_temp(1),
      ADR1 => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_527,
      ADR2 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_559,
      ADR3 => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_528,
      O => N53
    );
  Add_Sub_pm_rca_serie_di_fa_2_fa_riporto_out1_SW0_SW0_G : X_LUT4
    generic map(
      INIT => X"40EC",
      LOC => "SLICE_X28Y30"
    )
    port map (
      ADR0 => registro_m_temp(1),
      ADR1 => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_528,
      ADR2 => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_527,
      ADR3 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_559,
      O => N54
    );
  N48_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => N48_F5MUX_965,
      O => N48
    );
  N48_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X28Y31"
    )
    port map (
      IA => N55,
      IB => N56,
      SEL => N48_BXINV_957,
      O => N48_F5MUX_965
    );
  N48_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_527,
      O => N48_BXINV_957
    );
  Add_Sub_pm_rca_serie_di_fa_2_fa_riporto_out1_SW0_SW1_F : X_LUT4
    generic map(
      INIT => X"4ED8",
      LOC => "SLICE_X28Y31"
    )
    port map (
      ADR0 => registro_m_temp(1),
      ADR1 => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_528,
      ADR2 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_559,
      ADR3 => registro_m_temp(2),
      O => N55
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_F5MUX_996,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_DXMUX_998
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X26Y31"
    )
    port map (
      IA => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_mux_temp_out_mux1,
      IB => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_rt_994,
      SEL => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_BXINV_986,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_F5MUX_996
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => shift_temp,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_BXINV_986
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_CLKINV_978
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => en_a_temp_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_CEINV_977
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_mux_temp_out_mux11 : X_LUT4
    generic map(
      INIT => X"C993",
      LOC => "SLICE_X26Y31"
    )
    port map (
      ADR0 => Add_Sub_pm_OP2_effettivo_3_0,
      ADR1 => N18_0,
      ADR2 => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_529,
      ADR3 => Add_Sub_pm_rca_vettore_riporti_3_Q,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_mux_temp_out_mux1
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_F5MUX_1035,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_DXMUX_1037
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X27Y29"
    )
    port map (
      IA => N69,
      IB => N70,
      SEL => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_BXINV_1028,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_F5MUX_1035
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => Add_Sub_pm_rca_vettore_riporti_3_Q,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_BXINV_1028
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_CLKINV_1020
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => en_a_temp_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_CEINV_1019
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_mux_temp_out_mux_F : X_LUT4
    generic map(
      INIT => X"D88D",
      LOC => "SLICE_X27Y29"
    )
    port map (
      ADR0 => shift_temp,
      ADR1 => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_532,
      ADR2 => N20_0,
      ADR3 => N27,
      O => N69
    );
  N51_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => N51,
      O => N51_0
    );
  N51_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => Add_Sub_pm_OP2_effettivo_5_pack_1,
      O => Add_Sub_pm_OP2_effettivo_5_Q
    );
  Add_Sub_pm_xor_inv_Mxor_temp_5_Result1 : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X28Y28"
    )
    port map (
      ADR0 => registro_m_temp(5),
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_559,
      O => Add_Sub_pm_OP2_effettivo_5_pack_1
    );
  cu_stato_corrente_FSM_FFd2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd2_FXMUX_1097,
      O => cu_stato_corrente_FSM_FFd2_DXMUX_1098
    );
  cu_stato_corrente_FSM_FFd2_FXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd2_In_1095,
      O => cu_stato_corrente_FSM_FFd2_FXMUX_1097
    );
  cu_stato_corrente_FSM_FFd2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd2_In_SW0_O_pack_3,
      O => cu_stato_corrente_FSM_FFd2_In_SW0_O
    );
  cu_stato_corrente_FSM_FFd2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => cu_stato_corrente_FSM_FFd2_CLKINV_1082
    );
  cu_stato_corrente_FSM_FFd2_In_SW0 : X_LUT4
    generic map(
      INIT => X"7447",
      LOC => "SLICE_X29Y23"
    )
    port map (
      ADR0 => Inst_Counter_ModN_res_out_584,
      ADR1 => cu_stato_corrente_FSM_FFd3_581,
      ADR2 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_549,
      ADR3 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_583,
      O => cu_stato_corrente_FSM_FFd2_In_SW0_O_pack_3
    );
  cu_stato_corrente_FSM_FFd3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd3_FXMUX_1133,
      O => cu_stato_corrente_FSM_FFd3_DXMUX_1134
    );
  cu_stato_corrente_FSM_FFd3_FXMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd3_In_1131,
      O => cu_stato_corrente_FSM_FFd3_FXMUX_1133
    );
  cu_stato_corrente_FSM_FFd3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd3_In_SW0_O_pack_2,
      O => cu_stato_corrente_FSM_FFd3_In_SW0_O
    );
  cu_stato_corrente_FSM_FFd3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => cu_stato_corrente_FSM_FFd3_CLKINV_1117
    );
  cu_stato_corrente_FSM_FFd3_In_SW0 : X_LUT4
    generic map(
      INIT => X"A5CC",
      LOC => "SLICE_X30Y22"
    )
    port map (
      ADR0 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_583,
      ADR1 => start_IBUF_534,
      ADR2 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_549,
      ADR3 => cu_stato_corrente_FSM_FFd2_579,
      O => cu_stato_corrente_FSM_FFd3_In_SW0_O_pack_2
    );
  Add_Sub_pm_rca_vettore_riporti_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => Add_Sub_pm_rca_vettore_riporti_2_Q,
      O => Add_Sub_pm_rca_vettore_riporti_2_0
    );
  Add_Sub_pm_rca_vettore_riporti_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => Add_Sub_pm_rca_vettore_riporti_1_pack_1,
      O => Add_Sub_pm_rca_vettore_riporti_1_Q
    );
  Add_Sub_pm_rca_serie_di_fa_0_fa_riporto_out1 : X_LUT4
    generic map(
      INIT => X"BB88",
      LOC => "SLICE_X30Y31"
    )
    port map (
      ADR0 => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_526,
      ADR1 => registro_m_temp(0),
      ADR2 => VCC,
      ADR3 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_559,
      O => Add_Sub_pm_rca_vettore_riporti_1_pack_1
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_out_temp,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_DXMUX_1195
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_mux_temp_out_mux_SW1_O_pack_2,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_mux_temp_out_mux_SW1_O
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_CLKINV_1179
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => en_a_temp_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_CEINV_1178
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_out_temp,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_DXMUX_1233
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_mux_temp_out_mux_SW1_O_pack_2,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_mux_temp_out_mux_SW1_O
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_CLKINV_1217
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => en_a_temp_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_CEINV_1216
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_out_temp,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_DXMUX_1271
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_mux_temp_out_mux_SW0_O_pack_2,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_mux_temp_out_mux_SW0_O
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_CLKINV_1255
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => en_a_temp_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_CEINV_1254
    );
  N24_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => N24,
      O => N24_0
    );
  N24_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => Add_Sub_pm_OP2_effettivo_6_pack_1,
      O => Add_Sub_pm_OP2_effettivo_6_Q
    );
  Add_Sub_pm_xor_inv_Mxor_temp_6_Result1 : X_LUT4
    generic map(
      INIT => X"55AA",
      LOC => "SLICE_X26Y28"
    )
    port map (
      ADR0 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_549,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => registro_m_temp(6),
      O => Add_Sub_pm_OP2_effettivo_6_pack_1
    );
  N25_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => N25,
      O => N25_0
    );
  N25_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => Add_Sub_pm_OP2_effettivo_7_pack_1,
      O => Add_Sub_pm_OP2_effettivo_7_Q
    );
  Add_Sub_pm_xor_inv_Mxor_temp_7_Result1 : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X26Y29"
    )
    port map (
      ADR0 => VCC,
      ADR1 => registro_m_temp(7),
      ADR2 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_559,
      ADR3 => VCC,
      O => Add_Sub_pm_OP2_effettivo_7_pack_1
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_out_temp,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_DXMUX_1357
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => Add_Sub_pm_rca_serie_di_fa_5_fa_riporto_out1_SW1_O_pack_2,
      O => Add_Sub_pm_rca_serie_di_fa_5_fa_riporto_out1_SW1_O
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_CLKINV_1341
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => en_a_temp_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_CEINV_1340
    );
  Inst_Counter_ModN_res_out_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_Counter_ModN_res_out_cmp_eq0000,
      O => Inst_Counter_ModN_res_out_DXMUX_1403
    );
  Inst_Counter_ModN_res_out_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => Result(2),
      O => Inst_Counter_ModN_res_out_DYMUX_1387
    );
  Inst_Counter_ModN_res_out_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_Counter_ModN_reset_0,
      O => Inst_Counter_ModN_res_out_SRINV_1378
    );
  Inst_Counter_ModN_res_out_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => Inst_Counter_ModN_res_out_CLKINV_1377
    );
  Inst_Counter_ModN_res_out_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y24",
      PATHPULSE => 638 ps
    )
    port map (
      I => conteggio_up_temp_0,
      O => Inst_Counter_ModN_res_out_CEINV_1376
    );
  Inst_Counter_ModN_Mcount_c_xor_2_11 : X_LUT4
    generic map(
      INIT => X"66AA",
      LOC => "SLICE_X29Y24"
    )
    port map (
      ADR0 => Inst_Counter_ModN_c(2),
      ADR1 => Inst_Counter_ModN_c(0),
      ADR2 => VCC,
      ADR3 => Inst_Counter_ModN_c(1),
      O => Result(2)
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => en_m_temp,
      O => en_m_temp_0
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_GYMUX_1432,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_DYMUX_1433
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_GYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_out_temp,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_GYMUX_1432
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_CLKINV_1424
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd3_581,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_CEINV_1423
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"B8F0",
      LOC => "SLICE_X29Y31"
    )
    port map (
      ADR0 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_551,
      ADR1 => cu_stato_corrente_FSM_FFd2_579,
      ADR2 => op1_0_IBUF_536,
      ADR3 => cu_stato_corrente_FSM_FFd3_581,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_out_temp
    );
  cu_stato_corrente_FSM_FFd1_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_Counter_ModN_reset,
      O => Inst_Counter_ModN_reset_0
    );
  cu_stato_corrente_FSM_FFd1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd1_In,
      O => cu_stato_corrente_FSM_FFd1_DYMUX_1470
    );
  cu_stato_corrente_FSM_FFd1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => cu_stato_corrente_FSM_FFd1_CLKINV_1461
    );
  cu_stato_corrente_FSM_FFd1_In1 : X_LUT4
    generic map(
      INIT => X"0048",
      LOC => "SLICE_X28Y22"
    )
    port map (
      ADR0 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_583,
      ADR1 => cu_stato_corrente_FSM_FFd2_579,
      ADR2 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_549,
      ADR3 => cu_stato_corrente_FSM_FFd3_581,
      O => cu_stato_corrente_FSM_FFd1_In
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => conteggio_up_temp,
      O => conteggio_up_temp_0
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_out_temp,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_DYMUX_1507
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_CLKINV_1497
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd3_581,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_CEINV_1496
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"C000",
      LOC => "SLICE_X29Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_549,
      ADR2 => cu_stato_corrente_FSM_FFd2_579,
      ADR3 => cu_stato_corrente_FSM_FFd3_581,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_out_temp
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => en_a_temp,
      O => en_a_temp_0
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_out_temp,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_DYMUX_1545
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_CLKINV_1536
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd3_581,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_CEINV_1535
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_out_temp,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_DYMUX_1583
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_CLKINV_1574
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd3_581,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_CEINV_1573
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_out_temp,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_DXMUX_1637
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_out_temp,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_DYMUX_1622
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_SRINV : X_INV
    generic map(
      LOC => "SLICE_X31Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_524,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_SRINVNOT
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_CLKINV_1613
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd3_581,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_CEINV_1612
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"BF80",
      LOC => "SLICE_X31Y22"
    )
    port map (
      ADR0 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_556,
      ADR1 => cu_stato_corrente_FSM_FFd3_581,
      ADR2 => cu_stato_corrente_FSM_FFd2_579,
      ADR3 => op1_3_IBUF_539,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_out_temp
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_out_temp,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_DXMUX_1683
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_out_temp,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_DYMUX_1668
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_SRINV : X_INV
    generic map(
      LOC => "SLICE_X31Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_524,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_SRINVNOT
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_CLKINV_1659
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd3_581,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_CEINV_1658
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"E2AA",
      LOC => "SLICE_X31Y27"
    )
    port map (
      ADR0 => op1_5_IBUF_543,
      ADR1 => cu_stato_corrente_FSM_FFd2_579,
      ADR2 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_523,
      ADR3 => cu_stato_corrente_FSM_FFd3_581,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_out_temp
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_8_shift_right_ffm_flipflop_temp_Q_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => N63,
      O => N63_0
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_8_shift_right_ffm_flipflop_temp_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_8_shift_right_ffm_out_temp,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_8_shift_right_ffm_flipflop_temp_Q_DYMUX_1714
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_8_shift_right_ffm_flipflop_temp_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_8_shift_right_ffm_flipflop_temp_Q_CLKINV_1705
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_8_shift_right_ffm_flipflop_temp_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd3_581,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_8_shift_right_ffm_flipflop_temp_Q_CEINV_1704
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_out_temp,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_DYMUX_1747
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_CLKINV_1738
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => en_a_temp_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_CEINV_1737
    );
  Inst_Counter_ModN_c_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X28Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_Counter_ModN_c(0),
      O => Inst_Counter_ModN_c_0_DXMUX_1784
    );
  Inst_Counter_ModN_c_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => Result(1),
      O => Inst_Counter_ModN_c_0_DYMUX_1775
    );
  Inst_Counter_ModN_c_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_Counter_ModN_reset_0,
      O => Inst_Counter_ModN_c_0_SRINV_1765
    );
  Inst_Counter_ModN_c_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => Inst_Counter_ModN_c_0_CLKINV_1764
    );
  Inst_Counter_ModN_c_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y25",
      PATHPULSE => 638 ps
    )
    port map (
      I => conteggio_up_temp_0,
      O => Inst_Counter_ModN_c_0_CEINV_1763
    );
  N35_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => N35,
      O => N35_0
    );
  N35_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => N50,
      O => N50_0
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_mux_temp_out_mux_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"17E8",
      LOC => "SLICE_X29Y27"
    )
    port map (
      ADR0 => Add_Sub_pm_OP2_effettivo_5_Q,
      ADR1 => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_531,
      ADR2 => N27,
      ADR3 => registro_m_temp(6),
      O => N50
    );
  Add_Sub_pm_OP2_effettivo_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => Add_Sub_pm_OP2_effettivo_3_Q,
      O => Add_Sub_pm_OP2_effettivo_3_0
    );
  Add_Sub_pm_OP2_effettivo_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X26Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => N18,
      O => N18_0
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_mux_temp_out_mux_SW0 : X_LUT4
    generic map(
      INIT => X"6699",
      LOC => "SLICE_X26Y30"
    )
    port map (
      ADR0 => registro_m_temp(4),
      ADR1 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_549,
      ADR2 => VCC,
      ADR3 => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_530,
      O => N18
    );
  N20_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X27Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => N20,
      O => N20_0
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_mux_temp_out_mux_SW0 : X_LUT4
    generic map(
      INIT => X"6969",
      LOC => "SLICE_X27Y31"
    )
    port map (
      ADR0 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_549,
      ADR1 => registro_m_temp(5),
      ADR2 => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_531,
      ADR3 => VCC,
      O => N20
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_GYMUX_1432,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_DYMUX_1861
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_CLKINV_1858
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd3_581,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_CEINV_1857
    );
  registro_m_temp_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => op2_1_INBUF,
      O => registro_m_temp_1_DXMUX_1889
    );
  registro_m_temp_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => op2_0_INBUF,
      O => registro_m_temp_1_DYMUX_1880
    );
  registro_m_temp_1_SRINV : X_INV
    generic map(
      LOC => "SLICE_X30Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_524,
      O => registro_m_temp_1_SRINVNOT
    );
  registro_m_temp_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_m_temp_1_CLKINV_1877
    );
  registro_m_temp_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => en_m_temp_0,
      O => registro_m_temp_1_CEINV_1876
    );
  registro_m_temp_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => op2_3_INBUF,
      O => registro_m_temp_3_DXMUX_1917
    );
  registro_m_temp_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => op2_2_INBUF,
      O => registro_m_temp_3_DYMUX_1908
    );
  registro_m_temp_3_SRINV : X_INV
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_524,
      O => registro_m_temp_3_SRINVNOT
    );
  registro_m_temp_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_m_temp_3_CLKINV_1905
    );
  registro_m_temp_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => en_m_temp_0,
      O => registro_m_temp_3_CEINV_1904
    );
  registro_m_temp_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => op2_5_INBUF,
      O => registro_m_temp_5_DXMUX_1945
    );
  registro_m_temp_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => op2_4_INBUF,
      O => registro_m_temp_5_DYMUX_1936
    );
  registro_m_temp_5_SRINV : X_INV
    generic map(
      LOC => "SLICE_X27Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_524,
      O => registro_m_temp_5_SRINVNOT
    );
  registro_m_temp_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_m_temp_5_CLKINV_1933
    );
  registro_m_temp_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y33",
      PATHPULSE => 638 ps
    )
    port map (
      I => en_m_temp_0,
      O => registro_m_temp_5_CEINV_1932
    );
  registro_m_temp_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => op2_7_INBUF,
      O => registro_m_temp_7_DXMUX_1973
    );
  registro_m_temp_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => op2_6_INBUF,
      O => registro_m_temp_7_DYMUX_1964
    );
  registro_m_temp_7_SRINV : X_INV
    generic map(
      LOC => "SLICE_X26Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_524,
      O => registro_m_temp_7_SRINVNOT
    );
  registro_m_temp_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_m_temp_7_CLKINV_1961
    );
  registro_m_temp_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y32",
      PATHPULSE => 638 ps
    )
    port map (
      I => en_m_temp_0,
      O => registro_m_temp_7_CEINV_1960
    );
  cu_stato_corrente_FSM_FFd2_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd2_FXMUX_1097,
      O => cu_stato_corrente_FSM_FFd2_1_DYMUX_1988
    );
  cu_stato_corrente_FSM_FFd2_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => cu_stato_corrente_FSM_FFd2_1_CLKINV_1985
    );
  cu_stato_corrente_FSM_FFd3_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd3_FXMUX_1133,
      O => cu_stato_corrente_FSM_FFd3_1_DYMUX_2002
    );
  cu_stato_corrente_FSM_FFd3_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => cu_stato_corrente_FSM_FFd3_1_CLKINV_1999
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_out_temp,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_DXMUX_2039
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => shift_temp_pack_2,
      O => shift_temp
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_CLKINV_2021
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => en_a_temp_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_CEINV_2020
    );
  cu_conteggio_up11 : X_LUT4
    generic map(
      INIT => X"F000",
      LOC => "SLICE_X30Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => VCC,
      ADR2 => cu_stato_corrente_FSM_FFd3_1_611,
      ADR3 => cu_stato_corrente_FSM_FFd2_1_610,
      O => shift_temp_pack_2
    );
  Add_Sub_pm_rca_vettore_riporti_5_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => Add_Sub_pm_rca_vettore_riporti_5_Q,
      O => Add_Sub_pm_rca_vettore_riporti_5_0
    );
  Add_Sub_pm_rca_vettore_riporti_5_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => Add_Sub_pm_rca_vettore_riporti_3_pack_1,
      O => Add_Sub_pm_rca_vettore_riporti_3_Q
    );
  Add_Sub_pm_rca_serie_di_fa_2_fa_riporto_out1 : X_LUT4
    generic map(
      INIT => X"CFC0",
      LOC => "SLICE_X29Y28"
    )
    port map (
      ADR0 => VCC,
      ADR1 => N48,
      ADR2 => Add_Sub_pm_rca_vettore_riporti_1_Q,
      ADR3 => N47,
      O => Add_Sub_pm_rca_vettore_riporti_3_pack_1
    );
  Add_Sub_pm_rca_serie_di_fa_2_fa_riporto_out1_SW0_SW1_G : X_LUT4
    generic map(
      INIT => X"FF3C",
      LOC => "SLICE_X28Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_559,
      ADR2 => registro_m_temp(2),
      ADR3 => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_528,
      O => N56
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_rt : X_LUT4
    generic map(
      INIT => X"AAAA",
      LOC => "SLICE_X26Y31"
    )
    port map (
      ADR0 => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_531,
      ADR1 => VCC,
      ADR2 => VCC,
      ADR3 => VCC,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_rt_994
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q : X_FF
    generic map(
      LOC => "SLICE_X26Y31",
      INIT => '0'
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_DXMUX_998,
      CE => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_CEINV_977,
      CLK => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_CLKINV_978,
      SET => GND,
      RST => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND_1004,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_530
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X26Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_Counter_ModN_reset_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND_1004
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_mux_temp_out_mux_G : X_LUT4
    generic map(
      INIT => X"CAC5",
      LOC => "SLICE_X27Y29"
    )
    port map (
      ADR0 => N28,
      ADR1 => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_532,
      ADR2 => shift_temp,
      ADR3 => N20_0,
      O => N70
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q : X_FF
    generic map(
      LOC => "SLICE_X27Y29",
      INIT => '0'
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_DXMUX_1037,
      CE => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_CEINV_1019,
      CLK => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_CLKINV_1020,
      SET => GND,
      RST => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND_1043,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_531
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X27Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_Counter_ModN_reset_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND_1043
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_mux_temp_out_mux_SW0_SW1 : X_LUT4
    generic map(
      INIT => X"1E78",
      LOC => "SLICE_X28Y28"
    )
    port map (
      ADR0 => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_531,
      ADR1 => N28,
      ADR2 => registro_m_temp(6),
      ADR3 => Add_Sub_pm_OP2_effettivo_5_Q,
      O => N51
    );
  cu_stato_corrente_FSM_FFd2_In : X_LUT4
    generic map(
      INIT => X"FEAE",
      LOC => "SLICE_X29Y23"
    )
    port map (
      ADR0 => cu_stato_corrente_FSM_FFd1_582,
      ADR1 => cu_stato_corrente_FSM_FFd3_581,
      ADR2 => cu_stato_corrente_FSM_FFd2_579,
      ADR3 => cu_stato_corrente_FSM_FFd2_In_SW0_O,
      O => cu_stato_corrente_FSM_FFd2_In_1095
    );
  Add_Sub_pm_rca_serie_di_fa_4_fa_riporto_out1 : X_LUT4
    generic map(
      INIT => X"ACAC",
      LOC => "SLICE_X29Y28"
    )
    port map (
      ADR0 => N28,
      ADR1 => N27,
      ADR2 => Add_Sub_pm_rca_vettore_riporti_3_Q,
      ADR3 => VCC,
      O => Add_Sub_pm_rca_vettore_riporti_5_Q
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"ACCC",
      LOC => "SLICE_X31Y22"
    )
    port map (
      ADR0 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_521,
      ADR1 => op1_4_IBUF_541,
      ADR2 => cu_stato_corrente_FSM_FFd2_579,
      ADR3 => cu_stato_corrente_FSM_FFd3_581,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_out_temp
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q : X_FF
    generic map(
      LOC => "SLICE_X31Y22",
      INIT => '0'
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_DXMUX_1637,
      CE => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_CEINV_1612,
      CLK => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_CLKINV_1613,
      SET => GND,
      RST => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_SRINVNOT,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_556
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q : X_FF
    generic map(
      LOC => "SLICE_X31Y27",
      INIT => '0'
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_DYMUX_1668,
      CE => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_CEINV_1658,
      CLK => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_CLKINV_1659,
      SET => GND,
      RST => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_SRINVNOT,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_521
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"D8F0",
      LOC => "SLICE_X31Y27"
    )
    port map (
      ADR0 => cu_stato_corrente_FSM_FFd2_579,
      ADR1 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_8_shift_right_ffm_flipflop_temp_Q_525,
      ADR2 => op1_6_IBUF_545,
      ADR3 => cu_stato_corrente_FSM_FFd3_581,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_out_temp
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q : X_FF
    generic map(
      LOC => "SLICE_X31Y27",
      INIT => '0'
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_DXMUX_1683,
      CE => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_CEINV_1658,
      CLK => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_CLKINV_1659,
      SET => GND,
      RST => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_SRINVNOT,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_523
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_8_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"EA2A",
      LOC => "SLICE_X31Y30"
    )
    port map (
      ADR0 => op1_7_IBUF_547,
      ADR1 => cu_stato_corrente_FSM_FFd2_579,
      ADR2 => cu_stato_corrente_FSM_FFd3_581,
      ADR3 => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_526,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_8_shift_right_ffm_out_temp
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_8_shift_right_ffm_flipflop_temp_Q : X_FF
    generic map(
      LOC => "SLICE_X31Y30",
      INIT => '0'
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_8_shift_right_ffm_flipflop_temp_Q_DYMUX_1714,
      CE => registro_Q_LOOP_FOR_ISTANTIATE_FFM_8_shift_right_ffm_flipflop_temp_Q_CEINV_1704,
      CLK => registro_Q_LOOP_FOR_ISTANTIATE_FFM_8_shift_right_ffm_flipflop_temp_Q_CLKINV_1705,
      SET => GND,
      RST => registro_Q_LOOP_FOR_ISTANTIATE_FFM_8_shift_right_ffm_flipflop_temp_Q_FFY_RSTAND_1720,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_8_shift_right_ffm_flipflop_temp_Q_525
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_8_shift_right_ffm_flipflop_temp_Q_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X31Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_524,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_8_shift_right_ffm_flipflop_temp_Q_FFY_RSTAND_1720
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_mux_temp_out_mux_SW0 : X_LUT4
    generic map(
      INIT => X"A66A",
      LOC => "SLICE_X31Y30"
    )
    port map (
      ADR0 => registro_m_temp(1),
      ADR1 => registro_m_temp(0),
      ADR2 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_549,
      ADR3 => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_526,
      O => N63
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_mux_temp_out_mux : X_LUT4
    generic map(
      INIT => X"A3AC",
      LOC => "SLICE_X31Y31"
    )
    port map (
      ADR0 => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_528,
      ADR1 => N63_0,
      ADR2 => shift_temp,
      ADR3 => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_527,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_out_temp
    );
  cu_stato_corrente_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X29Y23",
      INIT => '0'
    )
    port map (
      I => cu_stato_corrente_FSM_FFd2_DXMUX_1098,
      CE => VCC,
      CLK => cu_stato_corrente_FSM_FFd2_CLKINV_1082,
      SET => GND,
      RST => cu_stato_corrente_FSM_FFd2_FFX_RSTAND_1103,
      O => cu_stato_corrente_FSM_FFd2_579
    );
  cu_stato_corrente_FSM_FFd2_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X29Y23",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_524,
      O => cu_stato_corrente_FSM_FFd2_FFX_RSTAND_1103
    );
  cu_stato_corrente_FSM_FFd3_In : X_LUT4
    generic map(
      INIT => X"CFCC",
      LOC => "SLICE_X30Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cu_stato_corrente_FSM_FFd1_582,
      ADR2 => cu_stato_corrente_FSM_FFd3_581,
      ADR3 => cu_stato_corrente_FSM_FFd3_In_SW0_O,
      O => cu_stato_corrente_FSM_FFd3_In_1131
    );
  cu_stato_corrente_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X30Y22",
      INIT => '0'
    )
    port map (
      I => cu_stato_corrente_FSM_FFd3_DXMUX_1134,
      CE => VCC,
      CLK => cu_stato_corrente_FSM_FFd3_CLKINV_1117,
      SET => GND,
      RST => cu_stato_corrente_FSM_FFd3_FFX_RSTAND_1139,
      O => cu_stato_corrente_FSM_FFd3_581
    );
  cu_stato_corrente_FSM_FFd3_FFX_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X30Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_524,
      O => cu_stato_corrente_FSM_FFd3_FFX_RSTAND_1139
    );
  Add_Sub_pm_rca_serie_di_fa_1_fa_riporto_out1 : X_LUT4
    generic map(
      INIT => X"B2E8",
      LOC => "SLICE_X30Y31"
    )
    port map (
      ADR0 => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_527,
      ADR1 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_549,
      ADR2 => Add_Sub_pm_rca_vettore_riporti_1_Q,
      ADR3 => registro_m_temp(1),
      O => Add_Sub_pm_rca_vettore_riporti_2_Q
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_mux_temp_out_mux_SW1 : X_LUT4
    generic map(
      INIT => X"6996",
      LOC => "SLICE_X29Y30"
    )
    port map (
      ADR0 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_549,
      ADR1 => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_529,
      ADR2 => Add_Sub_pm_rca_vettore_riporti_3_Q,
      ADR3 => registro_m_temp(3),
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_mux_temp_out_mux_SW1_O_pack_2
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_mux_temp_out_mux : X_LUT4
    generic map(
      INIT => X"B8F0",
      LOC => "SLICE_X29Y30"
    )
    port map (
      ADR0 => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_530,
      ADR1 => cu_stato_corrente_FSM_FFd2_579,
      ADR2 => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_mux_temp_out_mux_SW1_O,
      ADR3 => cu_stato_corrente_FSM_FFd3_581,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_out_temp
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q : X_FF
    generic map(
      LOC => "SLICE_X29Y30",
      INIT => '0'
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_DXMUX_1195,
      CE => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_CEINV_1178,
      CLK => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_CLKINV_1179,
      SET => GND,
      RST => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND_1201,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_529
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X29Y30",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_Counter_ModN_reset_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND_1201
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_mux_temp_out_mux_SW1 : X_LUT4
    generic map(
      INIT => X"6996",
      LOC => "SLICE_X31Y28"
    )
    port map (
      ADR0 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_549,
      ADR1 => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_528,
      ADR2 => Add_Sub_pm_rca_vettore_riporti_2_0,
      ADR3 => registro_m_temp(2),
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_mux_temp_out_mux_SW1_O_pack_2
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_mux_temp_out_mux : X_LUT4
    generic map(
      INIT => X"B8F0",
      LOC => "SLICE_X31Y28"
    )
    port map (
      ADR0 => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_529,
      ADR1 => cu_stato_corrente_FSM_FFd2_579,
      ADR2 => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_mux_temp_out_mux_SW1_O,
      ADR3 => cu_stato_corrente_FSM_FFd3_581,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_out_temp
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q : X_FF
    generic map(
      LOC => "SLICE_X31Y28",
      INIT => '0'
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_DXMUX_1233,
      CE => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_CEINV_1216,
      CLK => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_CLKINV_1217,
      SET => GND,
      RST => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND_1239,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_528
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X31Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_Counter_ModN_reset_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND_1239
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_mux_temp_out_mux_SW0 : X_LUT4
    generic map(
      INIT => X"9A95",
      LOC => "SLICE_X29Y26"
    )
    port map (
      ADR0 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_549,
      ADR1 => N51_0,
      ADR2 => Add_Sub_pm_rca_vettore_riporti_3_Q,
      ADR3 => N50_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_mux_temp_out_mux_SW0_O_pack_2
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_mux_temp_out_mux : X_LUT4
    generic map(
      INIT => X"CCA5",
      LOC => "SLICE_X29Y26"
    )
    port map (
      ADR0 => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_532,
      ADR1 => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_533,
      ADR2 => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_mux_temp_out_mux_SW0_O,
      ADR3 => shift_temp,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_out_temp
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q : X_FF
    generic map(
      LOC => "SLICE_X29Y26",
      INIT => '0'
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_DXMUX_1271,
      CE => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_CEINV_1254,
      CLK => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_CLKINV_1255,
      SET => GND,
      RST => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND_1277,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_532
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X29Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_Counter_ModN_reset_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND_1277
    );
  Add_Sub_pm_rca_serie_di_fa_6_fa_riporto_out1_SW0 : X_LUT4
    generic map(
      INIT => X"1230",
      LOC => "SLICE_X26Y28"
    )
    port map (
      ADR0 => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_532,
      ADR1 => shift_temp,
      ADR2 => Add_Sub_pm_OP2_effettivo_7_Q,
      ADR3 => Add_Sub_pm_OP2_effettivo_6_Q,
      O => N24
    );
  Add_Sub_pm_rca_serie_di_fa_6_fa_riporto_out1_SW1 : X_LUT4
    generic map(
      INIT => X"0312",
      LOC => "SLICE_X26Y29"
    )
    port map (
      ADR0 => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_532,
      ADR1 => shift_temp,
      ADR2 => Add_Sub_pm_OP2_effettivo_7_Q,
      ADR3 => Add_Sub_pm_OP2_effettivo_6_Q,
      O => N25
    );
  Add_Sub_pm_rca_serie_di_fa_5_fa_riporto_out1_SW1 : X_LUT4
    generic map(
      INIT => X"0E1F",
      LOC => "SLICE_X29Y29"
    )
    port map (
      ADR0 => Add_Sub_pm_OP2_effettivo_5_Q,
      ADR1 => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_531,
      ADR2 => N25_0,
      ADR3 => N24_0,
      O => Add_Sub_pm_rca_serie_di_fa_5_fa_riporto_out1_SW1_O_pack_2
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"A965",
      LOC => "SLICE_X29Y29"
    )
    port map (
      ADR0 => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_533,
      ADR1 => Add_Sub_pm_rca_vettore_riporti_5_0,
      ADR2 => N35_0,
      ADR3 => Add_Sub_pm_rca_serie_di_fa_5_fa_riporto_out1_SW1_O,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_out_temp
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q : X_FF
    generic map(
      LOC => "SLICE_X29Y29",
      INIT => '0'
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_DXMUX_1357,
      CE => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_CEINV_1340,
      CLK => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_CLKINV_1341,
      SET => GND,
      RST => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND_1363,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_533
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X29Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_Counter_ModN_reset_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND_1363
    );
  Inst_Counter_ModN_c_2 : X_FF
    generic map(
      LOC => "SLICE_X29Y24",
      INIT => '0'
    )
    port map (
      I => Inst_Counter_ModN_res_out_DYMUX_1387,
      CE => Inst_Counter_ModN_res_out_CEINV_1376,
      CLK => Inst_Counter_ModN_res_out_CLKINV_1377,
      SET => GND,
      RST => Inst_Counter_ModN_res_out_SRINV_1378,
      O => Inst_Counter_ModN_c(2)
    );
  Inst_Counter_ModN_res_out_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"2200",
      LOC => "SLICE_X29Y24"
    )
    port map (
      ADR0 => Inst_Counter_ModN_c(2),
      ADR1 => Inst_Counter_ModN_c(0),
      ADR2 => VCC,
      ADR3 => Inst_Counter_ModN_c(1),
      O => Inst_Counter_ModN_res_out_cmp_eq0000
    );
  Inst_Counter_ModN_res_out : X_FF
    generic map(
      LOC => "SLICE_X29Y24",
      INIT => '0'
    )
    port map (
      I => Inst_Counter_ModN_res_out_DXMUX_1403,
      CE => Inst_Counter_ModN_res_out_CEINV_1376,
      CLK => Inst_Counter_ModN_res_out_CLKINV_1377,
      SET => GND,
      RST => Inst_Counter_ModN_res_out_SRINV_1378,
      O => Inst_Counter_ModN_res_out_584
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1 : X_FF
    generic map(
      LOC => "SLICE_X29Y31",
      INIT => '0'
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_DYMUX_1433,
      CE => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_CEINV_1423,
      CLK => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_CLKINV_1424,
      SET => GND,
      RST => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_FFY_RSTAND_1439,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_559
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X29Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_524,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_1_FFY_RSTAND_1439
    );
  cu_stato_corrente_FSM_Out11 : X_LUT4
    generic map(
      INIT => X"3300",
      LOC => "SLICE_X29Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cu_stato_corrente_FSM_FFd2_579,
      ADR2 => VCC,
      ADR3 => cu_stato_corrente_FSM_FFd3_581,
      O => en_m_temp
    );
  cu_stato_corrente_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X28Y22",
      INIT => '0'
    )
    port map (
      I => cu_stato_corrente_FSM_FFd1_DYMUX_1470,
      CE => VCC,
      CLK => cu_stato_corrente_FSM_FFd1_CLKINV_1461,
      SET => GND,
      RST => cu_stato_corrente_FSM_FFd1_FFY_RSTAND_1475,
      O => cu_stato_corrente_FSM_FFd1_582
    );
  cu_stato_corrente_FSM_FFd1_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X28Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_524,
      O => cu_stato_corrente_FSM_FFd1_FFY_RSTAND_1475
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_reset_n_inv1 : X_LUT4
    generic map(
      INIT => X"30FF",
      LOC => "SLICE_X28Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cu_stato_corrente_FSM_FFd2_579,
      ADR2 => cu_stato_corrente_FSM_FFd3_581,
      ADR3 => reset_n_IBUF_524,
      O => Inst_Counter_ModN_reset
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q : X_FF
    generic map(
      LOC => "SLICE_X31Y31",
      INIT => '0'
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_DYMUX_1747,
      CE => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_CEINV_1737,
      CLK => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_CLKINV_1738,
      SET => GND,
      RST => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_FFY_RSTAND_1753,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_527
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X31Y31",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_Counter_ModN_reset_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_FFY_RSTAND_1753
    );
  Inst_Counter_ModN_Mcount_c_xor_1_11 : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X28Y25"
    )
    port map (
      ADR0 => Inst_Counter_ModN_c(1),
      ADR1 => VCC,
      ADR2 => Inst_Counter_ModN_c(0),
      ADR3 => VCC,
      O => Result(1)
    );
  Inst_Counter_ModN_c_1 : X_FF
    generic map(
      LOC => "SLICE_X28Y25",
      INIT => '0'
    )
    port map (
      I => Inst_Counter_ModN_c_0_DYMUX_1775,
      CE => Inst_Counter_ModN_c_0_CEINV_1763,
      CLK => Inst_Counter_ModN_c_0_CLKINV_1764,
      SET => GND,
      RST => Inst_Counter_ModN_c_0_SRINV_1765,
      O => Inst_Counter_ModN_c(1)
    );
  Inst_Counter_ModN_c_0 : X_FF
    generic map(
      LOC => "SLICE_X28Y25",
      INIT => '0'
    )
    port map (
      I => Inst_Counter_ModN_c_0_DXMUX_1784,
      CE => Inst_Counter_ModN_c_0_CEINV_1763,
      CLK => Inst_Counter_ModN_c_0_CLKINV_1764,
      SET => GND,
      RST => Inst_Counter_ModN_c_0_SRINV_1765,
      O => Inst_Counter_ModN_c(0)
    );
  Add_Sub_pm_rca_serie_di_fa_5_fa_riporto_out1_SW0 : X_LUT4
    generic map(
      INIT => X"13B3",
      LOC => "SLICE_X29Y27"
    )
    port map (
      ADR0 => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_531,
      ADR1 => N24_0,
      ADR2 => Add_Sub_pm_OP2_effettivo_5_Q,
      ADR3 => N25_0,
      O => N35
    );
  Add_Sub_pm_xor_inv_Mxor_temp_3_Result1 : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X26Y30"
    )
    port map (
      ADR0 => registro_m_temp(3),
      ADR1 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_549,
      ADR2 => VCC,
      ADR3 => VCC,
      O => Add_Sub_pm_OP2_effettivo_3_Q
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q : X_FF
    generic map(
      LOC => "SLICE_X26Y26",
      INIT => '0'
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_DYMUX_1861,
      CE => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_CEINV_1857,
      CLK => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_CLKINV_1858,
      SET => GND,
      RST => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_FFY_RSTAND_1867,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_549
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X26Y26",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_524,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_FFY_RSTAND_1867
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q : X_FF
    generic map(
      LOC => "SLICE_X29Y22",
      INIT => '0'
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_DYMUX_1507,
      CE => registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_CEINV_1496,
      CLK => registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_CLKINV_1497,
      SET => GND,
      RST => registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_FFY_RSTAND_1513,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_583
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X29Y22",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_524,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_FFY_RSTAND_1513
    );
  cu_conteggio_up1 : X_LUT4
    generic map(
      INIT => X"4040",
      LOC => "SLICE_X29Y22"
    )
    port map (
      ADR0 => Inst_Counter_ModN_res_out_584,
      ADR1 => cu_stato_corrente_FSM_FFd3_581,
      ADR2 => cu_stato_corrente_FSM_FFd2_579,
      ADR3 => VCC,
      O => conteggio_up_temp
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"F780",
      LOC => "SLICE_X30Y20"
    )
    port map (
      ADR0 => cu_stato_corrente_FSM_FFd2_579,
      ADR1 => cu_stato_corrente_FSM_FFd3_581,
      ADR2 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_553,
      ADR3 => op1_1_IBUF_537,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_out_temp
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q : X_FF
    generic map(
      LOC => "SLICE_X30Y20",
      INIT => '0'
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_DYMUX_1545,
      CE => registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_CEINV_1535,
      CLK => registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_CLKINV_1536,
      SET => GND,
      RST => registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_FFY_RSTAND_1551,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_551
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X30Y20",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_524,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_FFY_RSTAND_1551
    );
  cu_stato_corrente_FSM_Out61 : X_LUT4
    generic map(
      INIT => X"F8F8",
      LOC => "SLICE_X30Y20"
    )
    port map (
      ADR0 => cu_stato_corrente_FSM_FFd2_579,
      ADR1 => cu_stato_corrente_FSM_FFd3_581,
      ADR2 => cu_stato_corrente_FSM_FFd1_582,
      ADR3 => VCC,
      O => en_a_temp
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"F780",
      LOC => "SLICE_X30Y21"
    )
    port map (
      ADR0 => cu_stato_corrente_FSM_FFd2_579,
      ADR1 => cu_stato_corrente_FSM_FFd3_581,
      ADR2 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_555,
      ADR3 => op1_2_IBUF_538,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_out_temp
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q : X_FF
    generic map(
      LOC => "SLICE_X30Y21",
      INIT => '0'
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_DYMUX_1583,
      CE => registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_CEINV_1573,
      CLK => registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_CLKINV_1574,
      SET => GND,
      RST => registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_FFY_RSTAND_1589,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_553
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X30Y21",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_524,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_FFY_RSTAND_1589
    );
  cu_stato_corrente_FSM_Out01 : X_LUT4
    generic map(
      INIT => X"0101",
      LOC => "SLICE_X30Y21"
    )
    port map (
      ADR0 => cu_stato_corrente_FSM_FFd2_579,
      ADR1 => cu_stato_corrente_FSM_FFd3_581,
      ADR2 => cu_stato_corrente_FSM_FFd1_582,
      ADR3 => VCC,
      O => stop_OBUF_1596
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q : X_FF
    generic map(
      LOC => "SLICE_X31Y22",
      INIT => '0'
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_DYMUX_1622,
      CE => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_CEINV_1612,
      CLK => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_CLKINV_1613,
      SET => GND,
      RST => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_SRINVNOT,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_555
    );
  registro_m_temp_6 : X_FF
    generic map(
      LOC => "SLICE_X26Y32",
      INIT => '0'
    )
    port map (
      I => registro_m_temp_7_DYMUX_1964,
      CE => registro_m_temp_7_CEINV_1960,
      CLK => registro_m_temp_7_CLKINV_1961,
      SET => GND,
      RST => registro_m_temp_7_SRINVNOT,
      O => registro_m_temp(6)
    );
  registro_m_temp_7 : X_FF
    generic map(
      LOC => "SLICE_X26Y32",
      INIT => '0'
    )
    port map (
      I => registro_m_temp_7_DXMUX_1973,
      CE => registro_m_temp_7_CEINV_1960,
      CLK => registro_m_temp_7_CLKINV_1961,
      SET => GND,
      RST => registro_m_temp_7_SRINVNOT,
      O => registro_m_temp(7)
    );
  cu_stato_corrente_FSM_FFd2_1 : X_FF
    generic map(
      LOC => "SLICE_X30Y29",
      INIT => '0'
    )
    port map (
      I => cu_stato_corrente_FSM_FFd2_1_DYMUX_1988,
      CE => VCC,
      CLK => cu_stato_corrente_FSM_FFd2_1_CLKINV_1985,
      SET => GND,
      RST => cu_stato_corrente_FSM_FFd2_1_FFY_RSTAND_1993,
      O => cu_stato_corrente_FSM_FFd2_1_610
    );
  cu_stato_corrente_FSM_FFd2_1_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X30Y29",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_524,
      O => cu_stato_corrente_FSM_FFd2_1_FFY_RSTAND_1993
    );
  cu_stato_corrente_FSM_FFd3_1 : X_FF
    generic map(
      LOC => "SLICE_X30Y27",
      INIT => '0'
    )
    port map (
      I => cu_stato_corrente_FSM_FFd3_1_DYMUX_2002,
      CE => VCC,
      CLK => cu_stato_corrente_FSM_FFd3_1_CLKINV_1999,
      SET => GND,
      RST => cu_stato_corrente_FSM_FFd3_1_FFY_RSTAND_2007,
      O => cu_stato_corrente_FSM_FFd3_1_611
    );
  cu_stato_corrente_FSM_FFd3_1_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X30Y27",
      PATHPULSE => 638 ps
    )
    port map (
      I => reset_n_IBUF_524,
      O => cu_stato_corrente_FSM_FFd3_1_FFY_RSTAND_2007
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_mux_temp_out_mux : X_LUT4
    generic map(
      INIT => X"F066",
      LOC => "SLICE_X30Y28"
    )
    port map (
      ADR0 => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_526,
      ADR1 => registro_m_temp(0),
      ADR2 => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_527,
      ADR3 => shift_temp,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_out_temp
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q : X_FF
    generic map(
      LOC => "SLICE_X30Y28",
      INIT => '0'
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_DXMUX_2039,
      CE => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_CEINV_2020,
      CLK => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_CLKINV_2021,
      SET => GND,
      RST => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND_2045,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_526
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X30Y28",
      PATHPULSE => 638 ps
    )
    port map (
      I => Inst_Counter_ModN_reset_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_FFX_RSTAND_2045
    );
  registro_m_temp_0 : X_FF
    generic map(
      LOC => "SLICE_X30Y33",
      INIT => '0'
    )
    port map (
      I => registro_m_temp_1_DYMUX_1880,
      CE => registro_m_temp_1_CEINV_1876,
      CLK => registro_m_temp_1_CLKINV_1877,
      SET => GND,
      RST => registro_m_temp_1_SRINVNOT,
      O => registro_m_temp(0)
    );
  registro_m_temp_1 : X_FF
    generic map(
      LOC => "SLICE_X30Y33",
      INIT => '0'
    )
    port map (
      I => registro_m_temp_1_DXMUX_1889,
      CE => registro_m_temp_1_CEINV_1876,
      CLK => registro_m_temp_1_CLKINV_1877,
      SET => GND,
      RST => registro_m_temp_1_SRINVNOT,
      O => registro_m_temp(1)
    );
  registro_m_temp_2 : X_FF
    generic map(
      LOC => "SLICE_X29Y33",
      INIT => '0'
    )
    port map (
      I => registro_m_temp_3_DYMUX_1908,
      CE => registro_m_temp_3_CEINV_1904,
      CLK => registro_m_temp_3_CLKINV_1905,
      SET => GND,
      RST => registro_m_temp_3_SRINVNOT,
      O => registro_m_temp(2)
    );
  registro_m_temp_3 : X_FF
    generic map(
      LOC => "SLICE_X29Y33",
      INIT => '0'
    )
    port map (
      I => registro_m_temp_3_DXMUX_1917,
      CE => registro_m_temp_3_CEINV_1904,
      CLK => registro_m_temp_3_CLKINV_1905,
      SET => GND,
      RST => registro_m_temp_3_SRINVNOT,
      O => registro_m_temp(3)
    );
  registro_m_temp_4 : X_FF
    generic map(
      LOC => "SLICE_X27Y33",
      INIT => '0'
    )
    port map (
      I => registro_m_temp_5_DYMUX_1936,
      CE => registro_m_temp_5_CEINV_1932,
      CLK => registro_m_temp_5_CLKINV_1933,
      SET => GND,
      RST => registro_m_temp_5_SRINVNOT,
      O => registro_m_temp(4)
    );
  registro_m_temp_5 : X_FF
    generic map(
      LOC => "SLICE_X27Y33",
      INIT => '0'
    )
    port map (
      I => registro_m_temp_5_DXMUX_1945,
      CE => registro_m_temp_5_CEINV_1932,
      CLK => registro_m_temp_5_CLKINV_1933,
      SET => GND,
      RST => registro_m_temp_5_SRINVNOT,
      O => registro_m_temp(5)
    );
  risultato_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_521,
      O => risultato_5_O
    );
  stop_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 638 ps
    )
    port map (
      I => stop_OBUF_1596,
      O => stop_O
    );
  risultato_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_523,
      O => risultato_6_O
    );
  risultato_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_8_shift_right_ffm_flipflop_temp_Q_525,
      O => risultato_7_O
    );
  risultato_8_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_temp_Q_526,
      O => risultato_8_O
    );
  risultato_9_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD29",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_527,
      O => risultato_9_O
    );
  risultato_10_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD34",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_528,
      O => risultato_10_O
    );
  risultato_11_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD52",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_529,
      O => risultato_11_O
    );
  risultato_12_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_530,
      O => risultato_12_O
    );
  risultato_13_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD30",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_531,
      O => risultato_13_O
    );
  risultato_14_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_temp_Q_532,
      O => risultato_14_O
    );
  risultato_15_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD31",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_temp_Q_533,
      O => risultato_15_O
    );
  risultato_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_temp_Q_549,
      O => risultato_0_O
    );
  risultato_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_temp_Q_551,
      O => risultato_1_O
    );
  risultato_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_temp_Q_553,
      O => risultato_2_O
    );
  risultato_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_temp_Q_555,
      O => risultato_3_O
    );
  risultato_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 638 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_temp_Q_556,
      O => risultato_4_O
    );
  NlwBlock_Moltiplicatore_Booth_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_Moltiplicatore_Booth_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;


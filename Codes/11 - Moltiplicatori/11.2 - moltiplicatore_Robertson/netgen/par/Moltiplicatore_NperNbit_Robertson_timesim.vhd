--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Moltiplicatore_NperNbit_Robertson_timesim.vhd
-- /___/   /\     Timestamp: Fri Mar  8 21:42:00 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 5 -pcf Moltiplicatore_NperNbit_Robertson.pcf -rpw 100 -tpw 0 -ar Structure -tm Moltiplicatore_NperNbit_Robertson -insert_pp_buffers true -w -dir netgen/par -ofmt vhdl -sim Moltiplicatore_NperNbit_Robertson.ncd Moltiplicatore_NperNbit_Robertson_timesim.vhd 
-- Device	: 3s100etq144-5 (PRODUCTION 1.27 2013-10-13)
-- Input file	: Moltiplicatore_NperNbit_Robertson.ncd
-- Output file	: /home/giorgio/Documenti/shiftregister/shiftregister/netgen/par/Moltiplicatore_NperNbit_Robertson_timesim.vhd
-- # of Entities	: 1
-- Design Name	: Moltiplicatore_NperNbit_Robertson
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

entity Moltiplicatore_NperNbit_Robertson is
  port (
    reset_n : in STD_LOGIC := 'X'; 
    stop : out STD_LOGIC; 
    start : in STD_LOGIC := 'X'; 
    clock : in STD_LOGIC := 'X'; 
    risultato : out STD_LOGIC_VECTOR ( 15 downto 0 ); 
    op1 : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    op2 : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end Moltiplicatore_NperNbit_Robertson;

architecture Structure of Moltiplicatore_NperNbit_Robertson is
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_472 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd5_473 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_474 : STD_LOGIC; 
  signal reset_n_IBUF_475 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_476 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_477 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_478 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_479 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_480 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_481 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_482 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_483 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_484 : STD_LOGIC; 
  signal start_IBUF_485 : STD_LOGIC; 
  signal op1_0_IBUF_487 : STD_LOGIC; 
  signal op1_1_IBUF_488 : STD_LOGIC; 
  signal op1_2_IBUF_489 : STD_LOGIC; 
  signal op1_3_IBUF_490 : STD_LOGIC; 
  signal op1_4_IBUF_492 : STD_LOGIC; 
  signal op1_5_IBUF_494 : STD_LOGIC; 
  signal op1_6_IBUF_496 : STD_LOGIC; 
  signal op1_7_IBUF_498 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_500 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_502 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_504 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_506 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_507 : STD_LOGIC; 
  signal clock_BUFGP : STD_LOGIC; 
  signal Add_Sub_pm_rca_vettore_riporti_4_Q : STD_LOGIC; 
  signal Add_Sub_pm_OP2_effettivo_6_0 : STD_LOGIC; 
  signal Add_Sub_pm_OP2_effettivo_7_0 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal en_a_temp_0 : STD_LOGIC; 
  signal Inst_Counter_ModN_reset_0 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd2_518 : STD_LOGIC; 
  signal N14_0 : STD_LOGIC; 
  signal Inst_Counter_ModN_res_out_520 : STD_LOGIC; 
  signal N42_0 : STD_LOGIC; 
  signal N40_0 : STD_LOGIC; 
  signal Add_Sub_pm_rca_vettore_riporti_2_0 : STD_LOGIC; 
  signal Add_Sub_pm_OP2_effettivo_2_0 : STD_LOGIC; 
  signal Add_Sub_pm_OP2_effettivo_3_0 : STD_LOGIC; 
  signal Add_Sub_pm_rca_serie_di_fa_0_fa_riporto_out1_O : STD_LOGIC; 
  signal Add_Sub_pm_OP2_effettivo_4_Q : STD_LOGIC; 
  signal N8_0 : STD_LOGIC; 
  signal Add_Sub_pm_rca_serie_di_fa_2_fa_riporto_out1_O : STD_LOGIC; 
  signal en_q_temp : STD_LOGIC; 
  signal conteggio_up_temp_0 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd4_540 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd1_541 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd3_542 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal ff_msb_temp_551 : STD_LOGIC; 
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
  signal N16_F5MUX_831 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N16_BXINV_824 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_DXMUX_864 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_F5MUX_862 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_BXINV_855 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_CLKINV_847 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_CEINV_846 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_DXMUX_903 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_F5MUX_901 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_BXINV_894 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_CLKINV_886 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_CEINV_885 : STD_LOGIC; 
  signal Add_Sub_pm_rca_vettore_riporti_4_F5MUX_934 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal Add_Sub_pm_rca_vettore_riporti_4_BXINV_927 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N19_F5MUX_959 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N19_BXINV_952 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N20_F5MUX_984 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N20_BXINV_977 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal Add_Sub_pm_rca_vettore_riporti_2_Q : STD_LOGIC; 
  signal Add_Sub_pm_rca_serie_di_fa_0_fa_riporto_out1_O_pack_2 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal Add_Sub_pm_OP2_effettivo_4_pack_1 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_DXMUX_1064 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_out_temp : STD_LOGIC; 
  signal Add_Sub_pm_rca_serie_di_fa_2_fa_riporto_out1_O_pack_1 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_CLKINV_1048 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_CEINV_1047 : STD_LOGIC; 
  signal conteggio_up_temp : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_DYMUX_1093 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_out_temp : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_CLKINV_1083 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_CEINV_1082 : STD_LOGIC; 
  signal Inst_Counter_ModN_res_out_DXMUX_1148 : STD_LOGIC; 
  signal Inst_Counter_ModN_res_out_cmp_eq0000 : STD_LOGIC; 
  signal Inst_Counter_ModN_res_out_DYMUX_1132 : STD_LOGIC; 
  signal Inst_Counter_ModN_res_out_SRINV_1123 : STD_LOGIC; 
  signal Inst_Counter_ModN_res_out_CLKINV_1122 : STD_LOGIC; 
  signal Inst_Counter_ModN_res_out_CEINV_1121 : STD_LOGIC; 
  signal en_q_temp_pack_2 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_DYMUX_1177 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_out_temp : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_CLKINV_1167 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_CEINV_1166 : STD_LOGIC; 
  signal en_a_temp : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_DYMUX_1215 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_out_temp : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_CLKINV_1205 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_CEINV_1204 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_DYMUX_1250 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_out_temp : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_CLKINV_1241 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_CEINV_1240 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_DXMUX_1296 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_out_temp : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_DYMUX_1280 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_out_temp : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_SRINVNOT : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_CLKINV_1270 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_CEINV_1269 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_DXMUX_1342 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_out_temp : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_DYMUX_1326 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_out_temp : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_SRINVNOT : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_CLKINV_1316 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_CEINV_1315 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd2_DXMUX_1385 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd2_In : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd2_DYMUX_1370 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd1_In : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd2_SRINVNOT : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd2_CLKINV_1359 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd4_DXMUX_1427 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd4_In : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd4_DYMUX_1411 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd3_In : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd4_SRINVNOT : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd4_CLKINV_1401 : STD_LOGIC; 
  signal ff_msb_reset_n_inv : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd5_DYMUX_1453 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd5_In : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd5_CLKINV_1444 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_DYMUX_1486 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_out_temp : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_CLKINV_1476 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_CEINV_1475 : STD_LOGIC; 
  signal Inst_Counter_ModN_c_0_DXMUX_1523 : STD_LOGIC; 
  signal Inst_Counter_ModN_c_0_DYMUX_1514 : STD_LOGIC; 
  signal Inst_Counter_ModN_c_0_SRINV_1504 : STD_LOGIC; 
  signal Inst_Counter_ModN_c_0_CLKINV_1503 : STD_LOGIC; 
  signal Inst_Counter_ModN_c_0_CEINV_1502 : STD_LOGIC; 
  signal Inst_Counter_ModN_reset : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_DXMUX_1573 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_out_temp : STD_LOGIC; 
  signal N10_pack_2 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_CLKINV_1556 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_CEINV_1555 : STD_LOGIC; 
  signal Add_Sub_pm_OP2_effettivo_3_Q : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_DXMUX_1635 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_out_temp : STD_LOGIC; 
  signal N6_pack_2 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_CLKINV_1618 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_CEINV_1617 : STD_LOGIC; 
  signal Add_Sub_pm_OP2_effettivo_6_Q : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_DXMUX_1697 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_out_temp : STD_LOGIC; 
  signal N44_pack_2 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_CLKINV_1681 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_CEINV_1680 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_DXMUX_1735 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_out_temp : STD_LOGIC; 
  signal N17_pack_2 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_CLKINV_1719 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_CEINV_1718 : STD_LOGIC; 
  signal Add_Sub_pm_OP2_effettivo_7_Q : STD_LOGIC; 
  signal Add_Sub_pm_OP2_effettivo_2_Q : STD_LOGIC; 
  signal registro_m_temp_1_DXMUX_1787 : STD_LOGIC; 
  signal registro_m_temp_1_DYMUX_1778 : STD_LOGIC; 
  signal registro_m_temp_1_SRINVNOT : STD_LOGIC; 
  signal registro_m_temp_1_CLKINV_1775 : STD_LOGIC; 
  signal registro_m_temp_1_CEINV_1774 : STD_LOGIC; 
  signal registro_m_temp_3_DXMUX_1815 : STD_LOGIC; 
  signal registro_m_temp_3_DYMUX_1806 : STD_LOGIC; 
  signal registro_m_temp_3_SRINVNOT : STD_LOGIC; 
  signal registro_m_temp_3_CLKINV_1803 : STD_LOGIC; 
  signal registro_m_temp_3_CEINV_1802 : STD_LOGIC; 
  signal registro_m_temp_5_DXMUX_1843 : STD_LOGIC; 
  signal registro_m_temp_5_DYMUX_1834 : STD_LOGIC; 
  signal registro_m_temp_5_SRINVNOT : STD_LOGIC; 
  signal registro_m_temp_5_CLKINV_1831 : STD_LOGIC; 
  signal registro_m_temp_5_CEINV_1830 : STD_LOGIC; 
  signal registro_m_temp_7_DXMUX_1871 : STD_LOGIC; 
  signal registro_m_temp_7_DYMUX_1862 : STD_LOGIC; 
  signal registro_m_temp_7_SRINVNOT : STD_LOGIC; 
  signal registro_m_temp_7_CLKINV_1859 : STD_LOGIC; 
  signal registro_m_temp_7_CEINV_1858 : STD_LOGIC; 
  signal ff_msb_temp_and0000 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal ff_msb_temp_DYMUX_1912 : STD_LOGIC; 
  signal ff_msb_temp_BYINV_1911 : STD_LOGIC; 
  signal ff_msb_temp_CLKINV_1909 : STD_LOGIC; 
  signal ff_msb_temp_CEINV_1908 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_FFX_RSTAND_1070 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_FFY_RSTAND_1099 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_FFY_RSTAND_1183 : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_FFY_RSTAND_1221 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_FFX_RSTAND_1741 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_FFX_RSTAND_870 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_FFX_RSTAND_909 : STD_LOGIC; 
  signal cu_stato_corrente_FSM_FFd5_FFY_SET : STD_LOGIC; 
  signal registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_FFY_RSTAND_1492 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_FFX_RSTAND_1579 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_FFY_RSTAND_1256 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_FFX_RSTAND_1641 : STD_LOGIC; 
  signal registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_FFX_RSTAND_1703 : STD_LOGIC; 
  signal ff_msb_temp_FFY_RSTAND_1918 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal registro_m_temp : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Inst_Counter_ModN_c : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 2 downto 1 ); 
begin
  risultato_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD44"
    )
    port map (
      I => risultato_5_O,
      O => risultato(5)
    );
  stop_OBUF : X_OBUF
    generic map(
      LOC => "PAD54"
    )
    port map (
      I => stop_O,
      O => stop
    );
  risultato_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD43"
    )
    port map (
      I => risultato_6_O,
      O => risultato(6)
    );
  reset_n_IBUF : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_n,
      O => reset_n_INBUF
    );
  reset_n_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD53",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_n_INBUF,
      O => reset_n_IBUF_475
    );
  risultato_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD42"
    )
    port map (
      I => risultato_7_O,
      O => risultato(7)
    );
  risultato_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD37"
    )
    port map (
      I => risultato_8_O,
      O => risultato(8)
    );
  risultato_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD35"
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
      LOC => "PAD25"
    )
    port map (
      I => risultato_11_O,
      O => risultato(11)
    );
  risultato_12_OBUF : X_OBUF
    generic map(
      LOC => "PAD22"
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
      LOC => "PAD33"
    )
    port map (
      I => risultato_14_O,
      O => risultato(14)
    );
  risultato_15_OBUF : X_OBUF
    generic map(
      LOC => "PAD28"
    )
    port map (
      I => risultato_15_O,
      O => risultato(15)
    );
  start_IBUF : X_BUF
    generic map(
      LOC => "PAD52",
      PATHPULSE => 555 ps
    )
    port map (
      I => start,
      O => start_INBUF
    );
  start_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD52",
      PATHPULSE => 555 ps
    )
    port map (
      I => start_INBUF,
      O => start_IBUF_485
    );
  clock_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "IPAD12",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock,
      O => clock_INBUF
    );
  op1_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD50",
      PATHPULSE => 555 ps
    )
    port map (
      I => op1(0),
      O => op1_0_INBUF
    );
  op1_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD50",
      PATHPULSE => 555 ps
    )
    port map (
      I => op1_0_INBUF,
      O => op1_0_IBUF_487
    );
  op1_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD46",
      PATHPULSE => 555 ps
    )
    port map (
      I => op1(1),
      O => op1_1_INBUF
    );
  op1_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD46",
      PATHPULSE => 555 ps
    )
    port map (
      I => op1_1_INBUF,
      O => op1_1_IBUF_488
    );
  op1_2_IBUF : X_BUF
    generic map(
      LOC => "IPAD41",
      PATHPULSE => 555 ps
    )
    port map (
      I => op1(2),
      O => op1_2_INBUF
    );
  op1_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD41",
      PATHPULSE => 555 ps
    )
    port map (
      I => op1_2_INBUF,
      O => op1_2_IBUF_489
    );
  op1_3_IBUF : X_BUF
    generic map(
      LOC => "IPAD36",
      PATHPULSE => 555 ps
    )
    port map (
      I => op1(3),
      O => op1_3_INBUF
    );
  op1_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD36",
      PATHPULSE => 555 ps
    )
    port map (
      I => op1_3_INBUF,
      O => op1_3_IBUF_490
    );
  op2_0_IBUF : X_BUF
    generic map(
      LOC => "IPAD27",
      PATHPULSE => 555 ps
    )
    port map (
      I => op2(0),
      O => op2_0_INBUF
    );
  op1_4_IBUF : X_BUF
    generic map(
      LOC => "IPAD32",
      PATHPULSE => 555 ps
    )
    port map (
      I => op1(4),
      O => op1_4_INBUF
    );
  op1_4_IFF_IMUX : X_BUF
    generic map(
      LOC => "IPAD32",
      PATHPULSE => 555 ps
    )
    port map (
      I => op1_4_INBUF,
      O => op1_4_IBUF_492
    );
  op2_1_IBUF : X_BUF
    generic map(
      LOC => "IPAD26",
      PATHPULSE => 555 ps
    )
    port map (
      I => op2(1),
      O => op2_1_INBUF
    );
  op1_5_IBUF : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 555 ps
    )
    port map (
      I => op1(5),
      O => op1_5_INBUF
    );
  op1_5_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 555 ps
    )
    port map (
      I => op1_5_INBUF,
      O => op1_5_IBUF_494
    );
  op2_2_IBUF : X_BUF
    generic map(
      LOC => "PAD31",
      PATHPULSE => 555 ps
    )
    port map (
      I => op2(2),
      O => op2_2_INBUF
    );
  op1_6_IBUF : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 555 ps
    )
    port map (
      I => op1(6),
      O => op1_6_INBUF
    );
  op1_6_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD40",
      PATHPULSE => 555 ps
    )
    port map (
      I => op1_6_INBUF,
      O => op1_6_IBUF_496
    );
  op2_3_IBUF : X_BUF
    generic map(
      LOC => "PAD24",
      PATHPULSE => 555 ps
    )
    port map (
      I => op2(3),
      O => op2_3_INBUF
    );
  op1_7_IBUF : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 555 ps
    )
    port map (
      I => op1(7),
      O => op1_7_INBUF
    );
  op1_7_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD39",
      PATHPULSE => 555 ps
    )
    port map (
      I => op1_7_INBUF,
      O => op1_7_IBUF_498
    );
  op2_4_IBUF : X_BUF
    generic map(
      LOC => "IPAD23",
      PATHPULSE => 555 ps
    )
    port map (
      I => op2(4),
      O => op2_4_INBUF
    );
  risultato_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD51"
    )
    port map (
      I => risultato_0_O,
      O => risultato(0)
    );
  op2_5_IBUF : X_BUF
    generic map(
      LOC => "PAD29",
      PATHPULSE => 555 ps
    )
    port map (
      I => op2(5),
      O => op2_5_INBUF
    );
  risultato_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD49"
    )
    port map (
      I => risultato_1_O,
      O => risultato(1)
    );
  op2_6_IBUF : X_BUF
    generic map(
      LOC => "PAD21",
      PATHPULSE => 555 ps
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
      PATHPULSE => 555 ps
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
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => clock_BUFGP_BUFG_S_INVNOT
    );
  clock_BUFGP_BUFG_I0_USED : X_BUF
    generic map(
      LOC => "BUFGMUX_X2Y10",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_INBUF,
      O => clock_BUFGP_BUFG_I0_INV
    );
  N16_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N16_F5MUX_831,
      O => N16
    );
  N16_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X28Y32"
    )
    port map (
      IA => N52,
      IB => N53,
      SEL => N16_BXINV_824,
      O => N16_F5MUX_831
    );
  N16_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => Add_Sub_pm_rca_vettore_riporti_4_Q,
      O => N16_BXINV_824
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux_SW0_F : X_LUT4
    generic map(
      INIT => X"E817",
      LOC => "SLICE_X28Y32"
    )
    port map (
      ADR0 => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_483,
      ADR1 => Add_Sub_pm_OP2_effettivo_6_0,
      ADR2 => N19,
      ADR3 => Add_Sub_pm_OP2_effettivo_7_0,
      O => N52
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux_SW0_G : X_LUT4
    generic map(
      INIT => X"E817",
      LOC => "SLICE_X28Y32"
    )
    port map (
      ADR0 => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_483,
      ADR1 => Add_Sub_pm_OP2_effettivo_6_0,
      ADR2 => N20,
      ADR3 => Add_Sub_pm_OP2_effettivo_7_0,
      O => N53
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_F5MUX_862,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_DXMUX_864
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X28Y31"
    )
    port map (
      IA => N50,
      IB => N51,
      SEL => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_BXINV_855,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_F5MUX_862
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => Add_Sub_pm_rca_vettore_riporti_4_Q,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_BXINV_855
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_CLKINV_847
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_a_temp_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_CEINV_846
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_mux_temp_out_mux_F : X_LUT4
    generic map(
      INIT => X"F909",
      LOC => "SLICE_X28Y31"
    )
    port map (
      ADR0 => N14_0,
      ADR1 => N19,
      ADR2 => cu_stato_corrente_FSM_FFd2_518,
      ADR3 => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_484,
      O => N50
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_F5MUX_901,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_DXMUX_903
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X31Y33"
    )
    port map (
      IA => N46,
      IB => N47,
      SEL => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_BXINV_894,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_F5MUX_901
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => Add_Sub_pm_rca_vettore_riporti_4_Q,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_BXINV_894
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_CLKINV_886
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_a_temp_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_CEINV_885
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_mux_temp_out_mux_F : X_LUT4
    generic map(
      INIT => X"A3AC",
      LOC => "SLICE_X31Y33"
    )
    port map (
      ADR0 => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_483,
      ADR1 => N40_0,
      ADR2 => cu_stato_corrente_FSM_FFd2_518,
      ADR3 => Inst_Counter_ModN_res_out_520,
      O => N46
    );
  Add_Sub_pm_rca_vettore_riporti_4_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => Add_Sub_pm_rca_vettore_riporti_4_F5MUX_934,
      O => Add_Sub_pm_rca_vettore_riporti_4_Q
    );
  Add_Sub_pm_rca_vettore_riporti_4_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X28Y35"
    )
    port map (
      IA => N48,
      IB => N49,
      SEL => Add_Sub_pm_rca_vettore_riporti_4_BXINV_927,
      O => Add_Sub_pm_rca_vettore_riporti_4_F5MUX_934
    );
  Add_Sub_pm_rca_vettore_riporti_4_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => Add_Sub_pm_rca_vettore_riporti_2_0,
      O => Add_Sub_pm_rca_vettore_riporti_4_BXINV_927
    );
  Add_Sub_pm_rca_serie_di_fa_3_fa_riporto_out1_F : X_LUT4
    generic map(
      INIT => X"EA80",
      LOC => "SLICE_X28Y35"
    )
    port map (
      ADR0 => Add_Sub_pm_OP2_effettivo_3_0,
      ADR1 => Add_Sub_pm_OP2_effettivo_2_0,
      ADR2 => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_479,
      ADR3 => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_480,
      O => N48
    );
  Add_Sub_pm_rca_serie_di_fa_3_fa_riporto_out1_G : X_LUT4
    generic map(
      INIT => X"FEA8",
      LOC => "SLICE_X28Y35"
    )
    port map (
      ADR0 => Add_Sub_pm_OP2_effettivo_3_0,
      ADR1 => Add_Sub_pm_OP2_effettivo_2_0,
      ADR2 => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_479,
      ADR3 => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_480,
      O => N49
    );
  N19_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => N19_F5MUX_959,
      O => N19
    );
  N19_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X30Y34"
    )
    port map (
      IA => N56,
      IB => N57,
      SEL => N19_BXINV_952,
      O => N19_F5MUX_959
    );
  N19_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_482,
      O => N19_BXINV_952
    );
  Add_Sub_pm_rca_serie_di_fa_4_fa_riporto_out1_SW0_F : X_LUT4
    generic map(
      INIT => X"1080",
      LOC => "SLICE_X30Y34"
    )
    port map (
      ADR0 => registro_m_temp(5),
      ADR1 => registro_m_temp(4),
      ADR2 => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_481,
      ADR3 => Inst_Counter_ModN_res_out_520,
      O => N56
    );
  Add_Sub_pm_rca_serie_di_fa_4_fa_riporto_out1_SW0_G : X_LUT4
    generic map(
      INIT => X"75EA",
      LOC => "SLICE_X30Y34"
    )
    port map (
      ADR0 => registro_m_temp(5),
      ADR1 => registro_m_temp(4),
      ADR2 => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_481,
      ADR3 => Inst_Counter_ModN_res_out_520,
      O => N57
    );
  N20_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => N20_F5MUX_984,
      O => N20
    );
  N20_F5MUX : X_MUX2
    generic map(
      LOC => "SLICE_X31Y34"
    )
    port map (
      IA => N54,
      IB => N55,
      SEL => N20_BXINV_977,
      O => N20_F5MUX_984
    );
  N20_BXINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_m_temp(5),
      O => N20_BXINV_977
    );
  Add_Sub_pm_rca_serie_di_fa_4_fa_riporto_out1_SW1_F : X_LUT4
    generic map(
      INIT => X"FE8A",
      LOC => "SLICE_X31Y34"
    )
    port map (
      ADR0 => Inst_Counter_ModN_res_out_520,
      ADR1 => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_481,
      ADR2 => registro_m_temp(4),
      ADR3 => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_482,
      O => N54
    );
  Add_Sub_pm_rca_serie_di_fa_4_fa_riporto_out1_SW1_G : X_LUT4
    generic map(
      INIT => X"DF54",
      LOC => "SLICE_X31Y34"
    )
    port map (
      ADR0 => Inst_Counter_ModN_res_out_520,
      ADR1 => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_481,
      ADR2 => registro_m_temp(4),
      ADR3 => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_482,
      O => N55
    );
  Add_Sub_pm_rca_vettore_riporti_2_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => Add_Sub_pm_rca_vettore_riporti_2_Q,
      O => Add_Sub_pm_rca_vettore_riporti_2_0
    );
  Add_Sub_pm_rca_vettore_riporti_2_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => Add_Sub_pm_rca_serie_di_fa_0_fa_riporto_out1_O_pack_2,
      O => Add_Sub_pm_rca_serie_di_fa_0_fa_riporto_out1_O
    );
  Add_Sub_pm_rca_serie_di_fa_0_fa_riporto_out1 : X_LUT4
    generic map(
      INIT => X"CCF0",
      LOC => "SLICE_X29Y33"
    )
    port map (
      ADR0 => VCC,
      ADR1 => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_477,
      ADR2 => Inst_Counter_ModN_res_out_520,
      ADR3 => registro_m_temp(0),
      O => Add_Sub_pm_rca_serie_di_fa_0_fa_riporto_out1_O_pack_2
    );
  N40_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N40,
      O => N40_0
    );
  N40_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => Add_Sub_pm_OP2_effettivo_4_pack_1,
      O => Add_Sub_pm_OP2_effettivo_4_Q
    );
  Add_Sub_pm_xor_inv_Mxor_temp_4_Result1 : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X31Y32"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Inst_Counter_ModN_res_out_520,
      ADR2 => registro_m_temp(4),
      ADR3 => VCC,
      O => Add_Sub_pm_OP2_effettivo_4_pack_1
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_out_temp,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_DXMUX_1064
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => Add_Sub_pm_rca_serie_di_fa_2_fa_riporto_out1_O_pack_1,
      O => Add_Sub_pm_rca_serie_di_fa_2_fa_riporto_out1_O
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_CLKINV_1048
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_a_temp_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_CEINV_1047
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => conteggio_up_temp,
      O => conteggio_up_temp_0
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_out_temp,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_DYMUX_1093
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_CLKINV_1083
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_q_temp,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_CEINV_1082
    );
  Inst_Counter_ModN_res_out_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => Inst_Counter_ModN_res_out_cmp_eq0000,
      O => Inst_Counter_ModN_res_out_DXMUX_1148
    );
  Inst_Counter_ModN_res_out_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result(2),
      O => Inst_Counter_ModN_res_out_DYMUX_1132
    );
  Inst_Counter_ModN_res_out_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => Inst_Counter_ModN_reset_0,
      O => Inst_Counter_ModN_res_out_SRINV_1123
    );
  Inst_Counter_ModN_res_out_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_BUFGP,
      O => Inst_Counter_ModN_res_out_CLKINV_1122
    );
  Inst_Counter_ModN_res_out_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => conteggio_up_temp_0,
      O => Inst_Counter_ModN_res_out_CEINV_1121
    );
  Inst_Counter_ModN_Mcount_c_xor_2_11 : X_LUT4
    generic map(
      INIT => X"7878",
      LOC => "SLICE_X29Y35"
    )
    port map (
      ADR0 => Inst_Counter_ModN_c(0),
      ADR1 => Inst_Counter_ModN_c(1),
      ADR2 => Inst_Counter_ModN_c(2),
      ADR3 => VCC,
      O => Result(2)
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X31Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_q_temp_pack_2,
      O => en_q_temp
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_out_temp,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_DYMUX_1177
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_CLKINV_1167
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_q_temp,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_CEINV_1166
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_a_temp,
      O => en_a_temp_0
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_out_temp,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_DYMUX_1215
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_CLKINV_1205
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_q_temp,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_CEINV_1204
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_out_temp,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_DYMUX_1250
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_CLKINV_1241
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_a_temp_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_CEINV_1240
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_out_temp,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_DXMUX_1296
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_out_temp,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_DYMUX_1280
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_SRINV : X_INV
    generic map(
      LOC => "SLICE_X30Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_n_IBUF_475,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_SRINVNOT
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_CLKINV_1270
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y13",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_q_temp,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_CEINV_1269
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"AFA0",
      LOC => "SLICE_X30Y13"
    )
    port map (
      ADR0 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_502,
      ADR1 => VCC,
      ADR2 => cu_stato_corrente_FSM_FFd2_518,
      ADR3 => op1_0_IBUF_487,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_out_temp
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_out_temp,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_DXMUX_1342
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_out_temp,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_DYMUX_1326
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_SRINV : X_INV
    generic map(
      LOC => "SLICE_X31Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_n_IBUF_475,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_SRINVNOT
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_CLKINV_1316
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_q_temp,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_CEINV_1315
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"FC30",
      LOC => "SLICE_X31Y27"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cu_stato_corrente_FSM_FFd2_518,
      ADR2 => op1_6_IBUF_496,
      ADR3 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_476,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_out_temp
    );
  cu_stato_corrente_FSM_FFd2_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd2_In,
      O => cu_stato_corrente_FSM_FFd2_DXMUX_1385
    );
  cu_stato_corrente_FSM_FFd2_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd1_In,
      O => cu_stato_corrente_FSM_FFd2_DYMUX_1370
    );
  cu_stato_corrente_FSM_FFd2_SRINV : X_INV
    generic map(
      LOC => "SLICE_X31Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_n_IBUF_475,
      O => cu_stato_corrente_FSM_FFd2_SRINVNOT
    );
  cu_stato_corrente_FSM_FFd2_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_BUFGP,
      O => cu_stato_corrente_FSM_FFd2_CLKINV_1359
    );
  cu_stato_corrente_FSM_FFd1_In1 : X_LUT4
    generic map(
      INIT => X"C0C0",
      LOC => "SLICE_X31Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_500,
      ADR2 => cu_stato_corrente_FSM_FFd3_542,
      ADR3 => VCC,
      O => cu_stato_corrente_FSM_FFd1_In
    );
  cu_stato_corrente_FSM_FFd4_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd4_In,
      O => cu_stato_corrente_FSM_FFd4_DXMUX_1427
    );
  cu_stato_corrente_FSM_FFd4_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd3_In,
      O => cu_stato_corrente_FSM_FFd4_DYMUX_1411
    );
  cu_stato_corrente_FSM_FFd4_SRINV : X_INV
    generic map(
      LOC => "SLICE_X30Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_n_IBUF_475,
      O => cu_stato_corrente_FSM_FFd4_SRINVNOT
    );
  cu_stato_corrente_FSM_FFd4_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y23",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_BUFGP,
      O => cu_stato_corrente_FSM_FFd4_CLKINV_1401
    );
  cu_stato_corrente_FSM_FFd3_In1 : X_LUT4
    generic map(
      INIT => X"BBAA",
      LOC => "SLICE_X30Y23"
    )
    port map (
      ADR0 => cu_stato_corrente_FSM_FFd4_540,
      ADR1 => Inst_Counter_ModN_res_out_520,
      ADR2 => VCC,
      ADR3 => cu_stato_corrente_FSM_FFd2_518,
      O => cu_stato_corrente_FSM_FFd3_In
    );
  cu_stato_corrente_FSM_FFd5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd5_In,
      O => cu_stato_corrente_FSM_FFd5_DYMUX_1453
    );
  cu_stato_corrente_FSM_FFd5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_BUFGP,
      O => cu_stato_corrente_FSM_FFd5_CLKINV_1444
    );
  cu_stato_corrente_FSM_FFd5_In1 : X_LUT4
    generic map(
      INIT => X"B3A0",
      LOC => "SLICE_X30Y22"
    )
    port map (
      ADR0 => Inst_Counter_ModN_res_out_520,
      ADR1 => start_IBUF_485,
      ADR2 => cu_stato_corrente_FSM_FFd2_518,
      ADR3 => cu_stato_corrente_FSM_FFd5_473,
      O => cu_stato_corrente_FSM_FFd5_In
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_out_temp,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_DYMUX_1486
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_CLKINV_1476
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_q_temp,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_CEINV_1475
    );
  Inst_Counter_ModN_c_0_DXMUX : X_INV
    generic map(
      LOC => "SLICE_X26Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => Inst_Counter_ModN_c(0),
      O => Inst_Counter_ModN_c_0_DXMUX_1523
    );
  Inst_Counter_ModN_c_0_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X26Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => Result(1),
      O => Inst_Counter_ModN_c_0_DYMUX_1514
    );
  Inst_Counter_ModN_c_0_SRINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => Inst_Counter_ModN_reset_0,
      O => Inst_Counter_ModN_c_0_SRINV_1504
    );
  Inst_Counter_ModN_c_0_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_BUFGP,
      O => Inst_Counter_ModN_c_0_CLKINV_1503
    );
  Inst_Counter_ModN_c_0_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X26Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => conteggio_up_temp_0,
      O => Inst_Counter_ModN_c_0_CEINV_1502
    );
  Inst_Counter_ModN_reset_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => Inst_Counter_ModN_reset,
      O => Inst_Counter_ModN_reset_0
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_reset_n_inv1 : X_LUT4
    generic map(
      INIT => X"F3F3",
      LOC => "SLICE_X30Y30"
    )
    port map (
      ADR0 => VCC,
      ADR1 => reset_n_IBUF_475,
      ADR2 => cu_stato_corrente_FSM_FFd4_540,
      ADR3 => VCC,
      O => Inst_Counter_ModN_reset
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_out_temp,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_DXMUX_1573
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N10_pack_2,
      O => N10
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_CLKINV_1556
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_a_temp_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_CEINV_1555
    );
  Add_Sub_pm_OP2_effettivo_3_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => Add_Sub_pm_OP2_effettivo_3_Q,
      O => Add_Sub_pm_OP2_effettivo_3_0
    );
  Add_Sub_pm_OP2_effettivo_3_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => N8,
      O => N8_0
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_mux_temp_out_mux_SW0 : X_LUT4
    generic map(
      INIT => X"5AA5",
      LOC => "SLICE_X28Y34"
    )
    port map (
      ADR0 => registro_m_temp(3),
      ADR1 => VCC,
      ADR2 => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_480,
      ADR3 => Inst_Counter_ModN_res_out_520,
      O => N8
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_out_temp,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_DXMUX_1635
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => N6_pack_2,
      O => N6
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_CLKINV_1618
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_a_temp_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_CEINV_1617
    );
  Add_Sub_pm_OP2_effettivo_6_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => Add_Sub_pm_OP2_effettivo_6_Q,
      O => Add_Sub_pm_OP2_effettivo_6_0
    );
  Add_Sub_pm_OP2_effettivo_6_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => N14,
      O => N14_0
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_mux_temp_out_mux_SW0 : X_LUT4
    generic map(
      INIT => X"6699",
      LOC => "SLICE_X29Y31"
    )
    port map (
      ADR0 => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_483,
      ADR1 => registro_m_temp(6),
      ADR2 => VCC,
      ADR3 => Inst_Counter_ModN_res_out_520,
      O => N14
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_out_temp,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_DXMUX_1697
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X28Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => N44_pack_2,
      O => N44
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_CLKINV_1681
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_a_temp_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_CEINV_1680
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_out_temp,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_DXMUX_1735
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => N17_pack_2,
      O => N17
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_CLKINV_1719
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => en_a_temp_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_CEINV_1718
    );
  Add_Sub_pm_OP2_effettivo_7_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => Add_Sub_pm_OP2_effettivo_7_Q,
      O => Add_Sub_pm_OP2_effettivo_7_0
    );
  Add_Sub_pm_OP2_effettivo_7_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X29Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => Add_Sub_pm_OP2_effettivo_2_Q,
      O => Add_Sub_pm_OP2_effettivo_2_0
    );
  Add_Sub_pm_xor_inv_Mxor_temp_2_Result1 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X29Y34"
    )
    port map (
      ADR0 => VCC,
      ADR1 => registro_m_temp(2),
      ADR2 => VCC,
      ADR3 => Inst_Counter_ModN_res_out_520,
      O => Add_Sub_pm_OP2_effettivo_2_Q
    );
  registro_m_temp_1_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => op2_1_INBUF,
      O => registro_m_temp_1_DXMUX_1787
    );
  registro_m_temp_1_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X28Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => op2_0_INBUF,
      O => registro_m_temp_1_DYMUX_1778
    );
  registro_m_temp_1_SRINV : X_INV
    generic map(
      LOC => "SLICE_X28Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_n_IBUF_475,
      O => registro_m_temp_1_SRINVNOT
    );
  registro_m_temp_1_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_m_temp_1_CLKINV_1775
    );
  registro_m_temp_1_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X28Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd4_540,
      O => registro_m_temp_1_CEINV_1774
    );
  registro_m_temp_3_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => op2_3_INBUF,
      O => registro_m_temp_3_DXMUX_1815
    );
  registro_m_temp_3_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X30Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => op2_2_INBUF,
      O => registro_m_temp_3_DYMUX_1806
    );
  registro_m_temp_3_SRINV : X_INV
    generic map(
      LOC => "SLICE_X30Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_n_IBUF_475,
      O => registro_m_temp_3_SRINVNOT
    );
  registro_m_temp_3_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_m_temp_3_CLKINV_1803
    );
  registro_m_temp_3_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X30Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd4_540,
      O => registro_m_temp_3_CEINV_1802
    );
  registro_m_temp_5_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => op2_5_INBUF,
      O => registro_m_temp_5_DXMUX_1843
    );
  registro_m_temp_5_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X31Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => op2_4_INBUF,
      O => registro_m_temp_5_DYMUX_1834
    );
  registro_m_temp_5_SRINV : X_INV
    generic map(
      LOC => "SLICE_X31Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_n_IBUF_475,
      O => registro_m_temp_5_SRINVNOT
    );
  registro_m_temp_5_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_m_temp_5_CLKINV_1831
    );
  registro_m_temp_5_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X31Y35",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd4_540,
      O => registro_m_temp_5_CEINV_1830
    );
  registro_m_temp_7_DXMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => op2_7_INBUF,
      O => registro_m_temp_7_DXMUX_1871
    );
  registro_m_temp_7_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X27Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => op2_6_INBUF,
      O => registro_m_temp_7_DYMUX_1862
    );
  registro_m_temp_7_SRINV : X_INV
    generic map(
      LOC => "SLICE_X27Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_n_IBUF_475,
      O => registro_m_temp_7_SRINVNOT
    );
  registro_m_temp_7_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_BUFGP,
      O => registro_m_temp_7_CLKINV_1859
    );
  registro_m_temp_7_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X27Y34",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd4_540,
      O => registro_m_temp_7_CEINV_1858
    );
  ff_msb_temp_and00001 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X29Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_500,
      ADR2 => VCC,
      ADR3 => registro_m_temp(7),
      O => ff_msb_temp_and0000
    );
  N42_XUSED : X_BUF
    generic map(
      LOC => "SLICE_X30Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => N42,
      O => N42_0
    );
  Add_Sub_pm_rca_serie_di_fa_4_fa_riporto_out1_SW3_SW0 : X_LUT4
    generic map(
      INIT => X"A956",
      LOC => "SLICE_X30Y33"
    )
    port map (
      ADR0 => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_482,
      ADR1 => Add_Sub_pm_OP2_effettivo_4_Q,
      ADR2 => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_481,
      ADR3 => registro_m_temp(5),
      O => N42
    );
  ff_msb_temp_DYMUX : X_BUF
    generic map(
      LOC => "SLICE_X29Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => ff_msb_temp_BYINV_1911,
      O => ff_msb_temp_DYMUX_1912
    );
  ff_msb_temp_BYINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => '1',
      O => ff_msb_temp_BYINV_1911
    );
  ff_msb_temp_CLKINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => clock_BUFGP,
      O => ff_msb_temp_CLKINV_1909
    );
  ff_msb_temp_CEINV : X_BUF
    generic map(
      LOC => "SLICE_X29Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => ff_msb_temp_and0000,
      O => ff_msb_temp_CEINV_1908
    );
  Add_Sub_pm_rca_serie_di_fa_1_fa_riporto_out1 : X_LUT4
    generic map(
      INIT => X"BE28",
      LOC => "SLICE_X29Y33"
    )
    port map (
      ADR0 => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_478,
      ADR1 => Inst_Counter_ModN_res_out_520,
      ADR2 => registro_m_temp(1),
      ADR3 => Add_Sub_pm_rca_serie_di_fa_0_fa_riporto_out1_O,
      O => Add_Sub_pm_rca_vettore_riporti_2_Q
    );
  Add_Sub_pm_rca_serie_di_fa_4_fa_riporto_out1_SW2_SW0 : X_LUT4
    generic map(
      INIT => X"956A",
      LOC => "SLICE_X31Y32"
    )
    port map (
      ADR0 => registro_m_temp(5),
      ADR1 => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_481,
      ADR2 => Add_Sub_pm_OP2_effettivo_4_Q,
      ADR3 => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_482,
      O => N40
    );
  Add_Sub_pm_rca_serie_di_fa_2_fa_riporto_out1 : X_LUT4
    generic map(
      INIT => X"D4E8",
      LOC => "SLICE_X31Y31"
    )
    port map (
      ADR0 => Inst_Counter_ModN_res_out_520,
      ADR1 => Add_Sub_pm_rca_vettore_riporti_2_0,
      ADR2 => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_479,
      ADR3 => registro_m_temp(2),
      O => Add_Sub_pm_rca_serie_di_fa_2_fa_riporto_out1_O_pack_1
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_mux_temp_out_mux : X_LUT4
    generic map(
      INIT => X"ACA3",
      LOC => "SLICE_X31Y31"
    )
    port map (
      ADR0 => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_481,
      ADR1 => N8_0,
      ADR2 => cu_stato_corrente_FSM_FFd2_518,
      ADR3 => Add_Sub_pm_rca_serie_di_fa_2_fa_riporto_out1_O,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_out_temp
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q : X_FF
    generic map(
      LOC => "SLICE_X31Y31",
      INIT => '0'
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_DXMUX_1064,
      CE => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_CEINV_1047,
      CLK => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_CLKINV_1048,
      SET => GND,
      RST => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_FFX_RSTAND_1070,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_480
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X31Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => Inst_Counter_ModN_reset_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_FFX_RSTAND_1070
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"CCAA",
      LOC => "SLICE_X30Y27"
    )
    port map (
      ADR0 => op1_3_IBUF_490,
      ADR1 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_507,
      ADR2 => VCC,
      ADR3 => cu_stato_corrente_FSM_FFd2_518,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_out_temp
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q : X_FF
    generic map(
      LOC => "SLICE_X30Y27",
      INIT => '0'
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_DYMUX_1093,
      CE => registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_CEINV_1082,
      CLK => registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_CLKINV_1083,
      SET => GND,
      RST => registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_FFY_RSTAND_1099,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_506
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X30Y27",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_n_IBUF_475,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_FFY_RSTAND_1099
    );
  cu_conteggio_up1 : X_LUT4
    generic map(
      INIT => X"3030",
      LOC => "SLICE_X30Y27"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Inst_Counter_ModN_res_out_520,
      ADR2 => cu_stato_corrente_FSM_FFd2_518,
      ADR3 => VCC,
      O => conteggio_up_temp
    );
  Inst_Counter_ModN_c_2 : X_FF
    generic map(
      LOC => "SLICE_X29Y35",
      INIT => '0'
    )
    port map (
      I => Inst_Counter_ModN_res_out_DYMUX_1132,
      CE => Inst_Counter_ModN_res_out_CEINV_1121,
      CLK => Inst_Counter_ModN_res_out_CLKINV_1122,
      SET => GND,
      RST => Inst_Counter_ModN_res_out_SRINV_1123,
      O => Inst_Counter_ModN_c(2)
    );
  Inst_Counter_ModN_res_out_cmp_eq00001 : X_LUT4
    generic map(
      INIT => X"4040",
      LOC => "SLICE_X29Y35"
    )
    port map (
      ADR0 => Inst_Counter_ModN_c(0),
      ADR1 => Inst_Counter_ModN_c(1),
      ADR2 => Inst_Counter_ModN_c(2),
      ADR3 => VCC,
      O => Inst_Counter_ModN_res_out_cmp_eq0000
    );
  Inst_Counter_ModN_res_out : X_FF
    generic map(
      LOC => "SLICE_X29Y35",
      INIT => '0'
    )
    port map (
      I => Inst_Counter_ModN_res_out_DXMUX_1148,
      CE => Inst_Counter_ModN_res_out_CEINV_1121,
      CLK => Inst_Counter_ModN_res_out_CLKINV_1122,
      SET => GND,
      RST => Inst_Counter_ModN_res_out_SRINV_1123,
      O => Inst_Counter_ModN_res_out_520
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X31Y26"
    )
    port map (
      ADR0 => cu_stato_corrente_FSM_FFd2_518,
      ADR1 => op1_7_IBUF_498,
      ADR2 => VCC,
      ADR3 => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_477,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_out_temp
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q : X_FF
    generic map(
      LOC => "SLICE_X31Y26",
      INIT => '0'
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_DYMUX_1177,
      CE => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_CEINV_1166,
      CLK => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_CLKINV_1167,
      SET => GND,
      RST => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_FFY_RSTAND_1183,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_476
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X31Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_n_IBUF_475,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_FFY_RSTAND_1183
    );
  cu_stato_corrente_FSM_Out51 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X31Y26"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cu_stato_corrente_FSM_FFd4_540,
      ADR2 => VCC,
      ADR3 => cu_stato_corrente_FSM_FFd2_518,
      O => en_q_temp_pack_2
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"EE44",
      LOC => "SLICE_X30Y20"
    )
    port map (
      ADR0 => cu_stato_corrente_FSM_FFd2_518,
      ADR1 => op1_2_IBUF_489,
      ADR2 => VCC,
      ADR3 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_506,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_out_temp
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q : X_FF
    generic map(
      LOC => "SLICE_X30Y20",
      INIT => '0'
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_DYMUX_1215,
      CE => registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_CEINV_1204,
      CLK => registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_CLKINV_1205,
      SET => GND,
      RST => registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_FFY_RSTAND_1221,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_504
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X30Y20",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_n_IBUF_475,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_FFY_RSTAND_1221
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux : X_LUT4
    generic map(
      INIT => X"2E1D",
      LOC => "SLICE_X29Y32"
    )
    port map (
      ADR0 => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_484,
      ADR1 => cu_stato_corrente_FSM_FFd2_518,
      ADR2 => N17,
      ADR3 => N16,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_out_temp
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q : X_FF
    generic map(
      LOC => "SLICE_X29Y32",
      INIT => '0'
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_DXMUX_1735,
      CE => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_CEINV_1718,
      CLK => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_CLKINV_1719,
      SET => GND,
      RST => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_FFX_RSTAND_1741,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_484
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X29Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => Inst_Counter_ModN_reset_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_FFX_RSTAND_1741
    );
  Add_Sub_pm_xor_inv_Mxor_temp_7_Result1 : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X29Y34"
    )
    port map (
      ADR0 => Inst_Counter_ModN_res_out_520,
      ADR1 => VCC,
      ADR2 => registro_m_temp(7),
      ADR3 => VCC,
      O => Add_Sub_pm_OP2_effettivo_7_Q
    );
  registro_m_temp_0 : X_FF
    generic map(
      LOC => "SLICE_X28Y33",
      INIT => '0'
    )
    port map (
      I => registro_m_temp_1_DYMUX_1778,
      CE => registro_m_temp_1_CEINV_1774,
      CLK => registro_m_temp_1_CLKINV_1775,
      SET => GND,
      RST => registro_m_temp_1_SRINVNOT,
      O => registro_m_temp(0)
    );
  registro_m_temp_1 : X_FF
    generic map(
      LOC => "SLICE_X28Y33",
      INIT => '0'
    )
    port map (
      I => registro_m_temp_1_DXMUX_1787,
      CE => registro_m_temp_1_CEINV_1774,
      CLK => registro_m_temp_1_CLKINV_1775,
      SET => GND,
      RST => registro_m_temp_1_SRINVNOT,
      O => registro_m_temp(1)
    );
  registro_m_temp_2 : X_FF
    generic map(
      LOC => "SLICE_X30Y35",
      INIT => '0'
    )
    port map (
      I => registro_m_temp_3_DYMUX_1806,
      CE => registro_m_temp_3_CEINV_1802,
      CLK => registro_m_temp_3_CLKINV_1803,
      SET => GND,
      RST => registro_m_temp_3_SRINVNOT,
      O => registro_m_temp(2)
    );
  registro_m_temp_3 : X_FF
    generic map(
      LOC => "SLICE_X30Y35",
      INIT => '0'
    )
    port map (
      I => registro_m_temp_3_DXMUX_1815,
      CE => registro_m_temp_3_CEINV_1802,
      CLK => registro_m_temp_3_CLKINV_1803,
      SET => GND,
      RST => registro_m_temp_3_SRINVNOT,
      O => registro_m_temp(3)
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_mux_temp_out_mux_G : X_LUT4
    generic map(
      INIT => X"ED21",
      LOC => "SLICE_X28Y31"
    )
    port map (
      ADR0 => N14_0,
      ADR1 => cu_stato_corrente_FSM_FFd2_518,
      ADR2 => N20,
      ADR3 => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_484,
      O => N51
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q : X_FF
    generic map(
      LOC => "SLICE_X28Y31",
      INIT => '0'
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_DXMUX_864,
      CE => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_CEINV_846,
      CLK => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_CLKINV_847,
      SET => GND,
      RST => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_FFX_RSTAND_870,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_483
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X28Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => Inst_Counter_ModN_reset_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_FFX_RSTAND_870
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_mux_temp_out_mux_G : X_LUT4
    generic map(
      INIT => X"8DD8",
      LOC => "SLICE_X31Y33"
    )
    port map (
      ADR0 => cu_stato_corrente_FSM_FFd2_518,
      ADR1 => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_483,
      ADR2 => N42_0,
      ADR3 => Inst_Counter_ModN_res_out_520,
      O => N47
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q : X_FF
    generic map(
      LOC => "SLICE_X31Y33",
      INIT => '0'
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_DXMUX_903,
      CE => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_CEINV_885,
      CLK => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_CLKINV_886,
      SET => GND,
      RST => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_FFX_RSTAND_909,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_482
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X31Y33",
      PATHPULSE => 555 ps
    )
    port map (
      I => Inst_Counter_ModN_reset_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_FFX_RSTAND_909
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q : X_FF
    generic map(
      LOC => "SLICE_X31Y27",
      INIT => '0'
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_DXMUX_1342,
      CE => registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_CEINV_1315,
      CLK => registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_CLKINV_1316,
      SET => GND,
      RST => registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_SRINVNOT,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_507
    );
  cu_stato_corrente_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X31Y20",
      INIT => '0'
    )
    port map (
      I => cu_stato_corrente_FSM_FFd2_DYMUX_1370,
      CE => VCC,
      CLK => cu_stato_corrente_FSM_FFd2_CLKINV_1359,
      SET => GND,
      RST => cu_stato_corrente_FSM_FFd2_SRINVNOT,
      O => cu_stato_corrente_FSM_FFd1_541
    );
  cu_stato_corrente_FSM_FFd2_In1 : X_LUT4
    generic map(
      INIT => X"BABA",
      LOC => "SLICE_X31Y20"
    )
    port map (
      ADR0 => cu_stato_corrente_FSM_FFd1_541,
      ADR1 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_500,
      ADR2 => cu_stato_corrente_FSM_FFd3_542,
      ADR3 => VCC,
      O => cu_stato_corrente_FSM_FFd2_In
    );
  cu_stato_corrente_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X31Y20",
      INIT => '0'
    )
    port map (
      I => cu_stato_corrente_FSM_FFd2_DXMUX_1385,
      CE => VCC,
      CLK => cu_stato_corrente_FSM_FFd2_CLKINV_1359,
      SET => GND,
      RST => cu_stato_corrente_FSM_FFd2_SRINVNOT,
      O => cu_stato_corrente_FSM_FFd2_518
    );
  cu_stato_corrente_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X30Y23",
      INIT => '0'
    )
    port map (
      I => cu_stato_corrente_FSM_FFd4_DYMUX_1411,
      CE => VCC,
      CLK => cu_stato_corrente_FSM_FFd4_CLKINV_1401,
      SET => GND,
      RST => cu_stato_corrente_FSM_FFd4_SRINVNOT,
      O => cu_stato_corrente_FSM_FFd3_542
    );
  cu_stato_corrente_FSM_FFd4_In1 : X_LUT4
    generic map(
      INIT => X"CC00",
      LOC => "SLICE_X30Y23"
    )
    port map (
      ADR0 => VCC,
      ADR1 => start_IBUF_485,
      ADR2 => VCC,
      ADR3 => cu_stato_corrente_FSM_FFd5_473,
      O => cu_stato_corrente_FSM_FFd4_In
    );
  cu_stato_corrente_FSM_FFd4 : X_FF
    generic map(
      LOC => "SLICE_X30Y23",
      INIT => '0'
    )
    port map (
      I => cu_stato_corrente_FSM_FFd4_DXMUX_1427,
      CE => VCC,
      CLK => cu_stato_corrente_FSM_FFd4_CLKINV_1401,
      SET => GND,
      RST => cu_stato_corrente_FSM_FFd4_SRINVNOT,
      O => cu_stato_corrente_FSM_FFd4_540
    );
  cu_stato_corrente_FSM_FFd5 : X_FF
    generic map(
      LOC => "SLICE_X30Y22",
      INIT => '1'
    )
    port map (
      I => cu_stato_corrente_FSM_FFd5_DYMUX_1453,
      CE => VCC,
      CLK => cu_stato_corrente_FSM_FFd5_CLKINV_1444,
      SET => cu_stato_corrente_FSM_FFd5_FFY_SET,
      RST => GND,
      O => cu_stato_corrente_FSM_FFd5_473
    );
  cu_stato_corrente_FSM_FFd5_FFY_SETOR : X_INV
    generic map(
      LOC => "SLICE_X30Y22",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_n_IBUF_475,
      O => cu_stato_corrente_FSM_FFd5_FFY_SET
    );
  ff_msb_reset_n_inv1 : X_LUT4
    generic map(
      INIT => X"CCFF",
      LOC => "SLICE_X30Y22"
    )
    port map (
      ADR0 => VCC,
      ADR1 => Inst_Counter_ModN_res_out_520,
      ADR2 => VCC,
      ADR3 => reset_n_IBUF_475,
      O => ff_msb_reset_n_inv
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"FC0C",
      LOC => "SLICE_X30Y26"
    )
    port map (
      ADR0 => VCC,
      ADR1 => op1_5_IBUF_494,
      ADR2 => cu_stato_corrente_FSM_FFd2_518,
      ADR3 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_474,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_out_temp
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q : X_FF
    generic map(
      LOC => "SLICE_X30Y26",
      INIT => '0'
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_DYMUX_1486,
      CE => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_CEINV_1475,
      CLK => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_CLKINV_1476,
      SET => GND,
      RST => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_FFY_RSTAND_1492,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_472
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_FFY_RSTAND : X_INV
    generic map(
      LOC => "SLICE_X30Y26",
      PATHPULSE => 555 ps
    )
    port map (
      I => reset_n_IBUF_475,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_FFY_RSTAND_1492
    );
  Inst_Counter_ModN_Mcount_c_xor_1_11 : X_LUT4
    generic map(
      INIT => X"6666",
      LOC => "SLICE_X26Y34"
    )
    port map (
      ADR0 => Inst_Counter_ModN_c(1),
      ADR1 => Inst_Counter_ModN_c(0),
      ADR2 => VCC,
      ADR3 => VCC,
      O => Result(1)
    );
  Inst_Counter_ModN_c_1 : X_FF
    generic map(
      LOC => "SLICE_X26Y34",
      INIT => '0'
    )
    port map (
      I => Inst_Counter_ModN_c_0_DYMUX_1514,
      CE => Inst_Counter_ModN_c_0_CEINV_1502,
      CLK => Inst_Counter_ModN_c_0_CLKINV_1503,
      SET => GND,
      RST => Inst_Counter_ModN_c_0_SRINV_1504,
      O => Inst_Counter_ModN_c(1)
    );
  Inst_Counter_ModN_c_0 : X_FF
    generic map(
      LOC => "SLICE_X26Y34",
      INIT => '0'
    )
    port map (
      I => Inst_Counter_ModN_c_0_DXMUX_1523,
      CE => Inst_Counter_ModN_c_0_CEINV_1502,
      CLK => Inst_Counter_ModN_c_0_CLKINV_1503,
      SET => GND,
      RST => Inst_Counter_ModN_c_0_SRINV_1504,
      O => Inst_Counter_ModN_c(0)
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_mux_temp_out_mux_SW0 : X_LUT4
    generic map(
      INIT => X"6699",
      LOC => "SLICE_X30Y32"
    )
    port map (
      ADR0 => Inst_Counter_ModN_res_out_520,
      ADR1 => registro_m_temp(4),
      ADR2 => VCC,
      ADR3 => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_481,
      O => N10_pack_2
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_mux_temp_out_mux : X_LUT4
    generic map(
      INIT => X"CAC5",
      LOC => "SLICE_X30Y32"
    )
    port map (
      ADR0 => Add_Sub_pm_rca_vettore_riporti_4_Q,
      ADR1 => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_482,
      ADR2 => cu_stato_corrente_FSM_FFd2_518,
      ADR3 => N10,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_out_temp
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q : X_FF
    generic map(
      LOC => "SLICE_X30Y32",
      INIT => '0'
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_DXMUX_1573,
      CE => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_CEINV_1555,
      CLK => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_CLKINV_1556,
      SET => GND,
      RST => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_FFX_RSTAND_1579,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_481
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X30Y32",
      PATHPULSE => 555 ps
    )
    port map (
      I => Inst_Counter_ModN_reset_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_FFX_RSTAND_1579
    );
  cu_stato_corrente_FSM_Out61 : X_LUT4
    generic map(
      INIT => X"FFCC",
      LOC => "SLICE_X30Y20"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cu_stato_corrente_FSM_FFd2_518,
      ADR2 => VCC,
      ADR3 => cu_stato_corrente_FSM_FFd1_541,
      O => en_a_temp
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_mux_temp_out_mux : X_LUT4
    generic map(
      INIT => X"F606",
      LOC => "SLICE_X29Y30"
    )
    port map (
      ADR0 => registro_m_temp(0),
      ADR1 => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_477,
      ADR2 => cu_stato_corrente_FSM_FFd2_518,
      ADR3 => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_478,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_out_temp
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q : X_FF
    generic map(
      LOC => "SLICE_X29Y30",
      INIT => '0'
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_DYMUX_1250,
      CE => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_CEINV_1240,
      CLK => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_CLKINV_1241,
      SET => GND,
      RST => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_FFY_RSTAND_1256,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_477
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X29Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => Inst_Counter_ModN_reset_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_FFY_RSTAND_1256
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q : X_FF
    generic map(
      LOC => "SLICE_X30Y13",
      INIT => '0'
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_DYMUX_1280,
      CE => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_CEINV_1269,
      CLK => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_CLKINV_1270,
      SET => GND,
      RST => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_SRINVNOT,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_500
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"F3C0",
      LOC => "SLICE_X30Y13"
    )
    port map (
      ADR0 => VCC,
      ADR1 => cu_stato_corrente_FSM_FFd2_518,
      ADR2 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_504,
      ADR3 => op1_1_IBUF_488,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_out_temp
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q : X_FF
    generic map(
      LOC => "SLICE_X30Y13",
      INIT => '0'
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_DXMUX_1296,
      CE => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_CEINV_1269,
      CLK => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_CLKINV_1270,
      SET => GND,
      RST => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_SRINVNOT,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_502
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q : X_FF
    generic map(
      LOC => "SLICE_X31Y27",
      INIT => '0'
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_DYMUX_1326,
      CE => registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_CEINV_1315,
      CLK => registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_CLKINV_1316,
      SET => GND,
      RST => registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_SRINVNOT,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_474
    );
  registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_mux_temp_out_mux1 : X_LUT4
    generic map(
      INIT => X"E4E4",
      LOC => "SLICE_X31Y27"
    )
    port map (
      ADR0 => cu_stato_corrente_FSM_FFd2_518,
      ADR1 => op1_4_IBUF_492,
      ADR2 => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_472,
      ADR3 => VCC,
      O => registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_out_temp
    );
  Add_Sub_pm_xor_inv_Mxor_temp_3_Result1 : X_LUT4
    generic map(
      INIT => X"5A5A",
      LOC => "SLICE_X28Y34"
    )
    port map (
      ADR0 => registro_m_temp(3),
      ADR1 => VCC,
      ADR2 => Inst_Counter_ModN_res_out_520,
      ADR3 => VCC,
      O => Add_Sub_pm_OP2_effettivo_3_Q
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_mux_temp_out_mux_SW0 : X_LUT4
    generic map(
      INIT => X"3CC3",
      LOC => "SLICE_X30Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_479,
      ADR2 => Inst_Counter_ModN_res_out_520,
      ADR3 => registro_m_temp(2),
      O => N6_pack_2
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_mux_temp_out_mux : X_LUT4
    generic map(
      INIT => X"ED21",
      LOC => "SLICE_X30Y31"
    )
    port map (
      ADR0 => Add_Sub_pm_rca_vettore_riporti_2_0,
      ADR1 => cu_stato_corrente_FSM_FFd2_518,
      ADR2 => N6,
      ADR3 => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_480,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_out_temp
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q : X_FF
    generic map(
      LOC => "SLICE_X30Y31",
      INIT => '0'
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_DXMUX_1635,
      CE => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_CEINV_1617,
      CLK => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_CLKINV_1618,
      SET => GND,
      RST => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_FFX_RSTAND_1641,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_479
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X30Y31",
      PATHPULSE => 555 ps
    )
    port map (
      I => Inst_Counter_ModN_reset_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_FFX_RSTAND_1641
    );
  Add_Sub_pm_xor_inv_Mxor_temp_6_Result1 : X_LUT4
    generic map(
      INIT => X"33CC",
      LOC => "SLICE_X29Y31"
    )
    port map (
      ADR0 => VCC,
      ADR1 => registro_m_temp(6),
      ADR2 => VCC,
      ADR3 => Inst_Counter_ModN_res_out_520,
      O => Add_Sub_pm_OP2_effettivo_6_Q
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_mux_temp_out_mux_SW1 : X_LUT4
    generic map(
      INIT => X"96AA",
      LOC => "SLICE_X28Y30"
    )
    port map (
      ADR0 => registro_m_temp(1),
      ADR1 => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_477,
      ADR2 => Inst_Counter_ModN_res_out_520,
      ADR3 => registro_m_temp(0),
      O => N44_pack_2
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_mux_temp_out_mux : X_LUT4
    generic map(
      INIT => X"C5CA",
      LOC => "SLICE_X28Y30"
    )
    port map (
      ADR0 => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_478,
      ADR1 => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_479,
      ADR2 => cu_stato_corrente_FSM_FFd2_518,
      ADR3 => N44,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_out_temp
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q : X_FF
    generic map(
      LOC => "SLICE_X28Y30",
      INIT => '0'
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_DXMUX_1697,
      CE => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_CEINV_1680,
      CLK => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_CLKINV_1681,
      SET => GND,
      RST => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_FFX_RSTAND_1703,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_478
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_FFX_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X28Y30",
      PATHPULSE => 555 ps
    )
    port map (
      I => Inst_Counter_ModN_reset_0,
      O => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_FFX_RSTAND_1703
    );
  registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux_SW1 : X_LUT4
    generic map(
      INIT => X"8D27",
      LOC => "SLICE_X29Y32"
    )
    port map (
      ADR0 => Inst_Counter_ModN_res_out_520,
      ADR1 => op1_7_IBUF_498,
      ADR2 => ff_msb_temp_551,
      ADR3 => registro_m_temp(7),
      O => N17_pack_2
    );
  registro_m_temp_4 : X_FF
    generic map(
      LOC => "SLICE_X31Y35",
      INIT => '0'
    )
    port map (
      I => registro_m_temp_5_DYMUX_1834,
      CE => registro_m_temp_5_CEINV_1830,
      CLK => registro_m_temp_5_CLKINV_1831,
      SET => GND,
      RST => registro_m_temp_5_SRINVNOT,
      O => registro_m_temp(4)
    );
  registro_m_temp_5 : X_FF
    generic map(
      LOC => "SLICE_X31Y35",
      INIT => '0'
    )
    port map (
      I => registro_m_temp_5_DXMUX_1843,
      CE => registro_m_temp_5_CEINV_1830,
      CLK => registro_m_temp_5_CLKINV_1831,
      SET => GND,
      RST => registro_m_temp_5_SRINVNOT,
      O => registro_m_temp(5)
    );
  registro_m_temp_6 : X_FF
    generic map(
      LOC => "SLICE_X27Y34",
      INIT => '0'
    )
    port map (
      I => registro_m_temp_7_DYMUX_1862,
      CE => registro_m_temp_7_CEINV_1858,
      CLK => registro_m_temp_7_CLKINV_1859,
      SET => GND,
      RST => registro_m_temp_7_SRINVNOT,
      O => registro_m_temp(6)
    );
  registro_m_temp_7 : X_FF
    generic map(
      LOC => "SLICE_X27Y34",
      INIT => '0'
    )
    port map (
      I => registro_m_temp_7_DXMUX_1871,
      CE => registro_m_temp_7_CEINV_1858,
      CLK => registro_m_temp_7_CLKINV_1859,
      SET => GND,
      RST => registro_m_temp_7_SRINVNOT,
      O => registro_m_temp(7)
    );
  ff_msb_temp : X_FF
    generic map(
      LOC => "SLICE_X29Y24",
      INIT => '0'
    )
    port map (
      I => ff_msb_temp_DYMUX_1912,
      CE => ff_msb_temp_CEINV_1908,
      CLK => ff_msb_temp_CLKINV_1909,
      SET => GND,
      RST => ff_msb_temp_FFY_RSTAND_1918,
      O => ff_msb_temp_551
    );
  ff_msb_temp_FFY_RSTAND : X_BUF
    generic map(
      LOC => "SLICE_X29Y24",
      PATHPULSE => 555 ps
    )
    port map (
      I => ff_msb_reset_n_inv,
      O => ff_msb_temp_FFY_RSTAND_1918
    );
  risultato_5_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD44",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_472,
      O => risultato_5_O
    );
  stop_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD54",
      PATHPULSE => 555 ps
    )
    port map (
      I => cu_stato_corrente_FSM_FFd5_473,
      O => stop_O
    );
  risultato_6_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_474,
      O => risultato_6_O
    );
  risultato_7_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD42",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_476,
      O => risultato_7_O
    );
  risultato_8_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_477,
      O => risultato_8_O
    );
  risultato_9_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD35",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_478,
      O => risultato_9_O
    );
  risultato_10_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD34",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_479,
      O => risultato_10_O
    );
  risultato_11_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD25",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_480,
      O => risultato_11_O
    );
  risultato_12_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD22",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_481,
      O => risultato_12_O
    );
  risultato_13_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD30",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_482,
      O => risultato_13_O
    );
  risultato_14_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD33",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_483,
      O => risultato_14_O
    );
  risultato_15_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD28",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_A_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_484,
      O => risultato_15_O
    );
  risultato_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD51",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_500,
      O => risultato_0_O
    );
  risultato_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD49",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_502,
      O => risultato_1_O
    );
  risultato_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_504,
      O => risultato_2_O
    );
  risultato_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_506,
      O => risultato_3_O
    );
  risultato_4_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD45",
      PATHPULSE => 555 ps
    )
    port map (
      I => registro_Q_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_507,
      O => risultato_4_O
    );
  NlwBlock_Moltiplicatore_NperNbit_Robertson_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlock_Moltiplicatore_NperNbit_Robertson_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;


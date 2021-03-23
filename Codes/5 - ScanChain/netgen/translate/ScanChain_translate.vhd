--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: ScanChain_translate.vhd
-- /___/   /\     Timestamp: Fri Mar 15 11:16:54 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm ScanChain -w -dir netgen/translate -ofmt vhdl -sim ScanChain.ngd ScanChain_translate.vhd 
-- Device	: 3s100etq144-4
-- Input file	: ScanChain.ngd
-- Output file	: /home/giorgio/Documenti/ES_SCAN_CHAIN/netgen/translate/ScanChain_translate.vhd
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
  signal N11 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal clock_BUFGP : STD_LOGIC; 
  signal contatore_count_cmp_eq0000 : STD_LOGIC; 
  signal contatore_count_cmp_eq0001 : STD_LOGIC; 
  signal contatore_reset_n_inv_33 : STD_LOGIC; 
  signal contatore_temp_out_34 : STD_LOGIC; 
  signal contatore_temp_out1_35 : STD_LOGIC; 
  signal contatore_temp_out_not0001 : STD_LOGIC; 
  signal control_enable_conter_temp : STD_LOGIC; 
  signal control_enable_reg_temp : STD_LOGIC; 
  signal control_mux_temp : STD_LOGIC; 
  signal countMaxReg_reset_n_inv : STD_LOGIC; 
  signal cu_current_FSM_FFd1_44 : STD_LOGIC; 
  signal cu_current_FSM_FFd1_In : STD_LOGIC; 
  signal cu_current_FSM_FFd2_46 : STD_LOGIC; 
  signal cu_current_FSM_FFd3_47 : STD_LOGIC; 
  signal cu_current_FSM_FFd3_In_48 : STD_LOGIC; 
  signal enable_temp : STD_LOGIC; 
  signal mode_IBUF_51 : STD_LOGIC; 
  signal posizione_0_IBUF_55 : STD_LOGIC; 
  signal posizione_1_IBUF_56 : STD_LOGIC; 
  signal posizione_2_IBUF_57 : STD_LOGIC; 
  signal reg_in_0_IBUF_66 : STD_LOGIC; 
  signal reg_in_1_IBUF_67 : STD_LOGIC; 
  signal reg_in_2_IBUF_68 : STD_LOGIC; 
  signal reg_in_3_IBUF_69 : STD_LOGIC; 
  signal reg_in_4_IBUF_70 : STD_LOGIC; 
  signal reg_in_5_IBUF_71 : STD_LOGIC; 
  signal reg_in_6_IBUF_72 : STD_LOGIC; 
  signal reg_in_7_IBUF_73 : STD_LOGIC; 
  signal reset_n_IBUF_75 : STD_LOGIC; 
  signal scan_in_IBUF_77 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_78 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_out_temp : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_80 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_out_temp : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_82 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_out_temp : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_84 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_out_temp : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_86 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_out_temp : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_88 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_out_temp : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_90 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_out_temp : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_92 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_out_temp : STD_LOGIC; 
  signal start_IBUF_95 : STD_LOGIC; 
  signal stop_OBUF_97 : STD_LOGIC; 
  signal sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux_SW0_O : STD_LOGIC; 
  signal contatore_count_mux0002_2_1_SW0_O : STD_LOGIC; 
  signal cu_current_FSM_FFd3_In_SW1_O : STD_LOGIC; 
  signal clock_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal contatore_Msub_count_sub0000_cy : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal contatore_count : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal contatore_count_mux0002 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal contatore_count_sub0000 : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal countMaxReg_temp : STD_LOGIC_VECTOR ( 2 downto 0 ); 
begin
  countMaxReg_temp_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => enable_temp,
      RST => countMaxReg_reset_n_inv,
      I => posizione_2_IBUF_57,
      O => countMaxReg_temp(2),
      SET => GND
    );
  countMaxReg_temp_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => enable_temp,
      RST => countMaxReg_reset_n_inv,
      I => posizione_1_IBUF_56,
      O => countMaxReg_temp(1),
      SET => GND
    );
  countMaxReg_temp_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => enable_temp,
      RST => countMaxReg_reset_n_inv,
      I => posizione_0_IBUF_55,
      O => countMaxReg_temp(0),
      SET => GND
    );
  cu_current_FSM_FFd3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      RST => countMaxReg_reset_n_inv,
      I => cu_current_FSM_FFd3_In_48,
      O => cu_current_FSM_FFd3_47,
      CE => VCC,
      SET => GND
    );
  cu_current_FSM_FFd1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      RST => countMaxReg_reset_n_inv,
      I => cu_current_FSM_FFd1_In,
      O => cu_current_FSM_FFd1_44,
      CE => VCC,
      SET => GND
    );
  cu_current_FSM_FFd2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      RST => countMaxReg_reset_n_inv,
      I => cu_current_FSM_FFd1_44,
      O => cu_current_FSM_FFd2_46,
      CE => VCC,
      SET => GND
    );
  contatore_temp_out : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => contatore_temp_out_not0001,
      RST => contatore_reset_n_inv_33,
      I => contatore_count_cmp_eq0001,
      O => contatore_temp_out_34,
      SET => GND
    );
  contatore_temp_out1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => control_enable_conter_temp,
      RST => contatore_reset_n_inv_33,
      I => contatore_count_cmp_eq0000,
      O => contatore_temp_out1_35,
      SET => GND
    );
  contatore_count_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => control_enable_conter_temp,
      RST => contatore_reset_n_inv_33,
      I => contatore_count_mux0002(0),
      O => contatore_count(2),
      SET => GND
    );
  contatore_count_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => control_enable_conter_temp,
      RST => contatore_reset_n_inv_33,
      I => contatore_count_mux0002(1),
      O => contatore_count(1),
      SET => GND
    );
  contatore_count_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => control_enable_conter_temp,
      RST => contatore_reset_n_inv_33,
      I => contatore_count_mux0002(2),
      O => contatore_count(0),
      SET => GND
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => control_enable_reg_temp,
      RST => countMaxReg_reset_n_inv,
      I => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_out_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_92,
      SET => GND
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => control_enable_reg_temp,
      RST => countMaxReg_reset_n_inv,
      I => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_out_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_90,
      SET => GND
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => control_enable_reg_temp,
      RST => countMaxReg_reset_n_inv,
      I => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_out_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_88,
      SET => GND
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => control_enable_reg_temp,
      RST => countMaxReg_reset_n_inv,
      I => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_out_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_86,
      SET => GND
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => control_enable_reg_temp,
      RST => countMaxReg_reset_n_inv,
      I => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_out_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_84,
      SET => GND
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => control_enable_reg_temp,
      RST => countMaxReg_reset_n_inv,
      I => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_out_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_82,
      SET => GND
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => control_enable_reg_temp,
      RST => countMaxReg_reset_n_inv,
      I => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_out_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_80,
      SET => GND
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clock_BUFGP,
      CE => control_enable_reg_temp,
      RST => countMaxReg_reset_n_inv,
      I => sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_out_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_78,
      SET => GND
    );
  contatore_reset_n_inv_SW0 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => cu_current_FSM_FFd1_44,
      ADR1 => mode_IBUF_51,
      O => enable_temp
    );
  contatore_reset_n_inv : X_LUT4
    generic map(
      INIT => X"10FF"
    )
    port map (
      ADR0 => cu_current_FSM_FFd2_46,
      ADR1 => cu_current_FSM_FFd3_47,
      ADR2 => enable_temp,
      ADR3 => reset_n_IBUF_75,
      O => contatore_reset_n_inv_33
    );
  cu_control_enable_reg1 : X_LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      ADR0 => cu_current_FSM_FFd2_46,
      ADR1 => cu_current_FSM_FFd3_47,
      ADR2 => contatore_temp_out1_35,
      O => control_enable_reg_temp
    );
  cu_current_FSM_FFd1_In11 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => cu_current_FSM_FFd1_44,
      ADR1 => cu_current_FSM_FFd3_47,
      ADR2 => cu_current_FSM_FFd2_46,
      O => stop_OBUF_97
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_mux_temp_out_mux1 : X_LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      ADR0 => reg_in_6_IBUF_72,
      ADR1 => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_92,
      ADR2 => control_enable_conter_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_out_temp
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_mux_temp_out_mux1 : X_LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      ADR0 => reg_in_5_IBUF_71,
      ADR1 => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_90,
      ADR2 => control_enable_conter_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_out_temp
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_mux_temp_out_mux1 : X_LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      ADR0 => reg_in_4_IBUF_70,
      ADR1 => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_88,
      ADR2 => control_enable_conter_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_out_temp
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_mux_temp_out_mux1 : X_LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      ADR0 => reg_in_3_IBUF_69,
      ADR1 => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_86,
      ADR2 => control_enable_conter_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_out_temp
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_mux_temp_out_mux1 : X_LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      ADR0 => reg_in_2_IBUF_68,
      ADR1 => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_84,
      ADR2 => control_enable_conter_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_out_temp
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_mux_temp_out_mux1 : X_LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      ADR0 => reg_in_1_IBUF_67,
      ADR1 => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_82,
      ADR2 => control_enable_conter_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_out_temp
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_mux_temp_out_mux1 : X_LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      ADR0 => reg_in_0_IBUF_66,
      ADR1 => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_80,
      ADR2 => control_enable_conter_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_out_temp
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux : X_LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      ADR0 => reg_in_7_IBUF_73,
      ADR1 => control_enable_conter_temp,
      ADR2 => N7,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_out_temp
    );
  control_mux_temp1 : X_LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      ADR0 => contatore_temp_out1_35,
      ADR1 => cu_current_FSM_FFd3_47,
      ADR2 => cu_current_FSM_FFd2_46,
      O => control_mux_temp
    );
  contatore_count_mux0002_0_SW0 : X_LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      ADR0 => contatore_count(1),
      ADR1 => contatore_count(0),
      O => N9
    );
  contatore_count_cmp_eq00014 : X_LUT4
    generic map(
      INIT => X"4004"
    )
    port map (
      ADR0 => N31,
      ADR1 => contatore_Msub_count_sub0000_cy(2),
      ADR2 => contatore_count_sub0000(2),
      ADR3 => contatore_count(2),
      O => contatore_count_cmp_eq0001
    );
  scan_in_IBUF : X_BUF
    port map (
      I => scan_in,
      O => scan_in_IBUF_77
    );
  reset_n_IBUF : X_BUF
    port map (
      I => reset_n,
      O => reset_n_IBUF_75
    );
  start_IBUF : X_BUF
    port map (
      I => start,
      O => start_IBUF_95
    );
  mode_IBUF : X_BUF
    port map (
      I => mode,
      O => mode_IBUF_51
    );
  posizione_2_IBUF : X_BUF
    port map (
      I => posizione(2),
      O => posizione_2_IBUF_57
    );
  posizione_1_IBUF : X_BUF
    port map (
      I => posizione(1),
      O => posizione_1_IBUF_56
    );
  posizione_0_IBUF : X_BUF
    port map (
      I => posizione(0),
      O => posizione_0_IBUF_55
    );
  reg_in_7_IBUF : X_BUF
    port map (
      I => reg_in(7),
      O => reg_in_7_IBUF_73
    );
  reg_in_6_IBUF : X_BUF
    port map (
      I => reg_in(6),
      O => reg_in_6_IBUF_72
    );
  reg_in_5_IBUF : X_BUF
    port map (
      I => reg_in(5),
      O => reg_in_5_IBUF_71
    );
  reg_in_4_IBUF : X_BUF
    port map (
      I => reg_in(4),
      O => reg_in_4_IBUF_70
    );
  reg_in_3_IBUF : X_BUF
    port map (
      I => reg_in(3),
      O => reg_in_3_IBUF_69
    );
  reg_in_2_IBUF : X_BUF
    port map (
      I => reg_in(2),
      O => reg_in_2_IBUF_68
    );
  reg_in_1_IBUF : X_BUF
    port map (
      I => reg_in(1),
      O => reg_in_1_IBUF_67
    );
  reg_in_0_IBUF : X_BUF
    port map (
      I => reg_in(0),
      O => reg_in_0_IBUF_66
    );
  contatore_count_mux0002_0_SW1 : X_LUT4
    generic map(
      INIT => X"9198"
    )
    port map (
      ADR0 => contatore_count(2),
      ADR1 => N9,
      ADR2 => N11,
      ADR3 => N32,
      O => N20
    );
  cu_control_mode1 : X_LUT3
    generic map(
      INIT => X"1C"
    )
    port map (
      ADR0 => contatore_temp_out1_35,
      ADR1 => cu_current_FSM_FFd2_46,
      ADR2 => cu_current_FSM_FFd3_47,
      O => control_enable_conter_temp
    );
  contatore_count_cmp_eq00014_SW4_SW0 : X_LUT3
    generic map(
      INIT => X"9F"
    )
    port map (
      ADR0 => contatore_count(0),
      ADR1 => contatore_count(1),
      ADR2 => N30,
      O => N22
    );
  contatore_count_mux0002_1_1 : X_LUT4
    generic map(
      INIT => X"00F6"
    )
    port map (
      ADR0 => contatore_count(2),
      ADR1 => contatore_count_sub0000(2),
      ADR2 => N11,
      ADR3 => N22,
      O => contatore_count_mux0002(1)
    );
  cu_current_FSM_FFd1_In2 : X_LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      ADR0 => start_IBUF_95,
      ADR1 => cu_current_FSM_FFd1_44,
      ADR2 => cu_current_FSM_FFd3_47,
      ADR3 => cu_current_FSM_FFd2_46,
      O => cu_current_FSM_FFd1_In
    );
  contatore_count_cmp_eq00001 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => countMaxReg_temp(1),
      ADR1 => countMaxReg_temp(0),
      ADR2 => countMaxReg_temp(2),
      O => contatore_count_cmp_eq0000
    );
  contatore_count_mux0002_2_1 : X_LUT4
    generic map(
      INIT => X"0444"
    )
    port map (
      ADR0 => contatore_count(0),
      ADR1 => contatore_Msub_count_sub0000_cy(2),
      ADR2 => countMaxReg_temp(0),
      ADR3 => N24,
      O => contatore_count_mux0002(2)
    );
  cu_current_FSM_FFd3_In : X_LUT3
    generic map(
      INIT => X"2F"
    )
    port map (
      ADR0 => cu_current_FSM_FFd1_44,
      ADR1 => mode_IBUF_51,
      ADR2 => N26,
      O => cu_current_FSM_FFd3_In_48
    );
  contatore_temp_out_not00011 : X_LUT4
    generic map(
      INIT => X"1C00"
    )
    port map (
      ADR0 => contatore_temp_out1_35,
      ADR1 => cu_current_FSM_FFd2_46,
      ADR2 => cu_current_FSM_FFd3_47,
      ADR3 => contatore_Msub_count_sub0000_cy(2),
      O => contatore_temp_out_not0001
    );
  contatore_count_mux0002_0_Q : X_LUT4
    generic map(
      INIT => X"CCC8"
    )
    port map (
      ADR0 => countMaxReg_temp(1),
      ADR1 => N20,
      ADR2 => countMaxReg_temp(0),
      ADR3 => countMaxReg_temp(2),
      O => contatore_count_mux0002(0)
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_reset_n_inv1_INV_0 : X_INV
    port map (
      I => reset_n_IBUF_75,
      O => countMaxReg_reset_n_inv
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux_SW0_LUT3_L_BUF : X_BUF
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux_SW0_O,
      O => N7
    );
  sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux_SW0 : X_LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      ADR0 => scan_in_IBUF_77,
      ADR1 => sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_78,
      ADR2 => control_mux_temp,
      O => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_mux_temp_out_mux_SW0_O
    );
  contatore_Msub_count_sub0000_cy_2_11_LUT3_D_BUF : X_BUF
    port map (
      I => contatore_Msub_count_sub0000_cy(2),
      O => N30
    );
  contatore_Msub_count_sub0000_cy_2_11 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => countMaxReg_temp(2),
      ADR1 => countMaxReg_temp(0),
      ADR2 => countMaxReg_temp(1),
      O => contatore_Msub_count_sub0000_cy(2)
    );
  contatore_count_cmp_eq00014_SW0_LUT4_D_BUF : X_BUF
    port map (
      I => N11,
      O => N31
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
      O => N11
    );
  contatore_Msub_count_sub0000_xor_2_11_LUT3_D_BUF : X_BUF
    port map (
      I => contatore_count_sub0000(2),
      O => N32
    );
  contatore_Msub_count_sub0000_xor_2_11 : X_LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      ADR0 => countMaxReg_temp(2),
      ADR1 => countMaxReg_temp(0),
      ADR2 => countMaxReg_temp(1),
      O => contatore_count_sub0000(2)
    );
  contatore_count_mux0002_2_1_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => contatore_count_mux0002_2_1_SW0_O,
      O => N24
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
      O => contatore_count_mux0002_2_1_SW0_O
    );
  cu_current_FSM_FFd3_In_SW1_LUT4_L_BUF : X_BUF
    port map (
      I => cu_current_FSM_FFd3_In_SW1_O,
      O => N26
    );
  cu_current_FSM_FFd3_In_SW1 : X_LUT4
    generic map(
      INIT => X"DDD9"
    )
    port map (
      ADR0 => cu_current_FSM_FFd2_46,
      ADR1 => cu_current_FSM_FFd3_47,
      ADR2 => contatore_temp_out_34,
      ADR3 => contatore_temp_out1_35,
      O => cu_current_FSM_FFd3_In_SW1_O
    );
  clock_BUFGP_BUFG : X_CKBUF
    port map (
      I => clock_BUFGP_IBUFG_2,
      O => clock_BUFGP
    );
  clock_BUFGP_IBUFG : X_CKBUF
    port map (
      I => clock,
      O => clock_BUFGP_IBUFG_2
    );
  Q_0_OBUF : X_OBUF
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_0_shift_right_ffm_flipflop_Q_temp_78,
      O => Q(0)
    );
  Q_1_OBUF : X_OBUF
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_1_shift_right_ffm_flipflop_Q_temp_80,
      O => Q(1)
    );
  Q_2_OBUF : X_OBUF
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_2_shift_right_ffm_flipflop_Q_temp_82,
      O => Q(2)
    );
  Q_3_OBUF : X_OBUF
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_3_shift_right_ffm_flipflop_Q_temp_84,
      O => Q(3)
    );
  Q_4_OBUF : X_OBUF
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_4_shift_right_ffm_flipflop_Q_temp_86,
      O => Q(4)
    );
  Q_5_OBUF : X_OBUF
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_5_shift_right_ffm_flipflop_Q_temp_88,
      O => Q(5)
    );
  Q_6_OBUF : X_OBUF
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_6_shift_right_ffm_flipflop_Q_temp_90,
      O => Q(6)
    );
  Q_7_OBUF : X_OBUF
    port map (
      I => sr_LOOP_FOR_ISTANTIATE_FFM_7_shift_right_ffm_flipflop_Q_temp_92,
      O => Q(7)
    );
  stop_OBUF : X_OBUF
    port map (
      I => stop_OBUF_97,
      O => stop
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


////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Restoring_timesim.v
// /___/   /\     Timestamp: Fri Mar 15 17:46:01 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 4 -pcf divisore_restoring.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim divisore_restoring.ncd Restoring_timesim.v 
// Device	: 3s100evq100-4 (PRODUCTION 1.27 2013-10-13)
// Input file	: divisore_restoring.ncd
// Output file	: /home/luca/ISE_ws/Divisore_rest/netgen/par/Restoring_timesim.v
// # of Modules	: 1
// Design Name	: divisore_restoring
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module divisore_restoring (
  reset_n, stop, start, overflow, clock, div_zero, quoziente, resto, dividendo, divisore
);
  input reset_n;
  output stop;
  input start;
  output overflow;
  input clock;
  output div_zero;
  output [3 : 0] quoziente;
  output [3 : 0] resto;
  input [7 : 0] dividendo;
  input [3 : 0] divisore;
  wire \reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q_385 ;
  wire reset_a;
  wire \reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q_387 ;
  wire \reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q_388 ;
  wire \reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q_389 ;
  wire divisore_0_IBUF_391;
  wire divisore_1_IBUF_392;
  wire divisore_2_IBUF_393;
  wire divisore_3_IBUF_394;
  wire start_IBUF_395;
  wire \reg_q/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q_397 ;
  wire \reg_q/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q_398 ;
  wire div_zero_OBUF_0;
  wire \reg_q/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q_400 ;
  wire dividendo_0_IBUF_401;
  wire \reg_q/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q_402 ;
  wire dividendo_1_IBUF_403;
  wire dividendo_2_IBUF_404;
  wire dividendo_3_IBUF_405;
  wire dividendo_4_IBUF_406;
  wire dividendo_5_IBUF_407;
  wire dividendo_6_IBUF_408;
  wire dividendo_7_IBUF_409;
  wire clock_BUFGP;
  wire enable_a_0;
  wire \cu/stato_corrente_FSM_FFd3_414 ;
  wire \cu/stato_corrente_FSM_FFd2_415 ;
  wire \counter_mod_n/res_out_temp_419 ;
  wire \cu/stato_corrente_FSM_FFd1_420 ;
  wire N8;
  wire N9;
  wire \rca/b_effettivo<3>_0 ;
  wire N14_0;
  wire reset_count_cu;
  wire \rca/rca/serie_di_fa[2].fa/riporto_out1_SW3/O ;
  wire \rca/xor_inversione/output<1>1/O ;
  wire \rca/rca/vettore_riporti<1>_0 ;
  wire cnt_in_0;
  wire \counter_mod_n/reset_0 ;
  wire N3_0;
  wire enable_v_0;
  wire \reg_s/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q_441 ;
  wire N23;
  wire overflow_and000022_0;
  wire \rca/controllo/overf_xor0000_0 ;
  wire overflow_and00005_0;
  wire overflow_cmp_ge00001_446;
  wire \stop/O ;
  wire \resto<0>/O ;
  wire \reset_n/INBUF ;
  wire \resto<1>/O ;
  wire \resto<2>/O ;
  wire \resto<3>/O ;
  wire \overflow/O ;
  wire \divisore<0>/INBUF ;
  wire \divisore<1>/INBUF ;
  wire \divisore<2>/INBUF ;
  wire \divisore<3>/INBUF ;
  wire \start/INBUF ;
  wire \clock/INBUF ;
  wire \quoziente<0>/O ;
  wire \quoziente<1>/O ;
  wire \div_zero/O ;
  wire \quoziente<2>/O ;
  wire \dividendo<0>/INBUF ;
  wire \quoziente<3>/O ;
  wire \dividendo<1>/INBUF ;
  wire \dividendo<2>/INBUF ;
  wire \dividendo<3>/INBUF ;
  wire \dividendo<4>/INBUF ;
  wire \dividendo<5>/INBUF ;
  wire \dividendo<6>/INBUF ;
  wire \dividendo<7>/INBUF ;
  wire \clock_BUFGP/BUFG/S_INVNOT ;
  wire \clock_BUFGP/BUFG/I0_INV ;
  wire \reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/DXMUX_661 ;
  wire \reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/F5MUX_659 ;
  wire N34;
  wire \reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/BXINV_651 ;
  wire N33;
  wire \reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_643 ;
  wire \reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/CEINV_642 ;
  wire \reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/DXMUX_700 ;
  wire \reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/F5MUX_698 ;
  wire N32;
  wire \reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/BXINV_690 ;
  wire N31;
  wire \reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_682 ;
  wire \reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/CEINV_681 ;
  wire \reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/DXMUX_739 ;
  wire \reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/F5MUX_737 ;
  wire N30;
  wire \reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/BXINV_729 ;
  wire N29;
  wire \reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_721 ;
  wire \reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/CEINV_720 ;
  wire \cu/stato_corrente_FSM_FFd2/DXMUX_776 ;
  wire \cu/stato_corrente_FSM_FFd2/F5MUX_774 ;
  wire N28;
  wire \cu/stato_corrente_FSM_FFd2/BXINV_767 ;
  wire N27;
  wire \cu/stato_corrente_FSM_FFd2/CLKINV_759 ;
  wire \N8/F5MUX_806 ;
  wire N38;
  wire \N8/BXINV_799 ;
  wire N37;
  wire \N9/F5MUX_831 ;
  wire N36;
  wire \N9/BXINV_824 ;
  wire N35;
  wire \rca/rca/vettore_riporti<2>/F5MUX_856 ;
  wire N40;
  wire \rca/rca/vettore_riporti<2>/BXINV_849 ;
  wire N39;
  wire \reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/DXMUX_889 ;
  wire \reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/F5MUX_887 ;
  wire N26;
  wire \reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/BXINV_880 ;
  wire N25;
  wire \reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_872 ;
  wire \reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/CEINV_871 ;
  wire N14;
  wire \rca/b_effettivo<2>_pack_1 ;
  wire \reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/mux/o57_942 ;
  wire \rca/rca/serie_di_fa[2].fa/riporto_out1_SW3/O_pack_1 ;
  wire \reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/mux/o57_966 ;
  wire reset_count_cu_pack_1;
  wire \reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/mux/o57_990 ;
  wire \rca/xor_inversione/output<1>1/O_pack_1 ;
  wire \counter_mod_n/res_out_temp/DYMUX_1011 ;
  wire \counter_mod_n/res_out_temp_cmp_eq0000 ;
  wire \counter_mod_n/res_out_temp/CLKINV_1000 ;
  wire \counter_mod_n/res_out_temp/CEINV_999 ;
  wire \counter_mod_n/reset ;
  wire \reg_q/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/DYMUX_1041 ;
  wire \reg_q/shift_reg[3].shift_reg_left.ffd_with_mux/true_d ;
  wire \reg_q/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_1032 ;
  wire \reg_q/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/CEINV_1031 ;
  wire N3;
  wire \reg_q/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/DYMUX_1078 ;
  wire \reg_q/shift_reg[2].shift_reg_left.ffd_with_mux/true_d ;
  wire \reg_q/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_1069 ;
  wire \reg_q/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/CEINV_1068 ;
  wire stop_OBUF_1130;
  wire \reg_q/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/DYMUX_1117 ;
  wire \reg_q/shift_reg[1].shift_reg_left.ffd_with_mux/true_d ;
  wire \reg_q/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_1108 ;
  wire \reg_q/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/CEINV_1107 ;
  wire enable_a;
  wire \reg_q/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/DYMUX_1155 ;
  wire \reg_q/shift_reg[0].shift_reg_left.ffd_with_mux/true_d ;
  wire \reg_q/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_1146 ;
  wire \reg_q/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/CEINV_1145 ;
  wire enable_v;
  wire \reg_s/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/DYMUX_1192 ;
  wire \reg_s/shift_reg[0].shift_reg_left.ffd_with_mux/true_d ;
  wire \reg_s/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_1183 ;
  wire \reg_s/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/CEINV_1182 ;
  wire \cu/stato_corrente_FSM_FFd3/DYMUX_1228 ;
  wire \cu/stato_corrente_FSM_FFd3-In ;
  wire \cu/stato_corrente_FSM_FFd3/CLKINV_1219 ;
  wire overflow_OBUF_1265;
  wire N23_pack_1;
  wire \rca/controllo/overf_xor0000 ;
  wire overflow_and000022_1313;
  wire overflow_cmp_ge00001_pack_1;
  wire \reg_v/reg_signal<1>/DXMUX_1336 ;
  wire \reg_v/reg_signal<1>/DYMUX_1327 ;
  wire \reg_v/reg_signal<1>/SRINVNOT ;
  wire \reg_v/reg_signal<1>/CLKINV_1324 ;
  wire \reg_v/reg_signal<1>/CEINV_1323 ;
  wire \reg_v/reg_signal<3>/DXMUX_1364 ;
  wire \reg_v/reg_signal<3>/DYMUX_1355 ;
  wire \reg_v/reg_signal<3>/SRINVNOT ;
  wire \reg_v/reg_signal<3>/CLKINV_1352 ;
  wire \reg_v/reg_signal<3>/CEINV_1351 ;
  wire div_zero_OBUF_1393;
  wire overflow_and00005_1386;
  wire \counter_mod_n/c<0>/DXMUX_1425 ;
  wire \counter_mod_n/c<0>/DYMUX_1416 ;
  wire \counter_mod_n/c<0>/SRINV_1406 ;
  wire \counter_mod_n/c<0>/CLKINV_1405 ;
  wire \counter_mod_n/c<0>/CEINV_1404 ;
  wire cnt_in;
  wire \cu/stato_corrente_FSM_FFd1/DXMUX_1473 ;
  wire \cu/stato_corrente_FSM_FFd1-In ;
  wire \risultato_temp<4>_pack_1 ;
  wire \cu/stato_corrente_FSM_FFd1/CLKINV_1456 ;
  wire \cu/stato_corrente_FSM_FFd2/FFX/RSTAND_781 ;
  wire \reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/FFX/RSTAND_895 ;
  wire \counter_mod_n/res_out_temp/FFY/RSTAND_1017 ;
  wire \reg_q/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/FFY/RSTAND_1047 ;
  wire \reg_q/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/FFY/RSTAND_1084 ;
  wire \reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/FFX/RSTAND_667 ;
  wire \reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/FFX/RSTAND_706 ;
  wire \reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/FFX/RSTAND_745 ;
  wire \reg_q/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/FFY/RSTAND_1123 ;
  wire \reg_q/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/FFY/RSTAND_1161 ;
  wire \reg_s/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/FFY/RSTAND_1198 ;
  wire \cu/stato_corrente_FSM_FFd3/FFY/RSTAND_1233 ;
  wire \cu/stato_corrente_FSM_FFd1/FFX/RSTAND_1478 ;
  wire GND;
  wire VCC;
  wire [4 : 4] risultato_temp;
  wire [3 : 0] \reg_v/reg_signal ;
  wire [2 : 1] \rca/rca/vettore_riporti ;
  wire [3 : 2] \rca/b_effettivo ;
  wire [1 : 0] \counter_mod_n/c ;
  wire [1 : 1] \counter_mod_n/c_mux0003 ;
  initial $sdf_annotate("netgen/par/Restoring_timesim.sdf");
  X_OPAD #(
    .LOC ( "PAD70" ))
  \stop/PAD  (
    .PAD(stop)
  );
  X_OBUF #(
    .LOC ( "PAD70" ))
  stop_OBUF (
    .I(\stop/O ),
    .O(stop)
  );
  X_OPAD #(
    .LOC ( "PAD49" ))
  \resto<0>/PAD  (
    .PAD(resto[0])
  );
  X_OBUF #(
    .LOC ( "PAD49" ))
  resto_0_OBUF (
    .I(\resto<0>/O ),
    .O(resto[0])
  );
  X_IPAD #(
    .LOC ( "PAD65" ))
  \reset_n/PAD  (
    .PAD(reset_n)
  );
  X_BUF #(
    .LOC ( "PAD65" ))
  reset_n_IBUF (
    .I(reset_n),
    .O(\reset_n/INBUF )
  );
  X_BUF #(
    .LOC ( "PAD65" ))
  \reset_n/IFF/IMUX  (
    .I(\reset_n/INBUF ),
    .O(reset_a)
  );
  X_OPAD #(
    .LOC ( "PAD58" ))
  \resto<1>/PAD  (
    .PAD(resto[1])
  );
  X_OBUF #(
    .LOC ( "PAD58" ))
  resto_1_OBUF (
    .I(\resto<1>/O ),
    .O(resto[1])
  );
  X_OPAD #(
    .LOC ( "PAD62" ))
  \resto<2>/PAD  (
    .PAD(resto[2])
  );
  X_OBUF #(
    .LOC ( "PAD62" ))
  resto_2_OBUF (
    .I(\resto<2>/O ),
    .O(resto[2])
  );
  X_OPAD #(
    .LOC ( "PAD55" ))
  \resto<3>/PAD  (
    .PAD(resto[3])
  );
  X_OBUF #(
    .LOC ( "PAD55" ))
  resto_3_OBUF (
    .I(\resto<3>/O ),
    .O(resto[3])
  );
  X_OPAD #(
    .LOC ( "PAD61" ))
  \overflow/PAD  (
    .PAD(overflow)
  );
  X_OBUF #(
    .LOC ( "PAD61" ))
  overflow_OBUF (
    .I(\overflow/O ),
    .O(overflow)
  );
  X_IPAD #(
    .LOC ( "PAD54" ))
  \divisore<0>/PAD  (
    .PAD(divisore[0])
  );
  X_BUF #(
    .LOC ( "PAD54" ))
  divisore_0_IBUF (
    .I(divisore[0]),
    .O(\divisore<0>/INBUF )
  );
  X_BUF #(
    .LOC ( "PAD54" ))
  \divisore<0>/IFF/IMUX  (
    .I(\divisore<0>/INBUF ),
    .O(divisore_0_IBUF_391)
  );
  X_IPAD #(
    .LOC ( "PAD53" ))
  \divisore<1>/PAD  (
    .PAD(divisore[1])
  );
  X_BUF #(
    .LOC ( "PAD53" ))
  divisore_1_IBUF (
    .I(divisore[1]),
    .O(\divisore<1>/INBUF )
  );
  X_BUF #(
    .LOC ( "PAD53" ))
  \divisore<1>/IFF/IMUX  (
    .I(\divisore<1>/INBUF ),
    .O(divisore_1_IBUF_392)
  );
  X_IPAD #(
    .LOC ( "PAD59" ))
  \divisore<2>/PAD  (
    .PAD(divisore[2])
  );
  X_BUF #(
    .LOC ( "PAD59" ))
  divisore_2_IBUF (
    .I(divisore[2]),
    .O(\divisore<2>/INBUF )
  );
  X_BUF #(
    .LOC ( "PAD59" ))
  \divisore<2>/IFF/IMUX  (
    .I(\divisore<2>/INBUF ),
    .O(divisore_2_IBUF_393)
  );
  X_IPAD #(
    .LOC ( "PAD48" ))
  \divisore<3>/PAD  (
    .PAD(divisore[3])
  );
  X_BUF #(
    .LOC ( "PAD48" ))
  divisore_3_IBUF (
    .I(divisore[3]),
    .O(\divisore<3>/INBUF )
  );
  X_BUF #(
    .LOC ( "PAD48" ))
  \divisore<3>/IFF/IMUX  (
    .I(\divisore<3>/INBUF ),
    .O(divisore_3_IBUF_394)
  );
  X_IPAD #(
    .LOC ( "IPAD67" ))
  \start/PAD  (
    .PAD(start)
  );
  X_BUF #(
    .LOC ( "IPAD67" ))
  start_IBUF (
    .I(start),
    .O(\start/INBUF )
  );
  X_BUF #(
    .LOC ( "IPAD67" ))
  \start/IFF/IMUX  (
    .I(\start/INBUF ),
    .O(start_IBUF_395)
  );
  X_IPAD #(
    .LOC ( "IPAD12" ))
  \clock/PAD  (
    .PAD(clock)
  );
  X_BUF #(
    .LOC ( "IPAD12" ))
  \clock_BUFGP/IBUFG  (
    .I(clock),
    .O(\clock/INBUF )
  );
  X_OPAD #(
    .LOC ( "PAD71" ))
  \quoziente<0>/PAD  (
    .PAD(quoziente[0])
  );
  X_OBUF #(
    .LOC ( "PAD71" ))
  quoziente_0_OBUF (
    .I(\quoziente<0>/O ),
    .O(quoziente[0])
  );
  X_OPAD #(
    .LOC ( "PAD68" ))
  \quoziente<1>/PAD  (
    .PAD(quoziente[1])
  );
  X_OBUF #(
    .LOC ( "PAD68" ))
  quoziente_1_OBUF (
    .I(\quoziente<1>/O ),
    .O(quoziente[1])
  );
  X_OPAD #(
    .LOC ( "PAD56" ))
  \div_zero/PAD  (
    .PAD(div_zero)
  );
  X_OBUF #(
    .LOC ( "PAD56" ))
  div_zero_OBUF (
    .I(\div_zero/O ),
    .O(div_zero)
  );
  X_OPAD #(
    .LOC ( "PAD72" ))
  \quoziente<2>/PAD  (
    .PAD(quoziente[2])
  );
  X_OBUF #(
    .LOC ( "PAD72" ))
  quoziente_2_OBUF (
    .I(\quoziente<2>/O ),
    .O(quoziente[2])
  );
  X_IPAD #(
    .LOC ( "PAD79" ))
  \dividendo<0>/PAD  (
    .PAD(dividendo[0])
  );
  X_BUF #(
    .LOC ( "PAD79" ))
  dividendo_0_IBUF (
    .I(dividendo[0]),
    .O(\dividendo<0>/INBUF )
  );
  X_BUF #(
    .LOC ( "PAD79" ))
  \dividendo<0>/IFF/IMUX  (
    .I(\dividendo<0>/INBUF ),
    .O(dividendo_0_IBUF_401)
  );
  X_OPAD #(
    .LOC ( "PAD69" ))
  \quoziente<3>/PAD  (
    .PAD(quoziente[3])
  );
  X_OBUF #(
    .LOC ( "PAD69" ))
  quoziente_3_OBUF (
    .I(\quoziente<3>/O ),
    .O(quoziente[3])
  );
  X_IPAD #(
    .LOC ( "PAD78" ))
  \dividendo<1>/PAD  (
    .PAD(dividendo[1])
  );
  X_BUF #(
    .LOC ( "PAD78" ))
  dividendo_1_IBUF (
    .I(dividendo[1]),
    .O(\dividendo<1>/INBUF )
  );
  X_BUF #(
    .LOC ( "PAD78" ))
  \dividendo<1>/IFF/IMUX  (
    .I(\dividendo<1>/INBUF ),
    .O(dividendo_1_IBUF_403)
  );
  X_IPAD #(
    .LOC ( "PAD76" ))
  \dividendo<2>/PAD  (
    .PAD(dividendo[2])
  );
  X_BUF #(
    .LOC ( "PAD76" ))
  dividendo_2_IBUF (
    .I(dividendo[2]),
    .O(\dividendo<2>/INBUF )
  );
  X_BUF #(
    .LOC ( "PAD76" ))
  \dividendo<2>/IFF/IMUX  (
    .I(\dividendo<2>/INBUF ),
    .O(dividendo_2_IBUF_404)
  );
  X_IPAD #(
    .LOC ( "PAD75" ))
  \dividendo<3>/PAD  (
    .PAD(dividendo[3])
  );
  X_BUF #(
    .LOC ( "PAD75" ))
  dividendo_3_IBUF (
    .I(dividendo[3]),
    .O(\dividendo<3>/INBUF )
  );
  X_BUF #(
    .LOC ( "PAD75" ))
  \dividendo<3>/IFF/IMUX  (
    .I(\dividendo<3>/INBUF ),
    .O(dividendo_3_IBUF_405)
  );
  X_IPAD #(
    .LOC ( "IPAD73" ))
  \dividendo<4>/PAD  (
    .PAD(dividendo[4])
  );
  X_BUF #(
    .LOC ( "IPAD73" ))
  dividendo_4_IBUF (
    .I(dividendo[4]),
    .O(\dividendo<4>/INBUF )
  );
  X_BUF #(
    .LOC ( "IPAD73" ))
  \dividendo<4>/IFF/IMUX  (
    .I(\dividendo<4>/INBUF ),
    .O(dividendo_4_IBUF_406)
  );
  X_IPAD #(
    .LOC ( "IPAD66" ))
  \dividendo<5>/PAD  (
    .PAD(dividendo[5])
  );
  X_BUF #(
    .LOC ( "IPAD66" ))
  dividendo_5_IBUF (
    .I(dividendo[5]),
    .O(\dividendo<5>/INBUF )
  );
  X_BUF #(
    .LOC ( "IPAD66" ))
  \dividendo<5>/IFF/IMUX  (
    .I(\dividendo<5>/INBUF ),
    .O(dividendo_5_IBUF_407)
  );
  X_IPAD #(
    .LOC ( "PAD64" ))
  \dividendo<6>/PAD  (
    .PAD(dividendo[6])
  );
  X_BUF #(
    .LOC ( "PAD64" ))
  dividendo_6_IBUF (
    .I(dividendo[6]),
    .O(\dividendo<6>/INBUF )
  );
  X_BUF #(
    .LOC ( "PAD64" ))
  \dividendo<6>/IFF/IMUX  (
    .I(\dividendo<6>/INBUF ),
    .O(dividendo_6_IBUF_408)
  );
  X_IPAD #(
    .LOC ( "PAD63" ))
  \dividendo<7>/PAD  (
    .PAD(dividendo[7])
  );
  X_BUF #(
    .LOC ( "PAD63" ))
  dividendo_7_IBUF (
    .I(dividendo[7]),
    .O(\dividendo<7>/INBUF )
  );
  X_BUF #(
    .LOC ( "PAD63" ))
  \dividendo<7>/IFF/IMUX  (
    .I(\dividendo<7>/INBUF ),
    .O(dividendo_7_IBUF_409)
  );
  X_BUFGMUX #(
    .LOC ( "BUFGMUX_X2Y10" ))
  \clock_BUFGP/BUFG  (
    .I0(\clock_BUFGP/BUFG/I0_INV ),
    .I1(GND),
    .S(\clock_BUFGP/BUFG/S_INVNOT ),
    .O(clock_BUFGP)
  );
  X_INV #(
    .LOC ( "BUFGMUX_X2Y10" ))
  \clock_BUFGP/BUFG/SINV  (
    .I(1'b1),
    .O(\clock_BUFGP/BUFG/S_INVNOT )
  );
  X_BUF #(
    .LOC ( "BUFGMUX_X2Y10" ))
  \clock_BUFGP/BUFG/I0_USED  (
    .I(\clock/INBUF ),
    .O(\clock_BUFGP/BUFG/I0_INV )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y8" ))
  \reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/DXMUX  (
    .I(\reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/F5MUX_659 ),
    .O(\reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/DXMUX_661 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y8" ))
  \reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/F5MUX  (
    .IA(N33),
    .IB(N34),
    .SEL(\reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/BXINV_651 ),
    .O(\reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/F5MUX_659 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y8" ))
  \reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/BXINV  (
    .I(\reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/mux/o57_990 ),
    .O(\reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/BXINV_651 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y8" ))
  \reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/CLKINV  (
    .I(clock_BUFGP),
    .O(\reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_643 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y8" ))
  \reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/CEINV  (
    .I(enable_a_0),
    .O(\reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/CEINV_642 )
  );
  X_LUT4 #(
    .INIT ( 16'h6240 ),
    .LOC ( "SLICE_X16Y8" ))
  \reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/mux/o92_F  (
    .ADR0(\cu/stato_corrente_FSM_FFd2_415 ),
    .ADR1(\cu/stato_corrente_FSM_FFd3_414 ),
    .ADR2(dividendo_5_IBUF_407),
    .ADR3(\reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q_385 ),
    .O(N33)
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y8" ))
  \reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/DXMUX  (
    .I(\reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/F5MUX_698 ),
    .O(\reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/DXMUX_700 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X20Y8" ))
  \reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/F5MUX  (
    .IA(N31),
    .IB(N32),
    .SEL(\reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/BXINV_690 ),
    .O(\reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/F5MUX_698 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y8" ))
  \reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/BXINV  (
    .I(\reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/mux/o57_966 ),
    .O(\reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/BXINV_690 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y8" ))
  \reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/CLKINV  (
    .I(clock_BUFGP),
    .O(\reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_682 )
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y8" ))
  \reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/CEINV  (
    .I(enable_a_0),
    .O(\reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/CEINV_681 )
  );
  X_LUT4 #(
    .INIT ( 16'h6420 ),
    .LOC ( "SLICE_X20Y8" ))
  \reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/mux/o93_F  (
    .ADR0(\cu/stato_corrente_FSM_FFd2_415 ),
    .ADR1(\cu/stato_corrente_FSM_FFd3_414 ),
    .ADR2(\reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q_387 ),
    .ADR3(dividendo_6_IBUF_408),
    .O(N31)
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y10" ))
  \reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/DXMUX  (
    .I(\reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/F5MUX_737 ),
    .O(\reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/DXMUX_739 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X19Y10" ))
  \reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/F5MUX  (
    .IA(N29),
    .IB(N30),
    .SEL(\reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/BXINV_729 ),
    .O(\reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/F5MUX_737 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y10" ))
  \reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/BXINV  (
    .I(\reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/mux/o57_942 ),
    .O(\reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/BXINV_729 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y10" ))
  \reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/CLKINV  (
    .I(clock_BUFGP),
    .O(\reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_721 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y10" ))
  \reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/CEINV  (
    .I(enable_a_0),
    .O(\reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/CEINV_720 )
  );
  X_LUT4 #(
    .INIT ( 16'h22C0 ),
    .LOC ( "SLICE_X19Y10" ))
  \reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/mux/o93_F  (
    .ADR0(\reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q_388 ),
    .ADR1(\cu/stato_corrente_FSM_FFd3_414 ),
    .ADR2(dividendo_7_IBUF_409),
    .ADR3(\cu/stato_corrente_FSM_FFd2_415 ),
    .O(N29)
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y8" ))
  \cu/stato_corrente_FSM_FFd2/DXMUX  (
    .I(\cu/stato_corrente_FSM_FFd2/F5MUX_774 ),
    .O(\cu/stato_corrente_FSM_FFd2/DXMUX_776 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X15Y8" ))
  \cu/stato_corrente_FSM_FFd2/F5MUX  (
    .IA(N27),
    .IB(N28),
    .SEL(\cu/stato_corrente_FSM_FFd2/BXINV_767 ),
    .O(\cu/stato_corrente_FSM_FFd2/F5MUX_774 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y8" ))
  \cu/stato_corrente_FSM_FFd2/BXINV  (
    .I(risultato_temp[4]),
    .O(\cu/stato_corrente_FSM_FFd2/BXINV_767 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y8" ))
  \cu/stato_corrente_FSM_FFd2/CLKINV  (
    .I(clock_BUFGP),
    .O(\cu/stato_corrente_FSM_FFd2/CLKINV_759 )
  );
  X_LUT4 #(
    .INIT ( 16'h7D7C ),
    .LOC ( "SLICE_X15Y8" ))
  \cu/stato_corrente_FSM_FFd2-In_F  (
    .ADR0(\counter_mod_n/res_out_temp_419 ),
    .ADR1(\cu/stato_corrente_FSM_FFd2_415 ),
    .ADR2(\cu/stato_corrente_FSM_FFd3_414 ),
    .ADR3(\cu/stato_corrente_FSM_FFd1_420 ),
    .O(N27)
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y8" ))
  \N8/XUSED  (
    .I(\N8/F5MUX_806 ),
    .O(N8)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X21Y8" ))
  \N8/F5MUX  (
    .IA(N37),
    .IB(N38),
    .SEL(\N8/BXINV_799 ),
    .O(\N8/F5MUX_806 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y8" ))
  \N8/BXINV  (
    .I(\reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q_389 ),
    .O(\N8/BXINV_799 )
  );
  X_LUT4 #(
    .INIT ( 16'h7FFD ),
    .LOC ( "SLICE_X21Y8" ))
  \rca/rca/serie_di_fa[2].fa/riporto_out1_SW0_F  (
    .ADR0(\reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q_388 ),
    .ADR1(\cu/stato_corrente_FSM_FFd1_420 ),
    .ADR2(\reg_v/reg_signal [2]),
    .ADR3(\reg_v/reg_signal [3]),
    .O(N37)
  );
  X_LUT4 #(
    .INIT ( 16'h158A ),
    .LOC ( "SLICE_X21Y8" ))
  \rca/rca/serie_di_fa[2].fa/riporto_out1_SW0_G  (
    .ADR0(\reg_v/reg_signal [3]),
    .ADR1(\reg_v/reg_signal [2]),
    .ADR2(\reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q_388 ),
    .ADR3(\cu/stato_corrente_FSM_FFd1_420 ),
    .O(N38)
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y9" ))
  \N9/XUSED  (
    .I(\N9/F5MUX_831 ),
    .O(N9)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X19Y9" ))
  \N9/F5MUX  (
    .IA(N35),
    .IB(N36),
    .SEL(\N9/BXINV_824 ),
    .O(\N9/F5MUX_831 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y9" ))
  \N9/BXINV  (
    .I(\reg_v/reg_signal [3]),
    .O(\N9/BXINV_824 )
  );
  X_LUT4 #(
    .INIT ( 16'h0D4C ),
    .LOC ( "SLICE_X19Y9" ))
  \rca/rca/serie_di_fa[2].fa/riporto_out1_SW1_F  (
    .ADR0(\reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q_388 ),
    .ADR1(\cu/stato_corrente_FSM_FFd1_420 ),
    .ADR2(\reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q_389 ),
    .ADR3(\reg_v/reg_signal [2]),
    .O(N35)
  );
  X_LUT4 #(
    .INIT ( 16'h1307 ),
    .LOC ( "SLICE_X19Y9" ))
  \rca/rca/serie_di_fa[2].fa/riporto_out1_SW1_G  (
    .ADR0(\reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q_388 ),
    .ADR1(\cu/stato_corrente_FSM_FFd1_420 ),
    .ADR2(\reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q_389 ),
    .ADR3(\reg_v/reg_signal [2]),
    .O(N36)
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y8" ))
  \rca/rca/vettore_riporti<2>/XUSED  (
    .I(\rca/rca/vettore_riporti<2>/F5MUX_856 ),
    .O(\rca/rca/vettore_riporti [2])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X18Y8" ))
  \rca/rca/vettore_riporti<2>/F5MUX  (
    .IA(N39),
    .IB(N40),
    .SEL(\rca/rca/vettore_riporti<2>/BXINV_849 ),
    .O(\rca/rca/vettore_riporti<2>/F5MUX_856 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y8" ))
  \rca/rca/vettore_riporti<2>/BXINV  (
    .I(\reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q_385 ),
    .O(\rca/rca/vettore_riporti<2>/BXINV_849 )
  );
  X_LUT4 #(
    .INIT ( 16'hF8B3 ),
    .LOC ( "SLICE_X18Y8" ))
  \rca/rca/serie_di_fa[1].fa/riporto_out1_G  (
    .ADR0(\reg_v/reg_signal [0]),
    .ADR1(\cu/stato_corrente_FSM_FFd1_420 ),
    .ADR2(\reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q_387 ),
    .ADR3(\reg_v/reg_signal [1]),
    .O(N40)
  );
  X_LUT4 #(
    .INIT ( 16'hD031 ),
    .LOC ( "SLICE_X18Y8" ))
  \rca/rca/serie_di_fa[1].fa/riporto_out1_F  (
    .ADR0(\reg_v/reg_signal [0]),
    .ADR1(\cu/stato_corrente_FSM_FFd1_420 ),
    .ADR2(\reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q_387 ),
    .ADR3(\reg_v/reg_signal [1]),
    .O(N39)
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y12" ))
  \reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/DXMUX  (
    .I(\reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/F5MUX_887 ),
    .O(\reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/DXMUX_889 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X19Y12" ))
  \reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/F5MUX  (
    .IA(N25),
    .IB(N26),
    .SEL(\reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/BXINV_880 ),
    .O(\reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/F5MUX_887 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y12" ))
  \reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/BXINV  (
    .I(\cu/stato_corrente_FSM_FFd3_414 ),
    .O(\reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/BXINV_880 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y12" ))
  \reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/CLKINV  (
    .I(clock_BUFGP),
    .O(\reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_872 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y12" ))
  \reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/CEINV  (
    .I(enable_a_0),
    .O(\reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/CEINV_871 )
  );
  X_LUT4 #(
    .INIT ( 16'hC5CA ),
    .LOC ( "SLICE_X19Y12" ))
  \reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/mux/o_F  (
    .ADR0(\reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q_385 ),
    .ADR1(\reg_q/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q_402 ),
    .ADR2(\cu/stato_corrente_FSM_FFd2_415 ),
    .ADR3(\reg_v/reg_signal [0]),
    .O(N25)
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y11" ))
  \N14/XUSED  (
    .I(N14),
    .O(N14_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y11" ))
  \N14/YUSED  (
    .I(\rca/b_effettivo<2>_pack_1 ),
    .O(\rca/b_effettivo [2])
  );
  X_LUT4 #(
    .INIT ( 16'h9999 ),
    .LOC ( "SLICE_X18Y11" ))
  \rca/xor_inversione/output<2>1  (
    .ADR0(\cu/stato_corrente_FSM_FFd1_420 ),
    .ADR1(\reg_v/reg_signal [2]),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(\rca/b_effettivo<2>_pack_1 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y10" ))
  \reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/mux/o57/YUSED  (
    .I(\rca/rca/serie_di_fa[2].fa/riporto_out1_SW3/O_pack_1 ),
    .O(\rca/rca/serie_di_fa[2].fa/riporto_out1_SW3/O )
  );
  X_LUT4 #(
    .INIT ( 16'h6669 ),
    .LOC ( "SLICE_X18Y10" ))
  \rca/rca/serie_di_fa[2].fa/riporto_out1_SW3  (
    .ADR0(\reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q_389 ),
    .ADR1(\rca/b_effettivo<3>_0 ),
    .ADR2(\rca/b_effettivo [2]),
    .ADR3(\reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q_388 ),
    .O(\rca/rca/serie_di_fa[2].fa/riporto_out1_SW3/O_pack_1 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y11" ))
  \reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/mux/o57/YUSED  (
    .I(reset_count_cu_pack_1),
    .O(reset_count_cu)
  );
  X_LUT4 #(
    .INIT ( 16'h0F00 ),
    .LOC ( "SLICE_X19Y11" ))
  \cu/stato_corrente_FSM_Out11  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\cu/stato_corrente_FSM_FFd2_415 ),
    .ADR3(\cu/stato_corrente_FSM_FFd3_414 ),
    .O(reset_count_cu_pack_1)
  );
  X_BUF #(
    .LOC ( "SLICE_X20Y9" ))
  \reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/mux/o57/YUSED  (
    .I(\rca/xor_inversione/output<1>1/O_pack_1 ),
    .O(\rca/xor_inversione/output<1>1/O )
  );
  X_LUT4 #(
    .INIT ( 16'hF00F ),
    .LOC ( "SLICE_X20Y9" ))
  \rca/xor_inversione/output<1>1  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\cu/stato_corrente_FSM_FFd1_420 ),
    .ADR3(\reg_v/reg_signal [1]),
    .O(\rca/xor_inversione/output<1>1/O_pack_1 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y13" ))
  \counter_mod_n/res_out_temp/DYMUX  (
    .I(\counter_mod_n/res_out_temp_cmp_eq0000 ),
    .O(\counter_mod_n/res_out_temp/DYMUX_1011 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y13" ))
  \counter_mod_n/res_out_temp/CLKINV  (
    .I(clock_BUFGP),
    .O(\counter_mod_n/res_out_temp/CLKINV_1000 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y13" ))
  \counter_mod_n/res_out_temp/CEINV  (
    .I(cnt_in_0),
    .O(\counter_mod_n/res_out_temp/CEINV_999 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y2" ))
  \reg_q/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/XUSED  (
    .I(\counter_mod_n/reset ),
    .O(\counter_mod_n/reset_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y2" ))
  \reg_q/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/DYMUX  (
    .I(\reg_q/shift_reg[3].shift_reg_left.ffd_with_mux/true_d ),
    .O(\reg_q/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/DYMUX_1041 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y2" ))
  \reg_q/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/CLKINV  (
    .I(clock_BUFGP),
    .O(\reg_q/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_1032 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y2" ))
  \reg_q/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/CEINV  (
    .I(\cu/stato_corrente_FSM_FFd3_414 ),
    .O(\reg_q/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/CEINV_1031 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y0" ))
  \reg_q/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/XUSED  (
    .I(N3),
    .O(N3_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y0" ))
  \reg_q/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/DYMUX  (
    .I(\reg_q/shift_reg[2].shift_reg_left.ffd_with_mux/true_d ),
    .O(\reg_q/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/DYMUX_1078 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y0" ))
  \reg_q/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/CLKINV  (
    .I(clock_BUFGP),
    .O(\reg_q/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_1069 )
  );
  X_BUF #(
    .LOC ( "SLICE_X12Y0" ))
  \reg_q/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/CEINV  (
    .I(\cu/stato_corrente_FSM_FFd3_414 ),
    .O(\reg_q/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/CEINV_1068 )
  );
  X_LUT4 #(
    .INIT ( 16'hACCC ),
    .LOC ( "SLICE_X12Y0" ))
  \reg_q/shift_reg[2].shift_reg_left.ffd_with_mux/mux/o1  (
    .ADR0(\reg_q/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q_398 ),
    .ADR1(dividendo_2_IBUF_404),
    .ADR2(\cu/stato_corrente_FSM_FFd2_415 ),
    .ADR3(\cu/stato_corrente_FSM_FFd3_414 ),
    .O(\reg_q/shift_reg[2].shift_reg_left.ffd_with_mux/true_d )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y1" ))
  \reg_q/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/DYMUX  (
    .I(\reg_q/shift_reg[1].shift_reg_left.ffd_with_mux/true_d ),
    .O(\reg_q/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/DYMUX_1117 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y1" ))
  \reg_q/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/CLKINV  (
    .I(clock_BUFGP),
    .O(\reg_q/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_1108 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y1" ))
  \reg_q/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/CEINV  (
    .I(\cu/stato_corrente_FSM_FFd3_414 ),
    .O(\reg_q/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/CEINV_1107 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y5" ))
  \reg_q/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/XUSED  (
    .I(enable_a),
    .O(enable_a_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y5" ))
  \reg_q/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/DYMUX  (
    .I(\reg_q/shift_reg[0].shift_reg_left.ffd_with_mux/true_d ),
    .O(\reg_q/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/DYMUX_1155 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y5" ))
  \reg_q/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/CLKINV  (
    .I(clock_BUFGP),
    .O(\reg_q/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_1146 )
  );
  X_BUF #(
    .LOC ( "SLICE_X13Y5" ))
  \reg_q/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/CEINV  (
    .I(\cu/stato_corrente_FSM_FFd3_414 ),
    .O(\reg_q/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/CEINV_1145 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y9" ))
  \reg_s/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/XUSED  (
    .I(enable_v),
    .O(enable_v_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y9" ))
  \reg_s/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/DYMUX  (
    .I(\reg_s/shift_reg[0].shift_reg_left.ffd_with_mux/true_d ),
    .O(\reg_s/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/DYMUX_1192 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y9" ))
  \reg_s/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/CLKINV  (
    .I(clock_BUFGP),
    .O(\reg_s/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_1183 )
  );
  X_BUF #(
    .LOC ( "SLICE_X21Y9" ))
  \reg_s/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/CEINV  (
    .I(enable_a_0),
    .O(\reg_s/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/CEINV_1182 )
  );
  X_LUT4 #(
    .INIT ( 16'hFB08 ),
    .LOC ( "SLICE_X21Y9" ))
  \reg_s/shift_reg[0].shift_reg_left.ffd_with_mux/mux/o1  (
    .ADR0(\reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q_389 ),
    .ADR1(\cu/stato_corrente_FSM_FFd2_415 ),
    .ADR2(\cu/stato_corrente_FSM_FFd3_414 ),
    .ADR3(risultato_temp[4]),
    .O(\reg_s/shift_reg[0].shift_reg_left.ffd_with_mux/true_d )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y9" ))
  \cu/stato_corrente_FSM_FFd3/XUSED  (
    .I(\rca/b_effettivo [3]),
    .O(\rca/b_effettivo<3>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y9" ))
  \cu/stato_corrente_FSM_FFd3/DYMUX  (
    .I(\cu/stato_corrente_FSM_FFd3-In ),
    .O(\cu/stato_corrente_FSM_FFd3/DYMUX_1228 )
  );
  X_BUF #(
    .LOC ( "SLICE_X16Y9" ))
  \cu/stato_corrente_FSM_FFd3/CLKINV  (
    .I(clock_BUFGP),
    .O(\cu/stato_corrente_FSM_FFd3/CLKINV_1219 )
  );
  X_LUT4 #(
    .INIT ( 16'h2322 ),
    .LOC ( "SLICE_X16Y9" ))
  \cu/stato_corrente_FSM_FFd3-In1  (
    .ADR0(\cu/stato_corrente_FSM_FFd2_415 ),
    .ADR1(\cu/stato_corrente_FSM_FFd3_414 ),
    .ADR2(\cu/stato_corrente_FSM_FFd1_420 ),
    .ADR3(start_IBUF_395),
    .O(\cu/stato_corrente_FSM_FFd3-In )
  );
  X_BUF #(
    .LOC ( "SLICE_X25Y3" ))
  \overflow_OBUF/YUSED  (
    .I(N23_pack_1),
    .O(N23)
  );
  X_LUT4 #(
    .INIT ( 16'hAFAB ),
    .LOC ( "SLICE_X25Y3" ))
  overflow_and000040_SW1 (
    .ADR0(div_zero_OBUF_0),
    .ADR1(\reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q_389 ),
    .ADR2(overflow_and000022_0),
    .ADR3(divisore_3_IBUF_394),
    .O(N23_pack_1)
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y8" ))
  \rca/rca/vettore_riporti<1>/XUSED  (
    .I(\rca/rca/vettore_riporti [1]),
    .O(\rca/rca/vettore_riporti<1>_0 )
  );
  X_BUF #(
    .LOC ( "SLICE_X19Y8" ))
  \rca/rca/vettore_riporti<1>/YUSED  (
    .I(\rca/controllo/overf_xor0000 ),
    .O(\rca/controllo/overf_xor0000_0 )
  );
  X_LUT4 #(
    .INIT ( 16'hCC33 ),
    .LOC ( "SLICE_X19Y8" ))
  \rca/controllo/overf_xor00001  (
    .ADR0(VCC),
    .ADR1(\reg_s/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q_441 ),
    .ADR2(VCC),
    .ADR3(\cu/stato_corrente_FSM_FFd1_420 ),
    .O(\rca/controllo/overf_xor0000 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y3" ))
  \overflow_and000022/XUSED  (
    .I(overflow_and000022_1313),
    .O(overflow_and000022_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y3" ))
  \overflow_and000022/YUSED  (
    .I(overflow_cmp_ge00001_pack_1),
    .O(overflow_cmp_ge00001_446)
  );
  X_LUT4 #(
    .INIT ( 16'hBB2B ),
    .LOC ( "SLICE_X27Y3" ))
  overflow_cmp_ge00001 (
    .ADR0(\reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q_387 ),
    .ADR1(divisore_1_IBUF_392),
    .ADR2(divisore_0_IBUF_391),
    .ADR3(\reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q_385 ),
    .O(overflow_cmp_ge00001_pack_1)
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y9" ))
  \reg_v/reg_signal<1>/DXMUX  (
    .I(divisore_1_IBUF_392),
    .O(\reg_v/reg_signal<1>/DXMUX_1336 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y9" ))
  \reg_v/reg_signal<1>/DYMUX  (
    .I(divisore_0_IBUF_391),
    .O(\reg_v/reg_signal<1>/DYMUX_1327 )
  );
  X_INV #(
    .LOC ( "SLICE_X23Y9" ))
  \reg_v/reg_signal<1>/SRINV  (
    .I(reset_a),
    .O(\reg_v/reg_signal<1>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y9" ))
  \reg_v/reg_signal<1>/CLKINV  (
    .I(clock_BUFGP),
    .O(\reg_v/reg_signal<1>/CLKINV_1324 )
  );
  X_BUF #(
    .LOC ( "SLICE_X23Y9" ))
  \reg_v/reg_signal<1>/CEINV  (
    .I(enable_v_0),
    .O(\reg_v/reg_signal<1>/CEINV_1323 )
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y8" ))
  \reg_v/reg_signal<3>/DXMUX  (
    .I(divisore_3_IBUF_394),
    .O(\reg_v/reg_signal<3>/DXMUX_1364 )
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y8" ))
  \reg_v/reg_signal<3>/DYMUX  (
    .I(divisore_2_IBUF_393),
    .O(\reg_v/reg_signal<3>/DYMUX_1355 )
  );
  X_INV #(
    .LOC ( "SLICE_X22Y8" ))
  \reg_v/reg_signal<3>/SRINV  (
    .I(reset_a),
    .O(\reg_v/reg_signal<3>/SRINVNOT )
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y8" ))
  \reg_v/reg_signal<3>/CLKINV  (
    .I(clock_BUFGP),
    .O(\reg_v/reg_signal<3>/CLKINV_1352 )
  );
  X_BUF #(
    .LOC ( "SLICE_X22Y8" ))
  \reg_v/reg_signal<3>/CEINV  (
    .I(enable_v_0),
    .O(\reg_v/reg_signal<3>/CEINV_1351 )
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y0" ))
  \div_zero_OBUF/XUSED  (
    .I(div_zero_OBUF_1393),
    .O(div_zero_OBUF_0)
  );
  X_BUF #(
    .LOC ( "SLICE_X27Y0" ))
  \div_zero_OBUF/YUSED  (
    .I(overflow_and00005_1386),
    .O(overflow_and00005_0)
  );
  X_LUT4 #(
    .INIT ( 16'hBBBB ),
    .LOC ( "SLICE_X27Y0" ))
  overflow_and00005 (
    .ADR0(\reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q_389 ),
    .ADR1(divisore_3_IBUF_394),
    .ADR2(VCC),
    .ADR3(VCC),
    .O(overflow_and00005_1386)
  );
  X_INV #(
    .LOC ( "SLICE_X15Y12" ))
  \counter_mod_n/c<0>/DXMUX  (
    .I(\counter_mod_n/c [0]),
    .O(\counter_mod_n/c<0>/DXMUX_1425 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y12" ))
  \counter_mod_n/c<0>/DYMUX  (
    .I(\counter_mod_n/c_mux0003 [1]),
    .O(\counter_mod_n/c<0>/DYMUX_1416 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y12" ))
  \counter_mod_n/c<0>/SRINV  (
    .I(\counter_mod_n/reset_0 ),
    .O(\counter_mod_n/c<0>/SRINV_1406 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y12" ))
  \counter_mod_n/c<0>/CLKINV  (
    .I(clock_BUFGP),
    .O(\counter_mod_n/c<0>/CLKINV_1405 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y12" ))
  \counter_mod_n/c<0>/CEINV  (
    .I(cnt_in_0),
    .O(\counter_mod_n/c<0>/CEINV_1404 )
  );
  X_BUF #(
    .LOC ( "SLICE_X14Y13" ))
  \cnt_in/YUSED  (
    .I(cnt_in),
    .O(cnt_in_0)
  );
  X_LUT4 #(
    .INIT ( 16'h0A0B ),
    .LOC ( "SLICE_X14Y13" ))
  \cu/count_up  (
    .ADR0(\cu/stato_corrente_FSM_FFd1_420 ),
    .ADR1(N3_0),
    .ADR2(\counter_mod_n/res_out_temp_419 ),
    .ADR3(risultato_temp[4]),
    .O(cnt_in)
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y9" ))
  \cu/stato_corrente_FSM_FFd1/DXMUX  (
    .I(\cu/stato_corrente_FSM_FFd1-In ),
    .O(\cu/stato_corrente_FSM_FFd1/DXMUX_1473 )
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y9" ))
  \cu/stato_corrente_FSM_FFd1/YUSED  (
    .I(\risultato_temp<4>_pack_1 ),
    .O(risultato_temp[4])
  );
  X_BUF #(
    .LOC ( "SLICE_X18Y9" ))
  \cu/stato_corrente_FSM_FFd1/CLKINV  (
    .I(clock_BUFGP),
    .O(\cu/stato_corrente_FSM_FFd1/CLKINV_1456 )
  );
  X_LUT4 #(
    .INIT ( 16'hC963 ),
    .LOC ( "SLICE_X18Y9" ))
  \rca/rca/serie_di_fa[4].fa/Mxor_somma_Result1  (
    .ADR0(\rca/rca/vettore_riporti [2]),
    .ADR1(\rca/controllo/overf_xor0000_0 ),
    .ADR2(N8),
    .ADR3(N9),
    .O(\risultato_temp<4>_pack_1 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y8" ),
    .INIT ( 1'b0 ))
  \cu/stato_corrente_FSM_FFd2  (
    .I(\cu/stato_corrente_FSM_FFd2/DXMUX_776 ),
    .CE(VCC),
    .CLK(\cu/stato_corrente_FSM_FFd2/CLKINV_759 ),
    .SET(GND),
    .RST(\cu/stato_corrente_FSM_FFd2/FFX/RSTAND_781 ),
    .O(\cu/stato_corrente_FSM_FFd2_415 )
  );
  X_INV #(
    .LOC ( "SLICE_X15Y8" ))
  \cu/stato_corrente_FSM_FFd2/FFX/RSTAND  (
    .I(reset_a),
    .O(\cu/stato_corrente_FSM_FFd2/FFX/RSTAND_781 )
  );
  X_LUT4 #(
    .INIT ( 16'h3ACA ),
    .LOC ( "SLICE_X19Y12" ))
  \reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/mux/o_G  (
    .ADR0(dividendo_4_IBUF_406),
    .ADR1(\reg_v/reg_signal [0]),
    .ADR2(\cu/stato_corrente_FSM_FFd2_415 ),
    .ADR3(\reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q_385 ),
    .O(N26)
  );
  X_FF #(
    .LOC ( "SLICE_X19Y12" ),
    .INIT ( 1'b0 ))
  \reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q  (
    .I(\reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/DXMUX_889 ),
    .CE(\reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/CEINV_871 ),
    .CLK(\reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_872 ),
    .SET(GND),
    .RST(\reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/FFX/RSTAND_895 ),
    .O(\reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q_385 )
  );
  X_INV #(
    .LOC ( "SLICE_X19Y12" ))
  \reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/FFX/RSTAND  (
    .I(reset_a),
    .O(\reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/FFX/RSTAND_895 )
  );
  X_LUT4 #(
    .INIT ( 16'h6999 ),
    .LOC ( "SLICE_X18Y11" ))
  \rca/rca/serie_di_fa[2].fa/riporto_out1_SW2  (
    .ADR0(\reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q_389 ),
    .ADR1(\rca/b_effettivo<3>_0 ),
    .ADR2(\rca/b_effettivo [2]),
    .ADR3(\reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q_388 ),
    .O(N14)
  );
  X_LUT4 #(
    .INIT ( 16'h0151 ),
    .LOC ( "SLICE_X18Y10" ))
  \reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/mux/o57  (
    .ADR0(reset_count_cu),
    .ADR1(N14_0),
    .ADR2(\rca/rca/vettore_riporti [2]),
    .ADR3(\rca/rca/serie_di_fa[2].fa/riporto_out1_SW3/O ),
    .O(\reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/mux/o57_942 )
  );
  X_LUT4 #(
    .INIT ( 16'h0096 ),
    .LOC ( "SLICE_X19Y11" ))
  \reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/mux/o57  (
    .ADR0(\reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q_388 ),
    .ADR1(\rca/rca/vettore_riporti [2]),
    .ADR2(\rca/b_effettivo [2]),
    .ADR3(reset_count_cu),
    .O(\reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/mux/o57_966 )
  );
  X_LUT4 #(
    .INIT ( 16'h0096 ),
    .LOC ( "SLICE_X20Y9" ))
  \reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/mux/o57  (
    .ADR0(\rca/xor_inversione/output<1>1/O ),
    .ADR1(\rca/rca/vettore_riporti<1>_0 ),
    .ADR2(\reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q_387 ),
    .ADR3(reset_count_cu),
    .O(\reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/mux/o57_990 )
  );
  X_LUT4 #(
    .INIT ( 16'h0A0A ),
    .LOC ( "SLICE_X15Y13" ))
  \counter_mod_n/res_out_temp_cmp_eq00001  (
    .ADR0(\counter_mod_n/c [1]),
    .ADR1(VCC),
    .ADR2(\counter_mod_n/c [0]),
    .ADR3(VCC),
    .O(\counter_mod_n/res_out_temp_cmp_eq0000 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y13" ),
    .INIT ( 1'b0 ))
  \counter_mod_n/res_out_temp  (
    .I(\counter_mod_n/res_out_temp/DYMUX_1011 ),
    .CE(\counter_mod_n/res_out_temp/CEINV_999 ),
    .CLK(\counter_mod_n/res_out_temp/CLKINV_1000 ),
    .SET(GND),
    .RST(\counter_mod_n/res_out_temp/FFY/RSTAND_1017 ),
    .O(\counter_mod_n/res_out_temp_419 )
  );
  X_BUF #(
    .LOC ( "SLICE_X15Y13" ))
  \counter_mod_n/res_out_temp/FFY/RSTAND  (
    .I(\counter_mod_n/reset_0 ),
    .O(\counter_mod_n/res_out_temp/FFY/RSTAND_1017 )
  );
  X_LUT4 #(
    .INIT ( 16'hB8F0 ),
    .LOC ( "SLICE_X12Y2" ))
  \reg_q/shift_reg[3].shift_reg_left.ffd_with_mux/mux/o1  (
    .ADR0(\reg_q/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q_400 ),
    .ADR1(\cu/stato_corrente_FSM_FFd3_414 ),
    .ADR2(dividendo_3_IBUF_405),
    .ADR3(\cu/stato_corrente_FSM_FFd2_415 ),
    .O(\reg_q/shift_reg[3].shift_reg_left.ffd_with_mux/true_d )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y2" ),
    .INIT ( 1'b0 ))
  \reg_q/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q  (
    .I(\reg_q/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/DYMUX_1041 ),
    .CE(\reg_q/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/CEINV_1031 ),
    .CLK(\reg_q/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_1032 ),
    .SET(GND),
    .RST(\reg_q/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/FFY/RSTAND_1047 ),
    .O(\reg_q/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q_402 )
  );
  X_INV #(
    .LOC ( "SLICE_X12Y2" ))
  \reg_q/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/FFY/RSTAND  (
    .I(reset_a),
    .O(\reg_q/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/FFY/RSTAND_1047 )
  );
  X_LUT4 #(
    .INIT ( 16'h0CFF ),
    .LOC ( "SLICE_X12Y2" ))
  \counter_mod_n/reset1  (
    .ADR0(VCC),
    .ADR1(\cu/stato_corrente_FSM_FFd3_414 ),
    .ADR2(\cu/stato_corrente_FSM_FFd2_415 ),
    .ADR3(reset_a),
    .O(\counter_mod_n/reset )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y0" ),
    .INIT ( 1'b0 ))
  \reg_q/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q  (
    .I(\reg_q/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/DYMUX_1078 ),
    .CE(\reg_q/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/CEINV_1068 ),
    .CLK(\reg_q/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_1069 ),
    .SET(GND),
    .RST(\reg_q/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/FFY/RSTAND_1084 ),
    .O(\reg_q/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q_400 )
  );
  X_INV #(
    .LOC ( "SLICE_X12Y0" ))
  \reg_q/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/FFY/RSTAND  (
    .I(reset_a),
    .O(\reg_q/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/FFY/RSTAND_1084 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFDD ),
    .LOC ( "SLICE_X16Y8" ))
  \reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/mux/o92_G  (
    .ADR0(\cu/stato_corrente_FSM_FFd2_415 ),
    .ADR1(\cu/stato_corrente_FSM_FFd3_414 ),
    .ADR2(VCC),
    .ADR3(\reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q_385 ),
    .O(N34)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y8" ),
    .INIT ( 1'b0 ))
  \reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q  (
    .I(\reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/DXMUX_661 ),
    .CE(\reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/CEINV_642 ),
    .CLK(\reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_643 ),
    .SET(GND),
    .RST(\reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/FFX/RSTAND_667 ),
    .O(\reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q_387 )
  );
  X_INV #(
    .LOC ( "SLICE_X16Y8" ))
  \reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/FFX/RSTAND  (
    .I(reset_a),
    .O(\reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/FFX/RSTAND_667 )
  );
  X_LUT4 #(
    .INIT ( 16'hFDFD ),
    .LOC ( "SLICE_X20Y8" ))
  \reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/mux/o93_G  (
    .ADR0(\cu/stato_corrente_FSM_FFd2_415 ),
    .ADR1(\cu/stato_corrente_FSM_FFd3_414 ),
    .ADR2(\reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q_387 ),
    .ADR3(VCC),
    .O(N32)
  );
  X_FF #(
    .LOC ( "SLICE_X20Y8" ),
    .INIT ( 1'b0 ))
  \reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q  (
    .I(\reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/DXMUX_700 ),
    .CE(\reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/CEINV_681 ),
    .CLK(\reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_682 ),
    .SET(GND),
    .RST(\reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/FFX/RSTAND_706 ),
    .O(\reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q_388 )
  );
  X_INV #(
    .LOC ( "SLICE_X20Y8" ))
  \reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/FFX/RSTAND  (
    .I(reset_a),
    .O(\reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q/FFX/RSTAND_706 )
  );
  X_LUT4 #(
    .INIT ( 16'hFAFF ),
    .LOC ( "SLICE_X19Y10" ))
  \reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/mux/o93_G  (
    .ADR0(\reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q_388 ),
    .ADR1(VCC),
    .ADR2(\cu/stato_corrente_FSM_FFd3_414 ),
    .ADR3(\cu/stato_corrente_FSM_FFd2_415 ),
    .O(N30)
  );
  X_FF #(
    .LOC ( "SLICE_X19Y10" ),
    .INIT ( 1'b0 ))
  \reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q  (
    .I(\reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/DXMUX_739 ),
    .CE(\reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/CEINV_720 ),
    .CLK(\reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_721 ),
    .SET(GND),
    .RST(\reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/FFX/RSTAND_745 ),
    .O(\reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q_389 )
  );
  X_INV #(
    .LOC ( "SLICE_X19Y10" ))
  \reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/FFX/RSTAND  (
    .I(reset_a),
    .O(\reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q/FFX/RSTAND_745 )
  );
  X_LUT4 #(
    .INIT ( 16'h7D3C ),
    .LOC ( "SLICE_X15Y8" ))
  \cu/stato_corrente_FSM_FFd2-In_G  (
    .ADR0(\counter_mod_n/res_out_temp_419 ),
    .ADR1(\cu/stato_corrente_FSM_FFd2_415 ),
    .ADR2(\cu/stato_corrente_FSM_FFd3_414 ),
    .ADR3(\cu/stato_corrente_FSM_FFd1_420 ),
    .O(N28)
  );
  X_FF #(
    .LOC ( "SLICE_X22Y8" ),
    .INIT ( 1'b0 ))
  \reg_v/reg_signal_2  (
    .I(\reg_v/reg_signal<3>/DYMUX_1355 ),
    .CE(\reg_v/reg_signal<3>/CEINV_1351 ),
    .CLK(\reg_v/reg_signal<3>/CLKINV_1352 ),
    .SET(GND),
    .RST(\reg_v/reg_signal<3>/SRINVNOT ),
    .O(\reg_v/reg_signal [2])
  );
  X_FF #(
    .LOC ( "SLICE_X22Y8" ),
    .INIT ( 1'b0 ))
  \reg_v/reg_signal_3  (
    .I(\reg_v/reg_signal<3>/DXMUX_1364 ),
    .CE(\reg_v/reg_signal<3>/CEINV_1351 ),
    .CLK(\reg_v/reg_signal<3>/CLKINV_1352 ),
    .SET(GND),
    .RST(\reg_v/reg_signal<3>/SRINVNOT ),
    .O(\reg_v/reg_signal [3])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X27Y0" ))
  div_zero_cmp_eq00001 (
    .ADR0(divisore_2_IBUF_393),
    .ADR1(divisore_3_IBUF_394),
    .ADR2(divisore_0_IBUF_391),
    .ADR3(divisore_1_IBUF_392),
    .O(div_zero_OBUF_1393)
  );
  X_LUT4 #(
    .INIT ( 16'h5A5A ),
    .LOC ( "SLICE_X15Y12" ))
  \counter_mod_n/c_mux0003<1>1  (
    .ADR0(\counter_mod_n/c [1]),
    .ADR1(VCC),
    .ADR2(\counter_mod_n/c [0]),
    .ADR3(VCC),
    .O(\counter_mod_n/c_mux0003 [1])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y12" ),
    .INIT ( 1'b0 ))
  \counter_mod_n/c_1  (
    .I(\counter_mod_n/c<0>/DYMUX_1416 ),
    .CE(\counter_mod_n/c<0>/CEINV_1404 ),
    .CLK(\counter_mod_n/c<0>/CLKINV_1405 ),
    .SET(GND),
    .RST(\counter_mod_n/c<0>/SRINV_1406 ),
    .O(\counter_mod_n/c [1])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y12" ),
    .INIT ( 1'b0 ))
  \counter_mod_n/c_0  (
    .I(\counter_mod_n/c<0>/DXMUX_1425 ),
    .CE(\counter_mod_n/c<0>/CEINV_1404 ),
    .CLK(\counter_mod_n/c<0>/CLKINV_1405 ),
    .SET(GND),
    .RST(\counter_mod_n/c<0>/SRINV_1406 ),
    .O(\counter_mod_n/c [0])
  );
  X_LUT4 #(
    .INIT ( 16'h0FFF ),
    .LOC ( "SLICE_X12Y0" ))
  \cu/count_up_SW0  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\cu/stato_corrente_FSM_FFd2_415 ),
    .ADR3(\cu/stato_corrente_FSM_FFd3_414 ),
    .O(N3)
  );
  X_LUT4 #(
    .INIT ( 16'hF780 ),
    .LOC ( "SLICE_X13Y1" ))
  \reg_q/shift_reg[1].shift_reg_left.ffd_with_mux/mux/o1  (
    .ADR0(\cu/stato_corrente_FSM_FFd3_414 ),
    .ADR1(\cu/stato_corrente_FSM_FFd2_415 ),
    .ADR2(\reg_q/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q_397 ),
    .ADR3(dividendo_1_IBUF_403),
    .O(\reg_q/shift_reg[1].shift_reg_left.ffd_with_mux/true_d )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y1" ),
    .INIT ( 1'b0 ))
  \reg_q/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q  (
    .I(\reg_q/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/DYMUX_1117 ),
    .CE(\reg_q/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/CEINV_1107 ),
    .CLK(\reg_q/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_1108 ),
    .SET(GND),
    .RST(\reg_q/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/FFY/RSTAND_1123 ),
    .O(\reg_q/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q_398 )
  );
  X_INV #(
    .LOC ( "SLICE_X13Y1" ))
  \reg_q/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/FFY/RSTAND  (
    .I(reset_a),
    .O(\reg_q/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q/FFY/RSTAND_1123 )
  );
  X_LUT4 #(
    .INIT ( 16'h0011 ),
    .LOC ( "SLICE_X13Y1" ))
  \cu/stato_corrente_FSM_Out01  (
    .ADR0(\cu/stato_corrente_FSM_FFd3_414 ),
    .ADR1(\cu/stato_corrente_FSM_FFd2_415 ),
    .ADR2(VCC),
    .ADR3(\cu/stato_corrente_FSM_FFd1_420 ),
    .O(stop_OBUF_1130)
  );
  X_LUT4 #(
    .INIT ( 16'h4CEC ),
    .LOC ( "SLICE_X13Y5" ))
  \reg_q/shift_reg[0].shift_reg_left.ffd_with_mux/mux/o1  (
    .ADR0(\cu/stato_corrente_FSM_FFd2_415 ),
    .ADR1(dividendo_0_IBUF_401),
    .ADR2(\cu/stato_corrente_FSM_FFd3_414 ),
    .ADR3(risultato_temp[4]),
    .O(\reg_q/shift_reg[0].shift_reg_left.ffd_with_mux/true_d )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y5" ),
    .INIT ( 1'b0 ))
  \reg_q/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q  (
    .I(\reg_q/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/DYMUX_1155 ),
    .CE(\reg_q/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/CEINV_1145 ),
    .CLK(\reg_q/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_1146 ),
    .SET(GND),
    .RST(\reg_q/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/FFY/RSTAND_1161 ),
    .O(\reg_q/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q_397 )
  );
  X_INV #(
    .LOC ( "SLICE_X13Y5" ))
  \reg_q/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/FFY/RSTAND  (
    .I(reset_a),
    .O(\reg_q/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/FFY/RSTAND_1161 )
  );
  X_LUT4 #(
    .INIT ( 16'hFEFE ),
    .LOC ( "SLICE_X13Y5" ))
  \cu/stato_corrente_FSM_Out61  (
    .ADR0(\cu/stato_corrente_FSM_FFd1_420 ),
    .ADR1(\cu/stato_corrente_FSM_FFd2_415 ),
    .ADR2(\cu/stato_corrente_FSM_FFd3_414 ),
    .ADR3(VCC),
    .O(enable_a)
  );
  X_FF #(
    .LOC ( "SLICE_X21Y9" ),
    .INIT ( 1'b0 ))
  \reg_s/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q  (
    .I(\reg_s/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/DYMUX_1192 ),
    .CE(\reg_s/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/CEINV_1182 ),
    .CLK(\reg_s/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/CLKINV_1183 ),
    .SET(GND),
    .RST(\reg_s/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/FFY/RSTAND_1198 ),
    .O(\reg_s/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q_441 )
  );
  X_INV #(
    .LOC ( "SLICE_X21Y9" ))
  \reg_s/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/FFY/RSTAND  (
    .I(reset_a),
    .O(\reg_s/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q/FFY/RSTAND_1198 )
  );
  X_LUT4 #(
    .INIT ( 16'hFCFC ),
    .LOC ( "SLICE_X21Y9" ))
  \cu/stato_corrente_FSM_Out51  (
    .ADR0(VCC),
    .ADR1(\cu/stato_corrente_FSM_FFd1_420 ),
    .ADR2(\cu/stato_corrente_FSM_FFd3_414 ),
    .ADR3(VCC),
    .O(enable_v)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y9" ),
    .INIT ( 1'b0 ))
  \cu/stato_corrente_FSM_FFd3  (
    .I(\cu/stato_corrente_FSM_FFd3/DYMUX_1228 ),
    .CE(VCC),
    .CLK(\cu/stato_corrente_FSM_FFd3/CLKINV_1219 ),
    .SET(GND),
    .RST(\cu/stato_corrente_FSM_FFd3/FFY/RSTAND_1233 ),
    .O(\cu/stato_corrente_FSM_FFd3_414 )
  );
  X_INV #(
    .LOC ( "SLICE_X16Y9" ))
  \cu/stato_corrente_FSM_FFd3/FFY/RSTAND  (
    .I(reset_a),
    .O(\cu/stato_corrente_FSM_FFd3/FFY/RSTAND_1233 )
  );
  X_LUT4 #(
    .INIT ( 16'hF00F ),
    .LOC ( "SLICE_X16Y9" ))
  \rca/xor_inversione/output<3>1  (
    .ADR0(VCC),
    .ADR1(VCC),
    .ADR2(\reg_v/reg_signal [3]),
    .ADR3(\cu/stato_corrente_FSM_FFd1_420 ),
    .O(\rca/b_effettivo [3])
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ),
    .LOC ( "SLICE_X25Y3" ))
  overflow_and000040 (
    .ADR0(N23),
    .ADR1(\cu/stato_corrente_FSM_FFd1_420 ),
    .ADR2(\cu/stato_corrente_FSM_FFd2_415 ),
    .ADR3(\cu/stato_corrente_FSM_FFd3_414 ),
    .O(overflow_OBUF_1265)
  );
  X_LUT4 #(
    .INIT ( 16'hAA33 ),
    .LOC ( "SLICE_X19Y8" ))
  \rca/rca/serie_di_fa[0].fa/riporto_out1  (
    .ADR0(\reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q_385 ),
    .ADR1(\cu/stato_corrente_FSM_FFd1_420 ),
    .ADR2(VCC),
    .ADR3(\reg_v/reg_signal [0]),
    .O(\rca/rca/vettore_riporti [1])
  );
  X_LUT4 #(
    .INIT ( 16'hD040 ),
    .LOC ( "SLICE_X27Y3" ))
  overflow_and000022 (
    .ADR0(divisore_2_IBUF_393),
    .ADR1(\reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q_388 ),
    .ADR2(overflow_and00005_0),
    .ADR3(overflow_cmp_ge00001_446),
    .O(overflow_and000022_1313)
  );
  X_FF #(
    .LOC ( "SLICE_X23Y9" ),
    .INIT ( 1'b0 ))
  \reg_v/reg_signal_0  (
    .I(\reg_v/reg_signal<1>/DYMUX_1327 ),
    .CE(\reg_v/reg_signal<1>/CEINV_1323 ),
    .CLK(\reg_v/reg_signal<1>/CLKINV_1324 ),
    .SET(GND),
    .RST(\reg_v/reg_signal<1>/SRINVNOT ),
    .O(\reg_v/reg_signal [0])
  );
  X_FF #(
    .LOC ( "SLICE_X23Y9" ),
    .INIT ( 1'b0 ))
  \reg_v/reg_signal_1  (
    .I(\reg_v/reg_signal<1>/DXMUX_1336 ),
    .CE(\reg_v/reg_signal<1>/CEINV_1323 ),
    .CLK(\reg_v/reg_signal<1>/CLKINV_1324 ),
    .SET(GND),
    .RST(\reg_v/reg_signal<1>/SRINVNOT ),
    .O(\reg_v/reg_signal [1])
  );
  X_LUT4 #(
    .INIT ( 16'h8080 ),
    .LOC ( "SLICE_X18Y9" ))
  \cu/stato_corrente_FSM_FFd1-In1  (
    .ADR0(\cu/stato_corrente_FSM_FFd2_415 ),
    .ADR1(\cu/stato_corrente_FSM_FFd3_414 ),
    .ADR2(risultato_temp[4]),
    .ADR3(VCC),
    .O(\cu/stato_corrente_FSM_FFd1-In )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y9" ),
    .INIT ( 1'b0 ))
  \cu/stato_corrente_FSM_FFd1  (
    .I(\cu/stato_corrente_FSM_FFd1/DXMUX_1473 ),
    .CE(VCC),
    .CLK(\cu/stato_corrente_FSM_FFd1/CLKINV_1456 ),
    .SET(GND),
    .RST(\cu/stato_corrente_FSM_FFd1/FFX/RSTAND_1478 ),
    .O(\cu/stato_corrente_FSM_FFd1_420 )
  );
  X_INV #(
    .LOC ( "SLICE_X18Y9" ))
  \cu/stato_corrente_FSM_FFd1/FFX/RSTAND  (
    .I(reset_a),
    .O(\cu/stato_corrente_FSM_FFd1/FFX/RSTAND_1478 )
  );
  X_BUF #(
    .LOC ( "PAD70" ))
  \stop/OUTPUT/OFF/OMUX  (
    .I(stop_OBUF_1130),
    .O(\stop/O )
  );
  X_BUF #(
    .LOC ( "PAD49" ))
  \resto<0>/OUTPUT/OFF/OMUX  (
    .I(\reg_a/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q_385 ),
    .O(\resto<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD58" ))
  \resto<1>/OUTPUT/OFF/OMUX  (
    .I(\reg_a/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q_387 ),
    .O(\resto<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD62" ))
  \resto<2>/OUTPUT/OFF/OMUX  (
    .I(\reg_a/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q_388 ),
    .O(\resto<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD55" ))
  \resto<3>/OUTPUT/OFF/OMUX  (
    .I(\reg_a/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q_389 ),
    .O(\resto<3>/O )
  );
  X_BUF #(
    .LOC ( "PAD61" ))
  \overflow/OUTPUT/OFF/OMUX  (
    .I(overflow_OBUF_1265),
    .O(\overflow/O )
  );
  X_BUF #(
    .LOC ( "PAD71" ))
  \quoziente<0>/OUTPUT/OFF/OMUX  (
    .I(\reg_q/shift_reg[0].shift_reg_left.ffd_with_mux/ffd/q_397 ),
    .O(\quoziente<0>/O )
  );
  X_BUF #(
    .LOC ( "PAD68" ))
  \quoziente<1>/OUTPUT/OFF/OMUX  (
    .I(\reg_q/shift_reg[1].shift_reg_left.ffd_with_mux/ffd/q_398 ),
    .O(\quoziente<1>/O )
  );
  X_BUF #(
    .LOC ( "PAD56" ))
  \div_zero/OUTPUT/OFF/OMUX  (
    .I(div_zero_OBUF_0),
    .O(\div_zero/O )
  );
  X_BUF #(
    .LOC ( "PAD72" ))
  \quoziente<2>/OUTPUT/OFF/OMUX  (
    .I(\reg_q/shift_reg[2].shift_reg_left.ffd_with_mux/ffd/q_400 ),
    .O(\quoziente<2>/O )
  );
  X_BUF #(
    .LOC ( "PAD69" ))
  \quoziente<3>/OUTPUT/OFF/OMUX  (
    .I(\reg_q/shift_reg[3].shift_reg_left.ffd_with_mux/ffd/q_402 ),
    .O(\quoziente<3>/O )
  );
  X_ZERO   NlwBlock_divisore_restoring_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_divisore_restoring_VCC (
    .O(VCC)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif


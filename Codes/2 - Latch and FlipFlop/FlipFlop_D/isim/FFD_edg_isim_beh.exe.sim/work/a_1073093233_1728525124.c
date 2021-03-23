/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/luca/ISE_ws/FFD_edg/or_2_in.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_3488546069778340532_503743352(char *, unsigned char , unsigned char );


static void work_a_1073093233_1728525124_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    int64 t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1192U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_3488546069778340532_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 1648U);
    t7 = *((char **)t1);
    t1 = (t7 + 0);
    *((unsigned char *)t1) = t6;
    xsi_set_current_line(48, ng0);
    t8 = (6 * 1000LL);
    t1 = (t0 + 1648U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3024);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t3;
    xsi_driver_first_trans_delta(t1, 0U, 1, t8);
    t11 = (t0 + 3024);
    xsi_driver_intertial_reject(t11, t8, t8);
    t1 = (t0 + 2944);
    *((int *)t1) = 1;

LAB1:    return;
}


extern void work_a_1073093233_1728525124_init()
{
	static char *pe[] = {(void *)work_a_1073093233_1728525124_p_0};
	xsi_register_didat("work_a_1073093233_1728525124", "isim/FFD_edg_isim_beh.exe.sim/work/a_1073093233_1728525124.didat");
	xsi_register_executes(pe);
}

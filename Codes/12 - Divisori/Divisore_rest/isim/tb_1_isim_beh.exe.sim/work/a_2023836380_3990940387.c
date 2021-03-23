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
static const char *ng0 = "/home/luca/ISE_ws/Divisore_rest/xorInversion.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_207919886985903570_503743352(char *, char *, char *, char *);


static void work_a_2023836380_3990940387_p_0(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    static char *nl0[] = {&&LAB6, &&LAB6, &&LAB6, &&LAB5, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6};

LAB0:    t1 = (t0 + 2624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(41, ng0);

LAB11:    t2 = (t0 + 2944);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB12;

LAB1:    return;
LAB5:    xsi_set_current_line(42, ng0);
    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t6 = (t0 + 4624U);
    t8 = ieee_p_2592010699_sub_207919886985903570_503743352(IEEE_P_2592010699, t5, t7, t6);
    t9 = (t5 + 12U);
    t10 = *((unsigned int *)t9);
    t11 = (1U * t10);
    t12 = (5U != t11);
    if (t12 == 1)
        goto LAB7;

LAB8:    t13 = (t0 + 3024);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 5U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB4;

LAB6:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 3024);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 5U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB4;

LAB7:    xsi_size_not_matching(5U, t11, 0);
    goto LAB8;

LAB9:    t3 = (t0 + 2944);
    *((int *)t3) = 0;
    goto LAB2;

LAB10:    goto LAB9;

LAB12:    goto LAB10;

}


extern void work_a_2023836380_3990940387_init()
{
	static char *pe[] = {(void *)work_a_2023836380_3990940387_p_0};
	xsi_register_didat("work_a_2023836380_3990940387", "isim/tb_1_isim_beh.exe.sim/work/a_2023836380_3990940387.didat");
	xsi_register_executes(pe);
}

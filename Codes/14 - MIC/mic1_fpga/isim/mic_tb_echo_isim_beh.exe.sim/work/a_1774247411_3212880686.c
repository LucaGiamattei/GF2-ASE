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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Marco/Desktop/mic1_fpga-20190226T151123Z-001/mic1_fpga/mic1.vhd";
extern char *IEEE_P_2592010699;



static void work_a_1774247411_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(175, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 9416);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);

LAB2:    t8 = (t0 + 9320);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1774247411_3212880686_p_1(char *t0)
{
    char t7[16];
    char t9[16];
    char t14[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t8;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    char *t15;
    unsigned int t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(261, ng0);

LAB3:    t1 = (t0 + 7432U);
    t2 = *((char **)t1);
    t3 = (31 - 29);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t8 = ((IEEE_P_2592010699) + 4024);
    t10 = (t9 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 29;
    t11 = (t10 + 4U);
    *((int *)t11) = 0;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t12 = (0 - 29);
    t13 = (t12 * -1);
    t13 = (t13 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t13;
    t6 = xsi_base_array_concat(t6, t7, t8, (char)97, t1, t9, (char)99, (unsigned char)2, (char)101);
    t15 = ((IEEE_P_2592010699) + 4024);
    t11 = xsi_base_array_concat(t11, t14, t15, (char)97, t6, t7, (char)99, (unsigned char)2, (char)101);
    t13 = (30U + 1U);
    t16 = (t13 + 1U);
    t17 = (32U != t16);
    if (t17 == 1)
        goto LAB5;

LAB6:    t18 = (t0 + 9480);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t11, 32U);
    xsi_driver_first_trans_fast_port(t18);

LAB2:    t23 = (t0 + 9336);
    *((int *)t23) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t16, 0);
    goto LAB6;

}


extern void work_a_1774247411_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1774247411_3212880686_p_0,(void *)work_a_1774247411_3212880686_p_1};
	xsi_register_didat("work_a_1774247411_3212880686", "isim/mic_tb_echo_isim_beh.exe.sim/work/a_1774247411_3212880686.didat");
	xsi_register_executes(pe);
}

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
static const char *ng0 = "C:/Users/Marco/Desktop/mic1_fpga-20190226T151123Z-001/mic1_fpga/Switch_Led.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1354609419_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3472);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(70, ng0);
    t5 = (t0 + 1832U);
    t6 = *((char **)t5);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    if (t8 == 1)
        goto LAB11;

LAB12:    t4 = (unsigned char)0;

LAB13:    if (t4 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1832U);
    t5 = *((char **)t1);
    t3 = *((unsigned char *)t5);
    t4 = (t3 == (unsigned char)2);
    if (t4 == 1)
        goto LAB16;

LAB17:    t2 = (unsigned char)0;

LAB18:    if (t2 != 0)
        goto LAB14;

LAB15:    xsi_set_current_line(76, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t5 = t1;
    memset(t5, (unsigned char)4, 32U);
    t6 = (t0 + 3616);
    t9 = (t6 + 56U);
    t12 = *((char **)t9);
    t15 = (t12 + 56U);
    t19 = *((char **)t15);
    memcpy(t19, t1, 32U);
    xsi_driver_first_trans_fast_port(t6);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(71, ng0);
    t5 = (t0 + 1352U);
    t15 = *((char **)t5);
    t16 = (31 - 7);
    t17 = (t16 * 1U);
    t18 = (0 + t17);
    t5 = (t15 + t18);
    t19 = (t0 + 3552);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t5, 8U);
    xsi_driver_first_trans_fast_port(t19);
    goto LAB6;

LAB8:    t5 = (t0 + 1672U);
    t12 = *((char **)t5);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)3);
    t3 = t14;
    goto LAB10;

LAB11:    t5 = (t0 + 1512U);
    t9 = *((char **)t5);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)2);
    t4 = t11;
    goto LAB13;

LAB14:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 1192U);
    t9 = *((char **)t1);
    t1 = (t0 + 3616);
    t12 = (t1 + 56U);
    t15 = *((char **)t12);
    t19 = (t15 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t9, 8U);
    xsi_driver_first_trans_delta(t1, 24U, 8U, 0LL);
    goto LAB6;

LAB16:    t1 = (t0 + 1512U);
    t6 = *((char **)t1);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t2 = t8;
    goto LAB18;

}


extern void work_a_1354609419_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1354609419_3212880686_p_0};
	xsi_register_didat("work_a_1354609419_3212880686", "isim/mic_tb_echo_isim_beh.exe.sim/work/a_1354609419_3212880686.didat");
	xsi_register_executes(pe);
}

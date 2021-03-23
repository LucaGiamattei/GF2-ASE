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
static const char *ng0 = "C:/Users/Marco/Desktop/mic1_fpga-20190226T151123Z-001/mic1_fpga/ram_core.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);


static void work_a_2704923617_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1152U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4368);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(59, ng0);
    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(60, ng0);
    t4 = (t0 + 1832U);
    t11 = *((char **)t4);
    t4 = (t0 + 1672U);
    t12 = *((char **)t4);
    t4 = (t0 + 7520U);
    t13 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t12, t4);
    t14 = (t13 - 127);
    t15 = (t14 * -1);
    t16 = (32U * t15);
    t17 = (0U + t16);
    t18 = (t0 + 4480);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t11, 32U);
    xsi_driver_first_trans_delta(t18, t17, 32U, 0LL);
    goto LAB6;

LAB8:    t4 = (t0 + 1032U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    t3 = t10;
    goto LAB10;

}

static void work_a_2704923617_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(64, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t1 = (t0 + 7520U);
    t4 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t3, t1);
    t5 = (t4 - 127);
    t6 = (t5 * -1);
    xsi_vhdl_check_range_of_index(127, 0, -1, t4);
    t7 = (32U * t6);
    t8 = (0 + t7);
    t9 = (t2 + t8);
    t10 = (t0 + 4544);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 32U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t15 = (t0 + 4384);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2704923617_3212880686_p_2(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t14 = (t0 + 11755);
    t16 = (t0 + 4608);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t14, 32U);
    xsi_driver_first_trans_fast_port(t16);

LAB2:    t21 = (t0 + 4400);
    *((int *)t21) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 2152U);
    t9 = *((char **)t2);
    t2 = (t0 + 4608);
    t10 = (t2 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t9, 32U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB2;

LAB5:    t2 = (t0 + 1512U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;
    goto LAB7;

LAB9:    goto LAB2;

}


extern void work_a_2704923617_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2704923617_3212880686_p_0,(void *)work_a_2704923617_3212880686_p_1,(void *)work_a_2704923617_3212880686_p_2};
	xsi_register_didat("work_a_2704923617_3212880686", "isim/mic_tb_echo_isim_beh.exe.sim/work/a_2704923617_3212880686.didat");
	xsi_register_executes(pe);
}

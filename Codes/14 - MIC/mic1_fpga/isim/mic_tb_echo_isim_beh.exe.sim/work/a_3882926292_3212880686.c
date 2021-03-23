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
static const char *ng0 = "C:/Users/Marco/Desktop/mic1_fpga-20190226T151123Z-001/mic1_fpga/shifter.vhd";
extern char *IEEE_P_2592010699;



static void work_a_3882926292_3212880686_p_0(char *t0)
{
    char t12[16];
    char t14[16];
    char t19[16];
    char t43[16];
    char t45[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t11;
    char *t13;
    char *t15;
    char *t16;
    int t17;
    unsigned int t18;
    char *t20;
    int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned char t29;
    unsigned char t30;
    char *t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned char t36;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    char *t44;
    char *t46;
    char *t47;
    int t48;
    unsigned int t49;
    unsigned char t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;

LAB0:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB3;

LAB4:    t27 = (t0 + 1192U);
    t28 = *((char **)t27);
    t29 = *((unsigned char *)t28);
    t30 = (t29 == (unsigned char)3);
    if (t30 != 0)
        goto LAB7;

LAB8:
LAB11:    t55 = (t0 + 1352U);
    t56 = *((char **)t55);
    t55 = (t0 + 3072);
    t57 = (t55 + 56U);
    t58 = *((char **)t57);
    t59 = (t58 + 56U);
    t60 = *((char **)t59);
    memcpy(t60, t56, 32U);
    xsi_driver_first_trans_fast_port(t55);

LAB2:    t61 = (t0 + 2992);
    *((int *)t61) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t6 = (31 - 23);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t1 = (t5 + t8);
    t9 = (t0 + 4994);
    t13 = ((IEEE_P_2592010699) + 4024);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 23;
    t16 = (t15 + 4U);
    *((int *)t16) = 0;
    t16 = (t15 + 8U);
    *((int *)t16) = -1;
    t17 = (0 - 23);
    t18 = (t17 * -1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    t16 = (t19 + 0U);
    t20 = (t16 + 0U);
    *((int *)t20) = 0;
    t20 = (t16 + 4U);
    *((int *)t20) = 7;
    t20 = (t16 + 8U);
    *((int *)t20) = 1;
    t21 = (7 - 0);
    t18 = (t21 * 1);
    t18 = (t18 + 1);
    t20 = (t16 + 12U);
    *((unsigned int *)t20) = t18;
    t11 = xsi_base_array_concat(t11, t12, t13, (char)97, t1, t14, (char)97, t9, t19, (char)101);
    t18 = (24U + 8U);
    t22 = (32U != t18);
    if (t22 == 1)
        goto LAB5;

LAB6:    t20 = (t0 + 3072);
    t23 = (t20 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t11, 32U);
    xsi_driver_first_trans_fast_port(t20);
    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t18, 0);
    goto LAB6;

LAB7:    t27 = (t0 + 1352U);
    t31 = *((char **)t27);
    t32 = (31 - 31);
    t33 = (t32 * -1);
    t34 = (1U * t33);
    t35 = (0 + t34);
    t27 = (t31 + t35);
    t36 = *((unsigned char *)t27);
    t37 = (t0 + 1352U);
    t38 = *((char **)t37);
    t39 = (31 - 31);
    t40 = (t39 * 1U);
    t41 = (0 + t40);
    t37 = (t38 + t41);
    t44 = ((IEEE_P_2592010699) + 4024);
    t46 = (t45 + 0U);
    t47 = (t46 + 0U);
    *((int *)t47) = 31;
    t47 = (t46 + 4U);
    *((int *)t47) = 1;
    t47 = (t46 + 8U);
    *((int *)t47) = -1;
    t48 = (1 - 31);
    t49 = (t48 * -1);
    t49 = (t49 + 1);
    t47 = (t46 + 12U);
    *((unsigned int *)t47) = t49;
    t42 = xsi_base_array_concat(t42, t43, t44, (char)99, t36, (char)97, t37, t45, (char)101);
    t49 = (1U + 31U);
    t50 = (32U != t49);
    if (t50 == 1)
        goto LAB9;

LAB10:    t47 = (t0 + 3072);
    t51 = (t47 + 56U);
    t52 = *((char **)t51);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    memcpy(t54, t42, 32U);
    xsi_driver_first_trans_fast_port(t47);
    goto LAB2;

LAB9:    xsi_size_not_matching(32U, t49, 0);
    goto LAB10;

LAB12:    goto LAB2;

}


extern void work_a_3882926292_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3882926292_3212880686_p_0};
	xsi_register_didat("work_a_3882926292_3212880686", "isim/mic_tb_echo_isim_beh.exe.sim/work/a_3882926292_3212880686.didat");
	xsi_register_executes(pe);
}

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
static const char *ng0 = "C:/Users/Marco/Desktop/mic1_fpga-20190226T151123Z-001/mic1_fpga/decodifica_indirizzi.vhd";
extern char *IEEE_P_3620187407;

unsigned char ieee_p_3620187407_sub_1742983514_3965413181(char *, char *, char *, char *, char *);
unsigned char ieee_p_3620187407_sub_4060537613_3965413181(char *, char *, char *, char *, char *);


static void work_a_3891634509_3212880686_p_0(char *t0)
{
    char t6[16];
    char t15[16];
    char t31[16];
    char t39[16];
    char t54[16];
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t16;
    char *t17;
    int t18;
    unsigned char t19;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned char t26;
    char *t27;
    char *t28;
    char *t29;
    char *t32;
    char *t33;
    int t34;
    unsigned char t35;
    char *t36;
    char *t37;
    char *t40;
    char *t41;
    int t42;
    unsigned char t43;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t55;
    char *t56;
    int t57;
    unsigned char t58;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    char *t71;
    char *t72;

LAB0:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 6556U);
    t4 = (t0 + 6634);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 31;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t9 = (31 - 0);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t11 = ieee_p_3620187407_sub_4060537613_3965413181(IEEE_P_3620187407, t3, t2, t4, t6);
    if (t11 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t27 = (t0 + 1032U);
    t28 = *((char **)t27);
    t27 = (t0 + 6556U);
    t29 = (t0 + 6701);
    t32 = (t31 + 0U);
    t33 = (t32 + 0U);
    *((int *)t33) = 0;
    t33 = (t32 + 4U);
    *((int *)t33) = 31;
    t33 = (t32 + 8U);
    *((int *)t33) = 1;
    t34 = (31 - 0);
    t10 = (t34 * 1);
    t10 = (t10 + 1);
    t33 = (t32 + 12U);
    *((unsigned int *)t33) = t10;
    t35 = ieee_p_3620187407_sub_4060537613_3965413181(IEEE_P_3620187407, t28, t27, t29, t31);
    if (t35 == 1)
        goto LAB10;

LAB11:    t26 = (unsigned char)0;

LAB12:    if (t26 != 0)
        goto LAB8;

LAB9:    t50 = (t0 + 1032U);
    t51 = *((char **)t50);
    t50 = (t0 + 6556U);
    t52 = (t0 + 6768);
    t55 = (t54 + 0U);
    t56 = (t55 + 0U);
    *((int *)t56) = 0;
    t56 = (t55 + 4U);
    *((int *)t56) = 31;
    t56 = (t55 + 8U);
    *((int *)t56) = 1;
    t57 = (31 - 0);
    t10 = (t57 * 1);
    t10 = (t10 + 1);
    t56 = (t55 + 12U);
    *((unsigned int *)t56) = t10;
    t58 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t51, t50, t52, t54);
    if (t58 != 0)
        goto LAB13;

LAB14:
LAB15:    t65 = (t0 + 6803);
    t67 = (t0 + 4024);
    t68 = (t67 + 56U);
    t69 = *((char **)t68);
    t70 = (t69 + 56U);
    t71 = *((char **)t70);
    memcpy(t71, t65, 3U);
    xsi_driver_first_trans_fast(t67);

LAB2:    t72 = (t0 + 3896);
    *((int *)t72) = 1;

LAB1:    return;
LAB3:    t17 = (t0 + 6698);
    t21 = (t0 + 4024);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t17, 3U);
    xsi_driver_first_trans_fast(t21);
    goto LAB2;

LAB5:    t8 = (t0 + 1032U);
    t12 = *((char **)t8);
    t8 = (t0 + 6556U);
    t13 = (t0 + 6666);
    t16 = (t15 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 0;
    t17 = (t16 + 4U);
    *((int *)t17) = 31;
    t17 = (t16 + 8U);
    *((int *)t17) = 1;
    t18 = (31 - 0);
    t10 = (t18 * 1);
    t10 = (t10 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t10;
    t19 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t12, t8, t13, t15);
    t1 = t19;
    goto LAB7;

LAB8:    t41 = (t0 + 6765);
    t45 = (t0 + 4024);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    memcpy(t49, t41, 3U);
    xsi_driver_first_trans_fast(t45);
    goto LAB2;

LAB10:    t33 = (t0 + 1032U);
    t36 = *((char **)t33);
    t33 = (t0 + 6556U);
    t37 = (t0 + 6733);
    t40 = (t39 + 0U);
    t41 = (t40 + 0U);
    *((int *)t41) = 0;
    t41 = (t40 + 4U);
    *((int *)t41) = 31;
    t41 = (t40 + 8U);
    *((int *)t41) = 1;
    t42 = (31 - 0);
    t10 = (t42 * 1);
    t10 = (t10 + 1);
    t41 = (t40 + 12U);
    *((unsigned int *)t41) = t10;
    t43 = ieee_p_3620187407_sub_1742983514_3965413181(IEEE_P_3620187407, t36, t33, t37, t39);
    t26 = t43;
    goto LAB12;

LAB13:    t56 = (t0 + 6800);
    t60 = (t0 + 4024);
    t61 = (t60 + 56U);
    t62 = *((char **)t61);
    t63 = (t62 + 56U);
    t64 = *((char **)t63);
    memcpy(t64, t56, 3U);
    xsi_driver_first_trans_fast(t60);
    goto LAB2;

LAB16:    goto LAB2;

}

static void work_a_3891634509_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(79, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = (2 - 2);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4088);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 3912);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3891634509_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(80, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = (1 - 2);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4152);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 3928);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3891634509_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(81, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = (0 - 2);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4216);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 3944);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3891634509_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3891634509_3212880686_p_0,(void *)work_a_3891634509_3212880686_p_1,(void *)work_a_3891634509_3212880686_p_2,(void *)work_a_3891634509_3212880686_p_3};
	xsi_register_didat("work_a_3891634509_3212880686", "isim/mic_tb_echo_isim_beh.exe.sim/work/a_3891634509_3212880686.didat");
	xsi_register_executes(pe);
}

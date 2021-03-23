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
static const char *ng0 = "/home/giorgio/Documenti/Prova/Moltiplicatore_Booth.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_3488768496604610246_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_0401743328_3212880686_p_0(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(143, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t4 = ((IEEE_P_2592010699) + 4000);
    t5 = (t0 + 11384U);
    t1 = xsi_base_array_concat(t1, t3, t4, (char)97, t2, t5, (char)99, (unsigned char)2, (char)101);
    t6 = (8U + 1U);
    t7 = (9U != t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 7016);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 9U);
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 6888);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(9U, t6, 0);
    goto LAB6;

}

static void work_a_0401743328_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(144, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3272U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t5);
    t7 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t3, t6);
    t1 = (t0 + 7080);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t7;
    xsi_driver_first_trans_fast(t1);

LAB2:    t12 = (t0 + 6904);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0401743328_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(145, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3112U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t5);
    t7 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t3, t6);
    t1 = (t0 + 7144);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t7;
    xsi_driver_first_trans_fast(t1);

LAB2:    t12 = (t0 + 6920);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0401743328_3212880686_p_3(char *t0)
{
    char t13[16];
    char t15[16];
    char t20[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t14;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    char *t21;
    int t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(146, ng0);

LAB3:    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t3 = (8 - 1);
    t4 = (7 - t3);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = (t0 + 4552U);
    t8 = *((char **)t7);
    t9 = (8 - 8);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t7 = (t8 + t11);
    t14 = ((IEEE_P_2592010699) + 4000);
    t16 = (t15 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 7;
    t17 = (t16 + 4U);
    *((int *)t17) = 0;
    t17 = (t16 + 8U);
    *((int *)t17) = -1;
    t18 = (0 - 7);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t19;
    t17 = (t20 + 0U);
    t21 = (t17 + 0U);
    *((int *)t21) = 8;
    t21 = (t17 + 4U);
    *((int *)t21) = 1;
    t21 = (t17 + 8U);
    *((int *)t21) = -1;
    t22 = (1 - 8);
    t19 = (t22 * -1);
    t19 = (t19 + 1);
    t21 = (t17 + 12U);
    *((unsigned int *)t21) = t19;
    t12 = xsi_base_array_concat(t12, t13, t14, (char)97, t1, t15, (char)97, t7, t20, (char)101);
    t19 = (8U + 8U);
    t23 = (16U != t19);
    if (t23 == 1)
        goto LAB5;

LAB6:    t21 = (t0 + 7208);
    t24 = (t21 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t12, 16U);
    xsi_driver_first_trans_fast_port(t21);

LAB2:    t28 = (t0 + 6936);
    *((int *)t28) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(16U, t19, 0);
    goto LAB6;

}


extern void work_a_0401743328_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0401743328_3212880686_p_0,(void *)work_a_0401743328_3212880686_p_1,(void *)work_a_0401743328_3212880686_p_2,(void *)work_a_0401743328_3212880686_p_3};
	xsi_register_didat("work_a_0401743328_3212880686", "isim/test_isim_beh.exe.sim/work/a_0401743328_3212880686.didat");
	xsi_register_executes(pe);
}

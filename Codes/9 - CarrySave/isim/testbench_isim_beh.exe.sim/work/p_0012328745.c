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
extern char *STD_STANDARD;
extern char *IEEE_P_3972351953;
static const char *ng2 = "rem 0 asked for.  Divide by zero error.";

double ieee_p_3972351953_sub_3804296816803109336_2984157535(char *, double );


int work_p_0012328745_sub_4413689053092229059_2499951857(char *t1, int t2, int t3)
{
    char t4[248];
    char t5[16];
    char t9[8];
    char t16[8];
    int t0;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    int t23;
    unsigned char t24;
    char *t25;
    int t26;
    int t27;
    double t28;
    int t29;
    unsigned char t30;
    unsigned char t31;
    double t32;
    double t33;
    int t34;
    char *t35;
    int t36;
    int t37;
    int t38;
    int t39;
    int t40;
    char *t41;

LAB0:    t6 = (t4 + 4U);
    t7 = ((STD_STANDARD) + 384);
    t8 = (t6 + 88U);
    *((char **)t8) = t7;
    t10 = (t6 + 56U);
    *((char **)t10) = t9;
    *((int *)t9) = t2;
    t11 = (t6 + 80U);
    *((unsigned int *)t11) = 4U;
    t12 = (t3 + 1);
    t13 = (t4 + 124U);
    t14 = ((STD_STANDARD) + 384);
    t15 = (t13 + 88U);
    *((char **)t15) = t14;
    t17 = (t13 + 56U);
    *((char **)t17) = t16;
    *((int *)t16) = t12;
    t18 = (t13 + 80U);
    *((unsigned int *)t18) = 4U;
    t19 = (t5 + 4U);
    *((int *)t19) = t2;
    t20 = (t5 + 8U);
    *((int *)t20) = t3;

LAB2:    t21 = (t6 + 56U);
    t22 = *((char **)t21);
    t23 = *((int *)t22);
    t24 = (t23 != 3);
    if (t24 != 0)
        goto LAB3;

LAB5:    t7 = (t13 + 56U);
    t8 = *((char **)t7);
    t12 = *((int *)t8);
    t0 = t12;

LAB1:    return t0;
LAB3:    t21 = (t6 + 56U);
    t25 = *((char **)t21);
    t26 = *((int *)t25);
    t27 = (t26 / 3);
    t28 = ieee_p_3972351953_sub_3804296816803109336_2984157535(IEEE_P_3972351953, ((double)(t27)));
    t30 = (t28 >= 0);
    if (t30 == 1)
        goto LAB6;

LAB7:    t33 = (t28 - 0.50000000000000000);
    t29 = ((int)(t33));

LAB8:    t34 = (t29 * 2);
    t21 = (t6 + 56U);
    t35 = *((char **)t21);
    t36 = *((int *)t35);
    if (3 == 0)
        goto LAB11;

LAB12:    t37 = abs(t36);
    t38 = (t37 % 3);
    if (t36 < 0)
        goto LAB13;

LAB14:    t40 = (t34 + t38);
    t21 = (t6 + 56U);
    t41 = *((char **)t21);
    t21 = (t41 + 0);
    *((int *)t21) = t40;
    t7 = (t13 + 56U);
    t8 = *((char **)t7);
    t12 = *((int *)t8);
    t23 = (t12 + 1);
    t7 = (t13 + 56U);
    t10 = *((char **)t7);
    t7 = (t10 + 0);
    *((int *)t7) = t23;
    t7 = (t1 + 3624);
    xsi_report(t7, 2U, 0);
    goto LAB2;

LAB4:;
LAB6:    t31 = (t28 >= 2147483647);
    if (t31 == 1)
        goto LAB9;

LAB10:    t32 = (t28 + 0.50000000000000000);
    t29 = ((int)(t32));
    goto LAB8;

LAB9:    t29 = 2147483647;
    goto LAB8;

LAB11:    xsi_error(ng2);
    goto LAB12;

LAB13:    t39 = (-(t38));
    t38 = t39;
    goto LAB14;

LAB15:;
}


extern void work_p_0012328745_init()
{
	static char *se[] = {(void *)work_p_0012328745_sub_4413689053092229059_2499951857};
	xsi_register_didat("work_p_0012328745", "isim/testbench_isim_beh.exe.sim/work/p_0012328745.didat");
	xsi_register_subprogram_executes(se);
}

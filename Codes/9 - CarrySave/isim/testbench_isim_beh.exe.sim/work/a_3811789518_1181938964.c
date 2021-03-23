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
static const char *ng0 = "/home/giorgio/Documenti/Carry_save_NuscitadaFissare/ES_CARRY_SAVE/CSL_TREE.vhd";
extern char *IEEE_P_3972351953;

double ieee_p_3972351953_sub_3804296816803109336_2984157535(char *, double );


static void work_a_3811789518_1181938964_p_0(char *t0)
{
    int t1;
    double t2;
    int t3;
    unsigned char t4;
    unsigned char t5;
    double t6;
    double t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    int t12;
    char *t13;
    char *t14;
    int t15;
    int t16;
    char *t17;
    char *t18;
    int t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    int t24;
    int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    unsigned char t31;
    char *t32;
    int t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;
    int t38;
    int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    int t49;

LAB0:    xsi_set_current_line(96, ng0);
    t1 = (3 / 3);
    t2 = ieee_p_3972351953_sub_3804296816803109336_2984157535(IEEE_P_3972351953, ((double)(t1)));
    t4 = (t2 >= 0);
    if (t4 == 1)
        goto LAB6;

LAB7:    t7 = (t2 - 0.50000000000000000);
    t3 = ((int)(t7));

LAB8:    t8 = (t3 - 1);
    t9 = (t0 + 8479);
    *((int *)t9) = t8;
    t10 = (t0 + 8483);
    *((int *)t10) = 0;
    t11 = t8;
    t12 = 0;

LAB2:    if (t11 >= t12)
        goto LAB3;

LAB5:    t9 = (t0 + 4528);
    *((int *)t9) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(97, ng0);
    t13 = (t0 + 8487);
    *((int *)t13) = 13;
    t14 = (t0 + 8491);
    *((int *)t14) = 0;
    t15 = 13;
    t16 = 0;

LAB11:    if (t15 >= t16)
        goto LAB12;

LAB14:
LAB4:    t9 = (t0 + 8479);
    t11 = *((int *)t9);
    t10 = (t0 + 8483);
    t12 = *((int *)t10);
    if (t11 == t12)
        goto LAB5;

LAB21:    t1 = (t11 + -1);
    t11 = t1;
    t13 = (t0 + 8479);
    *((int *)t13) = t11;
    goto LAB2;

LAB6:    t5 = (t2 >= 2147483647);
    if (t5 == 1)
        goto LAB9;

LAB10:    t6 = (t2 + 0.50000000000000000);
    t3 = ((int)(t6));
    goto LAB8;

LAB9:    t3 = 2147483647;
    goto LAB8;

LAB12:    xsi_set_current_line(98, ng0);
    t17 = (t0 + 1776U);
    t18 = *((char **)t17);
    t17 = (t0 + 8479);
    t19 = *((int *)t17);
    t20 = (t19 - 0);
    t21 = (t20 * -1);
    xsi_vhdl_check_range_of_index(0, 0, -1, *((int *)t17));
    t22 = (t21 * 14U);
    t23 = (t0 + 8487);
    t24 = *((int *)t23);
    t25 = (t24 - 13);
    t26 = (t25 * -1);
    xsi_vhdl_check_range_of_index(13, 0, -1, *((int *)t23));
    t27 = (t22 + t26);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t30 = (t18 + t29);
    t31 = *((unsigned char *)t30);
    t32 = (t0 + 8479);
    t33 = *((int *)t32);
    t34 = (t33 - 0);
    t35 = (t34 * -1);
    t36 = (t35 * 14U);
    t37 = (t0 + 8487);
    t38 = *((int *)t37);
    t39 = (t38 - 13);
    t40 = (t39 * -1);
    t41 = (t36 + t40);
    t42 = (1 * t41);
    t43 = (0U + t42);
    t44 = (t0 + 4608);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    t47 = (t46 + 56U);
    t48 = *((char **)t47);
    *((unsigned char *)t48) = t31;
    xsi_driver_first_trans_delta(t44, t43, 1, 0LL);
    xsi_set_current_line(99, ng0);
    t9 = (t0 + 1936U);
    t10 = *((char **)t9);
    t9 = (t0 + 8479);
    t1 = *((int *)t9);
    t3 = (t1 - 0);
    t21 = (t3 * -1);
    xsi_vhdl_check_range_of_index(0, 0, -1, *((int *)t9));
    t22 = (t21 * 14U);
    t13 = (t0 + 8487);
    t8 = *((int *)t13);
    t19 = (t8 - 13);
    t26 = (t19 * -1);
    xsi_vhdl_check_range_of_index(13, 0, -1, *((int *)t13));
    t27 = (t22 + t26);
    t28 = (1U * t27);
    t29 = (0 + t28);
    t14 = (t10 + t29);
    t4 = *((unsigned char *)t14);
    t20 = (3 / 3);
    t2 = ieee_p_3972351953_sub_3804296816803109336_2984157535(IEEE_P_3972351953, ((double)(t20)));
    t5 = (t2 >= 0);
    if (t5 == 1)
        goto LAB15;

LAB16:    t7 = (t2 - 0.50000000000000000);
    t24 = ((int)(t7));

LAB17:    t25 = (t24 - 1);
    t17 = (t0 + 8479);
    t33 = *((int *)t17);
    t34 = (t25 + t33);
    t38 = (t34 - 0);
    t35 = (t38 * -1);
    t36 = (t35 * 14U);
    t18 = (t0 + 8487);
    t39 = *((int *)t18);
    t49 = (t39 - 13);
    t40 = (t49 * -1);
    t41 = (t36 + t40);
    t42 = (1 * t41);
    t43 = (0U + t42);
    t23 = (t0 + 4672);
    t30 = (t23 + 56U);
    t32 = *((char **)t30);
    t37 = (t32 + 56U);
    t44 = *((char **)t37);
    *((unsigned char *)t44) = t4;
    xsi_driver_first_trans_delta(t23, t43, 1, 0LL);

LAB13:    t9 = (t0 + 8487);
    t15 = *((int *)t9);
    t10 = (t0 + 8491);
    t16 = *((int *)t10);
    if (t15 == t16)
        goto LAB14;

LAB20:    t1 = (t15 + -1);
    t15 = t1;
    t13 = (t0 + 8487);
    *((int *)t13) = t15;
    goto LAB11;

LAB15:    t31 = (t2 >= 2147483647);
    if (t31 == 1)
        goto LAB18;

LAB19:    t6 = (t2 + 0.50000000000000000);
    t24 = ((int)(t6));
    goto LAB17;

LAB18:    t24 = 2147483647;
    goto LAB17;

}


extern void work_a_3811789518_1181938964_init()
{
	static char *pe[] = {(void *)work_a_3811789518_1181938964_p_0};
	xsi_register_didat("work_a_3811789518_1181938964", "isim/testbench_isim_beh.exe.sim/work/a_3811789518_1181938964.didat");
	xsi_register_executes(pe);
}

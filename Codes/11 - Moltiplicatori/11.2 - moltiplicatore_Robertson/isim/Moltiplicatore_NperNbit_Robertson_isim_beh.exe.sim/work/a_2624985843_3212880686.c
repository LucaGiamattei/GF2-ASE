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
static const char *ng0 = "/home/giorgio/Documenti/shiftregister/shiftregister/Controllo_Overflow.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_3488768497506413324_503743352(char *, unsigned char , unsigned char );


static void work_a_2624985843_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(58, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4336);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 4208);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2624985843_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(59, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4400);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);

LAB2:    t8 = (t0 + 4224);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2624985843_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(60, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 4464);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);

LAB2:    t8 = (t0 + 4240);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2624985843_3212880686_p_3(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t6 = *((unsigned char *)t5);
    t7 = ieee_p_2592010699_sub_3488768497506413324_503743352(IEEE_P_2592010699, t4, t6);
    t8 = (t7 == (unsigned char)2);
    if (t8 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 4528);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t9 = (t5 + 56U);
    t11 = *((char **)t9);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB3:    t2 = (t0 + 4256);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 4528);
    t15 = (t2 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

LAB5:    t2 = (t0 + 1672U);
    t9 = *((char **)t2);
    t10 = *((unsigned char *)t9);
    t2 = (t0 + 1352U);
    t11 = *((char **)t2);
    t12 = *((unsigned char *)t11);
    t13 = ieee_p_2592010699_sub_3488768497506413324_503743352(IEEE_P_2592010699, t10, t12);
    t14 = (t13 == (unsigned char)3);
    t1 = t14;
    goto LAB7;

}


extern void work_a_2624985843_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2624985843_3212880686_p_0,(void *)work_a_2624985843_3212880686_p_1,(void *)work_a_2624985843_3212880686_p_2,(void *)work_a_2624985843_3212880686_p_3};
	xsi_register_didat("work_a_2624985843_3212880686", "isim/Moltiplicatore_NperNbit_Robertson_isim_beh.exe.sim/work/a_2624985843_3212880686.didat");
	xsi_register_executes(pe);
}

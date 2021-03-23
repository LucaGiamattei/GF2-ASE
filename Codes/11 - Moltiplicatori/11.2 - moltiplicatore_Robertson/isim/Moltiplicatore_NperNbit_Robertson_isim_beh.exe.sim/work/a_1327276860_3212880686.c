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
static const char *ng0 = "/home/giorgio/Documenti/shiftregister/shiftregister/Counter_ModN.vhd";
extern char *IEEE_P_3499444699;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );
char *ieee_p_3499444699_sub_1205625289178583237_3536714472(char *, char *, char *, char *, int );
char *ieee_p_3499444699_sub_17986521628014143355_3536714472(char *, char *, char *, char *, int );


static void work_a_1327276860_3212880686_p_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(45, ng0);

LAB3:    t2 = (t0 + 1832U);
    t3 = *((char **)t2);
    t2 = (t0 + 7056U);
    t4 = (t0 + 2408U);
    t5 = *((char **)t4);
    t6 = *((int *)t5);
    t4 = ieee_p_3499444699_sub_17986521628014143355_3536714472(IEEE_P_3499444699, t1, t3, t2, t6);
    t7 = (t1 + 12U);
    t8 = *((unsigned int *)t7);
    t8 = (t8 * 1U);
    t9 = (3U != t8);
    if (t9 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 4432);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t4, 3U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t15 = (t0 + 4320);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(3U, t8, 0);
    goto LAB6;

}

static void work_a_1327276860_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(47, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 4496);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast(t1);

LAB2:    t9 = (t0 + 4336);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1327276860_3212880686_p_2(char *t0)
{
    char t16[16];
    char t17[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    int t18;
    char *t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t11 = xsi_signal_has_event(t1);
    if (t11 == 1)
        goto LAB10;

LAB11:    t4 = (unsigned char)0;

LAB12:    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4352);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng0);
    t1 = xsi_get_transient_memory(3U);
    memset(t1, 0, 3U);
    t5 = t1;
    memset(t5, (unsigned char)2, 3U);
    t6 = (t0 + 4560);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 3U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 4624);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1832U);
    t7 = *((char **)t2);
    t2 = (t0 + 7056U);
    t8 = ieee_p_3499444699_sub_1205625289178583237_3536714472(IEEE_P_3499444699, t17, t7, t2, 1);
    t9 = (t0 + 2408U);
    t10 = *((char **)t9);
    t18 = *((int *)t10);
    t9 = ieee_p_3499444699_sub_17986521628014143355_3536714472(IEEE_P_3499444699, t16, t8, t17, t18);
    t19 = (t16 + 12U);
    t20 = *((unsigned int *)t19);
    t20 = (t20 * 1U);
    t21 = (3U != t20);
    if (t21 == 1)
        goto LAB13;

LAB14:    t22 = (t0 + 4560);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memcpy(t26, t9, 3U);
    xsi_driver_first_trans_fast(t22);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 2528U);
    t5 = *((char **)t1);
    t3 = 1;
    if (3U == 3U)
        goto LAB18;

LAB19:    t3 = 0;

LAB20:    if (t3 != 0)
        goto LAB15;

LAB17:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 4624);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB16:    goto LAB3;

LAB7:    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t14 = *((unsigned char *)t6);
    t15 = (t14 == (unsigned char)3);
    t3 = t15;
    goto LAB9;

LAB10:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t12 = *((unsigned char *)t5);
    t13 = (t12 == (unsigned char)3);
    t4 = t13;
    goto LAB12;

LAB13:    xsi_size_not_matching(3U, t20, 0);
    goto LAB14;

LAB15:    xsi_set_current_line(59, ng0);
    t7 = (t0 + 4624);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t19 = *((char **)t10);
    *((unsigned char *)t19) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB16;

LAB18:    t20 = 0;

LAB21:    if (t20 < 3U)
        goto LAB22;
    else
        goto LAB20;

LAB22:    t1 = (t2 + t20);
    t6 = (t5 + t20);
    if (*((unsigned char *)t1) != *((unsigned char *)t6))
        goto LAB19;

LAB23:    t20 = (t20 + 1);
    goto LAB21;

}


extern void work_a_1327276860_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1327276860_3212880686_p_0,(void *)work_a_1327276860_3212880686_p_1,(void *)work_a_1327276860_3212880686_p_2};
	xsi_register_didat("work_a_1327276860_3212880686", "isim/Moltiplicatore_NperNbit_Robertson_isim_beh.exe.sim/work/a_1327276860_3212880686.didat");
	xsi_register_executes(pe);
}

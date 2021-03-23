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
static const char *ng0 = "/home/luca/ISE_ws/Divisore_non_rest/cont_modn.vhd";
extern char *IEEE_P_3499444699;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );
char *ieee_p_3499444699_sub_1205625289178583237_3536714472(char *, char *, char *, char *, int );
char *ieee_p_3499444699_sub_1205625289178655111_3536714472(char *, char *, char *, char *, int );
char *ieee_p_3499444699_sub_17986521628014143355_3536714472(char *, char *, char *, char *, int );


static void work_a_1174821464_3212880686_p_0(char *t0)
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

LAB0:    xsi_set_current_line(47, ng0);

LAB3:    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 7848U);
    t4 = (t0 + 2888U);
    t5 = *((char **)t4);
    t6 = *((int *)t5);
    t4 = ieee_p_3499444699_sub_17986521628014143355_3536714472(IEEE_P_3499444699, t1, t3, t2, t6);
    t7 = (t1 + 12U);
    t8 = *((unsigned int *)t7);
    t8 = (t8 * 1U);
    t9 = (2U != t8);
    if (t9 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 5176);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t4, 2U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t15 = (t0 + 5048);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(2U, t8, 0);
    goto LAB6;

}

static void work_a_1174821464_3212880686_p_1(char *t0)
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

LAB0:    xsi_set_current_line(49, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t3);
    t1 = (t0 + 5240);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t4;
    xsi_driver_first_trans_fast(t1);

LAB2:    t9 = (t0 + 5064);
    *((int *)t9) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1174821464_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(50, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5304);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5080);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1174821464_3212880686_p_3(char *t0)
{
    char t17[16];
    char t18[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;

LAB0:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 992U);
    t4 = xsi_signal_has_event(t2);
    if (t4 == 1)
        goto LAB14;

LAB15:    t1 = (unsigned char)0;

LAB16:    if (t1 != 0)
        goto LAB11;

LAB13:
LAB12:
LAB3:    t2 = (t0 + 5096);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1352U);
    t9 = *((char **)t2);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    if (t11 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 5432);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t9 = (t6 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(61, ng0);
    t2 = xsi_get_transient_memory(2U);
    memset(t2, 0, 2U);
    t3 = t2;
    memset(t3, (unsigned char)2, 2U);
    t6 = (t0 + 5368);
    t9 = (t6 + 56U);
    t12 = *((char **)t9);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 2U);
    xsi_driver_first_trans_fast(t6);

LAB9:    goto LAB3;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1672U);
    t12 = *((char **)t2);
    t2 = (t0 + 5368);
    t13 = (t2 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t12, 2U);
    xsi_driver_first_trans_fast(t2);
    goto LAB9;

LAB11:    xsi_set_current_line(65, ng0);
    t3 = (t0 + 1512U);
    t9 = *((char **)t3);
    t8 = *((unsigned char *)t9);
    t10 = (t8 == (unsigned char)3);
    if (t10 != 0)
        goto LAB17;

LAB19:
LAB18:    goto LAB12;

LAB14:    t3 = (t0 + 1032U);
    t6 = *((char **)t3);
    t5 = *((unsigned char *)t6);
    t7 = (t5 == (unsigned char)3);
    t1 = t7;
    goto LAB16;

LAB17:    xsi_set_current_line(66, ng0);
    t3 = (t0 + 2152U);
    t12 = *((char **)t3);
    t3 = (t0 + 7848U);
    t13 = ieee_p_3499444699_sub_1205625289178583237_3536714472(IEEE_P_3499444699, t18, t12, t3, 1);
    t14 = (t0 + 2888U);
    t15 = *((char **)t14);
    t19 = *((int *)t15);
    t14 = ieee_p_3499444699_sub_17986521628014143355_3536714472(IEEE_P_3499444699, t17, t13, t18, t19);
    t16 = (t17 + 12U);
    t20 = *((unsigned int *)t16);
    t20 = (t20 * 1U);
    t11 = (2U != t20);
    if (t11 == 1)
        goto LAB20;

LAB21:    t21 = (t0 + 5368);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t14, 2U);
    xsi_driver_first_trans_fast(t21);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 3008U);
    t6 = *((char **)t2);
    t2 = (t0 + 7832U);
    t9 = ieee_p_3499444699_sub_1205625289178655111_3536714472(IEEE_P_3499444699, t18, t6, t2, 1);
    t12 = (t0 + 2888U);
    t13 = *((char **)t12);
    t19 = *((int *)t13);
    t12 = ieee_p_3499444699_sub_17986521628014143355_3536714472(IEEE_P_3499444699, t17, t9, t18, t19);
    t14 = (t17 + 12U);
    t20 = *((unsigned int *)t14);
    t20 = (t20 * 1U);
    t1 = 1;
    if (2U == t20)
        goto LAB25;

LAB26:    t1 = 0;

LAB27:    if (t1 != 0)
        goto LAB22;

LAB24:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 5432);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t9 = (t6 + 56U);
    t12 = *((char **)t9);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 3008U);
    t6 = *((char **)t2);
    t1 = 1;
    if (2U == 2U)
        goto LAB34;

LAB35:    t1 = 0;

LAB36:    if (t1 != 0)
        goto LAB31;

LAB33:
LAB32:
LAB23:    goto LAB18;

LAB20:    xsi_size_not_matching(2U, t20, 0);
    goto LAB21;

LAB22:    xsi_set_current_line(68, ng0);
    t21 = (t0 + 5432);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    *((unsigned char *)t25) = (unsigned char)3;
    xsi_driver_first_trans_fast(t21);
    goto LAB23;

LAB25:    t26 = 0;

LAB28:    if (t26 < 2U)
        goto LAB29;
    else
        goto LAB27;

LAB29:    t15 = (t3 + t26);
    t16 = (t12 + t26);
    if (*((unsigned char *)t15) != *((unsigned char *)t16))
        goto LAB26;

LAB30:    t26 = (t26 + 1);
    goto LAB28;

LAB31:    xsi_set_current_line(72, ng0);
    t12 = xsi_get_transient_memory(2U);
    memset(t12, 0, 2U);
    t13 = t12;
    memset(t13, (unsigned char)2, 2U);
    t14 = (t0 + 5368);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t21 = (t16 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t12, 2U);
    xsi_driver_first_trans_fast(t14);
    goto LAB32;

LAB34:    t20 = 0;

LAB37:    if (t20 < 2U)
        goto LAB38;
    else
        goto LAB36;

LAB38:    t2 = (t3 + t20);
    t9 = (t6 + t20);
    if (*((unsigned char *)t2) != *((unsigned char *)t9))
        goto LAB35;

LAB39:    t20 = (t20 + 1);
    goto LAB37;

}


extern void work_a_1174821464_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1174821464_3212880686_p_0,(void *)work_a_1174821464_3212880686_p_1,(void *)work_a_1174821464_3212880686_p_2,(void *)work_a_1174821464_3212880686_p_3};
	xsi_register_didat("work_a_1174821464_3212880686", "isim/tb_0_isim_beh.exe.sim/work/a_1174821464_3212880686.didat");
	xsi_register_executes(pe);
}

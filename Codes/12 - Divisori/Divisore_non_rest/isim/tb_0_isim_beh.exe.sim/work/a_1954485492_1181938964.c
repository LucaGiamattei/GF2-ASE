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
static const char *ng0 = "/home/luca/ISE_ws/Divisore_non_rest/divisore_non_restoring.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_1434220770698190313_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_3488768496604610246_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_1954485492_1181938964_p_0(char *t0)
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

LAB0:    xsi_set_current_line(148, ng0);

LAB3:    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t3 = (4 - 4);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 13176);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_delta(t8, 0U, 1, 0LL);

LAB2:    t13 = (t0 + 12888);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1954485492_1181938964_p_1(char *t0)
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

LAB0:    xsi_set_current_line(149, ng0);

LAB3:    t1 = (t0 + 7592U);
    t2 = *((char **)t1);
    t3 = (0 - 0);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 13240);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 12904);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1954485492_1181938964_p_2(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(150, ng0);

LAB3:    t1 = (t0 + 6472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 2632U);
    t4 = *((char **)t1);
    t6 = ((IEEE_P_2592010699) + 4000);
    t7 = (t0 + 21208U);
    t1 = xsi_base_array_concat(t1, t5, t6, (char)99, t3, (char)97, t4, t7, (char)101);
    t8 = (1U + 4U);
    t9 = (5U != t8);
    if (t9 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 13304);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 5U);
    xsi_driver_first_trans_fast(t10);

LAB2:    t15 = (t0 + 12920);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(5U, t8, 0);
    goto LAB6;

}

static void work_a_1954485492_1181938964_p_3(char *t0)
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

LAB0:    xsi_set_current_line(151, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t4 = ((IEEE_P_2592010699) + 4000);
    t5 = (t0 + 21208U);
    t1 = xsi_base_array_concat(t1, t3, t4, (char)99, (unsigned char)2, (char)97, t2, t5, (char)101);
    t6 = (1U + 4U);
    t7 = (5U != t6);
    if (t7 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 13368);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 5U);
    xsi_driver_first_trans_fast(t8);

LAB2:    t13 = (t0 + 12936);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(5U, t6, 0);
    goto LAB6;

}

static void work_a_1954485492_1181938964_p_4(char *t0)
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

LAB0:    xsi_set_current_line(153, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5832U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t5);
    t7 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t3, t6);
    t1 = (t0 + 13432);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t7;
    xsi_driver_first_trans_fast(t1);

LAB2:    t12 = (t0 + 12952);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1954485492_1181938964_p_5(char *t0)
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

LAB0:    xsi_set_current_line(154, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5192U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t5);
    t7 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t3, t6);
    t1 = (t0 + 13496);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t7;
    xsi_driver_first_trans_fast(t1);

LAB2:    t12 = (t0 + 12968);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1954485492_1181938964_p_6(char *t0)
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

LAB0:    xsi_set_current_line(155, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5512U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t5);
    t7 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t3, t6);
    t1 = (t0 + 13560);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t7;
    xsi_driver_first_trans_fast(t1);

LAB2:    t12 = (t0 + 12984);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1954485492_1181938964_p_7(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(157, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 13624);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 13000);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1954485492_1181938964_p_8(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(158, ng0);

LAB3:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 13688);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 13016);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1954485492_1181938964_p_9(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(159, ng0);

LAB3:    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 13752);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 13032);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1954485492_1181938964_p_10(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    char *t8;
    unsigned int t9;
    unsigned char t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(261, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t3 = t1;
    if (-1 == -1)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    t5 = (t4 - 3);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (t3 + t7);
    t9 = (1U * 4U);
    memset(t8, (unsigned char)2, t9);
    t10 = 1;
    if (4U == 4U)
        goto LAB8;

LAB9:    t10 = 0;

LAB10:    if (t10 != 0)
        goto LAB3;

LAB4:
LAB14:    t19 = (t0 + 13816);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)2;
    xsi_driver_first_trans_fast(t19);

LAB2:    t24 = (t0 + 13048);
    *((int *)t24) = 1;

LAB1:    return;
LAB3:    t14 = (t0 + 13816);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast(t14);
    goto LAB2;

LAB5:    t4 = 3;
    goto LAB7;

LAB8:    t11 = 0;

LAB11:    if (t11 < 4U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t12 = (t2 + t11);
    t13 = (t1 + t11);
    if (*((unsigned char *)t12) != *((unsigned char *)t13))
        goto LAB9;

LAB13:    t11 = (t11 + 1);
    goto LAB11;

LAB15:    goto LAB2;

}

static void work_a_1954485492_1181938964_p_11(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;
    unsigned int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    unsigned int t19;
    unsigned char t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;

LAB0:    xsi_set_current_line(265, ng0);
    t3 = (t0 + 2632U);
    t4 = *((char **)t3);
    t3 = (t0 + 21208U);
    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t5 = (t0 + 21160U);
    t7 = ieee_p_1242562249_sub_1434220770698190313_1035706684(IEEE_P_1242562249, t4, t3, t6, t5);
    if (t7 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB20:    t29 = (t0 + 13880);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    *((unsigned char *)t33) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t29);

LAB2:    t34 = (t0 + 13064);
    *((int *)t34) = 1;

LAB1:    return;
LAB3:    t24 = (t0 + 13880);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    *((unsigned char *)t28) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t24);
    goto LAB2;

LAB5:    t8 = (t0 + 1192U);
    t12 = *((char **)t8);
    t8 = xsi_get_transient_memory(4U);
    memset(t8, 0, 4U);
    t13 = t8;
    if (-1 == -1)
        goto LAB11;

LAB12:    t14 = 0;

LAB13:    t15 = (t14 - 3);
    t16 = (t15 * -1);
    t17 = (1U * t16);
    t18 = (t13 + t17);
    t19 = (1U * 4U);
    memset(t18, (unsigned char)2, t19);
    t20 = 1;
    if (4U == 4U)
        goto LAB14;

LAB15:    t20 = 0;

LAB16:    t1 = (!(t20));
    goto LAB7;

LAB8:    t8 = (t0 + 3752U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t2 = t11;
    goto LAB10;

LAB11:    t14 = 3;
    goto LAB13;

LAB14:    t21 = 0;

LAB17:    if (t21 < 4U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t22 = (t12 + t21);
    t23 = (t8 + t21);
    if (*((unsigned char *)t22) != *((unsigned char *)t23))
        goto LAB15;

LAB19:    t21 = (t21 + 1);
    goto LAB17;

LAB21:    goto LAB2;

}

static void work_a_1954485492_1181938964_p_12(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(267, ng0);

LAB3:    t1 = (t0 + 7112U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 13944);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 13080);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1954485492_1181938964_p_13(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(209, ng0);

LAB3:    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t3 = (4 - 4);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t7);
    t9 = (t0 + 14008);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t8;
    xsi_driver_first_trans_fast(t9);

LAB2:    t14 = (t0 + 13096);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1954485492_1181938964_init()
{
	static char *pe[] = {(void *)work_a_1954485492_1181938964_p_0,(void *)work_a_1954485492_1181938964_p_1,(void *)work_a_1954485492_1181938964_p_2,(void *)work_a_1954485492_1181938964_p_3,(void *)work_a_1954485492_1181938964_p_4,(void *)work_a_1954485492_1181938964_p_5,(void *)work_a_1954485492_1181938964_p_6,(void *)work_a_1954485492_1181938964_p_7,(void *)work_a_1954485492_1181938964_p_8,(void *)work_a_1954485492_1181938964_p_9,(void *)work_a_1954485492_1181938964_p_10,(void *)work_a_1954485492_1181938964_p_11,(void *)work_a_1954485492_1181938964_p_12,(void *)work_a_1954485492_1181938964_p_13};
	xsi_register_didat("work_a_1954485492_1181938964", "isim/tb_0_isim_beh.exe.sim/work/a_1954485492_1181938964.didat");
	xsi_register_executes(pe);
}

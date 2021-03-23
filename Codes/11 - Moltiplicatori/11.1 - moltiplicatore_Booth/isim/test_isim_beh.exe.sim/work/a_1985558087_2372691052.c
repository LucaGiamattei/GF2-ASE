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
static const char *ng0 = "/home/giorgio/Documenti/Prova/test.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_2598175070666390882_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_1985558087_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3264U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 3944);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3072);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 3944);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3072);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1985558087_2372691052_p_1(char *t0)
{
    char t13[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    int64 t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    t1 = (t0 + 3512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(96, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3320);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 2288U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 10);
    t2 = (t0 + 3320);
    xsi_process_wait(t2, t5);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(164, ng0);
    t2 = (t0 + 6312);
    t6 = (t0 + 4008);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(165, ng0);
    t2 = (t0 + 6320);
    t6 = (t0 + 4072);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(166, ng0);
    t3 = (5 * 1000LL);
    t2 = (t0 + 3320);
    xsi_process_wait(t2, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(167, ng0);
    t2 = (t0 + 4136);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(168, ng0);
    t2 = (t0 + 2288U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 2);
    t2 = (t0 + 3320);
    xsi_process_wait(t2, t5);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(169, ng0);
    t2 = (t0 + 4136);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(171, ng0);

LAB22:    t2 = (t0 + 3832);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    t4 = (t0 + 3832);
    *((int *)t4) = 0;
    xsi_set_current_line(172, ng0);
    t3 = (2 * 1000LL);
    t2 = (t0 + 3320);
    xsi_process_wait(t2, t3);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    t4 = (t0 + 1832U);
    t6 = *((char **)t4);
    t11 = *((unsigned char *)t6);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB20;
    else
        goto LAB22;

LAB23:    goto LAB21;

LAB24:    xsi_set_current_line(173, ng0);
    t2 = (t0 + 6328);
    t6 = (t0 + 4008);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(174, ng0);
    t2 = (t0 + 6336);
    t6 = (t0 + 4072);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(175, ng0);
    t3 = (5 * 1000LL);
    t2 = (t0 + 3320);
    xsi_process_wait(t2, t3);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB28:    xsi_set_current_line(176, ng0);
    t2 = (t0 + 4136);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(177, ng0);
    t2 = (t0 + 2288U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 2);
    t2 = (t0 + 3320);
    xsi_process_wait(t2, t5);

LAB34:    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    xsi_set_current_line(178, ng0);
    t2 = (t0 + 4136);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(180, ng0);

LAB38:    t2 = (t0 + 3848);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

LAB36:    t4 = (t0 + 3848);
    *((int *)t4) = 0;
    xsi_set_current_line(181, ng0);
    t3 = (2 * 1000LL);
    t2 = (t0 + 3320);
    xsi_process_wait(t2, t3);

LAB42:    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB37:    t4 = (t0 + 1832U);
    t6 = *((char **)t4);
    t11 = *((unsigned char *)t6);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB36;
    else
        goto LAB38;

LAB39:    goto LAB37;

LAB40:    xsi_set_current_line(184, ng0);
    t2 = (t0 + 6344);
    t6 = (t0 + 4008);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(185, ng0);
    t2 = (t0 + 6352);
    t6 = (t0 + 4072);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(186, ng0);
    t3 = (5 * 1000LL);
    t2 = (t0 + 3320);
    xsi_process_wait(t2, t3);

LAB46:    *((char **)t1) = &&LAB47;
    goto LAB1;

LAB41:    goto LAB40;

LAB43:    goto LAB41;

LAB44:    xsi_set_current_line(187, ng0);
    t2 = (t0 + 4136);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(188, ng0);
    t2 = (t0 + 2288U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 2);
    t2 = (t0 + 3320);
    xsi_process_wait(t2, t5);

LAB50:    *((char **)t1) = &&LAB51;
    goto LAB1;

LAB45:    goto LAB44;

LAB47:    goto LAB45;

LAB48:    xsi_set_current_line(189, ng0);
    t2 = (t0 + 4136);
    t4 = (t2 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(191, ng0);

LAB54:    t2 = (t0 + 3864);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB55;
    goto LAB1;

LAB49:    goto LAB48;

LAB51:    goto LAB49;

LAB52:    t4 = (t0 + 3864);
    *((int *)t4) = 0;
    xsi_set_current_line(192, ng0);
    t3 = (2 * 1000LL);
    t2 = (t0 + 3320);
    xsi_process_wait(t2, t3);

LAB58:    *((char **)t1) = &&LAB59;
    goto LAB1;

LAB53:    t4 = (t0 + 1832U);
    t6 = *((char **)t4);
    t11 = *((unsigned char *)t6);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB52;
    else
        goto LAB54;

LAB55:    goto LAB53;

LAB56:    xsi_set_current_line(194, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t2 = (t0 + 1032U);
    t6 = *((char **)t2);
    t2 = (t0 + 6208U);
    t7 = (t0 + 1192U);
    t8 = *((char **)t7);
    t7 = (t0 + 6224U);
    t9 = ieee_p_1242562249_sub_2598175070666390882_1035706684(IEEE_P_1242562249, t13, t6, t2, t8, t7);
    t10 = (t13 + 12U);
    t14 = *((unsigned int *)t10);
    t15 = (1U * t14);
    t11 = 1;
    if (16U == t15)
        goto LAB62;

LAB63:    t11 = 0;

LAB64:    if (t11 == 0)
        goto LAB60;

LAB61:    xsi_set_current_line(196, ng0);

LAB70:    *((char **)t1) = &&LAB71;
    goto LAB1;

LAB57:    goto LAB56;

LAB59:    goto LAB57;

LAB60:    t19 = (t0 + 6360);
    xsi_report(t19, 19U, 2);
    goto LAB61;

LAB62:    t16 = 0;

LAB65:    if (t16 < 16U)
        goto LAB66;
    else
        goto LAB64;

LAB66:    t17 = (t4 + t16);
    t18 = (t9 + t16);
    if (*((unsigned char *)t17) != *((unsigned char *)t18))
        goto LAB63;

LAB67:    t16 = (t16 + 1);
    goto LAB65;

LAB68:    goto LAB2;

LAB69:    goto LAB68;

LAB71:    goto LAB69;

}


extern void work_a_1985558087_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1985558087_2372691052_p_0,(void *)work_a_1985558087_2372691052_p_1};
	xsi_register_didat("work_a_1985558087_2372691052", "isim/test_isim_beh.exe.sim/work/a_1985558087_2372691052.didat");
	xsi_register_executes(pe);
}

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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *WORK_P_0012328745;
char *IEEE_P_1242562249;
char *IEEE_P_3972351953;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3499444699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    ieee_p_3972351953_init();
    ieee_p_3499444699_init();
    work_p_0012328745_init();
    work_a_3112044328_2101610066_init();
    work_a_3673418756_1181938964_init();
    work_a_1596906175_1181938964_init();
    work_a_3677455923_1181938964_init();
    work_a_2875987528_1181938964_init();
    work_a_1319527599_1181938964_init();
    work_a_1971796763_1181938964_init();
    work_a_1331957400_1181938964_init();
    work_a_0965603367_1181938964_init();
    work_a_1294119105_1181938964_init();
    work_a_4036468187_1181938964_init();
    work_a_1289804534_1181938964_init();
    work_a_3964716884_1181938964_init();
    work_a_3811789518_1181938964_init();
    work_a_0372218027_1181938964_init();
    work_a_1756891392_1181938964_init();
    work_a_3255132065_1181938964_init();
    work_a_2350242206_1181938964_init();
    work_a_3224219042_1181938964_init();
    work_a_2652092096_3212880686_init();
    work_a_1949178628_2372691052_init();


    xsi_register_tops("work_a_1949178628_2372691052");

    WORK_P_0012328745 = xsi_get_engine_memory("work_p_0012328745");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3972351953 = xsi_get_engine_memory("ieee_p_3972351953");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");

    return xsi_run_simulation(argc, argv);

}

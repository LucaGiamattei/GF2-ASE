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

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3972351953;
char *IEEE_P_3499444699;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    ieee_p_3972351953_init();
    ieee_p_3499444699_init();
    work_a_3117367587_3212880686_init();
    work_a_0737135909_3990940387_init();
    work_a_1106649265_3212880686_init();
    work_a_2299082355_1181938964_init();
    work_a_1091909171_3212880686_init();
    work_a_0321722772_3212880686_init();
    work_a_2630955278_3212880686_init();
    work_a_1174821464_3212880686_init();
    work_a_2023836380_3990940387_init();
    work_a_3112044328_3990940387_init();
    work_a_3873495883_1181938964_init();
    work_a_2624985843_3212880686_init();
    work_a_2755472917_1181938964_init();
    work_a_3853510154_3212880686_init();
    work_a_2089403101_1181938964_init();
    work_a_1284636275_2372691052_init();


    xsi_register_tops("work_a_1284636275_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3972351953 = xsi_get_engine_memory("ieee_p_3972351953");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}

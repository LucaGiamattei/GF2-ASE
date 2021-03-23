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
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *WORK_P_3480595139;
char *IEEE_P_1242562249;
char *UNISIM_P_0947159679;
char *STD_TEXTIO;
char *IEEE_P_2717149903;
char *IEEE_P_1367372525;
char *UNISIM_P_3222816464;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    unisim_p_0947159679_init();
    ieee_p_1242562249_init();
    work_a_1354609419_3212880686_init();
    std_textio_init();
    ieee_p_2717149903_init();
    ieee_p_1367372525_init();
    unisim_p_3222816464_init();
    unisim_a_0850834979_2152628908_init();
    unisim_a_0714155612_2768510774_init();
    unisim_a_0018426790_2768510774_init();
    unisim_a_1297477671_0429821216_init();
    unisim_a_0839861224_2584565154_init();
    work_a_3517812206_3212880686_init();
    work_p_3480595139_init();
    work_a_0873426948_3212880686_init();
    work_a_2287943334_3212880686_init();
    work_a_3656538697_3212880686_init();
    work_a_0285686572_3990940387_init();
    work_a_2263464102_3212880686_init();
    work_a_0978280020_3212880686_init();
    work_a_3244498267_3212880686_init();
    work_a_3264794668_3212880686_init();
    work_a_3882926292_3212880686_init();
    work_a_3386890714_3212880686_init();
    work_a_3124420881_3212880686_init();
    work_a_2458576592_3212880686_init();
    work_a_3605989538_3212880686_init();
    work_a_1228245820_3212880686_init();
    work_a_3021116645_3212880686_init();
    work_a_0669444610_3212880686_init();
    work_a_0832606739_1224729249_init();
    work_a_0594472576_3212880686_init();
    work_a_3547076817_3212880686_init();
    work_a_1774247411_3212880686_init();
    work_a_2032211011_2663058750_init();
    work_a_2704923617_3212880686_init();
    work_a_2685213219_2663058750_init();
    work_a_3891634509_3212880686_init();
    work_a_3776416494_3212880686_init();
    work_a_2908996247_2372691052_init();


    xsi_register_tops("work_a_2908996247_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    WORK_P_3480595139 = xsi_get_engine_memory("work_p_3480595139");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_2717149903 = xsi_get_engine_memory("ieee_p_2717149903");
    IEEE_P_1367372525 = xsi_get_engine_memory("ieee_p_1367372525");
    UNISIM_P_3222816464 = xsi_get_engine_memory("unisim_p_3222816464");

    return xsi_run_simulation(argc, argv);

}

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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Predator/Desktop/Learning Resources/DigitalSystem/KTANE_Main/LFSRRandomNumberGenerator.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );


static void work_a_3659408203_3212880686_p_0(char *t0)
{
    char t39[16];
    char t40[16];
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
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    unsigned char t22;
    int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned char t27;
    unsigned char t28;
    char *t29;
    char *t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned char t35;
    unsigned char t36;
    char *t37;
    char *t38;

LAB0:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3520);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 6040);
    t6 = (t0 + 3616);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1192U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t11 = (t4 == (unsigned char)3);
    if (t11 != 0)
        goto LAB7;

LAB9:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t12 = (4 - 7);
    t13 = (t12 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t2 = (t6 + t15);
    t16 = *((unsigned char *)t2);
    t7 = (t0 + 1672U);
    t8 = *((char **)t7);
    t17 = (3 - 7);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t7 = (t8 + t20);
    t21 = *((unsigned char *)t7);
    t22 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t16, t21);
    t9 = (t0 + 1672U);
    t10 = *((char **)t9);
    t23 = (2 - 7);
    t24 = (t23 * -1);
    t25 = (1U * t24);
    t26 = (0 + t25);
    t9 = (t10 + t26);
    t27 = *((unsigned char *)t9);
    t28 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t22, t27);
    t29 = (t0 + 1672U);
    t30 = *((char **)t29);
    t31 = (0 - 7);
    t32 = (t31 * -1);
    t33 = (1U * t32);
    t34 = (0 + t33);
    t29 = (t30 + t34);
    t35 = *((unsigned char *)t29);
    t36 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t28, t35);
    t37 = (t0 + 1968U);
    t38 = *((char **)t37);
    t37 = (t38 + 0);
    *((unsigned char *)t37) = t36;
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1672U);
    t5 = *((char **)t1);
    t13 = (7 - 7);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t1 = (t5 + t15);
    t7 = ((IEEE_P_2592010699) + 4024);
    t8 = (t40 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 7;
    t9 = (t8 + 4U);
    *((int *)t9) = 1;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t12 = (1 - 7);
    t18 = (t12 * -1);
    t18 = (t18 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t18;
    t6 = xsi_base_array_concat(t6, t39, t7, (char)99, t3, (char)97, t1, t40, (char)101);
    t18 = (1U + 7U);
    t4 = (8U != t18);
    if (t4 == 1)
        goto LAB10;

LAB11:    t9 = (t0 + 3616);
    t10 = (t9 + 56U);
    t29 = *((char **)t10);
    t30 = (t29 + 56U);
    t37 = *((char **)t30);
    memcpy(t37, t6, 8U);
    xsi_driver_first_trans_fast(t9);
    goto LAB8;

LAB10:    xsi_size_not_matching(8U, t18, 0);
    goto LAB11;

}

static void work_a_3659408203_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(57, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3680);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3536);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3659408203_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3659408203_3212880686_p_0,(void *)work_a_3659408203_3212880686_p_1};
	xsi_register_didat("work_a_3659408203_3212880686", "isim/ktane_main_tb_isim_beh.exe.sim/work/a_3659408203_3212880686.didat");
	xsi_register_executes(pe);
}

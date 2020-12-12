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
static const char *ng0 = "C:/Users/Predator/Desktop/Learning Resources/DigitalSystem/KTANE_Main/CountdownTimer_130.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_436351764_3965413181(char *, char *, char *, char *, int );


static void work_a_0559910600_3212880686_p_0(char *t0)
{
    char t11[16];
    char t19[16];
    char t28[16];
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
    int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned char t26;
    unsigned char t27;
    int t29;
    unsigned char t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2592U);
    t3 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB7:
LAB6:
LAB3:    t1 = (t0 + 5104);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 9160);
    t6 = (t0 + 5248);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 9164);
    t5 = (t0 + 5312);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 9168);
    t5 = (t0 + 5376);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 5440);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 2312U);
    t5 = *((char **)t2);
    t2 = (t0 + 9120U);
    t6 = (t0 + 9172);
    t8 = (t11 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 3;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t12 = (3 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t13;
    t4 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t5, t2, t6, t11);
    if (t4 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 9120U);
    t5 = ieee_p_3620187407_sub_436351764_3965413181(IEEE_P_3620187407, t11, t2, t1, 1);
    t6 = (t11 + 12U);
    t13 = *((unsigned int *)t6);
    t25 = (1U * t13);
    t3 = (4U != t25);
    if (t3 == 1)
        goto LAB28;

LAB29:    t7 = (t0 + 5376);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    memcpy(t14, t5, 4U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(97, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 9088U);
    t5 = (t0 + 9220);
    t7 = (t11 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t12 = (3 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t13;
    t26 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t11);
    if (t26 == 1)
        goto LAB36;

LAB37:    t4 = (unsigned char)0;

LAB38:    if (t4 == 1)
        goto LAB33;

LAB34:    t3 = (unsigned char)0;

LAB35:    if (t3 != 0)
        goto LAB30;

LAB32:    xsi_set_current_line(100, ng0);
    t1 = (t0 + 5440);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB31:
LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(75, ng0);
    t9 = (t0 + 9176);
    t14 = (t0 + 5376);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t9, 4U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 9104U);
    t5 = (t0 + 9180);
    t7 = (t11 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t12 = (3 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t13;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t11);
    if (t3 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 9104U);
    t5 = ieee_p_3620187407_sub_436351764_3965413181(IEEE_P_3620187407, t11, t2, t1, 1);
    t6 = (t11 + 12U);
    t13 = *((unsigned int *)t6);
    t25 = (1U * t13);
    t3 = (4U != t25);
    if (t3 == 1)
        goto LAB17;

LAB18:    t7 = (t0 + 5312);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t14 = *((char **)t10);
    memcpy(t14, t5, 4U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(88, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 9088U);
    t5 = (t0 + 9208);
    t7 = (t11 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t12 = (3 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t13;
    t26 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t5, t11);
    if (t26 == 1)
        goto LAB25;

LAB26:    t4 = (unsigned char)0;

LAB27:    if (t4 == 1)
        goto LAB22;

LAB23:    t3 = (unsigned char)0;

LAB24:    if (t3 != 0)
        goto LAB19;

LAB21:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 5440);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB20:
LAB12:    goto LAB9;

LAB11:    xsi_set_current_line(77, ng0);
    t8 = (t0 + 1992U);
    t9 = *((char **)t8);
    t8 = (t0 + 9088U);
    t10 = (t0 + 9184);
    t15 = (t19 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 0;
    t16 = (t15 + 4U);
    *((int *)t16) = 3;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t20 = (3 - 0);
    t13 = (t20 * 1);
    t13 = (t13 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t13;
    t4 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t9, t8, t10, t19);
    if (t4 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 9196);
    t5 = (t0 + 5248);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 9200);
    t5 = (t0 + 5312);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 9204);
    t5 = (t0 + 5376);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 5440);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB15:    goto LAB12;

LAB14:    xsi_set_current_line(78, ng0);
    t16 = (t0 + 9188);
    t18 = (t0 + 5312);
    t21 = (t18 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t16, 4U);
    xsi_driver_first_trans_fast(t18);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 9192);
    t5 = (t0 + 5248);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB15;

LAB17:    xsi_size_not_matching(4U, t25, 0);
    goto LAB18;

LAB19:    xsi_set_current_line(89, ng0);
    t23 = (t0 + 5440);
    t24 = (t23 + 56U);
    t31 = *((char **)t24);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    *((unsigned char *)t33) = (unsigned char)3;
    xsi_driver_first_trans_fast(t23);
    goto LAB20;

LAB22:    t16 = (t0 + 2312U);
    t17 = *((char **)t16);
    t16 = (t0 + 9120U);
    t18 = (t0 + 9216);
    t22 = (t28 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 0;
    t23 = (t22 + 4U);
    *((int *)t23) = 3;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t29 = (3 - 0);
    t13 = (t29 * 1);
    t13 = (t13 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t13;
    t30 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t17, t16, t18, t28);
    t3 = t30;
    goto LAB24;

LAB25:    t8 = (t0 + 2152U);
    t9 = *((char **)t8);
    t8 = (t0 + 9104U);
    t10 = (t0 + 9212);
    t15 = (t19 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 0;
    t16 = (t15 + 4U);
    *((int *)t16) = 3;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t20 = (3 - 0);
    t13 = (t20 * 1);
    t13 = (t13 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t13;
    t27 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t9, t8, t10, t19);
    t4 = t27;
    goto LAB27;

LAB28:    xsi_size_not_matching(4U, t25, 0);
    goto LAB29;

LAB30:    xsi_set_current_line(98, ng0);
    t23 = (t0 + 5440);
    t24 = (t23 + 56U);
    t31 = *((char **)t24);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    *((unsigned char *)t33) = (unsigned char)3;
    xsi_driver_first_trans_fast(t23);
    goto LAB31;

LAB33:    t16 = (t0 + 2312U);
    t17 = *((char **)t16);
    t16 = (t0 + 9120U);
    t18 = (t0 + 9228);
    t22 = (t28 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 0;
    t23 = (t22 + 4U);
    *((int *)t23) = 3;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t29 = (3 - 0);
    t13 = (t29 * 1);
    t13 = (t13 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t13;
    t30 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t17, t16, t18, t28);
    t3 = t30;
    goto LAB35;

LAB36:    t8 = (t0 + 2152U);
    t9 = *((char **)t8);
    t8 = (t0 + 9104U);
    t10 = (t0 + 9224);
    t15 = (t19 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 0;
    t16 = (t15 + 4U);
    *((int *)t16) = 3;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t20 = (3 - 0);
    t13 = (t20 * 1);
    t13 = (t13 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t13;
    t27 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t9, t8, t10, t19);
    t4 = t27;
    goto LAB38;

}

static void work_a_0559910600_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(107, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 5504);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5120);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0559910600_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(108, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 5568);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5136);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0559910600_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(109, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 5632);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5152);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0559910600_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(110, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5696);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5168);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0559910600_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0559910600_3212880686_p_0,(void *)work_a_0559910600_3212880686_p_1,(void *)work_a_0559910600_3212880686_p_2,(void *)work_a_0559910600_3212880686_p_3,(void *)work_a_0559910600_3212880686_p_4};
	xsi_register_didat("work_a_0559910600_3212880686", "isim/ktane_main_tb_isim_beh.exe.sim/work/a_0559910600_3212880686.didat");
	xsi_register_executes(pe);
}

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
static const char *ng0 = "C:/Xilinx/14.7/ISE_DS/simplecpu/rewritemodule.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );


static void work_a_0019893217_3212880686_p_0(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t29;
    int t31;
    char *t32;
    int t34;
    char *t35;
    int t37;
    char *t38;
    int t40;
    char *t41;
    int t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;

LAB0:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 6164U);
    t3 = (t0 + 6360);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (3 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3792);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(26, ng0);
    t7 = (t0 + 1672U);
    t11 = *((char **)t7);
    t9 = (15 - 15);
    t12 = (t9 * 1U);
    t13 = (0 + t12);
    t7 = (t11 + t13);
    t14 = (t0 + 6364);
    t16 = xsi_mem_cmp(t14, t7, 5U);
    if (t16 == 1)
        goto LAB6;

LAB17:    t17 = (t0 + 6369);
    t19 = xsi_mem_cmp(t17, t7, 5U);
    if (t19 == 1)
        goto LAB7;

LAB18:    t20 = (t0 + 6374);
    t22 = xsi_mem_cmp(t20, t7, 5U);
    if (t22 == 1)
        goto LAB8;

LAB19:    t23 = (t0 + 6379);
    t25 = xsi_mem_cmp(t23, t7, 5U);
    if (t25 == 1)
        goto LAB9;

LAB20:    t26 = (t0 + 6384);
    t28 = xsi_mem_cmp(t26, t7, 5U);
    if (t28 == 1)
        goto LAB10;

LAB21:    t29 = (t0 + 6389);
    t31 = xsi_mem_cmp(t29, t7, 5U);
    if (t31 == 1)
        goto LAB11;

LAB22:    t32 = (t0 + 6394);
    t34 = xsi_mem_cmp(t32, t7, 5U);
    if (t34 == 1)
        goto LAB12;

LAB23:    t35 = (t0 + 6399);
    t37 = xsi_mem_cmp(t35, t7, 5U);
    if (t37 == 1)
        goto LAB13;

LAB24:    t38 = (t0 + 6404);
    t40 = xsi_mem_cmp(t38, t7, 5U);
    if (t40 == 1)
        goto LAB14;

LAB25:    t41 = (t0 + 6409);
    t43 = xsi_mem_cmp(t41, t7, 5U);
    if (t43 == 1)
        goto LAB15;

LAB26:
LAB16:    xsi_set_current_line(83, ng0);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(28, ng0);
    t44 = (t0 + 1352U);
    t45 = *((char **)t44);
    t44 = (t0 + 3872);
    t46 = (t44 + 56U);
    t47 = *((char **)t46);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    memcpy(t49, t45, 16U);
    xsi_driver_first_trans_fast_port(t44);
    xsi_set_current_line(29, ng0);
    t1 = (t0 + 3936);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB7:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 6212U);
    t3 = (t0 + 6414);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 7;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (7 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB28;

LAB30:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6180U);
    t3 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t5, t2, t1, (unsigned char)3);
    t4 = (t5 + 12U);
    t9 = *((unsigned int *)t4);
    t12 = (1U * t9);
    t10 = (16U != t12);
    if (t10 == 1)
        goto LAB31;

LAB32:    t6 = (t0 + 3872);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t3, 16U);
    xsi_driver_first_trans_fast_port(t6);

LAB29:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 3936);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB8:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6180U);
    t3 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t5, t2, t1, (unsigned char)3);
    t4 = (t5 + 12U);
    t9 = *((unsigned int *)t4);
    t12 = (1U * t9);
    t10 = (16U != t12);
    if (t10 == 1)
        goto LAB33;

LAB34:    t6 = (t0 + 3872);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t3, 16U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(41, ng0);
    t1 = (t0 + 3936);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t9 = (15 - 10);
    t12 = (t9 * 1U);
    t13 = (0 + t12);
    t1 = (t2 + t13);
    t3 = (t0 + 4000);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 4064);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB9:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6180U);
    t3 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t5, t2, t1, (unsigned char)3);
    t4 = (t5 + 12U);
    t9 = *((unsigned int *)t4);
    t12 = (1U * t9);
    t10 = (16U != t12);
    if (t10 == 1)
        goto LAB35;

LAB36:    t6 = (t0 + 3872);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t3, 16U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 3936);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t9 = (15 - 10);
    t12 = (t9 * 1U);
    t13 = (0 + t12);
    t1 = (t2 + t13);
    t3 = (t0 + 4000);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 4064);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB10:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6180U);
    t3 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t5, t2, t1, (unsigned char)3);
    t4 = (t5 + 12U);
    t9 = *((unsigned int *)t4);
    t12 = (1U * t9);
    t10 = (16U != t12);
    if (t10 == 1)
        goto LAB37;

LAB38:    t6 = (t0 + 3872);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t3, 16U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 3936);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t9 = (15 - 10);
    t12 = (t9 * 1U);
    t13 = (0 + t12);
    t1 = (t2 + t13);
    t3 = (t0 + 4000);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 4064);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB11:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6180U);
    t3 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t5, t2, t1, (unsigned char)3);
    t4 = (t5 + 12U);
    t9 = *((unsigned int *)t4);
    t12 = (1U * t9);
    t10 = (16U != t12);
    if (t10 == 1)
        goto LAB39;

LAB40:    t6 = (t0 + 3872);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t3, 16U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 3936);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t9 = (15 - 10);
    t12 = (t9 * 1U);
    t13 = (0 + t12);
    t1 = (t2 + t13);
    t3 = (t0 + 4000);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 4064);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB12:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6180U);
    t3 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t5, t2, t1, (unsigned char)3);
    t4 = (t5 + 12U);
    t9 = *((unsigned int *)t4);
    t12 = (1U * t9);
    t10 = (16U != t12);
    if (t10 == 1)
        goto LAB41;

LAB42:    t6 = (t0 + 3872);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t3, 16U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(65, ng0);
    t1 = (t0 + 3936);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB13:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6180U);
    t3 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t5, t2, t1, (unsigned char)3);
    t4 = (t5 + 12U);
    t9 = *((unsigned int *)t4);
    t12 = (1U * t9);
    t10 = (16U != t12);
    if (t10 == 1)
        goto LAB43;

LAB44:    t6 = (t0 + 3872);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t3, 16U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(69, ng0);
    t1 = (t0 + 3936);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t9 = (15 - 10);
    t12 = (t9 * 1U);
    t13 = (0 + t12);
    t1 = (t2 + t13);
    t3 = (t0 + 4000);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 4064);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB14:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6180U);
    t3 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t5, t2, t1, (unsigned char)3);
    t4 = (t5 + 12U);
    t9 = *((unsigned int *)t4);
    t12 = (1U * t9);
    t10 = (16U != t12);
    if (t10 == 1)
        goto LAB45;

LAB46:    t6 = (t0 + 3872);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t3, 16U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 3936);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t9 = (15 - 10);
    t12 = (t9 * 1U);
    t13 = (0 + t12);
    t1 = (t2 + t13);
    t3 = (t0 + 4000);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 4064);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB15:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 6180U);
    t3 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t5, t2, t1, (unsigned char)3);
    t4 = (t5 + 12U);
    t9 = *((unsigned int *)t4);
    t12 = (1U * t9);
    t10 = (16U != t12);
    if (t10 == 1)
        goto LAB47;

LAB48:    t6 = (t0 + 3872);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t14 = (t11 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t3, 16U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 3936);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB5;

LAB27:;
LAB28:    xsi_set_current_line(33, ng0);
    t7 = (t0 + 1352U);
    t11 = *((char **)t7);
    t7 = (t0 + 3872);
    t14 = (t7 + 56U);
    t15 = *((char **)t14);
    t17 = (t15 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t11, 16U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB29;

LAB31:    xsi_size_not_matching(16U, t12, 0);
    goto LAB32;

LAB33:    xsi_size_not_matching(16U, t12, 0);
    goto LAB34;

LAB35:    xsi_size_not_matching(16U, t12, 0);
    goto LAB36;

LAB37:    xsi_size_not_matching(16U, t12, 0);
    goto LAB38;

LAB39:    xsi_size_not_matching(16U, t12, 0);
    goto LAB40;

LAB41:    xsi_size_not_matching(16U, t12, 0);
    goto LAB42;

LAB43:    xsi_size_not_matching(16U, t12, 0);
    goto LAB44;

LAB45:    xsi_size_not_matching(16U, t12, 0);
    goto LAB46;

LAB47:    xsi_size_not_matching(16U, t12, 0);
    goto LAB48;

}


extern void work_a_0019893217_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0019893217_3212880686_p_0};
	xsi_register_didat("work_a_0019893217_3212880686", "isim/cpuwave_isim_beh.exe.sim/work/a_0019893217_3212880686.didat");
	xsi_register_executes(pe);
}

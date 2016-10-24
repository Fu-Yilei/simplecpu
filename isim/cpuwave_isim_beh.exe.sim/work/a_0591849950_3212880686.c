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
static const char *ng0 = "C:/Xilinx/14.7/ISE_DS/simplecpu/clockmodule.vhd";



static void work_a_0591849950_3212880686_p_0(char *t0)
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
    char *t10;
    unsigned char t11;
    unsigned char t12;
    int t13;
    int t14;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(20, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t11 = (t4 == (unsigned char)3);
    if (t11 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3240);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(21, ng0);
    t1 = (t0 + 5178);
    t6 = (t0 + 3336);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(23, ng0);
    t5 = (t0 + 1512U);
    t6 = *((char **)t5);
    t5 = (t0 + 5182);
    t13 = xsi_mem_cmp(t5, t6, 4U);
    if (t13 == 1)
        goto LAB11;

LAB16:    t8 = (t0 + 5186);
    t14 = xsi_mem_cmp(t8, t6, 4U);
    if (t14 == 1)
        goto LAB11;

LAB17:    t10 = (t0 + 5190);
    t16 = xsi_mem_cmp(t10, t6, 4U);
    if (t16 == 1)
        goto LAB12;

LAB18:    t17 = (t0 + 5194);
    t19 = xsi_mem_cmp(t17, t6, 4U);
    if (t19 == 1)
        goto LAB13;

LAB19:    t20 = (t0 + 5198);
    t22 = xsi_mem_cmp(t20, t6, 4U);
    if (t22 == 1)
        goto LAB14;

LAB20:
LAB15:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 5218);
    t5 = (t0 + 3336);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);

LAB10:    goto LAB3;

LAB7:    t1 = (t0 + 992U);
    t12 = xsi_signal_has_event(t1);
    t3 = t12;
    goto LAB9;

LAB11:    xsi_set_current_line(25, ng0);
    t23 = (t0 + 5202);
    t25 = (t0 + 3336);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t23, 4U);
    xsi_driver_first_trans_fast(t25);
    goto LAB10;

LAB12:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 5206);
    t5 = (t0 + 3336);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB10;

LAB13:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 5210);
    t5 = (t0 + 3336);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB10;

LAB14:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 5214);
    t5 = (t0 + 3336);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB10;

LAB21:;
}

static void work_a_0591849950_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(37, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 3400);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3256);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0591849950_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0591849950_3212880686_p_0,(void *)work_a_0591849950_3212880686_p_1};
	xsi_register_didat("work_a_0591849950_3212880686", "isim/cpuwave_isim_beh.exe.sim/work/a_0591849950_3212880686.didat");
	xsi_register_executes(pe);
}

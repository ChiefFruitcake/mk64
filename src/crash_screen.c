#include <ultra64.h>
#include <macros.h>
#include "types.h"

/*void *__osGetCurrFaultedThread(); // extern
? osCreateMesgQueue(? *, ? *, ?); // extern
? osCreateThread(? *, ?, void (*)(s32 arg0), ?, ? *, s32); // extern
? osRecvMesg(? *, ? *, ?); // extern
? osSetEventMesg(?, ? *, ?); // extern
? osStartThread(? *); // extern
? osViSwapBuffer(s32); // extern
? osWritebackDCacheAll(s32, s32, s16, s16); // extern
? read_controllers(); // extern
void crash_screen_draw_info(uint_ptr arg0, void *arg1); // static
void crash_screen_draw_square(uint_ptr arg0); // static
void create_debug_thread(); // static
void func_800040C0(s32 arg0, s32 arg1, s32 arg2, u32 arg3); // static
void crash_screen_set_framebuffer(s32 arg0); // static
void *get_faulted_thread(); // static
void start_debug_thread(); // static
void thread9_crash_screen(s32 arg0); // static
extern void *gControllerOne;
extern s32 D_800DC670;

extern ? D_800DC6FC;
extern ? D_80162790;
extern ? D_80162D40;
extern ? D_80162D58;
extern uintptr_t pFramebuffer;
extern s32 D_80162D60;
extern void *D_80162D64;
*/



OSThread D_80162790;
ALIGNED8 u8 gDebugThreadStack[0x400];
OSMesgQueue D_80162D40;
OSMesg D_80162D58;
uintptr_t pFramebuffer;
s32 D_80162D60;
void *D_80162D64;

extern void osSetEventMesg(OSEvent, OSMesgQueue *, OSMesg);
extern s32 osRecvMesg(OSMesgQueue *, OSMesg *, s32);
extern void read_controllers();

extern struct Controller *gControllerOne;


u32 D_800DC670 = 0;

u8 crashScreenFont[][8] = {
    #include "textures/crash_screen/crash_screen_font.ia1.inc.c"
};

u16 D_800DC6FC[10] = {
    32, 2048, 512, 1024, 256, 16, 32, 16384, 32768, 65535
 // 0x0020, 0x0800, 0x0200, 0x0400, 0x0100, 0x0010, 0x0020, 0x4000, 0x8000, 0xffff
};

void crash_screen_draw_glyph(u16 *framebuffer, s32 x, s32 y, s32 glyph) {
    s32 data;
    s32 ptr;
    s32 i, j;

    for(i = 0; i < 8; i++) {

        data = crashScreenFont[glyph][i];

        for (j = 5; j >= 0; j--) {

            ptr = (y + i) * 320 + (x + j);

            if (data & 1) {
                framebuffer[ptr] = 0xffff;
            }
            data = data >> 1;
        }
    }
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? osViSwapBuffer(s32);                              /* extern */
? osWritebackDCacheAll(s32, s32, s16, s16);         /* extern */

void crash_screen_draw_square(s32 arg0, s32 arg1) {
    s32 temp_a0;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_ra;
    s32 temp_s0;
    s32 temp_s1;
    s32 temp_t0;
    s32 temp_v1;
    s32 phi_s2;
    s32 phi_s0;
    s16 *phi_v0;
    s32 phi_v1;
    void *phi_v0_2;
    s32 phi_a1;
    s32 phi_s1;
    s32 phi_a0;
    s32 phi_a1_2;
    s32 phi_v1_2;
    s32 phi_a0_2;
    s32 phi_a0_3;
    s32 phi_a1_3;
    s32 phi_a1_4;

    phi_s2 = 0x28;
    phi_s0 = 0x2E;
    phi_a0_2 = arg0;
    phi_a1_3 = arg1;
    do {
        phi_s1 = phi_s2;
        phi_a0 = phi_a0_2;
        phi_a1_2 = phi_a1_3;
        phi_a0_3 = phi_a0_2;
        phi_a1_4 = phi_a1_3;
        if (phi_s2 < phi_s0) {
            do {
                phi_v1 = phi_s2;
                phi_v1_2 = phi_s2;
                if (phi_s2 < phi_s0) {
                    temp_a0 = phi_s0 - phi_s2;
                    temp_t0 = temp_a0 & 3;
                    temp_ra = arg0 + (phi_s1 * 0x280);
                    phi_a0_3 = temp_a0;
                    if (temp_t0 != 0) {
                        phi_v0 = temp_ra + (phi_s2 * 2);
                        do {
                            temp_v1 = phi_v1 + 1;
                            phi_v1 = temp_v1;
                            phi_v1_2 = temp_v1;
                            if (temp_a0 == 6) {
                                *phi_v0 = 0xF801;
                            } else {
                                *phi_v0 = 0xFFFF;
                            }
                            phi_v0 += 2;
                        } while ((temp_t0 + phi_s2) != temp_v1);
                        phi_a1_4 = temp_v1 * 2;
                        if (temp_v1 != phi_s0) {
                            goto block_10;
                        }
                    } else {
block_10:
                        temp_a1 = phi_v1_2 * 2;
                        phi_v0_2 = temp_ra + temp_a1;
                        phi_a1 = temp_a1;
                        do {
                            temp_a1_2 = phi_a1 + 8;
                            phi_a1 = temp_a1_2;
                            phi_a1_4 = temp_a1_2;
                            if (temp_a0 == 6) {
                                phi_v0_2->unk0 = 0xF801;
                            } else {
                                phi_v0_2->unk0 = 0xFFFF;
                            }
                            if (temp_a0 == 6) {
                                phi_v0_2->unk2 = 0xF801;
                            } else {
                                phi_v0_2->unk2 = 0xFFFF;
                            }
                            if (temp_a0 == 6) {
                                phi_v0_2->unk4 = 0xF801;
                            } else {
                                phi_v0_2->unk4 = 0xFFFF;
                            }
                            if (temp_a0 == 6) {
                                phi_v0_2->unk6 = 0xF801;
                            } else {
                                phi_v0_2->unk6 = 0xFFFF;
                            }
                            phi_v0_2 += 8;
                        } while (temp_a1_2 != (phi_s0 * 2));
                    }
                }
                temp_s1 = phi_s1 + 1;
                phi_s1 = temp_s1;
                phi_a0 = phi_a0_3;
                phi_a1_2 = phi_a1_4;
            } while (temp_s1 != phi_s0);
        }
        temp_s0 = phi_s0 - 1;
        phi_s2 += 1;
        phi_s0 = temp_s0;
        phi_a0_2 = phi_a0;
        phi_a1_3 = phi_a1_2;
    } while (temp_s0 != 0x2C);
    osWritebackDCacheAll(phi_a0, phi_a1_2, 0xF801, 0xFFFF);
    osViSwapBuffer(arg0);
}
#else
GLOBAL_ASM("asm/non_matchings/crash_screen/crash_screen_draw_square.s")
#endif

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909
? crash_screen_draw_glyph(s32, s32, s32, u32);      /* extern */
? osViSwapBuffer(s32);                              /* extern */
? osWritebackDCacheAll();                           /* extern */
extern s32 D_800DC670;

void crash_screen_draw_info(s32 arg0, void *arg1) {
    s32 temp_a2;
    s32 temp_s0;
    s32 temp_s1;
    s32 temp_s1_3;
    s32 temp_s1_4;
    s32 temp_t0;
    s32 temp_v1;
    u32 temp_s1_2;
    u32 temp_t3;
    u32 temp_t4;
    void *temp_s2;
    void *temp_v0;
    void *phi_v0;
    s32 phi_v1;
    s32 phi_a2;
    s32 phi_t0;
    s32 phi_s1;
    u32 phi_s4;
    s32 phi_s1_2;
    u32 phi_s4_2;
    s32 phi_s1_3;
    u32 phi_s4_3;
    void *phi_a3;

    phi_t0 = 0;
    do {
        phi_a2 = 0;
        phi_a3 = arg0 + (((D_800DC670 * 0x18) + phi_t0 + 0x30) * 0x280);
loop_2:
        phi_v0 = phi_a3;
        phi_v1 = 0;
loop_3:
        temp_v1 = phi_v1 + 4;
        phi_v0->unkCA = 1;
        phi_v0->unkCC = 1;
        phi_v0->unkCE = 1;
        temp_v0 = phi_v0 + 8;
        temp_v0->unkC0 = 1;
        phi_v0 = temp_v0;
        phi_v1 = temp_v1;
        if (temp_v1 != 0x78) {
            goto loop_3;
        }
        temp_a2 = phi_a2 + 1;
        phi_a2 = temp_a2;
        phi_a3 += 0x280;
        if (temp_a2 < 0x10) {
            goto loop_2;
        }
        temp_t0 = phi_t0 + 0x14;
        phi_t0 = temp_t0;
    } while (temp_t0 < 0x3C);
    temp_s0 = (D_800DC670 * 0x18) + 0x35;
    crash_screen_draw_glyph(arg0, 0x6C, temp_s0, arg1->unk14 & 0xF);
    crash_screen_draw_glyph(arg0, 0x74, temp_s0, 0x10);
    temp_s2 = arg1 + 0x20;
    phi_s1 = 0xB4;
    phi_s4 = temp_s2->unkFC;
    phi_s1_2 = 0xB4;
    phi_s1_3 = 0xB4;
    do {
        crash_screen_draw_glyph(arg0, phi_s1, temp_s0, phi_s4 & 0xF);
        temp_s1 = phi_s1 - 8;
        phi_s1 = temp_s1;
        phi_s4 = phi_s4 >> 4;
    } while (temp_s1 >= 0x7C);
    temp_s1_2 = (temp_s2->unk100 >> 2) & 0x1F;
    crash_screen_draw_glyph(arg0, 0xBC, temp_s0, 0x10);
    crash_screen_draw_glyph(arg0, 0xC4, temp_s0, temp_s1_2 >> 4);
    crash_screen_draw_glyph(arg0, 0xCC, temp_s0, temp_s1_2 & 0xF);
    phi_s4_2 = temp_s2->unkE4;
    do {
        crash_screen_draw_glyph(arg0, phi_s1_2, 0x49, phi_s4_2 & 0xF);
        temp_s1_3 = phi_s1_2 - 8;
        temp_t3 = phi_s4_2 >> 4;
        phi_s1_2 = temp_s1_3;
        phi_s4_2 = temp_t3;
        phi_s4_3 = temp_t3;
    } while (temp_s1_3 >= 0x7C);
    temp_t4 = temp_s2->unkFC & ~3;
    if ((temp_t4 >= 0x80000001) && (temp_t4 < 0x803FFF7F)) {
        phi_s4_3 = *temp_t4;
    }
    do {
        crash_screen_draw_glyph(arg0, phi_s1_3, 0x5D, phi_s4_3 & 0xF);
        temp_s1_4 = phi_s1_3 - 8;
        phi_s1_3 = temp_s1_4;
        phi_s4_3 = phi_s4_3 >> 4;
    } while (temp_s1_4 >= 0x7C);
    osWritebackDCacheAll();
    osViSwapBuffer(arg0);
}
#else
GLOBAL_ASM("asm/non_matchings/crash_screen/crash_screen_draw_info.s")
#endif

OSThread *get_faulted_thread(void) {
    OSThread *thread;

    thread = __osGetCurrFaultedThread();
    while (thread->priority != -1) {
        if (thread->priority > OS_PRIORITY_IDLE && thread->priority <= OS_PRIORITY_APPMAX
            && (thread->flags & 3) != 0) {
            return thread;
        }
        thread = thread->tlnext;
    }
    return NULL;
}

#ifdef MIPS_TO_C
//generated by mips_to_c commit bd0364fa19633bd6201f8007e2d0a7ed87825909

//OSThread *get_faulted_thread();
void crash_screen_draw_square(s32, void*);
void crash_screen_draw_info(s32, void*);

void thread9_crash_screen(UNUSED s32 arg0) {
    OSMesg mesg;
    OSThread *thread;
    //s32 pad[2];
    u16 temp_v0_2;

    osSetEventMesg(OS_EVENT_FAULT, &D_80162D40, (OSMesg) 16);
    osSetEventMesg(OS_EVENT_CPU_BREAK, &D_80162D40, (OSMesg) 16);
    D_80162D60 = 0;
        loop_1:
    do {
    do {
        osRecvMesg(&D_80162D40, &mesg, 1);
        thread = get_faulted_thread();
    } while (thread == NULL);

    if (D_800DC670 == 0) {
        crash_screen_draw_square(pFramebuffer, D_80162D64);
        do {
        //temp_v0_2 = gControllerOne->buttonPressed;
    //loop_4:
            do {
                read_controllers();
            }
            while (temp_v0_2 == 0);
            //if (temp_v0_2 == 0) {
                //goto loop_4;
            //}
            //temp_v1 = D_80162D60;
        //} while (thread == NULL);
            if (temp_v0_2 == D_800DC6FC[D_80162D60]) {
                D_80162D60++;
            } else {
                D_80162D60 = 0;
            }
        } while (D_800DC6FC[D_80162D60] != 0xFFFF);
        crash_screen_draw_info(pFramebuffer, D_80162D64);
    }
} while (D_800DC670 >= 5);
    D_800DC670++;
    goto loop_1;
    /*
    ? sp44;
    s32 temp_v0;
    s32 temp_v1;
    u16 temp_v0_2;

    osSetEventMesg(0xC, &D_80162D40, 0x10);
    osSetEventMesg(0xA, &D_80162D40, 0x10);
    D_80162D60 = 0;
loop_1:
    osRecvMesg(&D_80162D40, &sp44, 1);
    temp_v0 = get_faulted_thread();
    D_80162D64 = temp_v0;
    if (temp_v0 == 0) {
        goto loop_1;
    }
    if (D_800DC670 == 0) {
        crash_screen_draw_square(pFramebuffer);
        do {
loop_4:
            read_controllers();
            temp_v0_2 = gControllerOne->unk6;
            if (temp_v0_2 == 0) {
                goto loop_4;
            }
            temp_v1 = D_80162D60;
            if (temp_v0_2 == *(&D_800DC6FC + (temp_v1 * 2))) {
                D_80162D60 = temp_v1 + 1;
            } else {
                D_80162D60 = 0;
            }
        } while (*(&D_800DC6FC + (D_80162D60 * 2)) != 0xFFFF);
        crash_screen_draw_info(pFramebuffer, D_80162D64);
    }
    if (D_800DC670 >= 5) {
        goto loop_1;
    }
    D_800DC670 += 1;
    goto loop_1;
    */
}
#else
GLOBAL_ASM("asm/non_matchings/crash_screen/thread9_crash_screen.s")
#endif

void crash_screen_set_framebuffer(s32 arg0) {
    pFramebuffer = arg0;
}

extern void thread9_crash_screen();

void create_debug_thread(void) {
    osCreateMesgQueue(&D_80162D40, &D_80162D58, 1);
    osCreateThread((OSThread *) &D_80162790, 9, (void *)thread9_crash_screen, 0, &D_80162D40, 0x7F);
}

void start_debug_thread(void) {
    osStartThread(&D_80162790);
}

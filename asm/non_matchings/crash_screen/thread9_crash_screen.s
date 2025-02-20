glabel thread9_crash_screen
/* 005130 80004530 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 005134 80004534 AFB70030 */  sw    $s7, 0x30($sp)
/* 005138 80004538 3C178016 */  lui   $s7, %hi(D_80162D40) # $s7, 0x8016
/* 00513C 8000453C 26F72D40 */  addiu $s7, %lo(D_80162D40) # addiu $s7, $s7, 0x2d40
/* 005140 80004540 AFBF0034 */  sw    $ra, 0x34($sp)
/* 005144 80004544 AFA40048 */  sw    $a0, 0x48($sp)
/* 005148 80004548 AFB6002C */  sw    $s6, 0x2c($sp)
/* 00514C 8000454C AFB50028 */  sw    $s5, 0x28($sp)
/* 005150 80004550 AFB40024 */  sw    $s4, 0x24($sp)
/* 005154 80004554 AFB30020 */  sw    $s3, 0x20($sp)
/* 005158 80004558 AFB2001C */  sw    $s2, 0x1c($sp)
/* 00515C 8000455C AFB10018 */  sw    $s1, 0x18($sp)
/* 005160 80004560 AFB00014 */  sw    $s0, 0x14($sp)
/* 005164 80004564 2404000C */  li    $a0, 12
/* 005168 80004568 02E02825 */  move  $a1, $s7
/* 00516C 8000456C 0C033380 */  jal   osSetEventMesg
/* 005170 80004570 24060010 */   li    $a2, 16
/* 005174 80004574 2404000A */  li    $a0, 10
/* 005178 80004578 02E02825 */  move  $a1, $s7
/* 00517C 8000457C 0C033380 */  jal   osSetEventMesg
/* 005180 80004580 24060010 */   li    $a2, 16
/* 005184 80004584 3C108016 */  lui   $s0, %hi(D_80162D60) # $s0, 0x8016
/* 005188 80004588 26102D60 */  addiu $s0, %lo(D_80162D60) # addiu $s0, $s0, 0x2d60
/* 00518C 8000458C 3C158016 */  lui   $s5, %hi(pFramebuffer) # $s5, 0x8016
/* 005190 80004590 3C14800E */  lui   $s4, %hi(D_800DC670) # $s4, 0x800e
/* 005194 80004594 3C12800E */  lui   $s2, %hi(gControllerOne) # $s2, 0x800e
/* 005198 80004598 3C11800E */  lui   $s1, %hi(D_800DC6FC) # $s1, 0x800e
/* 00519C 8000459C AE000000 */  sw    $zero, ($s0)
/* 0051A0 800045A0 2631C6FC */  addiu $s1, %lo(D_800DC6FC) # addiu $s1, $s1, -0x3904
/* 0051A4 800045A4 2652C4BC */  addiu $s2, %lo(gControllerOne) # addiu $s2, $s2, -0x3b44
/* 0051A8 800045A8 2694C670 */  addiu $s4, %lo(D_800DC670) # addiu $s4, $s4, -0x3990
/* 0051AC 800045AC 26B52D5C */  addiu $s5, %lo(pFramebuffer) # addiu $s5, $s5, 0x2d5c
/* 0051B0 800045B0 27B60044 */  addiu $s6, $sp, 0x44
/* 0051B4 800045B4 3413FFFF */  li    $s3, 65535
.L800045B8:
/* 0051B8 800045B8 02E02025 */  move  $a0, $s7
.L800045BC:
/* 0051BC 800045BC 02C02825 */  move  $a1, $s6
/* 0051C0 800045C0 0C0335D4 */  jal   osRecvMesg
/* 0051C4 800045C4 24060001 */   li    $a2, 1
/* 0051C8 800045C8 0C001131 */  jal   get_faulted_thread
/* 0051CC 800045CC 00000000 */   nop
/* 0051D0 800045D0 3C018016 */  lui   $at, %hi(D_80162D64) # $at, 0x8016
/* 0051D4 800045D4 1040FFF8 */  beqz  $v0, .L800045B8
/* 0051D8 800045D8 AC222D64 */   sw    $v0, %lo(D_80162D64)($at)
/* 0051DC 800045DC 8E820000 */  lw    $v0, ($s4)
/* 0051E0 800045E0 5440001F */  bnel  $v0, $zero, .L80004660
/* 0051E4 800045E4 28410005 */   slti  $at, $v0, 5
/* 0051E8 800045E8 0C001051 */  jal   crash_screen_draw_square
/* 0051EC 800045EC 8EA40000 */   lw    $a0, ($s5)
.L800045F0:
/* 0051F0 800045F0 0C00028A */  jal   read_controllers
/* 0051F4 800045F4 00000000 */   nop
/* 0051F8 800045F8 8E4E0000 */  lw    $t6, ($s2)
/* 0051FC 800045FC 95C20006 */  lhu   $v0, 6($t6)
/* 005200 80004600 1040FFFB */  beqz  $v0, .L800045F0
/* 005204 80004604 00000000 */   nop
/* 005208 80004608 8E030000 */  lw    $v1, ($s0)
/* 00520C 8000460C 00037840 */  sll   $t7, $v1, 1
/* 005210 80004610 022FC021 */  addu  $t8, $s1, $t7
/* 005214 80004614 97190000 */  lhu   $t9, ($t8)
/* 005218 80004618 24680001 */  addiu $t0, $v1, 1
/* 00521C 8000461C 54590004 */  bnel  $v0, $t9, .L80004630
/* 005220 80004620 AE000000 */   sw    $zero, ($s0)
/* 005224 80004624 10000002 */  b     .L80004630
/* 005228 80004628 AE080000 */   sw    $t0, ($s0)
/* 00522C 8000462C AE000000 */  sw    $zero, ($s0)
.L80004630:
/* 005230 80004630 8E090000 */  lw    $t1, ($s0)
/* 005234 80004634 00095040 */  sll   $t2, $t1, 1
/* 005238 80004638 022A5821 */  addu  $t3, $s1, $t2
/* 00523C 8000463C 956C0000 */  lhu   $t4, ($t3)
/* 005240 80004640 166CFFEB */  bne   $s3, $t4, .L800045F0
/* 005244 80004644 00000000 */   nop
/* 005248 80004648 3C058016 */  lui   $a1, %hi(D_80162D64) # $a1, 0x8016
/* 00524C 8000464C 8CA52D64 */  lw    $a1, %lo(D_80162D64)($a1)
/* 005250 80004650 0C0010A6 */  jal   crash_screen_draw_info
/* 005254 80004654 8EA40000 */   lw    $a0, ($s5)
/* 005258 80004658 8E820000 */  lw    $v0, ($s4)
/* 00525C 8000465C 28410005 */  slti  $at, $v0, 5
.L80004660:
/* 005260 80004660 5020FFD6 */  beql  $at, $zero, .L800045BC
/* 005264 80004664 02E02025 */   move  $a0, $s7
/* 005268 80004668 244D0001 */  addiu $t5, $v0, 1
/* 00526C 8000466C 1000FFD2 */  b     .L800045B8
/* 005270 80004670 AE8D0000 */   sw    $t5, ($s4)
/* 005274 80004674 00000000 */  nop
/* 005278 80004678 00000000 */  nop
/* 00527C 8000467C 00000000 */  nop
/* 005280 80004680 8FBF0034 */  lw    $ra, 0x34($sp)
/* 005284 80004684 8FB00014 */  lw    $s0, 0x14($sp)
/* 005288 80004688 8FB10018 */  lw    $s1, 0x18($sp)
/* 00528C 8000468C 8FB2001C */  lw    $s2, 0x1c($sp)
/* 005290 80004690 8FB30020 */  lw    $s3, 0x20($sp)
/* 005294 80004694 8FB40024 */  lw    $s4, 0x24($sp)
/* 005298 80004698 8FB50028 */  lw    $s5, 0x28($sp)
/* 00529C 8000469C 8FB6002C */  lw    $s6, 0x2c($sp)
/* 0052A0 800046A0 8FB70030 */  lw    $s7, 0x30($sp)
/* 0052A4 800046A4 03E00008 */  jr    $ra
/* 0052A8 800046A8 27BD0048 */   addiu $sp, $sp, 0x48

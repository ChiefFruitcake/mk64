glabel func_80075304
/* 075F04 80075304 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 075F08 80075308 AFB3002C */  sw    $s3, 0x2c($sp)
/* 075F0C 8007530C AFB20028 */  sw    $s2, 0x28($sp)
/* 075F10 80075310 AFB10024 */  sw    $s1, 0x24($sp)
/* 075F14 80075314 00A09025 */  move  $s2, $a1
/* 075F18 80075318 00E09825 */  move  $s3, $a3
/* 075F1C 8007531C AFBF0044 */  sw    $ra, 0x44($sp)
/* 075F20 80075320 AFBE0040 */  sw    $fp, 0x40($sp)
/* 075F24 80075324 AFB7003C */  sw    $s7, 0x3c($sp)
/* 075F28 80075328 AFB60038 */  sw    $s6, 0x38($sp)
/* 075F2C 8007532C AFB50034 */  sw    $s5, 0x34($sp)
/* 075F30 80075330 AFB40030 */  sw    $s4, 0x30($sp)
/* 075F34 80075334 AFB00020 */  sw    $s0, 0x20($sp)
/* 075F38 80075338 AFA40050 */  sw    $a0, 0x50($sp)
/* 075F3C 8007533C AFA60058 */  sw    $a2, 0x58($sp)
/* 075F40 80075340 18E0002E */  blez  $a3, .L800753FC
/* 075F44 80075344 00008825 */   move  $s1, $zero
/* 075F48 80075348 3C1E8019 */  lui   $fp, %hi(D_8018C630) # $fp, 0x8019
/* 075F4C 8007534C 27DEC630 */  addiu $fp, %lo(D_8018C630) # addiu $fp, $fp, -0x39d0
/* 075F50 80075350 2417FFFF */  li    $s7, -1
/* 075F54 80075354 24160003 */  li    $s6, 3
/* 075F58 80075358 24150002 */  li    $s5, 2
/* 075F5C 8007535C 24140001 */  li    $s4, 1
/* 075F60 80075360 8FB00048 */  lw    $s0, 0x48($sp)
.L80075364:
/* 075F64 80075364 12540007 */  beq   $s2, $s4, .L80075384
/* 075F68 80075368 3C048019 */   lui   $a0, %hi(D_8018C1B0) # 0x8019
/* 075F6C 8007536C 1255000C */  beq   $s2, $s5, .L800753A0
/* 075F70 80075370 3C048019 */   lui   $a0, %hi(D_8018C3F0) # $a0, 0x8019
/* 075F74 80075374 12560011 */  beq   $s2, $s6, .L800753BC
/* 075F78 80075378 03C02025 */   move  $a0, $fp
/* 075F7C 8007537C 10000014 */  b     .L800753D0
/* 075F80 80075380 00000000 */   nop   
.L80075384:
/* 075F84 80075384 3C058018 */  lui   $a1, %hi(D_80183E38) # $a1, 0x8018
/* 075F88 80075388 24A53E38 */  addiu $a1, %lo(D_80183E38) # addiu $a1, $a1, 0x3e38
/* 075F8C 8007538C 2484C1B0 */  addiu $a0, %lo(D_8018C1B0) # addiu $a0, $a0, -0x3e50
/* 075F90 80075390 0C01C811 */  jal   func_80072044
/* 075F94 80075394 24060080 */   li    $a2, 128
/* 075F98 80075398 1000000D */  b     .L800753D0
/* 075F9C 8007539C 00408025 */   move  $s0, $v0
.L800753A0:
/* 075FA0 800753A0 3C058018 */  lui   $a1, %hi(D_80183E4C) # $a1, 0x8018
/* 075FA4 800753A4 24A53E4C */  addiu $a1, %lo(D_80183E4C) # addiu $a1, $a1, 0x3e4c
/* 075FA8 800753A8 2484C3F0 */  addiu $a0, $a0, %lo(D_8018C3F0) # -0x3c10
/* 075FAC 800753AC 0C01C811 */  jal   func_80072044
/* 075FB0 800753B0 24060080 */   li    $a2, 128
/* 075FB4 800753B4 10000006 */  b     .L800753D0
/* 075FB8 800753B8 00408025 */   move  $s0, $v0
.L800753BC:
/* 075FBC 800753BC 3C058018 */  lui   $a1, %hi(D_80183E5C) # $a1, 0x8018
/* 075FC0 800753C0 24A53E5C */  addiu $a1, %lo(D_80183E5C) # addiu $a1, $a1, 0x3e5c
/* 075FC4 800753C4 0C01C811 */  jal   func_80072044
/* 075FC8 800753C8 24060080 */   li    $a2, 128
/* 075FCC 800753CC 00408025 */  move  $s0, $v0
.L800753D0:
/* 075FD0 800753D0 1217000A */  beq   $s0, $s7, .L800753FC
/* 075FD4 800753D4 02002025 */   move  $a0, $s0
/* 075FD8 800753D8 02202825 */  move  $a1, $s1
/* 075FDC 800753DC 8FA60050 */  lw    $a2, 0x50($sp)
/* 075FE0 800753E0 8FA70058 */  lw    $a3, 0x58($sp)
/* 075FE4 800753E4 0C01D436 */  jal   func_800750D8
/* 075FE8 800753E8 AFB30010 */   sw    $s3, 0x10($sp)
/* 075FEC 800753EC 26310001 */  addiu $s1, $s1, 1
/* 075FF0 800753F0 1633FFDC */  bne   $s1, $s3, .L80075364
/* 075FF4 800753F4 00000000 */   nop   
/* 075FF8 800753F8 AFB00048 */  sw    $s0, 0x48($sp)
.L800753FC:
/* 075FFC 800753FC 8FBF0044 */  lw    $ra, 0x44($sp)
/* 076000 80075400 8FB00020 */  lw    $s0, 0x20($sp)
/* 076004 80075404 8FB10024 */  lw    $s1, 0x24($sp)
/* 076008 80075408 8FB20028 */  lw    $s2, 0x28($sp)
/* 07600C 8007540C 8FB3002C */  lw    $s3, 0x2c($sp)
/* 076010 80075410 8FB40030 */  lw    $s4, 0x30($sp)
/* 076014 80075414 8FB50034 */  lw    $s5, 0x34($sp)
/* 076018 80075418 8FB60038 */  lw    $s6, 0x38($sp)
/* 07601C 8007541C 8FB7003C */  lw    $s7, 0x3c($sp)
/* 076020 80075420 8FBE0040 */  lw    $fp, 0x40($sp)
/* 076024 80075424 03E00008 */  jr    $ra
/* 076028 80075428 27BD0050 */   addiu $sp, $sp, 0x50
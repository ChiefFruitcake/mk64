glabel func_800808CC
/* 0814CC 800808CC 000478C0 */  sll   $t7, $a0, 3
/* 0814D0 800808D0 01E47823 */  subu  $t7, $t7, $a0
/* 0814D4 800808D4 3C188016 */  lui   $t8, %hi(D_80165C18) # $t8, 0x8016
/* 0814D8 800808D8 27185C18 */  addiu $t8, %lo(D_80165C18) # addiu $t8, $t8, 0x5c18
/* 0814DC 800808DC 000F7940 */  sll   $t7, $t7, 5
/* 0814E0 800808E0 01F84021 */  addu  $t0, $t7, $t8
/* 0814E4 800808E4 850300A6 */  lh    $v1, 0xa6($t0)
/* 0814E8 800808E8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0814EC 800808EC AFBF001C */  sw    $ra, 0x1c($sp)
/* 0814F0 800808F0 AFA40028 */  sw    $a0, 0x28($sp)
/* 0814F4 800808F4 10600019 */  beqz  $v1, .L8008095C
/* 0814F8 800808F8 00601025 */   move  $v0, $v1
/* 0814FC 800808FC 24010001 */  li    $at, 1
/* 081500 80080900 10410006 */  beq   $v0, $at, .L8008091C
/* 081504 80080904 8FA40028 */   lw    $a0, 0x28($sp)
/* 081508 80080908 24010002 */  li    $at, 2
/* 08150C 8008090C 10410008 */  beq   $v0, $at, .L80080930
/* 081510 80080910 8FA40028 */   lw    $a0, 0x28($sp)
/* 081514 80080914 10000012 */  b     .L80080960
/* 081518 80080918 28610002 */   slti  $at, $v1, 2
.L8008091C:
/* 08151C 8008091C 0C020149 */  jal   func_80080524
/* 081520 80080920 AFA80020 */   sw    $t0, 0x20($sp)
/* 081524 80080924 8FA80020 */  lw    $t0, 0x20($sp)
/* 081528 80080928 1000000C */  b     .L8008095C
/* 08152C 8008092C 850300A6 */   lh    $v1, 0xa6($t0)
.L80080930:
/* 081530 80080930 24190006 */  li    $t9, 6
/* 081534 80080934 2409FFFF */  li    $t1, -1
/* 081538 80080938 AFA90014 */  sw    $t1, 0x14($sp)
/* 08153C 8008093C AFB90010 */  sw    $t9, 0x10($sp)
/* 081540 80080940 24050003 */  li    $a1, 3
/* 081544 80080944 24060005 */  li    $a2, 5
/* 081548 80080948 24070001 */  li    $a3, 1
/* 08154C 8008094C 0C01CC2F */  jal   func_800730BC
/* 081550 80080950 AFA80020 */   sw    $t0, 0x20($sp)
/* 081554 80080954 8FA80020 */  lw    $t0, 0x20($sp)
/* 081558 80080958 850300A6 */  lh    $v1, 0xa6($t0)
.L8008095C:
/* 08155C 8008095C 28610002 */  slti  $at, $v1, 2
.L80080960:
/* 081560 80080960 14200028 */  bnez  $at, .L80080A04
/* 081564 80080964 8FA40028 */   lw    $a0, 0x28($sp)
/* 081568 80080968 0C01F98F */  jal   func_8007E63C
/* 08156C 8008096C AFA80020 */   sw    $t0, 0x20($sp)
/* 081570 80080970 0C020217 */  jal   func_8008085C
/* 081574 80080974 8FA40028 */   lw    $a0, 0x28($sp)
/* 081578 80080978 0C01CD45 */  jal   func_80073514
/* 08157C 8008097C 8FA40028 */   lw    $a0, 0x28($sp)
/* 081580 80080980 3C0A800E */  lui   $t2, %hi(D_800DC50C) # $t2, 0x800e
/* 081584 80080984 8D4AC50C */  lw    $t2, %lo(D_800DC50C)($t2)
/* 081588 80080988 24010009 */  li    $at, 9
/* 08158C 8008098C 8FA80020 */  lw    $t0, 0x20($sp)
/* 081590 80080990 1141000F */  beq   $t2, $at, .L800809D0
/* 081594 80080994 3C028028 */   lui   $v0, %hi(D_802876D2) # $v0, 0x8028
/* 081598 80080998 3C0B8019 */  lui   $t3, %hi(D_8018D40C) # $t3, 0x8019
/* 08159C 8008099C 8D6BD40C */  lw    $t3, %lo(D_8018D40C)($t3)
/* 0815A0 800809A0 55600019 */  bnel  $t3, $zero, .L80080A08
/* 0815A4 800809A4 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0815A8 800809A8 850C00A6 */  lh    $t4, 0xa6($t0)
/* 0815AC 800809AC 24010002 */  li    $at, 2
/* 0815B0 800809B0 25040004 */  addiu $a0, $t0, 4
/* 0815B4 800809B4 15810013 */  bne   $t4, $at, .L80080A04
/* 0815B8 800809B8 25050038 */   addiu $a1, $t0, 0x38
/* 0815BC 800809BC 3C061903 */  lui   $a2, (0x19036045 >> 16) # lui $a2, 0x1903
/* 0815C0 800809C0 0C03262E */  jal   func_800C98B8
/* 0815C4 800809C4 34C66045 */   ori   $a2, (0x19036045 & 0xFFFF) # ori $a2, $a2, 0x6045
/* 0815C8 800809C8 1000000F */  b     .L80080A08
/* 0815CC 800809CC 8FBF001C */   lw    $ra, 0x1c($sp)
.L800809D0:
/* 0815D0 800809D0 844276D2 */  lh    $v0, %lo(D_802876D2)($v0)
/* 0815D4 800809D4 284100BF */  slti  $at, $v0, 0xbf
/* 0815D8 800809D8 1020000A */  beqz  $at, .L80080A04
/* 0815DC 800809DC 24010058 */   li    $at, 88
/* 0815E0 800809E0 0041001A */  div   $zero, $v0, $at
/* 0815E4 800809E4 00006810 */  mfhi  $t5
/* 0815E8 800809E8 2401001E */  li    $at, 30
/* 0815EC 800809EC 15A10005 */  bne   $t5, $at, .L80080A04
/* 0815F0 800809F0 25040004 */   addiu $a0, $t0, 4
/* 0815F4 800809F4 3C061903 */  lui   $a2, (0x19036045 >> 16) # lui $a2, 0x1903
/* 0815F8 800809F8 34C66045 */  ori   $a2, (0x19036045 & 0xFFFF) # ori $a2, $a2, 0x6045
/* 0815FC 800809FC 0C03262E */  jal   func_800C98B8
/* 081600 80080A00 25050038 */   addiu $a1, $t0, 0x38
.L80080A04:
/* 081604 80080A04 8FBF001C */  lw    $ra, 0x1c($sp)
.L80080A08:
/* 081608 80080A08 27BD0028 */  addiu $sp, $sp, 0x28
/* 08160C 80080A0C 03E00008 */  jr    $ra
/* 081610 80080A10 00000000 */   nop   

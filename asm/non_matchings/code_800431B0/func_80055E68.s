glabel func_80055E68
/* 056A68 80055E68 3C0E800E */  lui   $t6, %hi(D_800DC50C) # $t6, 0x800e
/* 056A6C 80055E6C 8DCEC50C */  lw    $t6, %lo(D_800DC50C)($t6)
/* 056A70 80055E70 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 056A74 80055E74 AFB00018 */  sw    $s0, 0x18($sp)
/* 056A78 80055E78 3C108018 */  lui   $s0, %hi(D_80183EA0) # $s0, 0x8018
/* 056A7C 80055E7C 24010009 */  li    $at, 9
/* 056A80 80055E80 AFBF001C */  sw    $ra, 0x1c($sp)
/* 056A84 80055E84 AFA40020 */  sw    $a0, 0x20($sp)
/* 056A88 80055E88 11C1000F */  beq   $t6, $at, .L80055EC8
/* 056A8C 80055E8C 8E103EA0 */   lw    $s0, %lo(D_80183EA0)($s0)
/* 056A90 80055E90 02002025 */  move  $a0, $s0
/* 056A94 80055E94 8FA50020 */  lw    $a1, 0x20($sp)
/* 056A98 80055E98 240605DC */  li    $a2, 1500
/* 056A9C 80055E9C 0C022874 */  jal   func_8008A1D0
/* 056AA0 80055EA0 24070BB8 */   li    $a3, 3000
/* 056AA4 80055EA4 02002025 */  move  $a0, $s0
/* 056AA8 80055EA8 0C01C88F */  jal   func_8007223C
/* 056AAC 80055EAC 3C050004 */   lui   $a1, 4
/* 056AB0 80055EB0 1040000B */  beqz  $v0, .L80055EE0
/* 056AB4 80055EB4 02002025 */   move  $a0, $s0
/* 056AB8 80055EB8 0C015733 */  jal   func_80055CCC
/* 056ABC 80055EBC 8FA50020 */   lw    $a1, 0x20($sp)
/* 056AC0 80055EC0 10000008 */  b     .L80055EE4
/* 056AC4 80055EC4 8FBF001C */   lw    $ra, 0x1c($sp)
.L80055EC8:
/* 056AC8 80055EC8 02002025 */  move  $a0, $s0
/* 056ACC 80055ECC 0C01C87A */  jal   func_800721E8
/* 056AD0 80055ED0 3C050010 */   lui   $a1, 0x10
/* 056AD4 80055ED4 02002025 */  move  $a0, $s0
/* 056AD8 80055ED8 0C015733 */  jal   func_80055CCC
/* 056ADC 80055EDC 8FA50020 */   lw    $a1, 0x20($sp)
.L80055EE0:
/* 056AE0 80055EE0 8FBF001C */  lw    $ra, 0x1c($sp)
.L80055EE4:
/* 056AE4 80055EE4 8FB00018 */  lw    $s0, 0x18($sp)
/* 056AE8 80055EE8 27BD0020 */  addiu $sp, $sp, 0x20
/* 056AEC 80055EEC 03E00008 */  jr    $ra
/* 056AF0 80055EF0 00000000 */   nop   

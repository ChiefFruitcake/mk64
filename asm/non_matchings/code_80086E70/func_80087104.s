glabel func_80087104
/* 087D04 80087104 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 087D08 80087108 AFBF001C */  sw    $ra, 0x1c($sp)
/* 087D0C 8008710C AFB00018 */  sw    $s0, 0x18($sp)
/* 087D10 80087110 AFA5002C */  sw    $a1, 0x2c($sp)
/* 087D14 80087114 00808025 */  move  $s0, $a0
/* 087D18 80087118 AFA00024 */  sw    $zero, 0x24($sp)
/* 087D1C 8008711C 0C01C89C */  jal   func_80072270
/* 087D20 80087120 24050008 */   li    $a1, 8
/* 087D24 80087124 1040000B */  beqz  $v0, .L80087154
/* 087D28 80087128 02002025 */   move  $a0, $s0
/* 087D2C 8008712C 0C01C870 */  jal   func_800721C0
/* 087D30 80087130 24050008 */   li    $a1, 8
/* 087D34 80087134 0C0ADF8D */  jal   random_int
/* 087D38 80087138 97A4002E */   lhu   $a0, 0x2e($sp)
/* 087D3C 8008713C 001070C0 */  sll   $t6, $s0, 3
/* 087D40 80087140 01D07023 */  subu  $t6, $t6, $s0
/* 087D44 80087144 000E7140 */  sll   $t6, $t6, 5
/* 087D48 80087148 3C018016 */  lui   $at, %hi(D_80165CC8) # 0x8016
/* 087D4C 8008714C 002E0821 */  addu  $at, $at, $t6
/* 087D50 80087150 A4225CC8 */  sh    $v0, %lo(D_80165CC8)($at) # 0x5cc8($at)
.L80087154:
/* 087D54 80087154 001078C0 */  sll   $t7, $s0, 3
/* 087D58 80087158 01F07823 */  subu  $t7, $t7, $s0
/* 087D5C 8008715C 3C188016 */  lui   $t8, %hi(D_80165C18) # $t8, 0x8016
/* 087D60 80087160 27185C18 */  addiu $t8, %lo(D_80165C18) # addiu $t8, $t8, 0x5c18
/* 087D64 80087164 000F7940 */  sll   $t7, $t7, 5
/* 087D68 80087168 01F81021 */  addu  $v0, $t7, $t8
/* 087D6C 8008716C 845900B0 */  lh    $t9, 0xb0($v0)
/* 087D70 80087170 02002025 */  move  $a0, $s0
/* 087D74 80087174 2728FFFF */  addiu $t0, $t9, -1
/* 087D78 80087178 A44800B0 */  sh    $t0, 0xb0($v0)
/* 087D7C 8008717C 844900B0 */  lh    $t1, 0xb0($v0)
/* 087D80 80087180 05230006 */  bgezl $t1, .L8008719C
/* 087D84 80087184 8FBF001C */   lw    $ra, 0x1c($sp)
/* 087D88 80087188 0C01C87A */  jal   func_800721E8
/* 087D8C 8008718C 24050008 */   li    $a1, 8
/* 087D90 80087190 240A0001 */  li    $t2, 1
/* 087D94 80087194 AFAA0024 */  sw    $t2, 0x24($sp)
/* 087D98 80087198 8FBF001C */  lw    $ra, 0x1c($sp)
.L8008719C:
/* 087D9C 8008719C 8FA20024 */  lw    $v0, 0x24($sp)
/* 087DA0 800871A0 8FB00018 */  lw    $s0, 0x18($sp)
/* 087DA4 800871A4 03E00008 */  jr    $ra
/* 087DA8 800871A8 27BD0028 */   addiu $sp, $sp, 0x28

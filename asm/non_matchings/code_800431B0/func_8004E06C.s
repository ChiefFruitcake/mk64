glabel func_8004E06C
/* 04EC6C 8004E06C 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 04EC70 8004E070 3C028016 */  lui   $v0, %hi(D_801656B0) # $v0, 0x8016
/* 04EC74 8004E074 244256B0 */  addiu $v0, %lo(D_801656B0) # addiu $v0, $v0, 0x56b0
/* 04EC78 8004E078 3C0F8016 */  lui   $t7, %hi(D_80165710) # $t7, 0x8016
/* 04EC7C 8004E07C 85EF5710 */  lh    $t7, %lo(D_80165710)($t7)
/* 04EC80 8004E080 944E0000 */  lhu   $t6, ($v0)
/* 04EC84 8004E084 AFBE0050 */  sw    $fp, 0x50($sp)
/* 04EC88 8004E088 8FBE0068 */  lw    $fp, 0x68($sp)
/* 04EC8C 8004E08C 01CFC021 */  addu  $t8, $t6, $t7
/* 04EC90 8004E090 F7B40020 */  sdc1  $f20, 0x20($sp)
/* 04EC94 8004E094 A4580000 */  sh    $t8, ($v0)
/* 04EC98 8004E098 3C018019 */  lui   $at, %hi(D_8018D00C) # $at, 0x8019
/* 04EC9C 8004E09C C434D00C */  lwc1  $f20, %lo(D_8018D00C)($at)
/* 04ECA0 8004E0A0 AFB7004C */  sw    $s7, 0x4c($sp)
/* 04ECA4 8004E0A4 AFB50044 */  sw    $s5, 0x44($sp)
/* 04ECA8 8004E0A8 AFB40040 */  sw    $s4, 0x40($sp)
/* 04ECAC 8004E0AC AFB3003C */  sw    $s3, 0x3c($sp)
/* 04ECB0 8004E0B0 AFB20038 */  sw    $s2, 0x38($sp)
/* 04ECB4 8004E0B4 AFB10034 */  sw    $s1, 0x34($sp)
/* 04ECB8 8004E0B8 3C178016 */  lui   $s7, %hi(D_80165708) # $s7, 0x8016
/* 04ECBC 8004E0BC 00E09825 */  move  $s3, $a3
/* 04ECC0 8004E0C0 AFBF0054 */  sw    $ra, 0x54($sp)
/* 04ECC4 8004E0C4 AFB60048 */  sw    $s6, 0x48($sp)
/* 04ECC8 8004E0C8 AFB00030 */  sw    $s0, 0x30($sp)
/* 04ECCC 8004E0CC F7B60028 */  sdc1  $f22, 0x28($sp)
/* 04ECD0 8004E0D0 84510000 */  lh    $s1, ($v0)
/* 04ECD4 8004E0D4 86F75708 */  lh    $s7, %lo(D_80165708)($s7)
/* 04ECD8 8004E0D8 00C09025 */  move  $s2, $a2
/* 04ECDC 8004E0DC 07C10003 */  bgez  $fp, .L8004E0EC
/* 04ECE0 8004E0E0 001EC843 */   sra   $t9, $fp, 1
/* 04ECE4 8004E0E4 27C10001 */  addiu $at, $fp, 1
/* 04ECE8 8004E0E8 0001C843 */  sra   $t9, $at, 1
.L8004E0EC:
/* 04ECEC 8004E0EC 00B9A023 */  subu  $s4, $a1, $t9
/* 04ECF0 8004E0F0 1BC00043 */  blez  $fp, .L8004E200
/* 04ECF4 8004E0F4 0000A825 */   move  $s5, $zero
/* 04ECF8 8004E0F8 06610003 */  bgez  $s3, .L8004E108
/* 04ECFC 8004E0FC 00134043 */   sra   $t0, $s3, 1
/* 04ED00 8004E100 26610001 */  addiu $at, $s3, 1
/* 04ED04 8004E104 00014043 */  sra   $t0, $at, 1
.L8004E108:
/* 04ED08 8004E108 00884823 */  subu  $t1, $a0, $t0
/* 04ED0C 8004E10C 44892000 */  mtc1  $t1, $f4
/* 04ED10 8004E110 00000000 */  nop   
/* 04ED14 8004E114 468025A0 */  cvt.s.w $f22, $f4
.L8004E118:
/* 04ED18 8004E118 3230FFFF */  andi  $s0, $s1, 0xffff
/* 04ED1C 8004E11C 0C0AE006 */  jal   sins
/* 04ED20 8004E120 3204FFFF */   andi  $a0, $s0, 0xffff
/* 04ED24 8004E124 46140182 */  mul.s $f6, $f0, $f20
/* 04ED28 8004E128 24160001 */  li    $s6, 1
/* 04ED2C 8004E12C 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 04ED30 8004E130 46163200 */  add.s $f8, $f6, $f22
/* 04ED34 8004E134 444AF800 */  cfc1  $t2, $31
/* 04ED38 8004E138 44D6F800 */  ctc1  $s6, $31
/* 04ED3C 8004E13C 00000000 */  nop   
/* 04ED40 8004E140 460042A4 */  cvt.w.s $f10, $f8
/* 04ED44 8004E144 4456F800 */  cfc1  $s6, $31
/* 04ED48 8004E148 00000000 */  nop   
/* 04ED4C 8004E14C 32D60078 */  andi  $s6, $s6, 0x78
/* 04ED50 8004E150 52C00013 */  beql  $s6, $zero, .L8004E1A0
/* 04ED54 8004E154 44165000 */   mfc1  $s6, $f10
/* 04ED58 8004E158 44815000 */  mtc1  $at, $f10
/* 04ED5C 8004E15C 24160001 */  li    $s6, 1
/* 04ED60 8004E160 460A4281 */  sub.s $f10, $f8, $f10
/* 04ED64 8004E164 44D6F800 */  ctc1  $s6, $31
/* 04ED68 8004E168 00000000 */  nop   
/* 04ED6C 8004E16C 460052A4 */  cvt.w.s $f10, $f10
/* 04ED70 8004E170 4456F800 */  cfc1  $s6, $31
/* 04ED74 8004E174 00000000 */  nop   
/* 04ED78 8004E178 32D60078 */  andi  $s6, $s6, 0x78
/* 04ED7C 8004E17C 16C00005 */  bnez  $s6, .L8004E194
/* 04ED80 8004E180 00000000 */   nop   
/* 04ED84 8004E184 44165000 */  mfc1  $s6, $f10
/* 04ED88 8004E188 3C018000 */  lui   $at, 0x8000
/* 04ED8C 8004E18C 10000007 */  b     .L8004E1AC
/* 04ED90 8004E190 02C1B025 */   or    $s6, $s6, $at
.L8004E194:
/* 04ED94 8004E194 10000005 */  b     .L8004E1AC
/* 04ED98 8004E198 2416FFFF */   li    $s6, -1
/* 04ED9C 8004E19C 44165000 */  mfc1  $s6, $f10
.L8004E1A0:
/* 04EDA0 8004E1A0 00000000 */  nop   
/* 04EDA4 8004E1A4 06C0FFFB */  bltz  $s6, .L8004E194
/* 04EDA8 8004E1A8 00000000 */   nop   
.L8004E1AC:
/* 04EDAC 8004E1AC 44CAF800 */  ctc1  $t2, $31
/* 04EDB0 8004E1B0 0C0AE006 */  jal   sins
/* 04EDB4 8004E1B4 3204FFFF */   andi  $a0, $s0, 0xffff
/* 04EDB8 8004E1B8 02402025 */  move  $a0, $s2
/* 04EDBC 8004E1BC 02602825 */  move  $a1, $s3
/* 04EDC0 8004E1C0 0C0114A9 */  jal   func_800452A4
/* 04EDC4 8004E1C4 24060001 */   li    $a2, 1
/* 04EDC8 8004E1C8 240B0001 */  li    $t3, 1
/* 04EDCC 8004E1CC AFAB0010 */  sw    $t3, 0x10($sp)
/* 04EDD0 8004E1D0 02C02025 */  move  $a0, $s6
/* 04EDD4 8004E1D4 02802825 */  move  $a1, $s4
/* 04EDD8 8004E1D8 02603025 */  move  $a2, $s3
/* 04EDDC 8004E1DC 0C012E5F */  jal   func_8004B97C
/* 04EDE0 8004E1E0 24070001 */   li    $a3, 1
/* 04EDE4 8004E1E4 02378821 */  addu  $s1, $s1, $s7
/* 04EDE8 8004E1E8 26B50001 */  addiu $s5, $s5, 1
/* 04EDEC 8004E1EC 00116400 */  sll   $t4, $s1, 0x10
/* 04EDF0 8004E1F0 000C8C03 */  sra   $s1, $t4, 0x10
/* 04EDF4 8004E1F4 02539021 */  addu  $s2, $s2, $s3
/* 04EDF8 8004E1F8 16BEFFC7 */  bne   $s5, $fp, .L8004E118
/* 04EDFC 8004E1FC 26940001 */   addiu $s4, $s4, 1
.L8004E200:
/* 04EE00 8004E200 8FBF0054 */  lw    $ra, 0x54($sp)
/* 04EE04 8004E204 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 04EE08 8004E208 D7B60028 */  ldc1  $f22, 0x28($sp)
/* 04EE0C 8004E20C 8FB00030 */  lw    $s0, 0x30($sp)
/* 04EE10 8004E210 8FB10034 */  lw    $s1, 0x34($sp)
/* 04EE14 8004E214 8FB20038 */  lw    $s2, 0x38($sp)
/* 04EE18 8004E218 8FB3003C */  lw    $s3, 0x3c($sp)
/* 04EE1C 8004E21C 8FB40040 */  lw    $s4, 0x40($sp)
/* 04EE20 8004E220 8FB50044 */  lw    $s5, 0x44($sp)
/* 04EE24 8004E224 8FB60048 */  lw    $s6, 0x48($sp)
/* 04EE28 8004E228 8FB7004C */  lw    $s7, 0x4c($sp)
/* 04EE2C 8004E22C 8FBE0050 */  lw    $fp, 0x50($sp)
/* 04EE30 8004E230 03E00008 */  jr    $ra
/* 04EE34 8004E234 27BD0058 */   addiu $sp, $sp, 0x58

/* 04EE38 8004E238 03E00008 */  jr    $ra
/* 04EE3C 8004E23C 00000000 */   nop   

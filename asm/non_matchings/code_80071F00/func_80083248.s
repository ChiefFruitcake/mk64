glabel func_80083248
/* 083E48 80083248 000470C0 */  sll   $t6, $a0, 3
/* 083E4C 8008324C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 083E50 80083250 01C47023 */  subu  $t6, $t6, $a0
/* 083E54 80083254 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 083E58 80083258 AFB10020 */  sw    $s1, 0x20($sp)
/* 083E5C 8008325C 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 083E60 80083260 000E7140 */  sll   $t6, $t6, 5
/* 083E64 80083264 01CF8821 */  addu  $s1, $t6, $t7
/* 083E68 80083268 963800AE */  lhu   $t8, 0xae($s1)
/* 083E6C 8008326C AFB0001C */  sw    $s0, 0x1c($sp)
/* 083E70 80083270 00808025 */  move  $s0, $a0
/* 083E74 80083274 2F010005 */  sltiu $at, $t8, 5
/* 083E78 80083278 1020003B */  beqz  $at, .L80083368
/* 083E7C 8008327C AFBF0024 */   sw    $ra, 0x24($sp)
/* 083E80 80083280 0018C080 */  sll   $t8, $t8, 2
/* 083E84 80083284 3C01800F */  lui   $at, %hi(jpt_800EF1D0)
/* 083E88 80083288 00380821 */  addu  $at, $at, $t8
/* 083E8C 8008328C 8C38F1D0 */  lw    $t8, %lo(jpt_800EF1D0)($at)
/* 083E90 80083290 03000008 */  jr    $t8
/* 083E94 80083294 00000000 */   nop   
glabel L80083298
/* 083E98 80083298 C6240010 */  lwc1  $f4, 0x10($s1)
/* 083E9C 8008329C C6280018 */  lwc1  $f8, 0x18($s1)
/* 083EA0 800832A0 862D009E */  lh    $t5, 0x9e($s1)
/* 083EA4 800832A4 4600218D */  trunc.w.s $f6, $f4
/* 083EA8 800832A8 02002025 */  move  $a0, $s0
/* 083EAC 800832AC 8626009C */  lh    $a2, 0x9c($s1)
/* 083EB0 800832B0 4600428D */  trunc.w.s $f10, $f8
/* 083EB4 800832B4 44053000 */  mfc1  $a1, $f6
/* 083EB8 800832B8 AFAD0010 */  sw    $t5, 0x10($sp)
/* 083EBC 800832BC 44075000 */  mfc1  $a3, $f10
/* 083EC0 800832C0 00054400 */  sll   $t0, $a1, 0x10
/* 083EC4 800832C4 00082C03 */  sra   $a1, $t0, 0x10
/* 083EC8 800832C8 00075C00 */  sll   $t3, $a3, 0x10
/* 083ECC 800832CC 0C021E83 */  jal   func_80087A0C
/* 083ED0 800832D0 000B3C03 */   sra   $a3, $t3, 0x10
/* 083ED4 800832D4 10400024 */  beqz  $v0, .L80083368
/* 083ED8 800832D8 00000000 */   nop   
/* 083EDC 800832DC 0C021BF5 */  jal   func_80086FD4
/* 083EE0 800832E0 02002025 */   move  $a0, $s0
/* 083EE4 800832E4 10000020 */  b     .L80083368
/* 083EE8 800832E8 00000000 */   nop   
glabel L800832EC
/* 083EEC 800832EC 02002025 */  move  $a0, $s0
/* 083EF0 800832F0 0C021C6B */  jal   func_800871AC
/* 083EF4 800832F4 2405003C */   li    $a1, 60
/* 083EF8 800832F8 1000001B */  b     .L80083368
/* 083EFC 800832FC 00000000 */   nop   
glabel L80083300
/* 083F00 80083300 C6300010 */  lwc1  $f16, 0x10($s1)
/* 083F04 80083304 C6240018 */  lwc1  $f4, 0x18($s1)
/* 083F08 80083308 02002025 */  move  $a0, $s0
/* 083F0C 8008330C 4600848D */  trunc.w.s $f18, $f16
/* 083F10 80083310 8625009C */  lh    $a1, 0x9c($s1)
/* 083F14 80083314 8627009E */  lh    $a3, 0x9e($s1)
/* 083F18 80083318 4600218D */  trunc.w.s $f6, $f4
/* 083F1C 8008331C 44069000 */  mfc1  $a2, $f18
/* 083F20 80083320 44083000 */  mfc1  $t0, $f6
/* 083F24 80083324 00067C00 */  sll   $t7, $a2, 0x10
/* 083F28 80083328 000F3403 */  sra   $a2, $t7, 0x10
/* 083F2C 8008332C 0C021E83 */  jal   func_80087A0C
/* 083F30 80083330 AFA80010 */   sw    $t0, 0x10($sp)
/* 083F34 80083334 1040000C */  beqz  $v0, .L80083368
/* 083F38 80083338 00000000 */   nop   
/* 083F3C 8008333C 0C021BF5 */  jal   func_80086FD4
/* 083F40 80083340 02002025 */   move  $a0, $s0
/* 083F44 80083344 10000008 */  b     .L80083368
/* 083F48 80083348 00000000 */   nop   
glabel L8008334C
/* 083F4C 8008334C 02002025 */  move  $a0, $s0
/* 083F50 80083350 0C021C18 */  jal   func_80087060
/* 083F54 80083354 2405003C */   li    $a1, 60
/* 083F58 80083358 10400003 */  beqz  $v0, .L80083368
/* 083F5C 8008335C 02002025 */   move  $a0, $s0
/* 083F60 80083360 0C021C07 */  jal   func_8008701C
/* 083F64 80083364 24050001 */   li    $a1, 1
.L80083368:
glabel L80083368
/* 083F68 80083368 0C022FC6 */  jal   func_8008BF18
/* 083F6C 8008336C 02002025 */   move  $a0, $s0
/* 083F70 80083370 02002025 */  move  $a0, $s0
/* 083F74 80083374 0C01C88F */  jal   func_8007223C
/* 083F78 80083378 3C050020 */   lui   $a1, 0x20
/* 083F7C 8008337C 1040000F */  beqz  $v0, .L800833BC
/* 083F80 80083380 02002025 */   move  $a0, $s0
/* 083F84 80083384 0C01C88F */  jal   func_8007223C
/* 083F88 80083388 3C050040 */   lui   $a1, 0x40
/* 083F8C 8008338C 50400004 */  beql  $v0, $zero, .L800833A0
/* 083F90 80083390 C6280044 */   lwc1  $f8, 0x44($s1)
/* 083F94 80083394 0C022187 */  jal   func_8008861C
/* 083F98 80083398 02002025 */   move  $a0, $s0
/* 083F9C 8008339C C6280044 */  lwc1  $f8, 0x44($s1)
.L800833A0:
/* 083FA0 800833A0 3C014018 */  li    $at, 0x40180000 # 2.375000
/* 083FA4 800833A4 44818800 */  mtc1  $at, $f17
/* 083FA8 800833A8 44808000 */  mtc1  $zero, $f16
/* 083FAC 800833AC 460042A1 */  cvt.d.s $f10, $f8
/* 083FB0 800833B0 46305480 */  add.d $f18, $f10, $f16
/* 083FB4 800833B4 46209120 */  cvt.s.d $f4, $f18
/* 083FB8 800833B8 E6240008 */  swc1  $f4, 8($s1)
.L800833BC:
/* 083FBC 800833BC 8FBF0024 */  lw    $ra, 0x24($sp)
/* 083FC0 800833C0 8FB0001C */  lw    $s0, 0x1c($sp)
/* 083FC4 800833C4 8FB10020 */  lw    $s1, 0x20($sp)
/* 083FC8 800833C8 03E00008 */  jr    $ra
/* 083FCC 800833CC 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_802B6D58
/* 120368 802B6D58 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 12036C 802B6D5C AFB0001C */  sw    $s0, 0x1c($sp)
/* 120370 802B6D60 00808025 */  move  $s0, $a0
/* 120374 802B6D64 AFBF0024 */  sw    $ra, 0x24($sp)
/* 120378 802B6D68 AFB10020 */  sw    $s1, 0x20($sp)
/* 12037C 802B6D6C F7B40010 */  sdc1  $f20, 0x10($sp)
/* 120380 802B6D70 AFA50044 */  sw    $a1, 0x44($sp)
/* 120384 802B6D74 24040001 */  li    $a0, 1
/* 120388 802B6D78 444EF800 */  cfc1  $t6, $31
/* 12038C 802B6D7C 44C4F800 */  ctc1  $a0, $31
/* 120390 802B6D80 C4C40000 */  lwc1  $f4, ($a2)
/* 120394 802B6D84 00C08825 */  move  $s1, $a2
/* 120398 802B6D88 460021A4 */  cvt.w.s $f6, $f4
/* 12039C 802B6D8C 4444F800 */  cfc1  $a0, $31
/* 1203A0 802B6D90 00000000 */  nop   
/* 1203A4 802B6D94 30840078 */  andi  $a0, $a0, 0x78
/* 1203A8 802B6D98 10800012 */  beqz  $a0, .L802B6DE4
/* 1203AC 802B6D9C 3C014F00 */   li    $at, 0x4F000000 # 2147483648.000000
/* 1203B0 802B6DA0 44813000 */  mtc1  $at, $f6
/* 1203B4 802B6DA4 24040001 */  li    $a0, 1
/* 1203B8 802B6DA8 46062181 */  sub.s $f6, $f4, $f6
/* 1203BC 802B6DAC 44C4F800 */  ctc1  $a0, $31
/* 1203C0 802B6DB0 00000000 */  nop   
/* 1203C4 802B6DB4 460031A4 */  cvt.w.s $f6, $f6
/* 1203C8 802B6DB8 4444F800 */  cfc1  $a0, $31
/* 1203CC 802B6DBC 00000000 */  nop   
/* 1203D0 802B6DC0 30840078 */  andi  $a0, $a0, 0x78
/* 1203D4 802B6DC4 14800005 */  bnez  $a0, .L802B6DDC
/* 1203D8 802B6DC8 00000000 */   nop   
/* 1203DC 802B6DCC 44043000 */  mfc1  $a0, $f6
/* 1203E0 802B6DD0 3C018000 */  lui   $at, 0x8000
/* 1203E4 802B6DD4 10000007 */  b     .L802B6DF4
/* 1203E8 802B6DD8 00812025 */   or    $a0, $a0, $at
.L802B6DDC:
/* 1203EC 802B6DDC 10000005 */  b     .L802B6DF4
/* 1203F0 802B6DE0 2404FFFF */   li    $a0, -1
.L802B6DE4:
/* 1203F4 802B6DE4 44043000 */  mfc1  $a0, $f6
/* 1203F8 802B6DE8 00000000 */  nop   
/* 1203FC 802B6DEC 0480FFFB */  bltz  $a0, .L802B6DDC
/* 120400 802B6DF0 00000000 */   nop   
.L802B6DF4:
/* 120404 802B6DF4 44CEF800 */  ctc1  $t6, $31
/* 120408 802B6DF8 308FFFFF */  andi  $t7, $a0, 0xffff
/* 12040C 802B6DFC 0C0AE006 */  jal   func_802B8018
/* 120410 802B6E00 01E02025 */   move  $a0, $t7
/* 120414 802B6E04 E7A0003C */  swc1  $f0, 0x3c($sp)
/* 120418 802B6E08 4458F800 */  cfc1  $t8, $31
/* 12041C 802B6E0C 24040001 */  li    $a0, 1
/* 120420 802B6E10 44C4F800 */  ctc1  $a0, $31
/* 120424 802B6E14 C6280000 */  lwc1  $f8, ($s1)
/* 120428 802B6E18 460042A4 */  cvt.w.s $f10, $f8
/* 12042C 802B6E1C 4444F800 */  cfc1  $a0, $31
/* 120430 802B6E20 00000000 */  nop   
/* 120434 802B6E24 30840078 */  andi  $a0, $a0, 0x78
/* 120438 802B6E28 10800012 */  beqz  $a0, .L802B6E74
/* 12043C 802B6E2C 3C014F00 */   li    $at, 0x4F000000 # 2147483648.000000
/* 120440 802B6E30 44815000 */  mtc1  $at, $f10
/* 120444 802B6E34 24040001 */  li    $a0, 1
/* 120448 802B6E38 460A4281 */  sub.s $f10, $f8, $f10
/* 12044C 802B6E3C 44C4F800 */  ctc1  $a0, $31
/* 120450 802B6E40 00000000 */  nop   
/* 120454 802B6E44 460052A4 */  cvt.w.s $f10, $f10
/* 120458 802B6E48 4444F800 */  cfc1  $a0, $31
/* 12045C 802B6E4C 00000000 */  nop   
/* 120460 802B6E50 30840078 */  andi  $a0, $a0, 0x78
/* 120464 802B6E54 14800005 */  bnez  $a0, .L802B6E6C
/* 120468 802B6E58 00000000 */   nop   
/* 12046C 802B6E5C 44045000 */  mfc1  $a0, $f10
/* 120470 802B6E60 3C018000 */  lui   $at, 0x8000
/* 120474 802B6E64 10000007 */  b     .L802B6E84
/* 120478 802B6E68 00812025 */   or    $a0, $a0, $at
.L802B6E6C:
/* 12047C 802B6E6C 10000005 */  b     .L802B6E84
/* 120480 802B6E70 2404FFFF */   li    $a0, -1
.L802B6E74:
/* 120484 802B6E74 44045000 */  mfc1  $a0, $f10
/* 120488 802B6E78 00000000 */  nop   
/* 12048C 802B6E7C 0480FFFB */  bltz  $a0, .L802B6E6C
/* 120490 802B6E80 00000000 */   nop   
.L802B6E84:
/* 120494 802B6E84 44D8F800 */  ctc1  $t8, $31
/* 120498 802B6E88 3099FFFF */  andi  $t9, $a0, 0xffff
/* 12049C 802B6E8C 0C0AE00E */  jal   func_802B8038
/* 1204A0 802B6E90 03202025 */   move  $a0, $t9
/* 1204A4 802B6E94 46000506 */  mov.s $f20, $f0
/* 1204A8 802B6E98 4448F800 */  cfc1  $t0, $31
/* 1204AC 802B6E9C 24040001 */  li    $a0, 1
/* 1204B0 802B6EA0 44C4F800 */  ctc1  $a0, $31
/* 1204B4 802B6EA4 C6240004 */  lwc1  $f4, 4($s1)
/* 1204B8 802B6EA8 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 1204BC 802B6EAC 460021A4 */  cvt.w.s $f6, $f4
/* 1204C0 802B6EB0 4444F800 */  cfc1  $a0, $31
/* 1204C4 802B6EB4 00000000 */  nop   
/* 1204C8 802B6EB8 30840078 */  andi  $a0, $a0, 0x78
/* 1204CC 802B6EBC 50800013 */  beql  $a0, $zero, .L802B6F0C
/* 1204D0 802B6EC0 44043000 */   mfc1  $a0, $f6
/* 1204D4 802B6EC4 44813000 */  mtc1  $at, $f6
/* 1204D8 802B6EC8 24040001 */  li    $a0, 1
/* 1204DC 802B6ECC 46062181 */  sub.s $f6, $f4, $f6
/* 1204E0 802B6ED0 44C4F800 */  ctc1  $a0, $31
/* 1204E4 802B6ED4 00000000 */  nop   
/* 1204E8 802B6ED8 460031A4 */  cvt.w.s $f6, $f6
/* 1204EC 802B6EDC 4444F800 */  cfc1  $a0, $31
/* 1204F0 802B6EE0 00000000 */  nop   
/* 1204F4 802B6EE4 30840078 */  andi  $a0, $a0, 0x78
/* 1204F8 802B6EE8 14800005 */  bnez  $a0, .L802B6F00
/* 1204FC 802B6EEC 00000000 */   nop   
/* 120500 802B6EF0 44043000 */  mfc1  $a0, $f6
/* 120504 802B6EF4 3C018000 */  lui   $at, 0x8000
/* 120508 802B6EF8 10000007 */  b     .L802B6F18
/* 12050C 802B6EFC 00812025 */   or    $a0, $a0, $at
.L802B6F00:
/* 120510 802B6F00 10000005 */  b     .L802B6F18
/* 120514 802B6F04 2404FFFF */   li    $a0, -1
/* 120518 802B6F08 44043000 */  mfc1  $a0, $f6
.L802B6F0C:
/* 12051C 802B6F0C 00000000 */  nop   
/* 120520 802B6F10 0480FFFB */  bltz  $a0, .L802B6F00
/* 120524 802B6F14 00000000 */   nop   
.L802B6F18:
/* 120528 802B6F18 44C8F800 */  ctc1  $t0, $31
/* 12052C 802B6F1C 3089FFFF */  andi  $t1, $a0, 0xffff
/* 120530 802B6F20 0C0AE006 */  jal   func_802B8018
/* 120534 802B6F24 01202025 */   move  $a0, $t1
/* 120538 802B6F28 46000386 */  mov.s $f14, $f0
/* 12053C 802B6F2C 444AF800 */  cfc1  $t2, $31
/* 120540 802B6F30 24040001 */  li    $a0, 1
/* 120544 802B6F34 44C4F800 */  ctc1  $a0, $31
/* 120548 802B6F38 C6280004 */  lwc1  $f8, 4($s1)
/* 12054C 802B6F3C 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 120550 802B6F40 460042A4 */  cvt.w.s $f10, $f8
/* 120554 802B6F44 4444F800 */  cfc1  $a0, $31
/* 120558 802B6F48 00000000 */  nop   
/* 12055C 802B6F4C 30840078 */  andi  $a0, $a0, 0x78
/* 120560 802B6F50 50800013 */  beql  $a0, $zero, .L802B6FA0
/* 120564 802B6F54 44045000 */   mfc1  $a0, $f10
/* 120568 802B6F58 44815000 */  mtc1  $at, $f10
/* 12056C 802B6F5C 24040001 */  li    $a0, 1
/* 120570 802B6F60 460A4281 */  sub.s $f10, $f8, $f10
/* 120574 802B6F64 44C4F800 */  ctc1  $a0, $31
/* 120578 802B6F68 00000000 */  nop   
/* 12057C 802B6F6C 460052A4 */  cvt.w.s $f10, $f10
/* 120580 802B6F70 4444F800 */  cfc1  $a0, $31
/* 120584 802B6F74 00000000 */  nop   
/* 120588 802B6F78 30840078 */  andi  $a0, $a0, 0x78
/* 12058C 802B6F7C 14800005 */  bnez  $a0, .L802B6F94
/* 120590 802B6F80 00000000 */   nop   
/* 120594 802B6F84 44045000 */  mfc1  $a0, $f10
/* 120598 802B6F88 3C018000 */  lui   $at, 0x8000
/* 12059C 802B6F8C 10000007 */  b     .L802B6FAC
/* 1205A0 802B6F90 00812025 */   or    $a0, $a0, $at
.L802B6F94:
/* 1205A4 802B6F94 10000005 */  b     .L802B6FAC
/* 1205A8 802B6F98 2404FFFF */   li    $a0, -1
/* 1205AC 802B6F9C 44045000 */  mfc1  $a0, $f10
.L802B6FA0:
/* 1205B0 802B6FA0 00000000 */  nop   
/* 1205B4 802B6FA4 0480FFFB */  bltz  $a0, .L802B6F94
/* 1205B8 802B6FA8 00000000 */   nop   
.L802B6FAC:
/* 1205BC 802B6FAC 44CAF800 */  ctc1  $t2, $31
/* 1205C0 802B6FB0 308BFFFF */  andi  $t3, $a0, 0xffff
/* 1205C4 802B6FB4 01602025 */  move  $a0, $t3
/* 1205C8 802B6FB8 0C0AE00E */  jal   func_802B8038
/* 1205CC 802B6FBC E7AE0034 */   swc1  $f14, 0x34($sp)
/* 1205D0 802B6FC0 46000406 */  mov.s $f16, $f0
/* 1205D4 802B6FC4 444CF800 */  cfc1  $t4, $31
/* 1205D8 802B6FC8 24040001 */  li    $a0, 1
/* 1205DC 802B6FCC 44C4F800 */  ctc1  $a0, $31
/* 1205E0 802B6FD0 C6240008 */  lwc1  $f4, 8($s1)
/* 1205E4 802B6FD4 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 1205E8 802B6FD8 460021A4 */  cvt.w.s $f6, $f4
/* 1205EC 802B6FDC 4444F800 */  cfc1  $a0, $31
/* 1205F0 802B6FE0 00000000 */  nop   
/* 1205F4 802B6FE4 30840078 */  andi  $a0, $a0, 0x78
/* 1205F8 802B6FE8 50800013 */  beql  $a0, $zero, .L802B7038
/* 1205FC 802B6FEC 44043000 */   mfc1  $a0, $f6
/* 120600 802B6FF0 44813000 */  mtc1  $at, $f6
/* 120604 802B6FF4 24040001 */  li    $a0, 1
/* 120608 802B6FF8 46062181 */  sub.s $f6, $f4, $f6
/* 12060C 802B6FFC 44C4F800 */  ctc1  $a0, $31
/* 120610 802B7000 00000000 */  nop   
/* 120614 802B7004 460031A4 */  cvt.w.s $f6, $f6
/* 120618 802B7008 4444F800 */  cfc1  $a0, $31
/* 12061C 802B700C 00000000 */  nop   
/* 120620 802B7010 30840078 */  andi  $a0, $a0, 0x78
/* 120624 802B7014 14800005 */  bnez  $a0, .L802B702C
/* 120628 802B7018 00000000 */   nop   
/* 12062C 802B701C 44043000 */  mfc1  $a0, $f6
/* 120630 802B7020 3C018000 */  lui   $at, 0x8000
/* 120634 802B7024 10000007 */  b     .L802B7044
/* 120638 802B7028 00812025 */   or    $a0, $a0, $at
.L802B702C:
/* 12063C 802B702C 10000005 */  b     .L802B7044
/* 120640 802B7030 2404FFFF */   li    $a0, -1
/* 120644 802B7034 44043000 */  mfc1  $a0, $f6
.L802B7038:
/* 120648 802B7038 00000000 */  nop   
/* 12064C 802B703C 0480FFFB */  bltz  $a0, .L802B702C
/* 120650 802B7040 00000000 */   nop   
.L802B7044:
/* 120654 802B7044 44CCF800 */  ctc1  $t4, $31
/* 120658 802B7048 308DFFFF */  andi  $t5, $a0, 0xffff
/* 12065C 802B704C 01A02025 */  move  $a0, $t5
/* 120660 802B7050 0C0AE006 */  jal   func_802B8018
/* 120664 802B7054 E7B00030 */   swc1  $f16, 0x30($sp)
/* 120668 802B7058 46000086 */  mov.s $f2, $f0
/* 12066C 802B705C 444EF800 */  cfc1  $t6, $31
/* 120670 802B7060 24040001 */  li    $a0, 1
/* 120674 802B7064 44C4F800 */  ctc1  $a0, $31
/* 120678 802B7068 C6280008 */  lwc1  $f8, 8($s1)
/* 12067C 802B706C 3C014F00 */  li    $at, 0x4F000000 # 2147483648.000000
/* 120680 802B7070 460042A4 */  cvt.w.s $f10, $f8
/* 120684 802B7074 4444F800 */  cfc1  $a0, $31
/* 120688 802B7078 00000000 */  nop   
/* 12068C 802B707C 30840078 */  andi  $a0, $a0, 0x78
/* 120690 802B7080 50800013 */  beql  $a0, $zero, .L802B70D0
/* 120694 802B7084 44045000 */   mfc1  $a0, $f10
/* 120698 802B7088 44815000 */  mtc1  $at, $f10
/* 12069C 802B708C 24040001 */  li    $a0, 1
/* 1206A0 802B7090 460A4281 */  sub.s $f10, $f8, $f10
/* 1206A4 802B7094 44C4F800 */  ctc1  $a0, $31
/* 1206A8 802B7098 00000000 */  nop   
/* 1206AC 802B709C 460052A4 */  cvt.w.s $f10, $f10
/* 1206B0 802B70A0 4444F800 */  cfc1  $a0, $31
/* 1206B4 802B70A4 00000000 */  nop   
/* 1206B8 802B70A8 30840078 */  andi  $a0, $a0, 0x78
/* 1206BC 802B70AC 14800005 */  bnez  $a0, .L802B70C4
/* 1206C0 802B70B0 00000000 */   nop   
/* 1206C4 802B70B4 44045000 */  mfc1  $a0, $f10
/* 1206C8 802B70B8 3C018000 */  lui   $at, 0x8000
/* 1206CC 802B70BC 10000007 */  b     .L802B70DC
/* 1206D0 802B70C0 00812025 */   or    $a0, $a0, $at
.L802B70C4:
/* 1206D4 802B70C4 10000005 */  b     .L802B70DC
/* 1206D8 802B70C8 2404FFFF */   li    $a0, -1
/* 1206DC 802B70CC 44045000 */  mfc1  $a0, $f10
.L802B70D0:
/* 1206E0 802B70D0 00000000 */  nop   
/* 1206E4 802B70D4 0480FFFB */  bltz  $a0, .L802B70C4
/* 1206E8 802B70D8 00000000 */   nop   
.L802B70DC:
/* 1206EC 802B70DC 44CEF800 */  ctc1  $t6, $31
/* 1206F0 802B70E0 308FFFFF */  andi  $t7, $a0, 0xffff
/* 1206F4 802B70E4 01E02025 */  move  $a0, $t7
/* 1206F8 802B70E8 0C0AE00E */  jal   func_802B8038
/* 1206FC 802B70EC E7A2002C */   swc1  $f2, 0x2c($sp)
/* 120700 802B70F0 C7AE0034 */  lwc1  $f14, 0x34($sp)
/* 120704 802B70F4 C7B2003C */  lwc1  $f18, 0x3c($sp)
/* 120708 802B70F8 C7B00030 */  lwc1  $f16, 0x30($sp)
/* 12070C 802B70FC C7A2002C */  lwc1  $f2, 0x2c($sp)
/* 120710 802B7100 460E9302 */  mul.s $f12, $f18, $f14
/* 120714 802B7104 46008287 */  neg.s $f10, $f16
/* 120718 802B7108 8FA20044 */  lw    $v0, 0x44($sp)
/* 12071C 802B710C 46008102 */  mul.s $f4, $f16, $f0
/* 120720 802B7110 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 120724 802B7114 46026182 */  mul.s $f6, $f12, $f2
/* 120728 802B7118 46062200 */  add.s $f8, $f4, $f6
/* 12072C 802B711C 46025102 */  mul.s $f4, $f10, $f2
/* 120730 802B7120 00000000 */  nop   
/* 120734 802B7124 46006182 */  mul.s $f6, $f12, $f0
/* 120738 802B7128 E6080000 */  swc1  $f8, ($s0)
/* 12073C 802B712C 460EA282 */  mul.s $f10, $f20, $f14
/* 120740 802B7130 46062200 */  add.s $f8, $f4, $f6
/* 120744 802B7134 4602A182 */  mul.s $f6, $f20, $f2
/* 120748 802B7138 E60A0020 */  swc1  $f10, 0x20($s0)
/* 12074C 802B713C 46009287 */  neg.s $f10, $f18
/* 120750 802B7140 E6080010 */  swc1  $f8, 0x10($s0)
/* 120754 802B7144 4600A202 */  mul.s $f8, $f20, $f0
/* 120758 802B7148 C4440000 */  lwc1  $f4, ($v0)
/* 12075C 802B714C E60A0024 */  swc1  $f10, 0x24($s0)
/* 120760 802B7150 46109302 */  mul.s $f12, $f18, $f16
/* 120764 802B7154 E6060004 */  swc1  $f6, 4($s0)
/* 120768 802B7158 E6040030 */  swc1  $f4, 0x30($s0)
/* 12076C 802B715C 46007187 */  neg.s $f6, $f14
/* 120770 802B7160 E6080014 */  swc1  $f8, 0x14($s0)
/* 120774 802B7164 46003202 */  mul.s $f8, $f6, $f0
/* 120778 802B7168 C4440004 */  lwc1  $f4, 4($v0)
/* 12077C 802B716C 46026282 */  mul.s $f10, $f12, $f2
/* 120780 802B7170 E6040034 */  swc1  $f4, 0x34($s0)
/* 120784 802B7174 46027182 */  mul.s $f6, $f14, $f2
/* 120788 802B7178 460A4100 */  add.s $f4, $f8, $f10
/* 12078C 802B717C 46006202 */  mul.s $f8, $f12, $f0
/* 120790 802B7180 44800000 */  mtc1  $zero, $f0
/* 120794 802B7184 E6040008 */  swc1  $f4, 8($s0)
/* 120798 802B7188 4610A102 */  mul.s $f4, $f20, $f16
/* 12079C 802B718C 46083280 */  add.s $f10, $f6, $f8
/* 1207A0 802B7190 44814000 */  mtc1  $at, $f8
/* 1207A4 802B7194 E6040028 */  swc1  $f4, 0x28($s0)
/* 1207A8 802B7198 E60A0018 */  swc1  $f10, 0x18($s0)
/* 1207AC 802B719C C4460008 */  lwc1  $f6, 8($v0)
/* 1207B0 802B71A0 E600000C */  swc1  $f0, 0xc($s0)
/* 1207B4 802B71A4 E600001C */  swc1  $f0, 0x1c($s0)
/* 1207B8 802B71A8 E600002C */  swc1  $f0, 0x2c($s0)
/* 1207BC 802B71AC E608003C */  swc1  $f8, 0x3c($s0)
/* 1207C0 802B71B0 E6060038 */  swc1  $f6, 0x38($s0)
/* 1207C4 802B71B4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 1207C8 802B71B8 8FB10020 */  lw    $s1, 0x20($sp)
/* 1207CC 802B71BC 8FB0001C */  lw    $s0, 0x1c($sp)
/* 1207D0 802B71C0 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 1207D4 802B71C4 03E00008 */  jr    $ra
/* 1207D8 802B71C8 27BD0040 */   addiu $sp, $sp, 0x40
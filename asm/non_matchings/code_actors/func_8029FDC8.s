glabel func_8029FDC8
/* 1093D8 8029FDC8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1093DC 8029FDCC AFBF0014 */  sw    $ra, 0x14($sp)
/* 1093E0 8029FDD0 84820000 */  lh    $v0, ($a0)
/* 1093E4 8029FDD4 24010006 */  li    $at, 6
/* 1093E8 8029FDD8 00803025 */  move  $a2, $a0
/* 1093EC 8029FDDC 5041000E */  beql  $v0, $at, .L8029FE18
/* 1093F0 8029FDE0 94CE0006 */   lhu   $t6, 6($a2)
/* 1093F4 8029FDE4 24070007 */  li    $a3, 7
/* 1093F8 8029FDE8 10470031 */  beq   $v0, $a3, .L8029FEB0
/* 1093FC 8029FDEC 24010008 */   li    $at, 8
/* 109400 8029FDF0 1041007A */  beq   $v0, $at, .L8029FFDC
/* 109404 8029FDF4 2401000D */   li    $at, 13
/* 109408 8029FDF8 1041009C */  beq   $v0, $at, .L802A006C
/* 10940C 8029FDFC 24190002 */   li    $t9, 2
/* 109410 8029FE00 2401002A */  li    $at, 42
/* 109414 8029FE04 50410052 */  beql  $v0, $at, .L8029FF50
/* 109418 8029FE08 84C30006 */   lh    $v1, 6($a2)
/* 10941C 8029FE0C 100000B3 */  b     .L802A00DC
/* 109420 8029FE10 8FBF0014 */   lw    $ra, 0x14($sp)
/* 109424 8029FE14 94CE0006 */  lhu   $t6, 6($a2)
.L8029FE18:
/* 109428 8029FE18 2DC10006 */  sltiu $at, $t6, 6
/* 10942C 8029FE1C 102000AE */  beqz  $at, .L802A00D8
/* 109430 8029FE20 000E7080 */   sll   $t6, $t6, 2
/* 109434 8029FE24 3C01802C */  lui   $at, %hi(jpt_802B98B4)
/* 109438 8029FE28 002E0821 */  addu  $at, $at, $t6
/* 10943C 8029FE2C 8C2E98B4 */  lw    $t6, %lo(jpt_802B98B4)($at)
/* 109440 8029FE30 01C00008 */  jr    $t6
/* 109444 8029FE34 00000000 */   nop   
glabel L8029FE38
/* 109448 8029FE38 0C0AC15C */  jal   func_802B0570
/* 10944C 8029FE3C 00C02025 */   move  $a0, $a2
/* 109450 8029FE40 100000A6 */  b     .L802A00DC
/* 109454 8029FE44 8FBF0014 */   lw    $ra, 0x14($sp)
glabel L8029FE48
/* 109458 8029FE48 84CF0010 */  lh    $t7, 0x10($a2)
/* 10945C 8029FE4C 3C19800F */  lui   $t9, %hi(gPlayers) # $t9, 0x800f
/* 109460 8029FE50 27396990 */  addiu $t9, %lo(gPlayers) # addiu $t9, $t9, 0x6990
/* 109464 8029FE54 000FC0C0 */  sll   $t8, $t7, 3
/* 109468 8029FE58 030FC023 */  subu  $t8, $t8, $t7
/* 10946C 8029FE5C 0018C100 */  sll   $t8, $t8, 4
/* 109470 8029FE60 030FC023 */  subu  $t8, $t8, $t7
/* 109474 8029FE64 0018C080 */  sll   $t8, $t8, 2
/* 109478 8029FE68 030FC023 */  subu  $t8, $t8, $t7
/* 10947C 8029FE6C 0018C0C0 */  sll   $t8, $t8, 3
/* 109480 8029FE70 03191021 */  addu  $v0, $t8, $t9
/* 109484 8029FE74 8C48000C */  lw    $t0, 0xc($v0)
/* 109488 8029FE78 3C01FFFB */  lui   $at, (0xFFFBFFFF >> 16) # lui $at, 0xfffb
/* 10948C 8029FE7C 3421FFFF */  ori   $at, (0xFFFBFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 109490 8029FE80 01014824 */  and   $t1, $t0, $at
/* 109494 8029FE84 AC49000C */  sw    $t1, 0xc($v0)
glabel L8029FE88
/* 109498 8029FE88 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 10949C 8029FE8C 44812000 */  mtc1  $at, $f4
/* 1094A0 8029FE90 240A8000 */  li    $t2, -32768
/* 1094A4 8029FE94 240B003C */  li    $t3, 60
/* 1094A8 8029FE98 240C0005 */  li    $t4, 5
/* 1094AC 8029FE9C A4CA0002 */  sh    $t2, 2($a2)
/* 1094B0 8029FEA0 A4CB0004 */  sh    $t3, 4($a2)
/* 1094B4 8029FEA4 A4CC0006 */  sh    $t4, 6($a2)
/* 1094B8 8029FEA8 1000008B */  b     .L802A00D8
/* 1094BC 8029FEAC E4C40028 */   swc1  $f4, 0x28($a2)
.L8029FEB0:
/* 1094C0 8029FEB0 84C30006 */  lh    $v1, 6($a2)
/* 1094C4 8029FEB4 24010005 */  li    $at, 5
/* 1094C8 8029FEB8 50610088 */  beql  $v1, $at, .L802A00DC
/* 1094CC 8029FEBC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1094D0 8029FEC0 10600013 */  beqz  $v1, .L8029FF10
/* 1094D4 8029FEC4 24010001 */   li    $at, 1
/* 1094D8 8029FEC8 10610011 */  beq   $v1, $at, .L8029FF10
/* 1094DC 8029FECC 24010002 */   li    $at, 2
/* 1094E0 8029FED0 10610006 */  beq   $v1, $at, .L8029FEEC
/* 1094E4 8029FED4 3C0D8016 */   lui   $t5, %hi(D_8015F9B8) # $t5, 0x8016
/* 1094E8 8029FED8 24010004 */  li    $at, 4
/* 1094EC 8029FEDC 10610017 */  beq   $v1, $at, .L8029FF3C
/* 1094F0 8029FEE0 00C02025 */   move  $a0, $a2
/* 1094F4 8029FEE4 1000007D */  b     .L802A00DC
/* 1094F8 8029FEE8 8FBF0014 */   lw    $ra, 0x14($sp)
.L8029FEEC:
/* 1094FC 8029FEEC 25ADF9B8 */  addiu $t5, %lo(D_8015F9B8) # addiu $t5, $t5, -0x648
/* 109500 8029FEF0 00CD2023 */  subu  $a0, $a2, $t5
/* 109504 8029FEF4 24010070 */  li    $at, 112
/* 109508 8029FEF8 0081001A */  div   $zero, $a0, $at
/* 10950C 8029FEFC 00002012 */  mflo  $a0
/* 109510 8029FF00 AFA60018 */  sw    $a2, 0x18($sp)
/* 109514 8029FF04 0C003B96 */  jal   func_8000EE58
/* 109518 8029FF08 00000000 */   nop   
/* 10951C 8029FF0C 8FA60018 */  lw    $a2, 0x18($sp)
.L8029FF10:
/* 109520 8029FF10 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 109524 8029FF14 44813000 */  mtc1  $at, $f6
/* 109528 8029FF18 240F8000 */  li    $t7, -32768
/* 10952C 8029FF1C 2418003C */  li    $t8, 60
/* 109530 8029FF20 24190005 */  li    $t9, 5
/* 109534 8029FF24 A4CF0002 */  sh    $t7, 2($a2)
/* 109538 8029FF28 A4C00012 */  sh    $zero, 0x12($a2)
/* 10953C 8029FF2C A4D80004 */  sh    $t8, 4($a2)
/* 109540 8029FF30 A4D90006 */  sh    $t9, 6($a2)
/* 109544 8029FF34 10000068 */  b     .L802A00D8
/* 109548 8029FF38 E4C60028 */   swc1  $f6, 0x28($a2)
.L8029FF3C:
/* 10954C 8029FF3C 0C0AC0AD */  jal   func_802B02B4
/* 109550 8029FF40 24050007 */   li    $a1, 7
/* 109554 8029FF44 10000065 */  b     .L802A00DC
/* 109558 8029FF48 8FBF0014 */   lw    $ra, 0x14($sp)
/* 10955C 8029FF4C 84C30006 */  lh    $v1, 6($a2)
.L8029FF50:
/* 109560 8029FF50 10E30061 */  beq   $a3, $v1, .L802A00D8
/* 109564 8029FF54 2C61000A */   sltiu $at, $v1, 0xa
/* 109568 8029FF58 1020005F */  beqz  $at, .L802A00D8
/* 10956C 8029FF5C 00034080 */   sll   $t0, $v1, 2
/* 109570 8029FF60 3C01802C */  lui   $at, %hi(jpt_802B98CC)
/* 109574 8029FF64 00280821 */  addu  $at, $at, $t0
/* 109578 8029FF68 8C2898CC */  lw    $t0, %lo(jpt_802B98CC)($at)
/* 10957C 8029FF6C 01000008 */  jr    $t0
/* 109580 8029FF70 00000000 */   nop   
glabel L8029FF74
/* 109584 8029FF74 3C055101 */  lui   $a1, (0x51018008 >> 16) # lui $a1, 0x5101
/* 109588 8029FF78 34A58008 */  ori   $a1, (0x51018008 & 0xFFFF) # ori $a1, $a1, 0x8008
/* 10958C 8029FF7C 24C40018 */  addiu $a0, $a2, 0x18
/* 109590 8029FF80 0C0327BD */  jal   func_800C9EF4
/* 109594 8029FF84 AFA60018 */   sw    $a2, 0x18($sp)
/* 109598 8029FF88 8FA60018 */  lw    $a2, 0x18($sp)
/* 10959C 8029FF8C 3C098016 */  lui   $t1, %hi(D_8015F9B8) # $t1, 0x8016
/* 1095A0 8029FF90 2529F9B8 */  addiu $t1, %lo(D_8015F9B8) # addiu $t1, $t1, -0x648
/* 1095A4 8029FF94 24010070 */  li    $at, 112
/* 1095A8 8029FF98 00C92023 */  subu  $a0, $a2, $t1
/* 1095AC 8029FF9C 0081001A */  div   $zero, $a0, $at
/* 1095B0 8029FFA0 00002012 */  mflo  $a0
/* 1095B4 8029FFA4 0C003B96 */  jal   func_8000EE58
/* 1095B8 8029FFA8 00000000 */   nop   
/* 1095BC 8029FFAC 8FA60018 */  lw    $a2, 0x18($sp)
/* 1095C0 8029FFB0 24070007 */  li    $a3, 7
glabel L8029FFB4
/* 1095C4 8029FFB4 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 1095C8 8029FFB8 44814000 */  mtc1  $at, $f8
/* 1095CC 8029FFBC 240B8000 */  li    $t3, -32768
/* 1095D0 8029FFC0 240C003C */  li    $t4, 60
/* 1095D4 8029FFC4 A4CB0002 */  sh    $t3, 2($a2)
/* 1095D8 8029FFC8 A4C00012 */  sh    $zero, 0x12($a2)
/* 1095DC 8029FFCC A4CC0004 */  sh    $t4, 4($a2)
/* 1095E0 8029FFD0 A4C70006 */  sh    $a3, 6($a2)
/* 1095E4 8029FFD4 10000040 */  b     .L802A00D8
/* 1095E8 8029FFD8 E4C80028 */   swc1  $f8, 0x28($a2)
.L8029FFDC:
/* 1095EC 8029FFDC 84C30006 */  lh    $v1, 6($a2)
/* 1095F0 8029FFE0 10E3003D */  beq   $a3, $v1, .L802A00D8
/* 1095F4 8029FFE4 2C61000A */   sltiu $at, $v1, 0xa
/* 1095F8 8029FFE8 1020003B */  beqz  $at, .L802A00D8
/* 1095FC 8029FFEC 00036880 */   sll   $t5, $v1, 2
/* 109600 8029FFF0 3C01802C */  lui   $at, %hi(jpt_802B98F4)
/* 109604 8029FFF4 002D0821 */  addu  $at, $at, $t5
/* 109608 8029FFF8 8C2D98F4 */  lw    $t5, %lo(jpt_802B98F4)($at)
/* 10960C 8029FFFC 01A00008 */  jr    $t5
/* 109610 802A0000 00000000 */   nop   
glabel L802A0004
/* 109614 802A0004 3C0E8016 */  lui   $t6, %hi(D_8015F9B8) # $t6, 0x8016
/* 109618 802A0008 25CEF9B8 */  addiu $t6, %lo(D_8015F9B8) # addiu $t6, $t6, -0x648
/* 10961C 802A000C 00CE2023 */  subu  $a0, $a2, $t6
/* 109620 802A0010 24010070 */  li    $at, 112
/* 109624 802A0014 0081001A */  div   $zero, $a0, $at
/* 109628 802A0018 00002012 */  mflo  $a0
/* 10962C 802A001C AFA60018 */  sw    $a2, 0x18($sp)
/* 109630 802A0020 0C003B96 */  jal   func_8000EE58
/* 109634 802A0024 00000000 */   nop   
/* 109638 802A0028 8FA60018 */  lw    $a2, 0x18($sp)
/* 10963C 802A002C 24070007 */  li    $a3, 7
glabel L802A0030
/* 109640 802A0030 3C014040 */  li    $at, 0x40400000 # 3.000000
/* 109644 802A0034 44815000 */  mtc1  $at, $f10
/* 109648 802A0038 24188000 */  li    $t8, -32768
/* 10964C 802A003C 2419003C */  li    $t9, 60
/* 109650 802A0040 A4D80002 */  sh    $t8, 2($a2)
/* 109654 802A0044 A4C00012 */  sh    $zero, 0x12($a2)
/* 109658 802A0048 A4D90004 */  sh    $t9, 4($a2)
/* 10965C 802A004C A4C70006 */  sh    $a3, 6($a2)
/* 109660 802A0050 10000021 */  b     .L802A00D8
/* 109664 802A0054 E4CA0028 */   swc1  $f10, 0x28($a2)
glabel L802A0058
/* 109668 802A0058 00C02025 */  move  $a0, $a2
/* 10966C 802A005C 0C0AC0AD */  jal   func_802B02B4
/* 109670 802A0060 24050008 */   li    $a1, 8
/* 109674 802A0064 1000001D */  b     .L802A00DC
/* 109678 802A0068 8FBF0014 */   lw    $ra, 0x14($sp)
.L802A006C:
/* 10967C 802A006C C4D00024 */  lwc1  $f16, 0x24($a2)
/* 109680 802A0070 84CE0006 */  lh    $t6, 6($a2)
/* 109684 802A0074 3C0D800F */  lui   $t5, %hi(gPlayers) # $t5, 0x800f
/* 109688 802A0078 4600848D */  trunc.w.s $f18, $f16
/* 10968C 802A007C 25AD6990 */  addiu $t5, %lo(gPlayers) # addiu $t5, $t5, 0x6990
/* 109690 802A0080 24088000 */  li    $t0, -32768
/* 109694 802A0084 44099000 */  mfc1  $t1, $f18
/* 109698 802A0088 00000000 */  nop   
/* 10969C 802A008C 00095400 */  sll   $t2, $t1, 0x10
/* 1096A0 802A0090 000A5C03 */  sra   $t3, $t2, 0x10
/* 1096A4 802A0094 000B60C0 */  sll   $t4, $t3, 3
/* 1096A8 802A0098 018B6023 */  subu  $t4, $t4, $t3
/* 1096AC 802A009C 000C6100 */  sll   $t4, $t4, 4
/* 1096B0 802A00A0 018B6023 */  subu  $t4, $t4, $t3
/* 1096B4 802A00A4 000C6080 */  sll   $t4, $t4, 2
/* 1096B8 802A00A8 018B6023 */  subu  $t4, $t4, $t3
/* 1096BC 802A00AC 000C60C0 */  sll   $t4, $t4, 3
/* 1096C0 802A00B0 15C00006 */  bnez  $t6, .L802A00CC
/* 1096C4 802A00B4 018D1021 */   addu  $v0, $t4, $t5
/* 1096C8 802A00B8 8C4F000C */  lw    $t7, 0xc($v0)
/* 1096CC 802A00BC 3C01FFFB */  lui   $at, (0xFFFBFFFF >> 16) # lui $at, 0xfffb
/* 1096D0 802A00C0 3421FFFF */  ori   $at, (0xFFFBFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 1096D4 802A00C4 01E1C024 */  and   $t8, $t7, $at
/* 1096D8 802A00C8 AC58000C */  sw    $t8, 0xc($v0)
.L802A00CC:
/* 1096DC 802A00CC A4D90006 */  sh    $t9, 6($a2)
/* 1096E0 802A00D0 A4C80002 */  sh    $t0, 2($a2)
/* 1096E4 802A00D4 A4C00004 */  sh    $zero, 4($a2)
.L802A00D8:
glabel L802A00D8
/* 1096E8 802A00D8 8FBF0014 */  lw    $ra, 0x14($sp)
.L802A00DC:
/* 1096EC 802A00DC 27BD0018 */  addiu $sp, $sp, 0x18
/* 1096F0 802A00E0 03E00008 */  jr    $ra
/* 1096F4 802A00E4 00000000 */   nop   

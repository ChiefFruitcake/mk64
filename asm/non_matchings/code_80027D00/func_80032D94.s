glabel func_80032D94
/* 033994 80032D94 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 033998 80032D98 AFBF0014 */  sw    $ra, 0x14($sp)
/* 03399C 80032D9C 0C009F40 */  jal   get_player_index_for_player
/* 0339A0 80032DA0 AFA40018 */   sw    $a0, 0x18($sp)
/* 0339A4 80032DA4 8FA40018 */  lw    $a0, 0x18($sp)
/* 0339A8 80032DA8 44802800 */  mtc1  $zero, $f5
/* 0339AC 80032DAC 44802000 */  mtc1  $zero, $f4
/* 0339B0 80032DB0 C48C009C */  lwc1  $f12, 0x9c($a0)
/* 0339B4 80032DB4 46006021 */  cvt.d.s $f0, $f12
/* 0339B8 80032DB8 4620203E */  c.le.d $f4, $f0
/* 0339BC 80032DBC 00000000 */  nop
/* 0339C0 80032DC0 4500001A */  bc1f  .L80032E2C
/* 0339C4 80032DC4 00000000 */   nop
/* 0339C8 80032DC8 C4860214 */  lwc1  $f6, 0x214($a0)
/* 0339CC 80032DCC 3C01800F */  lui   $at, %hi(D_800EDBA8)
/* 0339D0 80032DD0 D42ADBA8 */  ldc1  $f10, %lo(D_800EDBA8)($at)
/* 0339D4 80032DD4 46003221 */  cvt.d.s $f8, $f6
/* 0339D8 80032DD8 462A4402 */  mul.d $f16, $f8, $f10
/* 0339DC 80032DDC 4630003C */  c.lt.d $f0, $f16
/* 0339E0 80032DE0 00000000 */  nop
/* 0339E4 80032DE4 45000011 */  bc1f  .L80032E2C
/* 0339E8 80032DE8 00000000 */   nop
/* 0339EC 80032DEC 948E0254 */  lhu   $t6, 0x254($a0)
/* 0339F0 80032DF0 3C02800E */  lui   $v0, %hi(gKartAccelerationTables) # $v0, 0x800e
/* 0339F4 80032DF4 24423010 */  addiu $v0, %lo(gKartAccelerationTables) # addiu $v0, $v0, 0x3010
/* 0339F8 80032DF8 000E7880 */  sll   $t7, $t6, 2
/* 0339FC 80032DFC 004FC021 */  addu  $t8, $v0, $t7
/* 033A00 80032E00 8F190000 */  lw    $t9, ($t8)
/* 033A04 80032E04 3C01800F */  lui   $at, %hi(D_800EDBB0)
/* 033A08 80032E08 D42EDBB0 */  ldc1  $f14, %lo(D_800EDBB0)($at)
/* 033A0C 80032E0C C7320000 */  lwc1  $f18, ($t9)
/* 033A10 80032E10 46009121 */  cvt.d.s $f4, $f18
/* 033A14 80032E14 462E2182 */  mul.d $f6, $f4, $f14
/* 033A18 80032E18 46260200 */  add.d $f8, $f0, $f6
/* 033A1C 80032E1C 462042A0 */  cvt.s.d $f10, $f8
/* 033A20 80032E20 E48A009C */  swc1  $f10, 0x9c($a0)
/* 033A24 80032E24 C48C009C */  lwc1  $f12, 0x9c($a0)
/* 033A28 80032E28 46006021 */  cvt.d.s $f0, $f12
.L80032E2C:
/* 033A2C 80032E2C 3C01800F */  lui   $at, %hi(D_800EDBB8)
/* 033A30 80032E30 C4900214 */  lwc1  $f16, 0x214($a0)
/* 033A34 80032E34 D42EDBB8 */  ldc1  $f14, %lo(D_800EDBB8)($at)
/* 033A38 80032E38 3C01800F */  lui   $at, %hi(D_800EDBC0)
/* 033A3C 80032E3C D432DBC0 */  ldc1  $f18, %lo(D_800EDBC0)($at)
/* 033A40 80032E40 460080A1 */  cvt.d.s $f2, $f16
/* 033A44 80032E44 3C02800E */  lui   $v0, %hi(gKartAccelerationTables) # $v0, 0x800e
/* 033A48 80032E48 46321102 */  mul.d $f4, $f2, $f18
/* 033A4C 80032E4C 24423010 */  addiu $v0, %lo(gKartAccelerationTables) # addiu $v0, $v0, 0x3010
/* 033A50 80032E50 3C01800F */  lui   $at, %hi(D_800EDBC8)
/* 033A54 80032E54 4620203E */  c.le.d $f4, $f0
/* 033A58 80032E58 00000000 */  nop
/* 033A5C 80032E5C 45000015 */  bc1f  .L80032EB4
/* 033A60 80032E60 00000000 */   nop
/* 033A64 80032E64 D426DBC8 */  ldc1  $f6, %lo(D_800EDBC8)($at)
/* 033A68 80032E68 46261202 */  mul.d $f8, $f2, $f6
/* 033A6C 80032E6C 4628003C */  c.lt.d $f0, $f8
/* 033A70 80032E70 00000000 */  nop
/* 033A74 80032E74 4500000F */  bc1f  .L80032EB4
/* 033A78 80032E78 00000000 */   nop
/* 033A7C 80032E7C 94880254 */  lhu   $t0, 0x254($a0)
/* 033A80 80032E80 C4880214 */  lwc1  $f8, 0x214($a0)
/* 033A84 80032E84 00084880 */  sll   $t1, $t0, 2
/* 033A88 80032E88 00495021 */  addu  $t2, $v0, $t1
/* 033A8C 80032E8C 8D4B0000 */  lw    $t3, ($t2)
/* 033A90 80032E90 460040A1 */  cvt.d.s $f2, $f8
/* 033A94 80032E94 C56A0004 */  lwc1  $f10, 4($t3)
/* 033A98 80032E98 46005421 */  cvt.d.s $f16, $f10
/* 033A9C 80032E9C 462E8482 */  mul.d $f18, $f16, $f14
/* 033AA0 80032EA0 46320100 */  add.d $f4, $f0, $f18
/* 033AA4 80032EA4 462021A0 */  cvt.s.d $f6, $f4
/* 033AA8 80032EA8 E486009C */  swc1  $f6, 0x9c($a0)
/* 033AAC 80032EAC C48C009C */  lwc1  $f12, 0x9c($a0)
/* 033AB0 80032EB0 46006021 */  cvt.d.s $f0, $f12
.L80032EB4:
/* 033AB4 80032EB4 3C01800F */  lui   $at, %hi(D_800EDBD0)
/* 033AB8 80032EB8 D42ADBD0 */  ldc1  $f10, %lo(D_800EDBD0)($at)
/* 033ABC 80032EBC 3C01800F */  lui   $at, %hi(D_800EDBD8)
/* 033AC0 80032EC0 462A1402 */  mul.d $f16, $f2, $f10
/* 033AC4 80032EC4 4620803E */  c.le.d $f16, $f0
/* 033AC8 80032EC8 00000000 */  nop
/* 033ACC 80032ECC 45000015 */  bc1f  .L80032F24
/* 033AD0 80032ED0 00000000 */   nop
/* 033AD4 80032ED4 D432DBD8 */  ldc1  $f18, %lo(D_800EDBD8)($at)
/* 033AD8 80032ED8 46321102 */  mul.d $f4, $f2, $f18
/* 033ADC 80032EDC 4624003C */  c.lt.d $f0, $f4
/* 033AE0 80032EE0 00000000 */  nop
/* 033AE4 80032EE4 4500000F */  bc1f  .L80032F24
/* 033AE8 80032EE8 00000000 */   nop
/* 033AEC 80032EEC 948C0254 */  lhu   $t4, 0x254($a0)
/* 033AF0 80032EF0 C4840214 */  lwc1  $f4, 0x214($a0)
/* 033AF4 80032EF4 000C6880 */  sll   $t5, $t4, 2
/* 033AF8 80032EF8 004D7021 */  addu  $t6, $v0, $t5
/* 033AFC 80032EFC 8DCF0000 */  lw    $t7, ($t6)
/* 033B00 80032F00 460020A1 */  cvt.d.s $f2, $f4
/* 033B04 80032F04 C5E60008 */  lwc1  $f6, 8($t7)
/* 033B08 80032F08 46003221 */  cvt.d.s $f8, $f6
/* 033B0C 80032F0C 462E4282 */  mul.d $f10, $f8, $f14
/* 033B10 80032F10 462A0400 */  add.d $f16, $f0, $f10
/* 033B14 80032F14 462084A0 */  cvt.s.d $f18, $f16
/* 033B18 80032F18 E492009C */  swc1  $f18, 0x9c($a0)
/* 033B1C 80032F1C C48C009C */  lwc1  $f12, 0x9c($a0)
/* 033B20 80032F20 46006021 */  cvt.d.s $f0, $f12
.L80032F24:
/* 033B24 80032F24 3C01800F */  lui   $at, %hi(D_800EDBE0)
/* 033B28 80032F28 D426DBE0 */  ldc1  $f6, %lo(D_800EDBE0)($at)
/* 033B2C 80032F2C 3C01800F */  lui   $at, %hi(D_800EDBE8)
/* 033B30 80032F30 46261202 */  mul.d $f8, $f2, $f6
/* 033B34 80032F34 4620403E */  c.le.d $f8, $f0
/* 033B38 80032F38 00000000 */  nop
/* 033B3C 80032F3C 45000015 */  bc1f  .L80032F94
/* 033B40 80032F40 00000000 */   nop
/* 033B44 80032F44 D42ADBE8 */  ldc1  $f10, %lo(D_800EDBE8)($at)
/* 033B48 80032F48 462A1402 */  mul.d $f16, $f2, $f10
/* 033B4C 80032F4C 4630003C */  c.lt.d $f0, $f16
/* 033B50 80032F50 00000000 */  nop
/* 033B54 80032F54 4500000F */  bc1f  .L80032F94
/* 033B58 80032F58 00000000 */   nop
/* 033B5C 80032F5C 94980254 */  lhu   $t8, 0x254($a0)
/* 033B60 80032F60 C4900214 */  lwc1  $f16, 0x214($a0)
/* 033B64 80032F64 0018C880 */  sll   $t9, $t8, 2
/* 033B68 80032F68 00594021 */  addu  $t0, $v0, $t9
/* 033B6C 80032F6C 8D090000 */  lw    $t1, ($t0)
/* 033B70 80032F70 460080A1 */  cvt.d.s $f2, $f16
/* 033B74 80032F74 C532000C */  lwc1  $f18, 0xc($t1)
/* 033B78 80032F78 46009121 */  cvt.d.s $f4, $f18
/* 033B7C 80032F7C 462E2182 */  mul.d $f6, $f4, $f14
/* 033B80 80032F80 46260200 */  add.d $f8, $f0, $f6
/* 033B84 80032F84 462042A0 */  cvt.s.d $f10, $f8
/* 033B88 80032F88 E48A009C */  swc1  $f10, 0x9c($a0)
/* 033B8C 80032F8C C48C009C */  lwc1  $f12, 0x9c($a0)
/* 033B90 80032F90 46006021 */  cvt.d.s $f0, $f12
.L80032F94:
/* 033B94 80032F94 3C01800F */  lui   $at, %hi(D_800EDBF0)
/* 033B98 80032F98 D432DBF0 */  ldc1  $f18, %lo(D_800EDBF0)($at)
/* 033B9C 80032F9C 3C013FE0 */  lui   $at, 0x3fe0
/* 033BA0 80032FA0 46321102 */  mul.d $f4, $f2, $f18
/* 033BA4 80032FA4 4620203E */  c.le.d $f4, $f0
/* 033BA8 80032FA8 00000000 */  nop
/* 033BAC 80032FAC 45020018 */  bc1fl .L80033010
/* 033BB0 80032FB0 3C013FE0 */   li    $at, 0x3FE00000 # 1.750000
/* 033BB4 80032FB4 44813800 */  mtc1  $at, $f7
/* 033BB8 80032FB8 44803000 */  mtc1  $zero, $f6
/* 033BBC 80032FBC 00000000 */  nop
/* 033BC0 80032FC0 46261202 */  mul.d $f8, $f2, $f6
/* 033BC4 80032FC4 4628003C */  c.lt.d $f0, $f8
/* 033BC8 80032FC8 00000000 */  nop
/* 033BCC 80032FCC 45020010 */  bc1fl .L80033010
/* 033BD0 80032FD0 3C013FE0 */   lui   $at, 0x3fe0
/* 033BD4 80032FD4 948A0254 */  lhu   $t2, 0x254($a0)
/* 033BD8 80032FD8 C4880214 */  lwc1  $f8, 0x214($a0)
/* 033BDC 80032FDC 000A5880 */  sll   $t3, $t2, 2
/* 033BE0 80032FE0 004B6021 */  addu  $t4, $v0, $t3
/* 033BE4 80032FE4 8D8D0000 */  lw    $t5, ($t4)
/* 033BE8 80032FE8 460040A1 */  cvt.d.s $f2, $f8
/* 033BEC 80032FEC C5AA0010 */  lwc1  $f10, 0x10($t5)
/* 033BF0 80032FF0 46005421 */  cvt.d.s $f16, $f10
/* 033BF4 80032FF4 462E8482 */  mul.d $f18, $f16, $f14
/* 033BF8 80032FF8 46320100 */  add.d $f4, $f0, $f18
/* 033BFC 80032FFC 462021A0 */  cvt.s.d $f6, $f4
/* 033C00 80033000 E486009C */  swc1  $f6, 0x9c($a0)
/* 033C04 80033004 C48C009C */  lwc1  $f12, 0x9c($a0)
/* 033C08 80033008 46006021 */  cvt.d.s $f0, $f12
/* 033C0C 8003300C 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
.L80033010:
/* 033C10 80033010 44815800 */  mtc1  $at, $f11
/* 033C14 80033014 44805000 */  mtc1  $zero, $f10
/* 033C18 80033018 3C01800F */  lui   $at, %hi(D_800EDBF8)
/* 033C1C 8003301C 462A1402 */  mul.d $f16, $f2, $f10
/* 033C20 80033020 4620803E */  c.le.d $f16, $f0
/* 033C24 80033024 00000000 */  nop
/* 033C28 80033028 45000015 */  bc1f  .L80033080
/* 033C2C 8003302C 00000000 */   nop
/* 033C30 80033030 D432DBF8 */  ldc1  $f18, %lo(D_800EDBF8)($at)
/* 033C34 80033034 46321102 */  mul.d $f4, $f2, $f18
/* 033C38 80033038 4624003C */  c.lt.d $f0, $f4
/* 033C3C 8003303C 00000000 */  nop
/* 033C40 80033040 4500000F */  bc1f  .L80033080
/* 033C44 80033044 00000000 */   nop
/* 033C48 80033048 948E0254 */  lhu   $t6, 0x254($a0)
/* 033C4C 8003304C C4840214 */  lwc1  $f4, 0x214($a0)
/* 033C50 80033050 000E7880 */  sll   $t7, $t6, 2
/* 033C54 80033054 004FC021 */  addu  $t8, $v0, $t7
/* 033C58 80033058 8F190000 */  lw    $t9, ($t8)
/* 033C5C 8003305C 460020A1 */  cvt.d.s $f2, $f4
/* 033C60 80033060 C7260014 */  lwc1  $f6, 0x14($t9)
/* 033C64 80033064 46003221 */  cvt.d.s $f8, $f6
/* 033C68 80033068 462E4282 */  mul.d $f10, $f8, $f14
/* 033C6C 8003306C 462A0400 */  add.d $f16, $f0, $f10
/* 033C70 80033070 462084A0 */  cvt.s.d $f18, $f16
/* 033C74 80033074 E492009C */  swc1  $f18, 0x9c($a0)
/* 033C78 80033078 C48C009C */  lwc1  $f12, 0x9c($a0)
/* 033C7C 8003307C 46006021 */  cvt.d.s $f0, $f12
.L80033080:
/* 033C80 80033080 3C01800F */  lui   $at, %hi(D_800EDC00)
/* 033C84 80033084 D426DC00 */  ldc1  $f6, %lo(D_800EDC00)($at)
/* 033C88 80033088 3C01800F */  lui   $at, %hi(D_800EDC08)
/* 033C8C 8003308C 46261202 */  mul.d $f8, $f2, $f6
/* 033C90 80033090 4620403E */  c.le.d $f8, $f0
/* 033C94 80033094 00000000 */  nop
/* 033C98 80033098 45000015 */  bc1f  .L800330F0
/* 033C9C 8003309C 00000000 */   nop
/* 033CA0 800330A0 D42ADC08 */  ldc1  $f10, %lo(D_800EDC08)($at)
/* 033CA4 800330A4 462A1402 */  mul.d $f16, $f2, $f10
/* 033CA8 800330A8 4630003C */  c.lt.d $f0, $f16
/* 033CAC 800330AC 00000000 */  nop
/* 033CB0 800330B0 4500000F */  bc1f  .L800330F0
/* 033CB4 800330B4 00000000 */   nop
/* 033CB8 800330B8 94880254 */  lhu   $t0, 0x254($a0)
/* 033CBC 800330BC C4900214 */  lwc1  $f16, 0x214($a0)
/* 033CC0 800330C0 00084880 */  sll   $t1, $t0, 2
/* 033CC4 800330C4 00495021 */  addu  $t2, $v0, $t1
/* 033CC8 800330C8 8D4B0000 */  lw    $t3, ($t2)
/* 033CCC 800330CC 460080A1 */  cvt.d.s $f2, $f16
/* 033CD0 800330D0 C5720018 */  lwc1  $f18, 0x18($t3)
/* 033CD4 800330D4 46009121 */  cvt.d.s $f4, $f18
/* 033CD8 800330D8 462E2182 */  mul.d $f6, $f4, $f14
/* 033CDC 800330DC 46260200 */  add.d $f8, $f0, $f6
/* 033CE0 800330E0 462042A0 */  cvt.s.d $f10, $f8
/* 033CE4 800330E4 E48A009C */  swc1  $f10, 0x9c($a0)
/* 033CE8 800330E8 C48C009C */  lwc1  $f12, 0x9c($a0)
/* 033CEC 800330EC 46006021 */  cvt.d.s $f0, $f12
.L800330F0:
/* 033CF0 800330F0 3C01800F */  lui   $at, %hi(D_800EDC10)
/* 033CF4 800330F4 D432DC10 */  ldc1  $f18, %lo(D_800EDC10)($at)
/* 033CF8 800330F8 3C01800F */  lui   $at, %hi(D_800EDC18)
/* 033CFC 800330FC 46321102 */  mul.d $f4, $f2, $f18
/* 033D00 80033100 4620203E */  c.le.d $f4, $f0
/* 033D04 80033104 00000000 */  nop
/* 033D08 80033108 45000017 */  bc1f  .L80033168
/* 033D0C 8003310C 00000000 */   nop
/* 033D10 80033110 D426DC18 */  ldc1  $f6, %lo(D_800EDC18)($at)
/* 033D14 80033114 46261202 */  mul.d $f8, $f2, $f6
/* 033D18 80033118 4628003C */  c.lt.d $f0, $f8
/* 033D1C 8003311C 00000000 */  nop
/* 033D20 80033120 45000011 */  bc1f  .L80033168
/* 033D24 80033124 00000000 */   nop
/* 033D28 80033128 948C0254 */  lhu   $t4, 0x254($a0)
/* 033D2C 8003312C 3C01800F */  lui   $at, %hi(D_800EDC20)
/* 033D30 80033130 D42EDC20 */  ldc1  $f14, %lo(D_800EDC20)($at)
/* 033D34 80033134 000C6880 */  sll   $t5, $t4, 2
/* 033D38 80033138 004D7021 */  addu  $t6, $v0, $t5
/* 033D3C 8003313C 8DCF0000 */  lw    $t7, ($t6)
/* 033D40 80033140 C4880214 */  lwc1  $f8, 0x214($a0)
/* 033D44 80033144 C5EA001C */  lwc1  $f10, 0x1c($t7)
/* 033D48 80033148 460040A1 */  cvt.d.s $f2, $f8
/* 033D4C 8003314C 46005421 */  cvt.d.s $f16, $f10
/* 033D50 80033150 462E8482 */  mul.d $f18, $f16, $f14
/* 033D54 80033154 46320100 */  add.d $f4, $f0, $f18
/* 033D58 80033158 462021A0 */  cvt.s.d $f6, $f4
/* 033D5C 8003315C E486009C */  swc1  $f6, 0x9c($a0)
/* 033D60 80033160 C48C009C */  lwc1  $f12, 0x9c($a0)
/* 033D64 80033164 46006021 */  cvt.d.s $f0, $f12
.L80033168:
/* 033D68 80033168 3C01800F */  lui   $at, %hi(D_800EDC28)
/* 033D6C 8003316C D42EDC28 */  ldc1  $f14, %lo(D_800EDC28)($at)
/* 033D70 80033170 3C01800F */  lui   $at, %hi(D_800EDC30)
/* 033D74 80033174 D42ADC30 */  ldc1  $f10, %lo(D_800EDC30)($at)
/* 033D78 80033178 3C01800F */  lui   $at, %hi(D_800EDC38)
/* 033D7C 8003317C 462A1402 */  mul.d $f16, $f2, $f10
/* 033D80 80033180 4620803E */  c.le.d $f16, $f0
/* 033D84 80033184 00000000 */  nop
/* 033D88 80033188 45000015 */  bc1f  .L800331E0
/* 033D8C 8003318C 00000000 */   nop
/* 033D90 80033190 D432DC38 */  ldc1  $f18, %lo(D_800EDC38)($at)
/* 033D94 80033194 46321102 */  mul.d $f4, $f2, $f18
/* 033D98 80033198 4624003C */  c.lt.d $f0, $f4
/* 033D9C 8003319C 00000000 */  nop
/* 033DA0 800331A0 4500000F */  bc1f  .L800331E0
/* 033DA4 800331A4 00000000 */   nop
/* 033DA8 800331A8 94980254 */  lhu   $t8, 0x254($a0)
/* 033DAC 800331AC C4840214 */  lwc1  $f4, 0x214($a0)
/* 033DB0 800331B0 0018C880 */  sll   $t9, $t8, 2
/* 033DB4 800331B4 00594021 */  addu  $t0, $v0, $t9
/* 033DB8 800331B8 8D090000 */  lw    $t1, ($t0)
/* 033DBC 800331BC 460020A1 */  cvt.d.s $f2, $f4
/* 033DC0 800331C0 C5260020 */  lwc1  $f6, 0x20($t1)
/* 033DC4 800331C4 46003221 */  cvt.d.s $f8, $f6
/* 033DC8 800331C8 462E4282 */  mul.d $f10, $f8, $f14
/* 033DCC 800331CC 462A0400 */  add.d $f16, $f0, $f10
/* 033DD0 800331D0 462084A0 */  cvt.s.d $f18, $f16
/* 033DD4 800331D4 E492009C */  swc1  $f18, 0x9c($a0)
/* 033DD8 800331D8 C48C009C */  lwc1  $f12, 0x9c($a0)
/* 033DDC 800331DC 46006021 */  cvt.d.s $f0, $f12
.L800331E0:
/* 033DE0 800331E0 3C01800F */  lui   $at, %hi(D_800EDC40)
/* 033DE4 800331E4 D426DC40 */  ldc1  $f6, %lo(D_800EDC40)($at)
/* 033DE8 800331E8 46261202 */  mul.d $f8, $f2, $f6
/* 033DEC 800331EC 4620403E */  c.le.d $f8, $f0
/* 033DF0 800331F0 00000000 */  nop
/* 033DF4 800331F4 45020011 */  bc1fl .L8003323C
/* 033DF8 800331F8 44800000 */   mtc1  $zero, $f0
/* 033DFC 800331FC 4622003E */  c.le.d $f0, $f2
/* 033E00 80033200 00000000 */  nop
/* 033E04 80033204 4502000D */  bc1fl .L8003323C
/* 033E08 80033208 44800000 */   mtc1  $zero, $f0
/* 033E0C 8003320C 948A0254 */  lhu   $t2, 0x254($a0)
/* 033E10 80033210 000A5880 */  sll   $t3, $t2, 2
/* 033E14 80033214 004B6021 */  addu  $t4, $v0, $t3
/* 033E18 80033218 8D8D0000 */  lw    $t5, ($t4)
/* 033E1C 8003321C C5AA0024 */  lwc1  $f10, 0x24($t5)
/* 033E20 80033220 46005421 */  cvt.d.s $f16, $f10
/* 033E24 80033224 462E8482 */  mul.d $f18, $f16, $f14
/* 033E28 80033228 46320100 */  add.d $f4, $f0, $f18
/* 033E2C 8003322C 462021A0 */  cvt.s.d $f6, $f4
/* 033E30 80033230 E486009C */  swc1  $f6, 0x9c($a0)
/* 033E34 80033234 C48C009C */  lwc1  $f12, 0x9c($a0)
/* 033E38 80033238 44800000 */  mtc1  $zero, $f0
.L8003323C:
/* 033E3C 8003323C 00000000 */  nop
/* 033E40 80033240 4600603C */  c.lt.s $f12, $f0
/* 033E44 80033244 00000000 */  nop
/* 033E48 80033248 45000003 */  bc1f  .L80033258
/* 033E4C 8003324C 00000000 */   nop
/* 033E50 80033250 E480009C */  swc1  $f0, 0x9c($a0)
/* 033E54 80033254 C48C009C */  lwc1  $f12, 0x9c($a0)
.L80033258:
/* 033E58 80033258 460C6202 */  mul.s $f8, $f12, $f12
/* 033E5C 8003325C 3C0141C8 */  li    $at, 0x41C80000 # 25.000000
/* 033E60 80033260 44815000 */  mtc1  $at, $f10
/* 033E64 80033264 00000000 */  nop
/* 033E68 80033268 460A4403 */  div.s $f16, $f8, $f10
/* 033E6C 8003326C E4900098 */  swc1  $f16, 0x98($a0)
/* 033E70 80033270 8FBF0014 */  lw    $ra, 0x14($sp)
/* 033E74 80033274 27BD0018 */  addiu $sp, $sp, 0x18
/* 033E78 80033278 03E00008 */  jr    $ra
/* 033E7C 8003327C 00000000 */   nop

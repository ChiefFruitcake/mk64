glabel func_8003F138
/* 03FD38 8003F138 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 03FD3C 8003F13C AFBF0024 */  sw    $ra, 0x24($sp)
/* 03FD40 8003F140 AFB10020 */  sw    $s1, 0x20($sp)
/* 03FD44 8003F144 AFB0001C */  sw    $s0, 0x1c($sp)
/* 03FD48 8003F148 AFA5002C */  sw    $a1, 0x2c($sp)
/* 03FD4C 8003F14C C4860124 */  lwc1  $f6, 0x124($a0)
/* 03FD50 8003F150 C4A40000 */  lwc1  $f4, ($a1)
/* 03FD54 8003F154 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 03FD58 8003F158 44810000 */  mtc1  $at, $f0
/* 03FD5C 8003F15C 46062202 */  mul.s $f8, $f4, $f6
/* 03FD60 8003F160 8FAF003C */  lw    $t7, 0x3c($sp)
/* 03FD64 8003F164 3C01800F */  lui   $at, %hi(D_800EDF80)
/* 03FD68 8003F168 00808025 */  move  $s0, $a0
/* 03FD6C 8003F16C C5F00000 */  lwc1  $f16, ($t7)
/* 03FD70 8003F170 00E08825 */  move  $s1, $a3
/* 03FD74 8003F174 3C073F00 */  lui   $a3, 0x3f00
/* 03FD78 8003F178 46004282 */  mul.s $f10, $f8, $f0
/* 03FD7C 8003F17C 460A8480 */  add.s $f18, $f16, $f10
/* 03FD80 8003F180 E5F20000 */  swc1  $f18, ($t7)
/* 03FD84 8003F184 C4860124 */  lwc1  $f6, 0x124($a0)
/* 03FD88 8003F188 C4A40004 */  lwc1  $f4, 4($a1)
/* 03FD8C 8003F18C D42ADF80 */  ldc1  $f10, %lo(D_800EDF80)($at)
/* 03FD90 8003F190 8FB80040 */  lw    $t8, 0x40($sp)
/* 03FD94 8003F194 46062202 */  mul.s $f8, $f4, $f6
/* 03FD98 8003F198 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 03FD9C 8003F19C C7040000 */  lwc1  $f4, ($t8)
/* 03FDA0 8003F1A0 460021A1 */  cvt.d.s $f6, $f4
/* 03FDA4 8003F1A4 46004421 */  cvt.d.s $f16, $f8
/* 03FDA8 8003F1A8 462A8482 */  mul.d $f18, $f16, $f10
/* 03FDAC 8003F1AC 46323200 */  add.d $f8, $f6, $f18
/* 03FDB0 8003F1B0 46204420 */  cvt.s.d $f16, $f8
/* 03FDB4 8003F1B4 E7100000 */  swc1  $f16, ($t8)
/* 03FDB8 8003F1B8 C4840124 */  lwc1  $f4, 0x124($a0)
/* 03FDBC 8003F1BC C4AA0008 */  lwc1  $f10, 8($a1)
/* 03FDC0 8003F1C0 8FB90044 */  lw    $t9, 0x44($sp)
/* 03FDC4 8003F1C4 00A02025 */  move  $a0, $a1
/* 03FDC8 8003F1C8 46045182 */  mul.s $f6, $f10, $f4
/* 03FDCC 8003F1CC C7280000 */  lwc1  $f8, ($t9)
/* 03FDD0 8003F1D0 44815000 */  mtc1  $at, $f10
/* 03FDD4 8003F1D4 46003482 */  mul.s $f18, $f6, $f0
/* 03FDD8 8003F1D8 46124400 */  add.s $f16, $f8, $f18
/* 03FDDC 8003F1DC E7300000 */  swc1  $f16, ($t9)
/* 03FDE0 8003F1E0 8FA80038 */  lw    $t0, 0x38($sp)
/* 03FDE4 8003F1E4 8D050000 */  lw    $a1, ($t0)
/* 03FDE8 8003F1E8 0C00A97D */  jal   func_8002A5F4
/* 03FDEC 8003F1EC E7AA0010 */   swc1  $f10, 0x10($sp)
/* 03FDF0 8003F1F0 960900F8 */  lhu   $t1, 0xf8($s0)
/* 03FDF4 8003F1F4 24010008 */  li    $at, 8
/* 03FDF8 8003F1F8 15210005 */  bne   $t1, $at, .L8003F210
/* 03FDFC 8003F1FC 00000000 */   nop   
/* 03FE00 8003F200 860A0044 */  lh    $t2, 0x44($s0)
/* 03FE04 8003F204 2401FFFE */  li    $at, -2
/* 03FE08 8003F208 01415824 */  and   $t3, $t2, $at
/* 03FE0C 8003F20C A60B0044 */  sh    $t3, 0x44($s0)
.L8003F210:
/* 03FE10 8003F210 3C01800F */  lui   $at, %hi(D_800EDF88) # $at, 0x800f
/* 03FE14 8003F214 C424DF88 */  lwc1  $f4, %lo(D_800EDF88)($at)
/* 03FE18 8003F218 C6060144 */  lwc1  $f6, 0x144($s0)
/* 03FE1C 8003F21C 4604303E */  c.le.s $f6, $f4
/* 03FE20 8003F220 00000000 */  nop   
/* 03FE24 8003F224 45020033 */  bc1fl .L8003F2F4
/* 03FE28 8003F228 3C0141A0 */   lui   $at, 0x41a0
/* 03FE2C 8003F22C 860C0206 */  lh    $t4, 0x206($s0)
/* 03FE30 8003F230 240200B6 */  li    $v0, 182
/* 03FE34 8003F234 240300C8 */  li    $v1, 200
/* 03FE38 8003F238 0182001A */  div   $zero, $t4, $v0
/* 03FE3C 8003F23C 00006812 */  mflo  $t5
/* 03FE40 8003F240 02002025 */  move  $a0, $s0
/* 03FE44 8003F244 14400002 */  bnez  $v0, .L8003F250
/* 03FE48 8003F248 00000000 */   nop   
/* 03FE4C 8003F24C 0007000D */  break 7
.L8003F250:
/* 03FE50 8003F250 2401FFFF */  li    $at, -1
/* 03FE54 8003F254 14410004 */  bne   $v0, $at, .L8003F268
/* 03FE58 8003F258 3C018000 */   lui   $at, 0x8000
/* 03FE5C 8003F25C 15810002 */  bne   $t4, $at, .L8003F268
/* 03FE60 8003F260 00000000 */   nop   
/* 03FE64 8003F264 0006000D */  break 6
.L8003F268:
/* 03FE68 8003F268 01A30019 */  multu $t5, $v1
/* 03FE6C 8003F26C 3C054080 */  lui   $a1, 0x4080
/* 03FE70 8003F270 00007812 */  mflo  $t7
/* 03FE74 8003F274 448F4000 */  mtc1  $t7, $f8
/* 03FE78 8003F278 00000000 */  nop   
/* 03FE7C 8003F27C 468044A0 */  cvt.s.w $f18, $f8
/* 03FE80 8003F280 E6320000 */  swc1  $f18, ($s1)
/* 03FE84 8003F284 861800C4 */  lh    $t8, 0xc4($s0)
/* 03FE88 8003F288 0302001A */  div   $zero, $t8, $v0
/* 03FE8C 8003F28C 0000C812 */  mflo  $t9
/* 03FE90 8003F290 00197023 */  negu  $t6, $t9
/* 03FE94 8003F294 14400002 */  bnez  $v0, .L8003F2A0
/* 03FE98 8003F298 00000000 */   nop   
/* 03FE9C 8003F29C 0007000D */  break 7
.L8003F2A0:
/* 03FEA0 8003F2A0 2401FFFF */  li    $at, -1
/* 03FEA4 8003F2A4 14410004 */  bne   $v0, $at, .L8003F2B8
/* 03FEA8 8003F2A8 3C018000 */   lui   $at, 0x8000
/* 03FEAC 8003F2AC 17010002 */  bne   $t8, $at, .L8003F2B8
/* 03FEB0 8003F2B0 00000000 */   nop   
/* 03FEB4 8003F2B4 0006000D */  break 6
.L8003F2B8:
/* 03FEB8 8003F2B8 01C30019 */  multu $t6, $v1
/* 03FEBC 8003F2BC 00004012 */  mflo  $t0
/* 03FEC0 8003F2C0 44888000 */  mtc1  $t0, $f16
/* 03FEC4 8003F2C4 00000000 */  nop   
/* 03FEC8 8003F2C8 468082A0 */  cvt.s.w $f10, $f16
/* 03FECC 8003F2CC 0C00C7D2 */  jal   func_80031F48
/* 03FED0 8003F2D0 E62A0008 */   swc1  $f10, 8($s1)
/* 03FED4 8003F2D4 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 03FED8 8003F2D8 44812000 */  mtc1  $at, $f4
/* 03FEDC 8003F2DC 44803000 */  mtc1  $zero, $f6
/* 03FEE0 8003F2E0 44800000 */  mtc1  $zero, $f0
/* 03FEE4 8003F2E4 E6040DAC */  swc1  $f4, 0xdac($s0)
/* 03FEE8 8003F2E8 10000056 */  b     .L8003F444
/* 03FEEC 8003F2EC E6260000 */   swc1  $f6, ($s1)
/* 03FEF0 8003F2F0 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
.L8003F2F4:
/* 03FEF4 8003F2F4 44814000 */  mtc1  $at, $f8
/* 03FEF8 8003F2F8 3C014190 */  li    $at, 0x41900000 # 18.000000
/* 03FEFC 8003F2FC 44818000 */  mtc1  $at, $f16
/* 03FF00 8003F300 C6120094 */  lwc1  $f18, 0x94($s0)
/* 03FF04 8003F304 3C014358 */  li    $at, 0x43580000 # 216.000000
/* 03FF08 8003F308 44812000 */  mtc1  $at, $f4
/* 03FF0C 8003F30C 46109283 */  div.s $f10, $f18, $f16
/* 03FF10 8003F310 46045182 */  mul.s $f6, $f10, $f4
/* 03FF14 8003F314 4606403C */  c.lt.s $f8, $f6
/* 03FF18 8003F318 00000000 */  nop   
/* 03FF1C 8003F31C 45030007 */  bc1tl .L8003F33C
/* 03FF20 8003F320 860B0206 */   lh    $t3, 0x206($s0)
/* 03FF24 8003F324 8E0900BC */  lw    $t1, 0xbc($s0)
/* 03FF28 8003F328 3C020001 */  lui   $v0, 1
/* 03FF2C 8003F32C 01225024 */  and   $t2, $t1, $v0
/* 03FF30 8003F330 544A002D */  bnel  $v0, $t2, .L8003F3E8
/* 03FF34 8003F334 44800000 */   mtc1  $zero, $f0
/* 03FF38 8003F338 860B0206 */  lh    $t3, 0x206($s0)
.L8003F33C:
/* 03FF3C 8003F33C 240200B6 */  li    $v0, 182
/* 03FF40 8003F340 24030078 */  li    $v1, 120
/* 03FF44 8003F344 0162001A */  div   $zero, $t3, $v0
/* 03FF48 8003F348 00006012 */  mflo  $t4
/* 03FF4C 8003F34C 44804000 */  mtc1  $zero, $f8
/* 03FF50 8003F350 14400002 */  bnez  $v0, .L8003F35C
/* 03FF54 8003F354 00000000 */   nop   
/* 03FF58 8003F358 0007000D */  break 7
.L8003F35C:
/* 03FF5C 8003F35C 2401FFFF */  li    $at, -1
/* 03FF60 8003F360 14410004 */  bne   $v0, $at, .L8003F374
/* 03FF64 8003F364 3C018000 */   lui   $at, 0x8000
/* 03FF68 8003F368 15610002 */  bne   $t3, $at, .L8003F374
/* 03FF6C 8003F36C 00000000 */   nop   
/* 03FF70 8003F370 0006000D */  break 6
.L8003F374:
/* 03FF74 8003F374 01830019 */  multu $t4, $v1
/* 03FF78 8003F378 44800000 */  mtc1  $zero, $f0
/* 03FF7C 8003F37C 00006812 */  mflo  $t5
/* 03FF80 8003F380 448D9000 */  mtc1  $t5, $f18
/* 03FF84 8003F384 00000000 */  nop   
/* 03FF88 8003F388 46809420 */  cvt.s.w $f16, $f18
/* 03FF8C 8003F38C E6300000 */  swc1  $f16, ($s1)
/* 03FF90 8003F390 860F00C4 */  lh    $t7, 0xc4($s0)
/* 03FF94 8003F394 E6280000 */  swc1  $f8, ($s1)
/* 03FF98 8003F398 01E2001A */  div   $zero, $t7, $v0
/* 03FF9C 8003F39C 0000C012 */  mflo  $t8
/* 03FFA0 8003F3A0 0018C823 */  negu  $t9, $t8
/* 03FFA4 8003F3A4 14400002 */  bnez  $v0, .L8003F3B0
/* 03FFA8 8003F3A8 00000000 */   nop   
/* 03FFAC 8003F3AC 0007000D */  break 7
.L8003F3B0:
/* 03FFB0 8003F3B0 2401FFFF */  li    $at, -1
/* 03FFB4 8003F3B4 14410004 */  bne   $v0, $at, .L8003F3C8
/* 03FFB8 8003F3B8 3C018000 */   lui   $at, 0x8000
/* 03FFBC 8003F3BC 15E10002 */  bne   $t7, $at, .L8003F3C8
/* 03FFC0 8003F3C0 00000000 */   nop   
/* 03FFC4 8003F3C4 0006000D */  break 6
.L8003F3C8:
/* 03FFC8 8003F3C8 03230019 */  multu $t9, $v1
/* 03FFCC 8003F3CC 00007012 */  mflo  $t6
/* 03FFD0 8003F3D0 448E5000 */  mtc1  $t6, $f10
/* 03FFD4 8003F3D4 00000000 */  nop   
/* 03FFD8 8003F3D8 46805120 */  cvt.s.w $f4, $f10
/* 03FFDC 8003F3DC 10000019 */  b     .L8003F444
/* 03FFE0 8003F3E0 E6240008 */   swc1  $f4, 8($s1)
/* 03FFE4 8003F3E4 44800000 */  mtc1  $zero, $f0
.L8003F3E8:
/* 03FFE8 8003F3E8 240200B6 */  li    $v0, 182
/* 03FFEC 8003F3EC E6200000 */  swc1  $f0, ($s1)
/* 03FFF0 8003F3F0 860800C4 */  lh    $t0, 0xc4($s0)
/* 03FFF4 8003F3F4 0102001A */  div   $zero, $t0, $v0
/* 03FFF8 8003F3F8 00004812 */  mflo  $t1
/* 03FFFC 8003F3FC 00095023 */  negu  $t2, $t1
/* 040000 8003F400 000A5880 */  sll   $t3, $t2, 2
/* 040004 8003F404 016A5823 */  subu  $t3, $t3, $t2
/* 040008 8003F408 000B58C0 */  sll   $t3, $t3, 3
/* 04000C 8003F40C 016A5821 */  addu  $t3, $t3, $t2
/* 040010 8003F410 000B5840 */  sll   $t3, $t3, 1
/* 040014 8003F414 448B3000 */  mtc1  $t3, $f6
/* 040018 8003F418 14400002 */  bnez  $v0, .L8003F424
/* 04001C 8003F41C 00000000 */   nop   
/* 040020 8003F420 0007000D */  break 7
.L8003F424:
/* 040024 8003F424 2401FFFF */  li    $at, -1
/* 040028 8003F428 14410004 */  bne   $v0, $at, .L8003F43C
/* 04002C 8003F42C 3C018000 */   lui   $at, 0x8000
/* 040030 8003F430 15010002 */  bne   $t0, $at, .L8003F43C
/* 040034 8003F434 00000000 */   nop   
/* 040038 8003F438 0006000D */  break 6
.L8003F43C:
/* 04003C 8003F43C 468034A0 */  cvt.s.w $f18, $f6
/* 040040 8003F440 E6320008 */  swc1  $f18, 8($s1)
.L8003F444:
/* 040044 8003F444 E6200004 */  swc1  $f0, 4($s1)
/* 040048 8003F448 E6200008 */  swc1  $f0, 8($s1)
/* 04004C 8003F44C 02202025 */  move  $a0, $s1
/* 040050 8003F450 0C0AD8EE */  jal   func_802B63B8
/* 040054 8003F454 26050174 */   addiu $a1, $s0, 0x174
/* 040058 8003F458 8FBF0024 */  lw    $ra, 0x24($sp)
/* 04005C 8003F45C 8FB0001C */  lw    $s0, 0x1c($sp)
/* 040060 8003F460 8FB10020 */  lw    $s1, 0x20($sp)
/* 040064 8003F464 03E00008 */  jr    $ra
/* 040068 8003F468 27BD0028 */   addiu $sp, $sp, 0x28
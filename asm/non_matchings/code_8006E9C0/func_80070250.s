glabel func_80070250
/* 070E50 80070250 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 070E54 80070254 AFBF001C */  sw    $ra, 0x1c($sp)
/* 070E58 80070258 AFB00018 */  sw    $s0, 0x18($sp)
/* 070E5C 8007025C 00C08025 */  move  $s0, $a2
/* 070E60 80070260 0C01C8E9 */  jal   func_800723A4
/* 070E64 80070264 AFA40028 */   sw    $a0, 0x28($sp)
/* 070E68 80070268 8FA40028 */  lw    $a0, 0x28($sp)
/* 070E6C 8007026C 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 070E70 80070270 96180006 */  lhu   $t8, 6($s0)
/* 070E74 80070274 000470C0 */  sll   $t6, $a0, 3
/* 070E78 80070278 01C47023 */  subu  $t6, $t6, $a0
/* 070E7C 8007027C 000E7140 */  sll   $t6, $t6, 5
/* 070E80 80070280 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 070E84 80070284 01CF1021 */  addu  $v0, $t6, $t7
/* 070E88 80070288 A44000A4 */  sh    $zero, 0xa4($v0)
/* 070E8C 8007028C A05800D5 */  sb    $t8, 0xd5($v0)
/* 070E90 80070290 96190000 */  lhu   $t9, ($s0)
/* 070E94 80070294 44808000 */  mtc1  $zero, $f16
/* 070E98 80070298 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 070E9C 8007029C A45900C0 */  sh    $t9, 0xc0($v0)
/* 070EA0 800702A0 96080002 */  lhu   $t0, 2($s0)
/* 070EA4 800702A4 A448009E */  sh    $t0, 0x9e($v0)
/* 070EA8 800702A8 96090004 */  lhu   $t1, 4($s0)
/* 070EAC 800702AC 44892000 */  mtc1  $t1, $f4
/* 070EB0 800702B0 05210004 */  bgez  $t1, .L800702C4
/* 070EB4 800702B4 468021A0 */   cvt.s.w $f6, $f4
/* 070EB8 800702B8 44814000 */  mtc1  $at, $f8
/* 070EBC 800702BC 00000000 */  nop   
/* 070EC0 800702C0 46083180 */  add.s $f6, $f6, $f8
.L800702C4:
/* 070EC4 800702C4 3C014059 */  li    $at, 0x40590000 # 3.390625
/* 070EC8 800702C8 44818800 */  mtc1  $at, $f17
/* 070ECC 800702CC 460032A1 */  cvt.d.s $f10, $f6
/* 070ED0 800702D0 3C0C8019 */  lui   $t4, %hi(D_8018D220) # $t4, 0x8019
/* 070ED4 800702D4 46305483 */  div.d $f18, $f10, $f16
/* 070ED8 800702D8 3C070D00 */  lui   $a3, %hi(D_0D005FB0) # $a3, 0xd00
/* 070EDC 800702DC 24E75FB0 */  addiu $a3, %lo(D_0D005FB0) # addiu $a3, $a3, 0x5fb0
/* 070EE0 800702E0 24050040 */  li    $a1, 64
/* 070EE4 800702E4 24060020 */  li    $a2, 32
/* 070EE8 800702E8 46209120 */  cvt.s.d $f4, $f18
/* 070EEC 800702EC E4440000 */  swc1  $f4, ($v0)
/* 070EF0 800702F0 960A0006 */  lhu   $t2, 6($s0)
/* 070EF4 800702F4 8D8CD220 */  lw    $t4, %lo(D_8018D220)($t4)
/* 070EF8 800702F8 AFA20020 */  sw    $v0, 0x20($sp)
/* 070EFC 800702FC 000A5A80 */  sll   $t3, $t2, 0xa
/* 070F00 80070300 016C6821 */  addu  $t5, $t3, $t4
/* 070F04 80070304 0C01CD01 */  jal   func_80073404
/* 070F08 80070308 AC4D0064 */   sw    $t5, 0x64($v0)
/* 070F0C 8007030C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 070F10 80070310 8FA20020 */  lw    $v0, 0x20($sp)
/* 070F14 80070314 240E00FF */  li    $t6, 255
/* 070F18 80070318 8FB00018 */  lw    $s0, 0x18($sp)
/* 070F1C 8007031C 27BD0028 */  addiu $sp, $sp, 0x28
/* 070F20 80070320 03E00008 */  jr    $ra
/* 070F24 80070324 A44E00A0 */   sh    $t6, 0xa0($v0)
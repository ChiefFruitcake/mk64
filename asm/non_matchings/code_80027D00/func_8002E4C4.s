glabel func_8002E4C4
/* 02F0C4 8002E4C4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 02F0C8 8002E4C8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 02F0CC 8002E4CC 0C009F40 */  jal   get_player_index_for_player
/* 02F0D0 8002E4D0 AFA40020 */   sw    $a0, 0x20($sp)
/* 02F0D4 8002E4D4 8FA40020 */  lw    $a0, 0x20($sp)
/* 02F0D8 8002E4D8 44808000 */  mtc1  $zero, $f16
/* 02F0DC 8002E4DC AFA2001C */  sw    $v0, 0x1c($sp)
/* 02F0E0 8002E4E0 00027080 */  sll   $t6, $v0, 2
/* 02F0E4 8002E4E4 3C018016 */  lui   $at, %hi(D_80164510)
/* 02F0E8 8002E4E8 002E0821 */  addu  $at, $at, $t6
/* 02F0EC 8002E4EC E49000F0 */  swc1  $f16, 0xf0($a0)
/* 02F0F0 8002E4F0 E49000F4 */  swc1  $f16, 0xf4($a0)
/* 02F0F4 8002E4F4 E49000EC */  swc1  $f16, 0xec($a0)
/* 02F0F8 8002E4F8 C4244510 */  lwc1  $f4, %lo(D_80164510)($at)
/* 02F0FC 8002E4FC 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 02F100 8002E500 44813000 */  mtc1  $at, $f6
/* 02F104 8002E504 8C86001C */  lw    $a2, 0x1c($a0)
/* 02F108 8002E508 C48C0014 */  lwc1  $f12, 0x14($a0)
/* 02F10C 8002E50C 0C0AB870 */  jal   func_802AE1C0
/* 02F110 8002E510 46062380 */   add.s $f14, $f4, $f6
/* 02F114 8002E514 8FA40020 */  lw    $a0, 0x20($sp)
/* 02F118 8002E518 3C018016 */  lui   $at, %hi(D_80164510)
/* 02F11C 8002E51C 44808000 */  mtc1  $zero, $f16
/* 02F120 8002E520 C4880070 */  lwc1  $f8, 0x70($a0)
/* 02F124 8002E524 46080080 */  add.s $f2, $f0, $f8
/* 02F128 8002E528 E4820018 */  swc1  $f2, 0x18($a0)
/* 02F12C 8002E52C 8FAF001C */  lw    $t7, 0x1c($sp)
/* 02F130 8002E530 000FC080 */  sll   $t8, $t7, 2
/* 02F134 8002E534 00380821 */  addu  $at, $at, $t8
/* 02F138 8002E538 C42C4510 */  lwc1  $f12, %lo(D_80164510)($at)
/* 02F13C 8002E53C 3C014496 */  li    $at, 0x44960000 # 1200.000000
/* 02F140 8002E540 44815000 */  mtc1  $at, $f10
/* 02F144 8002E544 460C1481 */  sub.s $f18, $f2, $f12
/* 02F148 8002E548 4612503C */  c.lt.s $f10, $f18
/* 02F14C 8002E54C 00000000 */  nop
/* 02F150 8002E550 4503000A */  bc1tl .L8002E57C
/* 02F154 8002E554 C48A0024 */   lwc1  $f10, 0x24($a0)
/* 02F158 8002E558 C4840018 */  lwc1  $f4, 0x18($a0)
/* 02F15C 8002E55C 3C01C496 */  li    $at, 0xC4960000 # -1200.000000
/* 02F160 8002E560 44814000 */  mtc1  $at, $f8
/* 02F164 8002E564 460C2181 */  sub.s $f6, $f4, $f12
/* 02F168 8002E568 4608303C */  c.lt.s $f6, $f8
/* 02F16C 8002E56C 00000000 */  nop
/* 02F170 8002E570 45020004 */  bc1fl .L8002E584
/* 02F174 8002E574 E4900038 */   swc1  $f16, 0x38($a0)
/* 02F178 8002E578 C48A0024 */  lwc1  $f10, 0x24($a0)
.L8002E57C:
/* 02F17C 8002E57C E48A0018 */  swc1  $f10, 0x18($a0)
/* 02F180 8002E580 E4900038 */  swc1  $f16, 0x38($a0)
.L8002E584:
/* 02F184 8002E584 8FBF0014 */  lw    $ra, 0x14($sp)
/* 02F188 8002E588 27BD0020 */  addiu $sp, $sp, 0x20
/* 02F18C 8002E58C 03E00008 */  jr    $ra
/* 02F190 8002E590 00000000 */   nop

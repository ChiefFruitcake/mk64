glabel func_802A2C78
/* 10C288 802A2C78 27BDFF50 */  addiu $sp, $sp, -0xb0
/* 10C28C 802A2C7C 3C0F802C */  lui   $t7, %hi(D_802B886C) # $t7, 0x802c
/* 10C290 802A2C80 AFBF001C */  sw    $ra, 0x1c($sp)
/* 10C294 802A2C84 AFA500B4 */  sw    $a1, 0xb4($sp)
/* 10C298 802A2C88 AFA600B8 */  sw    $a2, 0xb8($sp)
/* 10C29C 802A2C8C 25EF886C */  addiu $t7, %lo(D_802B886C) # addiu $t7, $t7, -0x7794
/* 10C2A0 802A2C90 8DE10000 */  lw    $at, ($t7)
/* 10C2A4 802A2C94 27AE00A8 */  addiu $t6, $sp, 0xa8
/* 10C2A8 802A2C98 24070000 */  li    $a3, 0
/* 10C2AC 802A2C9C ADC10000 */  sw    $at, ($t6)
/* 10C2B0 802A2CA0 95E10004 */  lhu   $at, 4($t7)
/* 10C2B4 802A2CA4 3C19800E */  lui   $t9, %hi(camera1) # $t9, 0x800e
/* 10C2B8 802A2CA8 A5C10004 */  sh    $at, 4($t6)
/* 10C2BC 802A2CAC 8FAC00B8 */  lw    $t4, 0xb8($sp)
/* 10C2C0 802A2CB0 8FA500B8 */  lw    $a1, 0xb8($sp)
/* 10C2C4 802A2CB4 240100B8 */  li    $at, 184
/* 10C2C8 802A2CB8 85820002 */  lh    $v0, 2($t4)
/* 10C2CC 802A2CBC 24A50018 */  addiu $a1, $a1, 0x18
/* 10C2D0 802A2CC0 304D0800 */  andi  $t5, $v0, 0x800
/* 10C2D4 802A2CC4 55A00098 */  bnel  $t5, $zero, .L802A2F28
/* 10C2D8 802A2CC8 8FBF001C */   lw    $ra, 0x1c($sp)
/* 10C2DC 802A2CCC 8F39DB40 */  lw    $t9, %lo(camera1)($t9)
/* 10C2E0 802A2CD0 94860026 */  lhu   $a2, 0x26($a0)
/* 10C2E4 802A2CD4 AFA50020 */  sw    $a1, 0x20($sp)
/* 10C2E8 802A2CD8 0099C023 */  subu  $t8, $a0, $t9
/* 10C2EC 802A2CDC 0301001A */  div   $zero, $t8, $at
/* 10C2F0 802A2CE0 00007012 */  mflo  $t6
/* 10C2F4 802A2CE4 000E7880 */  sll   $t7, $t6, 2
/* 10C2F8 802A2CE8 3C018015 */  lui   $at, %hi(D_80150130)
/* 10C2FC 802A2CEC 002F0821 */  addu  $at, $at, $t7
/* 10C300 802A2CF0 C4240130 */  lwc1  $f4, %lo(D_80150130)($at)
/* 10C304 802A2CF4 3C01802C */  lui   $at, %hi(D_802B9A3C) # $at, 0x802c
/* 10C308 802A2CF8 C4269A3C */  lwc1  $f6, %lo(D_802B9A3C)($at)
/* 10C30C 802A2CFC A7A20062 */  sh    $v0, 0x62($sp)
/* 10C310 802A2D00 E7A40010 */  swc1  $f4, 0x10($sp)
/* 10C314 802A2D04 0C0AE034 */  jal   func_802B80D0
/* 10C318 802A2D08 E7A60014 */   swc1  $f6, 0x14($sp)
/* 10C31C 802A2D0C 44804000 */  mtc1  $zero, $f8
/* 10C320 802A2D10 87A20062 */  lh    $v0, 0x62($sp)
/* 10C324 802A2D14 4608003C */  c.lt.s $f0, $f8
/* 10C328 802A2D18 304B0400 */  andi  $t3, $v0, 0x400
/* 10C32C 802A2D1C 45030082 */  bc1tl .L802A2F28
/* 10C330 802A2D20 8FBF001C */   lw    $ra, 0x1c($sp)
/* 10C334 802A2D24 1560000A */  bnez  $t3, .L802A2D50
/* 10C338 802A2D28 3C01802C */   lui   $at, %hi(D_802B9A40) # $at, 0x802c
/* 10C33C 802A2D2C C42A9A40 */  lwc1  $f10, %lo(D_802B9A40)($at)
/* 10C340 802A2D30 8FA500B8 */  lw    $a1, 0xb8($sp)
/* 10C344 802A2D34 8FA40020 */  lw    $a0, 0x20($sp)
/* 10C348 802A2D38 460A003C */  c.lt.s $f0, $f10
/* 10C34C 802A2D3C 24A50010 */  addiu $a1, $a1, 0x10
/* 10C350 802A2D40 45020004 */  bc1fl .L802A2D54
/* 10C354 802A2D44 27A40068 */   addiu $a0, $sp, 0x68
/* 10C358 802A2D48 0C0A5E53 */  jal   func_8029794C
/* 10C35C 802A2D4C 3C064000 */   lui   $a2, 0x4000
.L802A2D50:
/* 10C360 802A2D50 27A40068 */  addiu $a0, $sp, 0x68
.L802A2D54:
/* 10C364 802A2D54 8FA50020 */  lw    $a1, 0x20($sp)
/* 10C368 802A2D58 0C0AD7DD */  jal   func_802B5F74
/* 10C36C 802A2D5C 27A600A8 */   addiu $a2, $sp, 0xa8
/* 10C370 802A2D60 27A40068 */  addiu $a0, $sp, 0x68
/* 10C374 802A2D64 0C0AD3FE */  jal   func_802B4FF8
/* 10C378 802A2D68 00002825 */   move  $a1, $zero
/* 10C37C 802A2D6C 1040006D */  beqz  $v0, .L802A2F24
/* 10C380 802A2D70 3C038015 */   lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 10C384 802A2D74 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 10C388 802A2D78 8C620000 */  lw    $v0, ($v1)
/* 10C38C 802A2D7C 3C0DBA00 */  lui   $t5, (0xBA000E02 >> 16) # lui $t5, 0xba00
/* 10C390 802A2D80 35AD0E02 */  ori   $t5, (0xBA000E02 & 0xFFFF) # ori $t5, $t5, 0xe02
/* 10C394 802A2D84 244C0008 */  addiu $t4, $v0, 8
/* 10C398 802A2D88 AC6C0000 */  sw    $t4, ($v1)
/* 10C39C 802A2D8C AC400004 */  sw    $zero, 4($v0)
/* 10C3A0 802A2D90 AC4D0000 */  sw    $t5, ($v0)
/* 10C3A4 802A2D94 8C620000 */  lw    $v0, ($v1)
/* 10C3A8 802A2D98 3C0AB700 */  lui   $t2, 0xb700
/* 10C3AC 802A2D9C 3C180002 */  lui   $t8, 2
/* 10C3B0 802A2DA0 24590008 */  addiu $t9, $v0, 8
/* 10C3B4 802A2DA4 AC790000 */  sw    $t9, ($v1)
/* 10C3B8 802A2DA8 AC580004 */  sw    $t8, 4($v0)
/* 10C3BC 802A2DAC AC4A0000 */  sw    $t2, ($v0)
/* 10C3C0 802A2DB0 8FAE00B8 */  lw    $t6, 0xb8($sp)
/* 10C3C4 802A2DB4 3C080600 */  lui   $t0, 0x600
/* 10C3C8 802A2DB8 24010001 */  li    $at, 1
/* 10C3CC 802A2DBC 85C60004 */  lh    $a2, 4($t6)
/* 10C3D0 802A2DC0 50C00009 */  beql  $a2, $zero, .L802A2DE8
/* 10C3D4 802A2DC4 8C620000 */   lw    $v0, ($v1)
/* 10C3D8 802A2DC8 10C10021 */  beq   $a2, $at, .L802A2E50
/* 10C3DC 802A2DCC 3C080600 */   lui   $t0, 0x600
/* 10C3E0 802A2DD0 24010002 */  li    $at, 2
/* 10C3E4 802A2DD4 10C10039 */  beq   $a2, $at, .L802A2EBC
/* 10C3E8 802A2DD8 3C080600 */   lui   $t0, 0x600
/* 10C3EC 802A2DDC 10000052 */  b     .L802A2F28
/* 10C3F0 802A2DE0 8FBF001C */   lw    $ra, 0x1c($sp)
/* 10C3F4 802A2DE4 8C620000 */  lw    $v0, ($v1)
.L802A2DE8:
/* 10C3F8 802A2DE8 3C0B0602 */  lui   $t3, %hi(D_060186B8) # $t3, 0x602
/* 10C3FC 802A2DEC 256B86B8 */  addiu $t3, %lo(D_060186B8) # addiu $t3, $t3, -0x7948
/* 10C400 802A2DF0 244F0008 */  addiu $t7, $v0, 8
/* 10C404 802A2DF4 AC6F0000 */  sw    $t7, ($v1)
/* 10C408 802A2DF8 AC4B0004 */  sw    $t3, 4($v0)
/* 10C40C 802A2DFC AC480000 */  sw    $t0, ($v0)
/* 10C410 802A2E00 8C620000 */  lw    $v0, ($v1)
/* 10C414 802A2E04 24092000 */  li    $t1, 8192
/* 10C418 802A2E08 3C0DB600 */  lui   $t5, 0xb600
/* 10C41C 802A2E0C 244C0008 */  addiu $t4, $v0, 8
/* 10C420 802A2E10 AC6C0000 */  sw    $t4, ($v1)
/* 10C424 802A2E14 AC490004 */  sw    $t1, 4($v0)
/* 10C428 802A2E18 AC4D0000 */  sw    $t5, ($v0)
/* 10C42C 802A2E1C 8C620000 */  lw    $v0, ($v1)
/* 10C430 802A2E20 3C180602 */  lui   $t8, %hi(D_060185F8) # $t8, 0x602
/* 10C434 802A2E24 271885F8 */  addiu $t8, %lo(D_060185F8) # addiu $t8, $t8, -0x7a08
/* 10C438 802A2E28 24590008 */  addiu $t9, $v0, 8
/* 10C43C 802A2E2C AC790000 */  sw    $t9, ($v1)
/* 10C440 802A2E30 AC580004 */  sw    $t8, 4($v0)
/* 10C444 802A2E34 AC480000 */  sw    $t0, ($v0)
/* 10C448 802A2E38 8C620000 */  lw    $v0, ($v1)
/* 10C44C 802A2E3C 244E0008 */  addiu $t6, $v0, 8
/* 10C450 802A2E40 AC6E0000 */  sw    $t6, ($v1)
/* 10C454 802A2E44 AC490004 */  sw    $t1, 4($v0)
/* 10C458 802A2E48 10000036 */  b     .L802A2F24
/* 10C45C 802A2E4C AC4A0000 */   sw    $t2, ($v0)
.L802A2E50:
/* 10C460 802A2E50 8C620000 */  lw    $v0, ($v1)
/* 10C464 802A2E54 3C0B0602 */  lui   $t3, %hi(D_06018A08) # $t3, 0x602
/* 10C468 802A2E58 256B8A08 */  addiu $t3, %lo(D_06018A08) # addiu $t3, $t3, -0x75f8
/* 10C46C 802A2E5C 244F0008 */  addiu $t7, $v0, 8
/* 10C470 802A2E60 AC6F0000 */  sw    $t7, ($v1)
/* 10C474 802A2E64 AC4B0004 */  sw    $t3, 4($v0)
/* 10C478 802A2E68 AC480000 */  sw    $t0, ($v0)
/* 10C47C 802A2E6C 8C620000 */  lw    $v0, ($v1)
/* 10C480 802A2E70 24092000 */  li    $t1, 8192
/* 10C484 802A2E74 3C0DB600 */  lui   $t5, 0xb600
/* 10C488 802A2E78 244C0008 */  addiu $t4, $v0, 8
/* 10C48C 802A2E7C AC6C0000 */  sw    $t4, ($v1)
/* 10C490 802A2E80 AC490004 */  sw    $t1, 4($v0)
/* 10C494 802A2E84 AC4D0000 */  sw    $t5, ($v0)
/* 10C498 802A2E88 8C620000 */  lw    $v0, ($v1)
/* 10C49C 802A2E8C 3C180602 */  lui   $t8, %hi(D_06018948) # $t8, 0x602
/* 10C4A0 802A2E90 27188948 */  addiu $t8, %lo(D_06018948) # addiu $t8, $t8, -0x76b8
/* 10C4A4 802A2E94 24590008 */  addiu $t9, $v0, 8
/* 10C4A8 802A2E98 AC790000 */  sw    $t9, ($v1)
/* 10C4AC 802A2E9C AC580004 */  sw    $t8, 4($v0)
/* 10C4B0 802A2EA0 AC480000 */  sw    $t0, ($v0)
/* 10C4B4 802A2EA4 8C620000 */  lw    $v0, ($v1)
/* 10C4B8 802A2EA8 244E0008 */  addiu $t6, $v0, 8
/* 10C4BC 802A2EAC AC6E0000 */  sw    $t6, ($v1)
/* 10C4C0 802A2EB0 AC490004 */  sw    $t1, 4($v0)
/* 10C4C4 802A2EB4 1000001B */  b     .L802A2F24
/* 10C4C8 802A2EB8 AC4A0000 */   sw    $t2, ($v0)
.L802A2EBC:
/* 10C4CC 802A2EBC 8C620000 */  lw    $v0, ($v1)
/* 10C4D0 802A2EC0 3C0B0602 */  lui   $t3, %hi(D_06018D58) # $t3, 0x602
/* 10C4D4 802A2EC4 256B8D58 */  addiu $t3, %lo(D_06018D58) # addiu $t3, $t3, -0x72a8
/* 10C4D8 802A2EC8 244F0008 */  addiu $t7, $v0, 8
/* 10C4DC 802A2ECC AC6F0000 */  sw    $t7, ($v1)
/* 10C4E0 802A2ED0 AC4B0004 */  sw    $t3, 4($v0)
/* 10C4E4 802A2ED4 AC480000 */  sw    $t0, ($v0)
/* 10C4E8 802A2ED8 8C620000 */  lw    $v0, ($v1)
/* 10C4EC 802A2EDC 24092000 */  li    $t1, 8192
/* 10C4F0 802A2EE0 3C0DB600 */  lui   $t5, 0xb600
/* 10C4F4 802A2EE4 244C0008 */  addiu $t4, $v0, 8
/* 10C4F8 802A2EE8 AC6C0000 */  sw    $t4, ($v1)
/* 10C4FC 802A2EEC AC490004 */  sw    $t1, 4($v0)
/* 10C500 802A2EF0 AC4D0000 */  sw    $t5, ($v0)
/* 10C504 802A2EF4 8C620000 */  lw    $v0, ($v1)
/* 10C508 802A2EF8 3C180602 */  lui   $t8, %hi(D_06018C98) # $t8, 0x602
/* 10C50C 802A2EFC 27188C98 */  addiu $t8, %lo(D_06018C98) # addiu $t8, $t8, -0x7368
/* 10C510 802A2F00 24590008 */  addiu $t9, $v0, 8
/* 10C514 802A2F04 AC790000 */  sw    $t9, ($v1)
/* 10C518 802A2F08 AC580004 */  sw    $t8, 4($v0)
/* 10C51C 802A2F0C AC480000 */  sw    $t0, ($v0)
/* 10C520 802A2F10 8C620000 */  lw    $v0, ($v1)
/* 10C524 802A2F14 244E0008 */  addiu $t6, $v0, 8
/* 10C528 802A2F18 AC6E0000 */  sw    $t6, ($v1)
/* 10C52C 802A2F1C AC490004 */  sw    $t1, 4($v0)
/* 10C530 802A2F20 AC4A0000 */  sw    $t2, ($v0)
.L802A2F24:
/* 10C534 802A2F24 8FBF001C */  lw    $ra, 0x1c($sp)
.L802A2F28:
/* 10C538 802A2F28 27BD00B0 */  addiu $sp, $sp, 0xb0
/* 10C53C 802A2F2C 03E00008 */  jr    $ra
/* 10C540 802A2F30 00000000 */   nop   

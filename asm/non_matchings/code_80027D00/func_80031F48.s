glabel func_80031F48
/* 032B48 80031F48 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 032B4C 80031F4C AFBF0014 */  sw    $ra, 0x14($sp)
/* 032B50 80031F50 AFA5001C */  sw    $a1, 0x1c($sp)
/* 032B54 80031F54 0C009F40 */  jal   get_player_index_for_player
/* 032B58 80031F58 AFA40018 */   sw    $a0, 0x18($sp)
/* 032B5C 80031F5C 8FA40018 */  lw    $a0, 0x18($sp)
/* 032B60 80031F60 C7A6001C */  lwc1  $f6, 0x1c($sp)
/* 032B64 80031F64 44800000 */  mtc1  $zero, $f0
/* 032B68 80031F68 C484009C */  lwc1  $f4, 0x9c($a0)
/* 032B6C 80031F6C 00401825 */  move  $v1, $v0
/* 032B70 80031F70 00032E00 */  sll   $a1, $v1, 0x18
/* 032B74 80031F74 46062201 */  sub.s $f8, $f4, $f6
/* 032B78 80031F78 00055603 */  sra   $t2, $a1, 0x18
/* 032B7C 80031F7C 01402825 */  move  $a1, $t2
/* 032B80 80031F80 E488009C */  swc1  $f8, 0x9c($a0)
/* 032B84 80031F84 C48A009C */  lwc1  $f10, 0x9c($a0)
/* 032B88 80031F88 4600503E */  c.le.s $f10, $f0
/* 032B8C 80031F8C 00000000 */  nop
/* 032B90 80031F90 45020003 */  bc1fl .L80031FA0
/* 032B94 80031F94 C4900094 */   lwc1  $f16, 0x94($a0)
/* 032B98 80031F98 E480009C */  swc1  $f0, 0x9c($a0)
/* 032B9C 80031F9C C4900094 */  lwc1  $f16, 0x94($a0)
.L80031FA0:
/* 032BA0 80031FA0 3C01800F */  lui   $at, %hi(D_800EDAF8)
/* 032BA4 80031FA4 D424DAF8 */  ldc1  $f4, %lo(D_800EDAF8)($at)
/* 032BA8 80031FA8 460084A1 */  cvt.d.s $f18, $f16
/* 032BAC 80031FAC 4624903C */  c.lt.d $f18, $f4
/* 032BB0 80031FB0 00000000 */  nop
/* 032BB4 80031FB4 45020003 */  bc1fl .L80031FC4
/* 032BB8 80031FB8 C4800214 */   lwc1  $f0, 0x214($a0)
/* 032BBC 80031FBC E480008C */  swc1  $f0, 0x8c($a0)
/* 032BC0 80031FC0 C4800214 */  lwc1  $f0, 0x214($a0)
.L80031FC4:
/* 032BC4 80031FC4 C486009C */  lwc1  $f6, 0x9c($a0)
/* 032BC8 80031FC8 4606003E */  c.le.s $f0, $f6
/* 032BCC 80031FCC 00000000 */  nop
/* 032BD0 80031FD0 45020003 */  bc1fl .L80031FE0
/* 032BD4 80031FD4 8C8E00BC */   lw    $t6, 0xbc($a0)
/* 032BD8 80031FD8 E480009C */  swc1  $f0, 0x9c($a0)
/* 032BDC 80031FDC 8C8E00BC */  lw    $t6, 0xbc($a0)
.L80031FE0:
/* 032BE0 80031FE0 24010008 */  li    $at, 8
/* 032BE4 80031FE4 31CF0008 */  andi  $t7, $t6, 8
/* 032BE8 80031FE8 51E10008 */  beql  $t7, $at, .L8003200C
/* 032BEC 80031FEC 84980044 */   lh    $t8, 0x44($a0)
/* 032BF0 80031FF0 C480009C */  lwc1  $f0, 0x9c($a0)
/* 032BF4 80031FF4 3C0141C8 */  li    $at, 0x41C80000 # 25.000000
/* 032BF8 80031FF8 44815000 */  mtc1  $at, $f10
/* 032BFC 80031FFC 46000202 */  mul.s $f8, $f0, $f0
/* 032C00 80032000 460A4403 */  div.s $f16, $f8, $f10
/* 032C04 80032004 E490008C */  swc1  $f16, 0x8c($a0)
/* 032C08 80032008 84980044 */  lh    $t8, 0x44($a0)
.L8003200C:
/* 032C0C 8003200C 8C88000C */  lw    $t0, 0xc($a0)
/* 032C10 80032010 3319FFDF */  andi  $t9, $t8, 0xffdf
/* 032C14 80032014 000848C0 */  sll   $t1, $t0, 3
/* 032C18 80032018 05210009 */  bgez  $t1, .L80032040
/* 032C1C 8003201C A4990044 */   sh    $t9, 0x44($a0)
/* 032C20 80032020 0C023C41 */  jal   func_8008F104
/* 032C24 80032024 AFA40018 */   sw    $a0, 0x18($sp)
/* 032C28 80032028 8FA40018 */  lw    $a0, 0x18($sp)
/* 032C2C 8003202C 3C01EFFF */  lui   $at, (0xEFFFFFFF >> 16) # lui $at, 0xefff
/* 032C30 80032030 3421FFFF */  ori   $at, (0xEFFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 032C34 80032034 8C8B000C */  lw    $t3, 0xc($a0)
/* 032C38 80032038 01616024 */  and   $t4, $t3, $at
/* 032C3C 8003203C AC8C000C */  sw    $t4, 0xc($a0)
.L80032040:
/* 032C40 80032040 8FBF0014 */  lw    $ra, 0x14($sp)
/* 032C44 80032044 27BD0018 */  addiu $sp, $sp, 0x18
/* 032C48 80032048 03E00008 */  jr    $ra
/* 032C4C 8003204C 00000000 */   nop

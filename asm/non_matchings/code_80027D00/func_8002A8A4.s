glabel func_8002A8A4
/* 02B4A4 8002A8A4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 02B4A8 8002A8A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 02B4AC 8002A8AC AFA5001C */  sw    $a1, 0x1c($sp)
/* 02B4B0 8002A8B0 848F00C0 */  lh    $t7, 0xc0($a0)
/* 02B4B4 8002A8B4 240100B6 */  li    $at, 182
/* 02B4B8 8002A8B8 00053600 */  sll   $a2, $a1, 0x18
/* 02B4BC 8002A8BC 01E1001A */  div   $zero, $t7, $at
/* 02B4C0 8002A8C0 00067603 */  sra   $t6, $a2, 0x18
/* 02B4C4 8002A8C4 0000C012 */  mflo  $t8
/* 02B4C8 8002A8C8 01C03025 */  move  $a2, $t6
/* 02B4CC 8002A8CC 5B000030 */  blezl $t8, .L8002A990
/* 02B4D0 8002A8D0 8C8E007C */   lw    $t6, 0x7c($a0)
/* 02B4D4 8002A8D4 8C99007C */  lw    $t9, 0x7c($a0)
/* 02B4D8 8002A8D8 00194403 */  sra   $t0, $t9, 0x10
/* 02B4DC 8002A8DC 2901FFF7 */  slti  $at, $t0, -9
/* 02B4E0 8002A8E0 50200015 */  beql  $at, $zero, .L8002A938
/* 02B4E4 8002A8E4 84820228 */   lh    $v0, 0x228($a0)
/* 02B4E8 8002A8E8 84820228 */  lh    $v0, 0x228($a0)
/* 02B4EC 8002A8EC 28410065 */  slti  $at, $v0, 0x65
/* 02B4F0 8002A8F0 10200003 */  beqz  $at, .L8002A900
/* 02B4F4 8002A8F4 24490001 */   addiu $t1, $v0, 1
/* 02B4F8 8002A8F8 A4890228 */  sh    $t1, 0x228($a0)
/* 02B4FC 8002A8FC 84820228 */  lh    $v0, 0x228($a0)
.L8002A900:
/* 02B500 8002A900 24010064 */  li    $at, 100
/* 02B504 8002A904 5441004F */  bnel  $v0, $at, .L8002AA44
/* 02B508 8002A908 8FBF0014 */   lw    $ra, 0x14($sp)
/* 02B50C 8002A90C 948A0000 */  lhu   $t2, ($a0)
/* 02B510 8002A910 30C400FF */  andi  $a0, $a2, 0xff
/* 02B514 8002A914 3C051900 */  lui   $a1, (0x1900851E >> 16) # lui $a1, 0x1900
/* 02B518 8002A918 314B4000 */  andi  $t3, $t2, 0x4000
/* 02B51C 8002A91C 51600049 */  beql  $t3, $zero, .L8002AA44
/* 02B520 8002A920 8FBF0014 */   lw    $ra, 0x14($sp)
/* 02B524 8002A924 0C032418 */  jal   func_800C9060
/* 02B528 8002A928 34A5851E */   ori   $a1, (0x1900851E & 0xFFFF) # ori $a1, $a1, 0x851e
/* 02B52C 8002A92C 10000045 */  b     .L8002AA44
/* 02B530 8002A930 8FBF0014 */   lw    $ra, 0x14($sp)
/* 02B534 8002A934 84820228 */  lh    $v0, 0x228($a0)
.L8002A938:
/* 02B538 8002A938 28410012 */  slti  $at, $v0, 0x12
/* 02B53C 8002A93C 14200009 */  bnez  $at, .L8002A964
/* 02B540 8002A940 28410064 */   slti  $at, $v0, 0x64
/* 02B544 8002A944 50200008 */  beql  $at, $zero, .L8002A968
/* 02B548 8002A948 2841000A */   slti  $at, $v0, 0xa
/* 02B54C 8002A94C 8483022A */  lh    $v1, 0x22a($a0)
/* 02B550 8002A950 28610003 */  slti  $at, $v1, 3
/* 02B554 8002A954 10200003 */  beqz  $at, .L8002A964
/* 02B558 8002A958 246C0001 */   addiu $t4, $v1, 1
/* 02B55C 8002A95C A48C022A */  sh    $t4, 0x22a($a0)
/* 02B560 8002A960 84820228 */  lh    $v0, 0x228($a0)
.L8002A964:
/* 02B564 8002A964 2841000A */  slti  $at, $v0, 0xa
.L8002A968:
/* 02B568 8002A968 14200005 */  bnez  $at, .L8002A980
/* 02B56C 8002A96C 28410064 */   slti  $at, $v0, 0x64
/* 02B570 8002A970 10200003 */  beqz  $at, .L8002A980
/* 02B574 8002A974 240D000A */   li    $t5, 10
/* 02B578 8002A978 10000031 */  b     .L8002AA40
/* 02B57C 8002A97C A48D0228 */   sh    $t5, 0x228($a0)
.L8002A980:
/* 02B580 8002A980 A4800228 */  sh    $zero, 0x228($a0)
/* 02B584 8002A984 1000002E */  b     .L8002AA40
/* 02B588 8002A988 A480022A */   sh    $zero, 0x22a($a0)
/* 02B58C 8002A98C 8C8E007C */  lw    $t6, 0x7c($a0)
.L8002A990:
/* 02B590 8002A990 000E7C03 */  sra   $t7, $t6, 0x10
/* 02B594 8002A994 29E1000A */  slti  $at, $t7, 0xa
/* 02B598 8002A998 54200015 */  bnel  $at, $zero, .L8002A9F0
/* 02B59C 8002A99C 84820228 */   lh    $v0, 0x228($a0)
/* 02B5A0 8002A9A0 84820228 */  lh    $v0, 0x228($a0)
/* 02B5A4 8002A9A4 28410065 */  slti  $at, $v0, 0x65
/* 02B5A8 8002A9A8 10200003 */  beqz  $at, .L8002A9B8
/* 02B5AC 8002A9AC 24580001 */   addiu $t8, $v0, 1
/* 02B5B0 8002A9B0 A4980228 */  sh    $t8, 0x228($a0)
/* 02B5B4 8002A9B4 84820228 */  lh    $v0, 0x228($a0)
.L8002A9B8:
/* 02B5B8 8002A9B8 24010064 */  li    $at, 100
/* 02B5BC 8002A9BC 54410021 */  bnel  $v0, $at, .L8002AA44
/* 02B5C0 8002A9C0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 02B5C4 8002A9C4 94990000 */  lhu   $t9, ($a0)
/* 02B5C8 8002A9C8 30C400FF */  andi  $a0, $a2, 0xff
/* 02B5CC 8002A9CC 3C051900 */  lui   $a1, (0x1900851E >> 16) # lui $a1, 0x1900
/* 02B5D0 8002A9D0 33284000 */  andi  $t0, $t9, 0x4000
/* 02B5D4 8002A9D4 5100001B */  beql  $t0, $zero, .L8002AA44
/* 02B5D8 8002A9D8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 02B5DC 8002A9DC 0C032418 */  jal   func_800C9060
/* 02B5E0 8002A9E0 34A5851E */   ori   $a1, (0x1900851E & 0xFFFF) # ori $a1, $a1, 0x851e
/* 02B5E4 8002A9E4 10000017 */  b     .L8002AA44
/* 02B5E8 8002A9E8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 02B5EC 8002A9EC 84820228 */  lh    $v0, 0x228($a0)
.L8002A9F0:
/* 02B5F0 8002A9F0 28410012 */  slti  $at, $v0, 0x12
/* 02B5F4 8002A9F4 14200009 */  bnez  $at, .L8002AA1C
/* 02B5F8 8002A9F8 28410064 */   slti  $at, $v0, 0x64
/* 02B5FC 8002A9FC 50200008 */  beql  $at, $zero, .L8002AA20
/* 02B600 8002AA00 2841000A */   slti  $at, $v0, 0xa
/* 02B604 8002AA04 8483022A */  lh    $v1, 0x22a($a0)
/* 02B608 8002AA08 28610003 */  slti  $at, $v1, 3
/* 02B60C 8002AA0C 10200003 */  beqz  $at, .L8002AA1C
/* 02B610 8002AA10 24690001 */   addiu $t1, $v1, 1
/* 02B614 8002AA14 A489022A */  sh    $t1, 0x22a($a0)
/* 02B618 8002AA18 84820228 */  lh    $v0, 0x228($a0)
.L8002AA1C:
/* 02B61C 8002AA1C 2841000A */  slti  $at, $v0, 0xa
.L8002AA20:
/* 02B620 8002AA20 14200005 */  bnez  $at, .L8002AA38
/* 02B624 8002AA24 28410064 */   slti  $at, $v0, 0x64
/* 02B628 8002AA28 10200003 */  beqz  $at, .L8002AA38
/* 02B62C 8002AA2C 240A000A */   li    $t2, 10
/* 02B630 8002AA30 10000003 */  b     .L8002AA40
/* 02B634 8002AA34 A48A0228 */   sh    $t2, 0x228($a0)
.L8002AA38:
/* 02B638 8002AA38 A4800228 */  sh    $zero, 0x228($a0)
/* 02B63C 8002AA3C A480022A */  sh    $zero, 0x22a($a0)
.L8002AA40:
/* 02B640 8002AA40 8FBF0014 */  lw    $ra, 0x14($sp)
.L8002AA44:
/* 02B644 8002AA44 27BD0018 */  addiu $sp, $sp, 0x18
/* 02B648 8002AA48 03E00008 */  jr    $ra
/* 02B64C 8002AA4C 00000000 */   nop   
glabel func_80044388
/* 044F88 80044388 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 044F8C 8004438C 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 044F90 80044390 8C620000 */  lw    $v0, ($v1)
/* 044F94 80044394 24A8FFFF */  addiu $t0, $a1, -1
/* 044F98 80044398 310F0FFF */  andi  $t7, $t0, 0xfff
/* 044F9C 8004439C 244E0008 */  addiu $t6, $v0, 8
/* 044FA0 800443A0 AC6E0000 */  sw    $t6, ($v1)
/* 044FA4 800443A4 3C01FD70 */  lui   $at, 0xfd70
/* 044FA8 800443A8 01E1C025 */  or    $t8, $t7, $at
/* 044FAC 800443AC 00055040 */  sll   $t2, $a1, 1
/* 044FB0 800443B0 AC580000 */  sw    $t8, ($v0)
/* 044FB4 800443B4 AC440004 */  sw    $a0, 4($v0)
/* 044FB8 800443B8 8C620000 */  lw    $v0, ($v1)
/* 044FBC 800443BC 254A0007 */  addiu $t2, $t2, 7
/* 044FC0 800443C0 000A70C3 */  sra   $t6, $t2, 3
/* 044FC4 800443C4 31CF01FF */  andi  $t7, $t6, 0x1ff
/* 044FC8 800443C8 24590008 */  addiu $t9, $v0, 8
/* 044FCC 800443CC AC790000 */  sw    $t9, ($v1)
/* 044FD0 800443D0 000FC240 */  sll   $t8, $t7, 9
/* 044FD4 800443D4 3C0E0708 */  lui   $t6, (0x07080200 >> 16) # lui $t6, 0x708
/* 044FD8 800443D8 3C01F570 */  lui   $at, 0xf570
/* 044FDC 800443DC 03015025 */  or    $t2, $t8, $at
/* 044FE0 800443E0 35CE0200 */  ori   $t6, (0x07080200 & 0xFFFF) # ori $t6, $t6, 0x200
/* 044FE4 800443E4 AC4E0004 */  sw    $t6, 4($v0)
/* 044FE8 800443E8 AC4A0000 */  sw    $t2, ($v0)
/* 044FEC 800443EC 8C620000 */  lw    $v0, ($v1)
/* 044FF0 800443F0 3C18E600 */  lui   $t8, 0xe600
/* 044FF4 800443F4 3C0EF400 */  lui   $t6, 0xf400
/* 044FF8 800443F8 244F0008 */  addiu $t7, $v0, 8
/* 044FFC 800443FC AC6F0000 */  sw    $t7, ($v1)
/* 045000 80044400 AC400004 */  sw    $zero, 4($v0)
/* 045004 80044404 AC580000 */  sw    $t8, ($v0)
/* 045008 80044408 8C620000 */  lw    $v0, ($v1)
/* 04500C 8004440C 00086880 */  sll   $t5, $t0, 2
/* 045010 80044410 31AF0FFF */  andi  $t7, $t5, 0xfff
/* 045014 80044414 24590008 */  addiu $t9, $v0, 8
/* 045018 80044418 AC790000 */  sw    $t9, ($v1)
/* 04501C 8004441C 24D9FFFF */  addiu $t9, $a2, -1
/* 045020 80044420 AC4E0000 */  sw    $t6, ($v0)
/* 045024 80044424 00197080 */  sll   $t6, $t9, 2
/* 045028 80044428 000F6B00 */  sll   $t5, $t7, 0xc
/* 04502C 8004442C 31CF0FFF */  andi  $t7, $t6, 0xfff
/* 045030 80044430 3C010700 */  lui   $at, 0x700
/* 045034 80044434 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 045038 80044438 01A1C025 */  or    $t8, $t5, $at
/* 04503C 8004443C 030FC825 */  or    $t9, $t8, $t7
/* 045040 80044440 AFAF0000 */  sw    $t7, ($sp)
/* 045044 80044444 AC590004 */  sw    $t9, 4($v0)
/* 045048 80044448 8C620000 */  lw    $v0, ($v1)
/* 04504C 8004444C 3C18E700 */  lui   $t8, 0xe700
/* 045050 80044450 244E0008 */  addiu $t6, $v0, 8
/* 045054 80044454 AC6E0000 */  sw    $t6, ($v1)
/* 045058 80044458 AFA20014 */  sw    $v0, 0x14($sp)
/* 04505C 8004445C AC400004 */  sw    $zero, 4($v0)
/* 045060 80044460 AC580000 */  sw    $t8, ($v0)
/* 045064 80044464 8C620000 */  lw    $v0, ($v1)
/* 045068 80044468 3C180008 */  lui   $t8, (0x00080200 >> 16) # lui $t8, 8
/* 04506C 8004446C 37180200 */  ori   $t8, (0x00080200 & 0xFFFF) # ori $t8, $t8, 0x200
/* 045070 80044470 24590008 */  addiu $t9, $v0, 8
/* 045074 80044474 AC790000 */  sw    $t9, ($v1)
/* 045078 80044478 AFA20010 */  sw    $v0, 0x10($sp)
/* 04507C 8004447C AC580004 */  sw    $t8, 4($v0)
/* 045080 80044480 AC4A0000 */  sw    $t2, ($v0)
/* 045084 80044484 8C620000 */  lw    $v0, ($v1)
/* 045088 80044488 3C19F200 */  lui   $t9, 0xf200
/* 04508C 8004448C 244F0008 */  addiu $t7, $v0, 8
/* 045090 80044490 AC6F0000 */  sw    $t7, ($v1)
/* 045094 80044494 AFA2000C */  sw    $v0, 0xc($sp)
/* 045098 80044498 AC590000 */  sw    $t9, ($v0)
/* 04509C 8004449C 8FAE0000 */  lw    $t6, ($sp)
/* 0450A0 800444A0 27BD0028 */  addiu $sp, $sp, 0x28
/* 0450A4 800444A4 01AE7825 */  or    $t7, $t5, $t6
/* 0450A8 800444A8 03E00008 */  jr    $ra
/* 0450AC 800444AC AC4F0004 */   sw    $t7, 4($v0)

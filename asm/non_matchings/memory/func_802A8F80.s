glabel func_802A8F80
/* 112590 802A8F80 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 112594 802A8F84 3C19802C */  lui   $t9, %hi(D_802B8D58) # $t9, 0x802c
/* 112598 802A8F88 AFB00004 */  sw    $s0, 4($sp)
/* 11259C 802A8F8C AFA60068 */  sw    $a2, 0x68($sp)
/* 1125A0 802A8F90 27398D58 */  addiu $t9, %lo(D_802B8D58) # addiu $t9, $t9, -0x72a8
/* 1125A4 802A8F94 8F210000 */  lw    $at, ($t9)
/* 1125A8 802A8F98 00067600 */  sll   $t6, $a2, 0x18
/* 1125AC 802A8F9C 000E7E03 */  sra   $t7, $t6, 0x18
/* 1125B0 802A8FA0 27B80058 */  addiu $t8, $sp, 0x58
/* 1125B4 802A8FA4 8F2D0004 */  lw    $t5, 4($t9)
/* 1125B8 802A8FA8 25EEFFE6 */  addiu $t6, $t7, -0x1a
/* 1125BC 802A8FAC AF010000 */  sw    $at, ($t8)
/* 1125C0 802A8FB0 2DC10013 */  sltiu $at, $t6, 0x13
/* 1125C4 802A8FB4 00808025 */  move  $s0, $a0
/* 1125C8 802A8FB8 00A03825 */  move  $a3, $a1
/* 1125CC 802A8FBC 00001025 */  move  $v0, $zero
/* 1125D0 802A8FC0 10200034 */  beqz  $at, .L802A9094
/* 1125D4 802A8FC4 AF0D0004 */   sw    $t5, 4($t8)
/* 1125D8 802A8FC8 000E7080 */  sll   $t6, $t6, 2
/* 1125DC 802A8FCC 3C01802C */  lui   $at, %hi(jpt_802B9C30)
/* 1125E0 802A8FD0 002E0821 */  addu  $at, $at, $t6
/* 1125E4 802A8FD4 8C2E9C30 */  lw    $t6, %lo(jpt_802B9C30)($at)
/* 1125E8 802A8FD8 01C00008 */  jr    $t6
/* 1125EC 802A8FDC 00000000 */   nop   
glabel L802A8FE0
/* 1125F0 802A8FE0 24030020 */  li    $v1, 32
/* 1125F4 802A8FE4 240F0020 */  li    $t7, 32
/* 1125F8 802A8FE8 AFAF0044 */  sw    $t7, 0x44($sp)
/* 1125FC 802A8FEC AFA00040 */  sw    $zero, 0x40($sp)
/* 112600 802A8FF0 10000028 */  b     .L802A9094
/* 112604 802A8FF4 AFA30048 */   sw    $v1, 0x48($sp)
glabel L802A8FF8
/* 112608 802A8FF8 24030020 */  li    $v1, 32
/* 11260C 802A8FFC 240C0020 */  li    $t4, 32
/* 112610 802A9000 AFAC0044 */  sw    $t4, 0x44($sp)
/* 112614 802A9004 AFA00040 */  sw    $zero, 0x40($sp)
/* 112618 802A9008 24020100 */  li    $v0, 256
/* 11261C 802A900C 10000021 */  b     .L802A9094
/* 112620 802A9010 AFA30048 */   sw    $v1, 0x48($sp)
glabel L802A9014
/* 112624 802A9014 24030040 */  li    $v1, 64
/* 112628 802A9018 240B0020 */  li    $t3, 32
/* 11262C 802A901C AFAB0044 */  sw    $t3, 0x44($sp)
/* 112630 802A9020 AFA00040 */  sw    $zero, 0x40($sp)
/* 112634 802A9024 1000001B */  b     .L802A9094
/* 112638 802A9028 AFA30048 */   sw    $v1, 0x48($sp)
glabel L802A902C
/* 11263C 802A902C 24030020 */  li    $v1, 32
/* 112640 802A9030 24180040 */  li    $t8, 64
/* 112644 802A9034 AFB80044 */  sw    $t8, 0x44($sp)
/* 112648 802A9038 AFA00040 */  sw    $zero, 0x40($sp)
/* 11264C 802A903C 10000015 */  b     .L802A9094
/* 112650 802A9040 AFA30048 */   sw    $v1, 0x48($sp)
glabel L802A9044
/* 112654 802A9044 24030020 */  li    $v1, 32
/* 112658 802A9048 24190020 */  li    $t9, 32
/* 11265C 802A904C 240D0003 */  li    $t5, 3
/* 112660 802A9050 AFB90044 */  sw    $t9, 0x44($sp)
/* 112664 802A9054 AFAD0040 */  sw    $t5, 0x40($sp)
/* 112668 802A9058 1000000E */  b     .L802A9094
/* 11266C 802A905C AFA30048 */   sw    $v1, 0x48($sp)
glabel L802A9060
/* 112670 802A9060 24030040 */  li    $v1, 64
/* 112674 802A9064 240E0020 */  li    $t6, 32
/* 112678 802A9068 240F0003 */  li    $t7, 3
/* 11267C 802A906C AFAE0044 */  sw    $t6, 0x44($sp)
/* 112680 802A9070 AFAF0040 */  sw    $t7, 0x40($sp)
/* 112684 802A9074 10000007 */  b     .L802A9094
/* 112688 802A9078 AFA30048 */   sw    $v1, 0x48($sp)
glabel L802A907C
/* 11268C 802A907C 24030020 */  li    $v1, 32
/* 112690 802A9080 240C0040 */  li    $t4, 64
/* 112694 802A9084 240B0003 */  li    $t3, 3
/* 112698 802A9088 AFAC0044 */  sw    $t4, 0x44($sp)
/* 11269C 802A908C AFAB0040 */  sw    $t3, 0x40($sp)
/* 1126A0 802A9090 AFA30048 */  sw    $v1, 0x48($sp)
.L802A9094:
glabel L802A9094
/* 1126A4 802A9094 3C09802C */  lui   $t1, %hi(D_802BA274) # $t1, 0x802c
/* 1126A8 802A9098 2529A274 */  addiu $t1, %lo(D_802BA274) # addiu $t1, $t1, -0x5d8c
/* 1126AC 802A909C 8D250000 */  lw    $a1, ($t1)
/* 1126B0 802A90A0 3C0A802C */  lui   $t2, %hi(D_802BA270) # $t2, 0x802c
/* 1126B4 802A90A4 254AA270 */  addiu $t2, %lo(D_802BA270) # addiu $t2, $t2, -0x5d90
/* 1126B8 802A90A8 00A7C021 */  addu  $t8, $a1, $a3
/* 1126BC 802A90AC 93040000 */  lbu   $a0, ($t8)
/* 1126C0 802A90B0 24B90001 */  addiu $t9, $a1, 1
/* 1126C4 802A90B4 8D4B0000 */  lw    $t3, ($t2)
/* 1126C8 802A90B8 AD390000 */  sw    $t9, ($t1)
/* 1126CC 802A90BC 8FAC0058 */  lw    $t4, 0x58($sp)
/* 1126D0 802A90C0 03277021 */  addu  $t6, $t9, $a3
/* 1126D4 802A90C4 272F0001 */  addiu $t7, $t9, 1
/* 1126D8 802A90C8 3086000F */  andi  $a2, $a0, 0xf
/* 1126DC 802A90CC 308800F0 */  andi  $t0, $a0, 0xf0
/* 1126E0 802A90D0 91C40000 */  lbu   $a0, ($t6)
/* 1126E4 802A90D4 000BC0C0 */  sll   $t8, $t3, 3
/* 1126E8 802A90D8 8FA30048 */  lw    $v1, 0x48($sp)
/* 1126EC 802A90DC AD2F0000 */  sw    $t7, ($t1)
/* 1126F0 802A90E0 0218C821 */  addu  $t9, $s0, $t8
/* 1126F4 802A90E4 AF2C0000 */  sw    $t4, ($t9)
/* 1126F8 802A90E8 8D4E0000 */  lw    $t6, ($t2)
/* 1126FC 802A90EC 00086902 */  srl   $t5, $t0, 4
/* 112700 802A90F0 01A04025 */  move  $t0, $t5
/* 112704 802A90F4 8FAD005C */  lw    $t5, 0x5c($sp)
/* 112708 802A90F8 000E78C0 */  sll   $t7, $t6, 3
/* 11270C 802A90FC 020F5821 */  addu  $t3, $s0, $t7
/* 112710 802A9100 AD6D0004 */  sw    $t5, 4($t3)
/* 112714 802A9104 8D580000 */  lw    $t8, ($t2)
/* 112718 802A9108 8FB90040 */  lw    $t9, 0x40($sp)
/* 11271C 802A910C 00035840 */  sll   $t3, $v1, 1
/* 112720 802A9110 270C0001 */  addiu $t4, $t8, 1
/* 112724 802A9114 AD4C0000 */  sw    $t4, ($t2)
/* 112728 802A9118 25780007 */  addiu $t8, $t3, 7
/* 11272C 802A911C 3C01F500 */  lui   $at, 0xf500
/* 112730 802A9120 00197540 */  sll   $t6, $t9, 0x15
/* 112734 802A9124 01C17825 */  or    $t7, $t6, $at
/* 112738 802A9128 8D4B0000 */  lw    $t3, ($t2)
/* 11273C 802A912C 3C010010 */  lui   $at, 0x10
/* 112740 802A9130 001860C3 */  sra   $t4, $t8, 3
/* 112744 802A9134 000CCA40 */  sll   $t9, $t4, 9
/* 112748 802A9138 01E16825 */  or    $t5, $t7, $at
/* 11274C 802A913C 01B97025 */  or    $t6, $t5, $t9
/* 112750 802A9140 01C27825 */  or    $t7, $t6, $v0
/* 112754 802A9144 000BC0C0 */  sll   $t8, $t3, 3
/* 112758 802A9148 02186021 */  addu  $t4, $s0, $t8
/* 11275C 802A914C 308E00F0 */  andi  $t6, $a0, 0xf0
/* 112760 802A9150 000E5902 */  srl   $t3, $t6, 4
/* 112764 802A9154 308D000F */  andi  $t5, $a0, 0xf
/* 112768 802A9158 AD8F0000 */  sw    $t7, ($t4)
/* 11276C 802A915C 000DCC80 */  sll   $t9, $t5, 0x12
/* 112770 802A9160 000BC380 */  sll   $t8, $t3, 0xe
/* 112774 802A9164 03387825 */  or    $t7, $t9, $t8
/* 112778 802A9168 8D590000 */  lw    $t9, ($t2)
/* 11277C 802A916C 00066200 */  sll   $t4, $a2, 8
/* 112780 802A9170 01EC6825 */  or    $t5, $t7, $t4
/* 112784 802A9174 00087100 */  sll   $t6, $t0, 4
/* 112788 802A9178 0019C0C0 */  sll   $t8, $t9, 3
/* 11278C 802A917C 02187821 */  addu  $t7, $s0, $t8
/* 112790 802A9180 01AE5825 */  or    $t3, $t5, $t6
/* 112794 802A9184 ADEB0004 */  sw    $t3, 4($t7)
/* 112798 802A9188 8D4C0000 */  lw    $t4, ($t2)
/* 11279C 802A918C 3C0EF200 */  lui   $t6, 0xf200
/* 1127A0 802A9190 258D0001 */  addiu $t5, $t4, 1
/* 1127A4 802A9194 000DC0C0 */  sll   $t8, $t5, 3
/* 1127A8 802A9198 AD4D0000 */  sw    $t5, ($t2)
/* 1127AC 802A919C 02185821 */  addu  $t3, $s0, $t8
/* 1127B0 802A91A0 AD6E0000 */  sw    $t6, ($t3)
/* 1127B4 802A91A4 8FB90044 */  lw    $t9, 0x44($sp)
/* 1127B8 802A91A8 8D4F0000 */  lw    $t7, ($t2)
/* 1127BC 802A91AC 246CFFFF */  addiu $t4, $v1, -1
/* 1127C0 802A91B0 000C6B80 */  sll   $t5, $t4, 0xe
/* 1127C4 802A91B4 2738FFFF */  addiu $t8, $t9, -1
/* 1127C8 802A91B8 00187080 */  sll   $t6, $t8, 2
/* 1127CC 802A91BC 000F60C0 */  sll   $t4, $t7, 3
/* 1127D0 802A91C0 020CC821 */  addu  $t9, $s0, $t4
/* 1127D4 802A91C4 01AE5825 */  or    $t3, $t5, $t6
/* 1127D8 802A91C8 AF2B0004 */  sw    $t3, 4($t9)
/* 1127DC 802A91CC 8D580000 */  lw    $t8, ($t2)
/* 1127E0 802A91D0 8FB00004 */  lw    $s0, 4($sp)
/* 1127E4 802A91D4 27BD0060 */  addiu $sp, $sp, 0x60
/* 1127E8 802A91D8 270D0001 */  addiu $t5, $t8, 1
/* 1127EC 802A91DC 03E00008 */  jr    $ra
/* 1127F0 802A91E0 AD4D0000 */   sw    $t5, ($t2)

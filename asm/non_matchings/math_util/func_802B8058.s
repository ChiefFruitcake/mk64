glabel func_802B8058
/* 121668 802B8058 3083FFFF */  andi  $v1, $a0, 0xffff
/* 12166C 802B805C 30AFFFFF */  andi  $t7, $a1, 0xffff
/* 121670 802B8060 AFA60008 */  sw    $a2, 8($sp)
/* 121674 802B8064 30D8FFFF */  andi  $t8, $a2, 0xffff
/* 121678 802B8068 01E3082A */  slt   $at, $t7, $v1
/* 12167C 802B806C 03003025 */  move  $a2, $t8
/* 121680 802B8070 AFA40000 */  sw    $a0, ($sp)
/* 121684 802B8074 AFA50004 */  sw    $a1, 4($sp)
/* 121688 802B8078 1020000B */  beqz  $at, .L802B80A8
/* 12168C 802B807C 01E01025 */   move  $v0, $t7
/* 121690 802B8080 01F8082A */  slt   $at, $t7, $t8
/* 121694 802B8084 14200003 */  bnez  $at, .L802B8094
/* 121698 802B8088 03002025 */   move  $a0, $t8
/* 12169C 802B808C 03E00008 */  jr    $ra
/* 1216A0 802B8090 00001025 */   move  $v0, $zero

.L802B8094:
/* 1216A4 802B8094 0083082A */  slt   $at, $a0, $v1
/* 1216A8 802B8098 5420000B */  bnel  $at, $zero, .L802B80C8
/* 1216AC 802B809C 24020001 */   li    $v0, 1
/* 1216B0 802B80A0 03E00008 */  jr    $ra
/* 1216B4 802B80A4 00001025 */   move  $v0, $zero

.L802B80A8:
/* 1216B8 802B80A8 0046082A */  slt   $at, $v0, $a2
/* 1216BC 802B80AC 14200005 */  bnez  $at, .L802B80C4
/* 1216C0 802B80B0 00C3082A */   slt   $at, $a2, $v1
/* 1216C4 802B80B4 54200004 */  bnel  $at, $zero, .L802B80C8
/* 1216C8 802B80B8 24020001 */   li    $v0, 1
/* 1216CC 802B80BC 03E00008 */  jr    $ra
/* 1216D0 802B80C0 00001025 */   move  $v0, $zero

.L802B80C4:
/* 1216D4 802B80C4 24020001 */  li    $v0, 1
.L802B80C8:
/* 1216D8 802B80C8 03E00008 */  jr    $ra
/* 1216DC 802B80CC 00000000 */   nop   

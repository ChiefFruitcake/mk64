glabel func_80045B2C
/* 04672C 80045B2C 3C068015 */  lui   $a2, %hi(gDisplayListHead) # $a2, 0x8015
/* 046730 80045B30 24C60298 */  addiu $a2, %lo(gDisplayListHead) # addiu $a2, $a2, 0x298
/* 046734 80045B34 8CC30000 */  lw    $v1, ($a2)
/* 046738 80045B38 3C0F0400 */  lui   $t7, (0x0400103F >> 16) # lui $t7, 0x400
/* 04673C 80045B3C 35EF103F */  ori   $t7, (0x0400103F & 0xFFFF) # ori $t7, $t7, 0x103f
/* 046740 80045B40 246E0008 */  addiu $t6, $v1, 8
/* 046744 80045B44 ACCE0000 */  sw    $t6, ($a2)
/* 046748 80045B48 AC640004 */  sw    $a0, 4($v1)
/* 04674C 80045B4C AC6F0000 */  sw    $t7, ($v1)
/* 046750 80045B50 8CC30000 */  lw    $v1, ($a2)
/* 046754 80045B54 3C080D00 */  lui   $t0, %hi(D_0D006940) # $t0, 0xd00
/* 046758 80045B58 25086940 */  addiu $t0, %lo(D_0D006940) # addiu $t0, $t0, 0x6940
/* 04675C 80045B5C 24780008 */  addiu $t8, $v1, 8
/* 046760 80045B60 ACD80000 */  sw    $t8, ($a2)
/* 046764 80045B64 3C190600 */  lui   $t9, 0x600
/* 046768 80045B68 AC790000 */  sw    $t9, ($v1)
/* 04676C 80045B6C 03E00008 */  jr    $ra
/* 046770 80045B70 AC680004 */   sw    $t0, 4($v1)

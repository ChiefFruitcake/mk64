glabel func_8001490C
/* 01550C 8001490C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 015510 80014910 AFBF0014 */  sw    $ra, 0x14($sp)
/* 015514 80014914 3C068016 */  lui   $a2, %hi(D_80163818) # $a2, 0x8016
/* 015518 80014918 24C63818 */  addiu $a2, %lo(D_80163818) # addiu $a2, $a2, 0x3818
/* 01551C 8001491C 0C0051AE */  jal   func_800146B8
/* 015520 80014920 24050007 */   li    $a1, 7
/* 015524 80014924 8FBF0014 */  lw    $ra, 0x14($sp)
/* 015528 80014928 27BD0018 */  addiu $sp, $sp, 0x18
/* 01552C 8001492C 03E00008 */  jr    $ra
/* 015530 80014930 00000000 */   nop   

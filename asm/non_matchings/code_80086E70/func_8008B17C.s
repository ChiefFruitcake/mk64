glabel func_8008B17C
/* 08BD7C 8008B17C 44856000 */  mtc1  $a1, $f12
/* 08BD80 8008B180 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 08BD84 8008B184 AFA40018 */  sw    $a0, 0x18($sp)
/* 08BD88 8008B188 AFBF0014 */  sw    $ra, 0x14($sp)
/* 08BD8C 8008B18C 3C048018 */  lui   $a0, %hi(D_80183DA8) # $a0, 0x8018
/* 08BD90 8008B190 44056000 */  mfc1  $a1, $f12
/* 08BD94 8008B194 0C022B38 */  jal   func_8008ACE0
/* 08BD98 8008B198 24843DA8 */   addiu $a0, %lo(D_80183DA8) # addiu $a0, $a0, 0x3da8
/* 08BD9C 8008B19C 0C022C0E */  jal   func_8008B038
/* 08BDA0 8008B1A0 8FA40018 */   lw    $a0, 0x18($sp)
/* 08BDA4 8008B1A4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 08BDA8 8008B1A8 27BD0018 */  addiu $sp, $sp, 0x18
/* 08BDAC 8008B1AC 03E00008 */  jr    $ra
/* 08BDB0 8008B1B0 00000000 */   nop   

/* 08BDB4 8008B1B4 03E00008 */  jr    $ra
/* 08BDB8 8008B1B8 00000000 */   nop   

/* 08BDBC 8008B1BC 03E00008 */  jr    $ra
/* 08BDC0 8008B1C0 00000000 */   nop   

/* 08BDC4 8008B1C4 03E00008 */  jr    $ra
/* 08BDC8 8008B1C8 00000000 */   nop   

/* 08BDCC 8008B1CC 03E00008 */  jr    $ra
/* 08BDD0 8008B1D0 00000000 */   nop   
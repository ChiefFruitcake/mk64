glabel func_80085080
/* 085C80 80085080 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 085C84 80085084 AFBF0014 */  sw    $ra, 0x14($sp)
/* 085C88 80085088 0C022DE3 */  jal   func_8008B78C
/* 085C8C 8008508C AFA40018 */   sw    $a0, 0x18($sp)
/* 085C90 80085090 0C022FC6 */  jal   func_8008BF18
/* 085C94 80085094 8FA40018 */   lw    $a0, 0x18($sp)
/* 085C98 80085098 0C021CFD */  jal   func_800873F4
/* 085C9C 8008509C 8FA40018 */   lw    $a0, 0x18($sp)
/* 085CA0 800850A0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 085CA4 800850A4 27BD0018 */  addiu $sp, $sp, 0x18
/* 085CA8 800850A8 03E00008 */  jr    $ra
/* 085CAC 800850AC 00000000 */   nop   

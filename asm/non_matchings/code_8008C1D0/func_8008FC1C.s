glabel func_8008FC1C
/* 09081C 8008FC1C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 090820 8008FC20 AFBF0014 */  sw    $ra, 0x14($sp)
/* 090824 8008FC24 948E0000 */  lhu   $t6, ($a0)
/* 090828 8008FC28 00802825 */  move  $a1, $a0
/* 09082C 8008FC2C 31CF0040 */  andi  $t7, $t6, 0x40
/* 090830 8008FC30 51E00009 */  beql  $t7, $zero, .L8008FC58
/* 090834 8008FC34 8FBF0014 */   lw    $ra, 0x14($sp)
/* 090838 8008FC38 0C009F40 */  jal   get_player_index_for_player
/* 09083C 8008FC3C AFA50018 */   sw    $a1, 0x18($sp)
/* 090840 8008FC40 8FA50018 */  lw    $a1, 0x18($sp)
/* 090844 8008FC44 24187000 */  li    $t8, 28672
/* 090848 8008FC48 00402025 */  move  $a0, $v0
/* 09084C 8008FC4C 0C015AA5 */  jal   func_80056A94
/* 090850 8008FC50 A4B80000 */   sh    $t8, ($a1)
/* 090854 8008FC54 8FBF0014 */  lw    $ra, 0x14($sp)
.L8008FC58:
/* 090858 8008FC58 27BD0018 */  addiu $sp, $sp, 0x18
/* 09085C 8008FC5C 03E00008 */  jr    $ra
/* 090860 8008FC60 00000000 */   nop

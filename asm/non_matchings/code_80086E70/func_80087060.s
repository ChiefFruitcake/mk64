glabel func_80087060
/* 087C60 80087060 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 087C64 80087064 AFBF0014 */  sw    $ra, 0x14($sp)
/* 087C68 80087068 AFA50024 */  sw    $a1, 0x24($sp)
/* 087C6C 8008706C AFA0001C */  sw    $zero, 0x1c($sp)
/* 087C70 80087070 24050008 */  li    $a1, 8
/* 087C74 80087074 0C01C89C */  jal   func_80072270
/* 087C78 80087078 AFA40020 */   sw    $a0, 0x20($sp)
/* 087C7C 8008707C 1040000C */  beqz  $v0, .L800870B0
/* 087C80 80087080 8FA40020 */   lw    $a0, 0x20($sp)
/* 087C84 80087084 24050008 */  li    $a1, 8
/* 087C88 80087088 0C01C870 */  jal   func_800721C0
/* 087C8C 8008708C AFA40020 */   sw    $a0, 0x20($sp)
/* 087C90 80087090 8FA40020 */  lw    $a0, 0x20($sp)
/* 087C94 80087094 8FAE0024 */  lw    $t6, 0x24($sp)
/* 087C98 80087098 3C018016 */  lui   $at, %hi(D_80165CC8) # 0x8016
/* 087C9C 8008709C 000478C0 */  sll   $t7, $a0, 3
/* 087CA0 800870A0 01E47823 */  subu  $t7, $t7, $a0
/* 087CA4 800870A4 000F7940 */  sll   $t7, $t7, 5
/* 087CA8 800870A8 002F0821 */  addu  $at, $at, $t7
/* 087CAC 800870AC A42E5CC8 */  sh    $t6, %lo(D_80165CC8)($at) # 0x5cc8($at)
.L800870B0:
/* 087CB0 800870B0 0004C0C0 */  sll   $t8, $a0, 3
/* 087CB4 800870B4 0304C023 */  subu  $t8, $t8, $a0
/* 087CB8 800870B8 3C198016 */  lui   $t9, %hi(D_80165C18) # $t9, 0x8016
/* 087CBC 800870BC 27395C18 */  addiu $t9, %lo(D_80165C18) # addiu $t9, $t9, 0x5c18
/* 087CC0 800870C0 0018C140 */  sll   $t8, $t8, 5
/* 087CC4 800870C4 03191021 */  addu  $v0, $t8, $t9
/* 087CC8 800870C8 844800B0 */  lh    $t0, 0xb0($v0)
/* 087CCC 800870CC 2509FFFF */  addiu $t1, $t0, -1
/* 087CD0 800870D0 A44900B0 */  sh    $t1, 0xb0($v0)
/* 087CD4 800870D4 844A00B0 */  lh    $t2, 0xb0($v0)
/* 087CD8 800870D8 05430006 */  bgezl $t2, .L800870F4
/* 087CDC 800870DC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 087CE0 800870E0 0C01C87A */  jal   func_800721E8
/* 087CE4 800870E4 24050008 */   li    $a1, 8
/* 087CE8 800870E8 240B0001 */  li    $t3, 1
/* 087CEC 800870EC AFAB001C */  sw    $t3, 0x1c($sp)
/* 087CF0 800870F0 8FBF0014 */  lw    $ra, 0x14($sp)
.L800870F4:
/* 087CF4 800870F4 8FA2001C */  lw    $v0, 0x1c($sp)
/* 087CF8 800870F8 27BD0020 */  addiu $sp, $sp, 0x20
/* 087CFC 800870FC 03E00008 */  jr    $ra
/* 087D00 80087100 00000000 */   nop   

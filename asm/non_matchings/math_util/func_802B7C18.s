glabel func_802B7C18
/* 121228 802B7C18 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 12122C 802B7C1C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 121230 802B7C20 AFBF0014 */  sw    $ra, 0x14($sp)
/* 121234 802B7C24 44817000 */  mtc1  $at, $f14
/* 121238 802B7C28 0C0ADE6E */  jal   func_802B79B8
/* 12123C 802B7C2C 00000000 */   nop   
/* 121240 802B7C30 8FBF0014 */  lw    $ra, 0x14($sp)
/* 121244 802B7C34 27BD0018 */  addiu $sp, $sp, 0x18
/* 121248 802B7C38 03E00008 */  jr    $ra
/* 12124C 802B7C3C 00000000 */   nop   

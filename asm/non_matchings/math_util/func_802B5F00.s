glabel func_802B5F00
/* 11F510 802B5F00 44856000 */  mtc1  $a1, $f12
/* 11F514 802B5F04 C4840000 */  lwc1  $f4, ($a0)
/* 11F518 802B5F08 C4880010 */  lwc1  $f8, 0x10($a0)
/* 11F51C 802B5F0C C4900020 */  lwc1  $f16, 0x20($a0)
/* 11F520 802B5F10 460C2182 */  mul.s $f6, $f4, $f12
/* 11F524 802B5F14 C4840004 */  lwc1  $f4, 4($a0)
/* 11F528 802B5F18 460C4282 */  mul.s $f10, $f8, $f12
/* 11F52C 802B5F1C C4880014 */  lwc1  $f8, 0x14($a0)
/* 11F530 802B5F20 460C8482 */  mul.s $f18, $f16, $f12
/* 11F534 802B5F24 E4860000 */  swc1  $f6, ($a0)
/* 11F538 802B5F28 C4900024 */  lwc1  $f16, 0x24($a0)
/* 11F53C 802B5F2C 460C2182 */  mul.s $f6, $f4, $f12
/* 11F540 802B5F30 E48A0010 */  swc1  $f10, 0x10($a0)
/* 11F544 802B5F34 C4840008 */  lwc1  $f4, 8($a0)
/* 11F548 802B5F38 460C4282 */  mul.s $f10, $f8, $f12
/* 11F54C 802B5F3C E4920020 */  swc1  $f18, 0x20($a0)
/* 11F550 802B5F40 C4880018 */  lwc1  $f8, 0x18($a0)
/* 11F554 802B5F44 460C8482 */  mul.s $f18, $f16, $f12
/* 11F558 802B5F48 E4860004 */  swc1  $f6, 4($a0)
/* 11F55C 802B5F4C C4900028 */  lwc1  $f16, 0x28($a0)
/* 11F560 802B5F50 460C2182 */  mul.s $f6, $f4, $f12
/* 11F564 802B5F54 E48A0014 */  swc1  $f10, 0x14($a0)
/* 11F568 802B5F58 460C4282 */  mul.s $f10, $f8, $f12
/* 11F56C 802B5F5C E4920024 */  swc1  $f18, 0x24($a0)
/* 11F570 802B5F60 460C8482 */  mul.s $f18, $f16, $f12
/* 11F574 802B5F64 E4860008 */  swc1  $f6, 8($a0)
/* 11F578 802B5F68 E48A0018 */  swc1  $f10, 0x18($a0)
/* 11F57C 802B5F6C 03E00008 */  jr    $ra
/* 11F580 802B5F70 E4920028 */   swc1  $f18, 0x28($a0)

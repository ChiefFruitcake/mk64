glabel update_obj_banana
/* 11B644 802B2034 27BDFF70 */  addiu $sp, $sp, -0x90
/* 11B648 802B2038 AFBF0024 */  sw    $ra, 0x24($sp)
/* 11B64C 802B203C AFB00020 */  sw    $s0, 0x20($sp)
/* 11B650 802B2040 848E0010 */  lh    $t6, 0x10($a0)
/* 11B654 802B2044 94990006 */  lhu   $t9, 6($a0)
/* 11B658 802B2048 3C18800F */  lui   $t8, %hi(gPlayers) # $t8, 0x800f
/* 11B65C 802B204C 000E78C0 */  sll   $t7, $t6, 3
/* 11B660 802B2050 01EE7823 */  subu  $t7, $t7, $t6
/* 11B664 802B2054 000F7900 */  sll   $t7, $t7, 4
/* 11B668 802B2058 01EE7823 */  subu  $t7, $t7, $t6
/* 11B66C 802B205C 000F7880 */  sll   $t7, $t7, 2
/* 11B670 802B2060 01EE7823 */  subu  $t7, $t7, $t6
/* 11B674 802B2064 000F78C0 */  sll   $t7, $t7, 3
/* 11B678 802B2068 27186990 */  addiu $t8, %lo(gPlayers) # addiu $t8, $t8, 0x6990
/* 11B67C 802B206C 2F210006 */  sltiu $at, $t9, 6
/* 11B680 802B2070 00808025 */  move  $s0, $a0
/* 11B684 802B2074 10200222 */  beqz  $at, .L802B2900
/* 11B688 802B2078 01F81021 */   addu  $v0, $t7, $t8
/* 11B68C 802B207C 0019C880 */  sll   $t9, $t9, 2
/* 11B690 802B2080 3C01802C */  lui   $at, %hi(jpt_802B9EC8)
/* 11B694 802B2084 00390821 */  addu  $at, $at, $t9
/* 11B698 802B2088 8C399EC8 */  lw    $t9, %lo(jpt_802B9EC8)($at)
/* 11B69C 802B208C 03200008 */  jr    $t9
/* 11B6A0 802B2090 00000000 */   nop
glabel L802B2094
/* 11B6A4 802B2094 C4440014 */  lwc1  $f4, 0x14($v0)
/* 11B6A8 802B2098 C6060018 */  lwc1  $f6, 0x18($s0)
/* 11B6AC 802B209C C4480018 */  lwc1  $f8, 0x18($v0)
/* 11B6B0 802B20A0 C60A001C */  lwc1  $f10, 0x1c($s0)
/* 11B6B4 802B20A4 46062081 */  sub.s $f2, $f4, $f6
/* 11B6B8 802B20A8 C6060020 */  lwc1  $f6, 0x20($s0)
/* 11B6BC 802B20AC C444001C */  lwc1  $f4, 0x1c($v0)
/* 11B6C0 802B20B0 460A4381 */  sub.s $f14, $f8, $f10
/* 11B6C4 802B20B4 46021202 */  mul.s $f8, $f2, $f2
/* 11B6C8 802B20B8 E7A20048 */  swc1  $f2, 0x48($sp)
/* 11B6CC 802B20BC 46062401 */  sub.s $f16, $f4, $f6
/* 11B6D0 802B20C0 460E7282 */  mul.s $f10, $f14, $f14
/* 11B6D4 802B20C4 E7AE0044 */  swc1  $f14, 0x44($sp)
/* 11B6D8 802B20C8 AFA20088 */  sw    $v0, 0x88($sp)
/* 11B6DC 802B20CC 46108182 */  mul.s $f6, $f16, $f16
/* 11B6E0 802B20D0 E7B00040 */  swc1  $f16, 0x40($sp)
/* 11B6E4 802B20D4 460A4100 */  add.s $f4, $f8, $f10
/* 11B6E8 802B20D8 0C033850 */  jal   sqrtf
/* 11B6EC 802B20DC 46062300 */   add.s $f12, $f4, $f6
/* 11B6F0 802B20E0 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 11B6F4 802B20E4 44814000 */  mtc1  $at, $f8
/* 11B6F8 802B20E8 44805000 */  mtc1  $zero, $f10
/* 11B6FC 802B20EC 8FA20088 */  lw    $v0, 0x88($sp)
/* 11B700 802B20F0 46080303 */  div.s $f12, $f0, $f8
/* 11B704 802B20F4 C7A20048 */  lwc1  $f2, 0x48($sp)
/* 11B708 802B20F8 C7AE0044 */  lwc1  $f14, 0x44($sp)
/* 11B70C 802B20FC C7B00040 */  lwc1  $f16, 0x40($sp)
/* 11B710 802B2100 3C01802C */  lui   $at, %hi(D_802B9EE0) # $at, 0x802c
/* 11B714 802B2104 460C5032 */  c.eq.s $f10, $f12
/* 11B718 802B2108 00000000 */  nop
/* 11B71C 802B210C 4502000D */  bc1fl .L802B2144
/* 11B720 802B2110 460C1083 */   div.s $f2, $f2, $f12
/* 11B724 802B2114 C4209EE0 */  lwc1  $f0, %lo(D_802B9EE0)($at)
/* 11B728 802B2118 C4440014 */  lwc1  $f4, 0x14($v0)
/* 11B72C 802B211C 46002180 */  add.s $f6, $f4, $f0
/* 11B730 802B2120 E6060018 */  swc1  $f6, 0x18($s0)
/* 11B734 802B2124 C4480018 */  lwc1  $f8, 0x18($v0)
/* 11B738 802B2128 46004280 */  add.s $f10, $f8, $f0
/* 11B73C 802B212C E60A001C */  swc1  $f10, 0x1c($s0)
/* 11B740 802B2130 C444001C */  lwc1  $f4, 0x1c($v0)
/* 11B744 802B2134 46002180 */  add.s $f6, $f4, $f0
/* 11B748 802B2138 10000010 */  b     .L802B217C
/* 11B74C 802B213C E6060020 */   swc1  $f6, 0x20($s0)
/* 11B750 802B2140 460C1083 */  div.s $f2, $f2, $f12
.L802B2144:
/* 11B754 802B2144 C4480014 */  lwc1  $f8, 0x14($v0)
/* 11B758 802B2148 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 11B75C 802B214C 460C7383 */  div.s $f14, $f14, $f12
/* 11B760 802B2150 46024281 */  sub.s $f10, $f8, $f2
/* 11B764 802B2154 44814000 */  mtc1  $at, $f8
/* 11B768 802B2158 E60A0018 */  swc1  $f10, 0x18($s0)
/* 11B76C 802B215C C4440018 */  lwc1  $f4, 0x18($v0)
/* 11B770 802B2160 460C8403 */  div.s $f16, $f16, $f12
/* 11B774 802B2164 460E2181 */  sub.s $f6, $f4, $f14
/* 11B778 802B2168 46083281 */  sub.s $f10, $f6, $f8
/* 11B77C 802B216C E60A001C */  swc1  $f10, 0x1c($s0)
/* 11B780 802B2170 C444001C */  lwc1  $f4, 0x1c($v0)
/* 11B784 802B2174 46102181 */  sub.s $f6, $f4, $f16
/* 11B788 802B2178 E6060020 */  swc1  $f6, 0x20($s0)
.L802B217C:
/* 11B78C 802B217C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 11B790 802B2180 44815000 */  mtc1  $at, $f10
/* 11B794 802B2184 C608000C */  lwc1  $f8, 0xc($s0)
/* 11B798 802B2188 C6060020 */  lwc1  $f6, 0x20($s0)
/* 11B79C 802B218C 8E060018 */  lw    $a2, 0x18($s0)
/* 11B7A0 802B2190 460A4100 */  add.s $f4, $f8, $f10
/* 11B7A4 802B2194 8E07001C */  lw    $a3, 0x1c($s0)
/* 11B7A8 802B2198 AFA20088 */  sw    $v0, 0x88($sp)
/* 11B7AC 802B219C 26040030 */  addiu $a0, $s0, 0x30
/* 11B7B0 802B21A0 44052000 */  mfc1  $a1, $f4
/* 11B7B4 802B21A4 0C0AB772 */  jal   func_802ADDC8
/* 11B7B8 802B21A8 E7A60010 */   swc1  $f6, 0x10($sp)
/* 11B7BC 802B21AC 0C0AD38C */  jal   func_802B4E30
/* 11B7C0 802B21B0 02002025 */   move  $a0, $s0
/* 11B7C4 802B21B4 8FA20088 */  lw    $v0, 0x88($sp)
/* 11B7C8 802B21B8 3C0A800E */  lui   $t2, %hi(D_800DC51C) # $t2, 0x800e
/* 11B7CC 802B21BC 94480000 */  lhu   $t0, ($v0)
/* 11B7D0 802B21C0 31094000 */  andi  $t1, $t0, 0x4000
/* 11B7D4 802B21C4 512001CF */  beql  $t1, $zero, .L802B2904
/* 11B7D8 802B21C8 8FBF0024 */   lw    $ra, 0x24($sp)
/* 11B7DC 802B21CC 954AC51C */  lhu   $t2, %lo(D_800DC51C)($t2)
/* 11B7E0 802B21D0 3C03800E */  lui   $v1, %hi(gControllerOne) # $v1, 0x800e
/* 11B7E4 802B21D4 24180001 */  li    $t8, 1
/* 11B7E8 802B21D8 11400003 */  beqz  $t2, .L802B21E8
/* 11B7EC 802B21DC 241900B4 */   li    $t9, 180
/* 11B7F0 802B21E0 10000006 */  b     .L802B21FC
/* 11B7F4 802B21E4 8C63C4BC */   lw    $v1, %lo(gControllerOne)($v1)
.L802B21E8:
/* 11B7F8 802B21E8 860B0010 */  lh    $t3, 0x10($s0)
/* 11B7FC 802B21EC 3C0D800F */  lui   $t5, %hi(gControllers) # $t5, 0x800f
/* 11B800 802B21F0 25AD6910 */  addiu $t5, %lo(gControllers) # addiu $t5, $t5, 0x6910
/* 11B804 802B21F4 000B6100 */  sll   $t4, $t3, 4
/* 11B808 802B21F8 018D1821 */  addu  $v1, $t4, $t5
.L802B21FC:
/* 11B80C 802B21FC 94660008 */  lhu   $a2, 8($v1)
/* 11B810 802B2200 3C01FFFB */  lui   $at, (0xFFFBFFFF >> 16) # lui $at, 0xfffb
/* 11B814 802B2204 3421FFFF */  ori   $at, (0xFFFBFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 11B818 802B2208 30CE2000 */  andi  $t6, $a2, 0x2000
/* 11B81C 802B220C 11C001BC */  beqz  $t6, .L802B2900
/* 11B820 802B2210 30CFDFFF */   andi  $t7, $a2, 0xdfff
/* 11B824 802B2214 A46F0008 */  sh    $t7, 8($v1)
/* 11B828 802B2218 A6180006 */  sh    $t8, 6($s0)
/* 11B82C 802B221C A6190004 */  sh    $t9, 4($s0)
/* 11B830 802B2220 8C48000C */  lw    $t0, 0xc($v0)
/* 11B834 802B2224 3C0A800E */  lui   $t2, %hi(gPlayerOne) # $t2, 0x800e
/* 11B838 802B2228 3C051900 */  lui   $a1, (0x19008012 >> 16) # lui $a1, 0x1900
/* 11B83C 802B222C 01014824 */  and   $t1, $t0, $at
/* 11B840 802B2230 AC49000C */  sw    $t1, 0xc($v0)
/* 11B844 802B2234 8D4AC4DC */  lw    $t2, %lo(gPlayerOne)($t2)
/* 11B848 802B2238 24010DD8 */  li    $at, 3544
/* 11B84C 802B223C AFA30080 */  sw    $v1, 0x80($sp)
/* 11B850 802B2240 004A2023 */  subu  $a0, $v0, $t2
/* 11B854 802B2244 0081001A */  div   $zero, $a0, $at
/* 11B858 802B2248 00005812 */  mflo  $t3
/* 11B85C 802B224C 316400FF */  andi  $a0, $t3, 0xff
/* 11B860 802B2250 AFA20088 */  sw    $v0, 0x88($sp)
/* 11B864 802B2254 0C032418 */  jal   func_800C9060
/* 11B868 802B2258 34A58012 */   ori   $a1, (0x19008012 & 0xFFFF) # ori $a1, $a1, 0x8012
/* 11B86C 802B225C 8FA30080 */  lw    $v1, 0x80($sp)
/* 11B870 802B2260 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 11B874 802B2264 44815000 */  mtc1  $at, $f10
/* 11B878 802B2268 846D0002 */  lh    $t5, 2($v1)
/* 11B87C 802B226C 8FA20088 */  lw    $v0, 0x88($sp)
/* 11B880 802B2270 448D4000 */  mtc1  $t5, $f8
/* 11B884 802B2274 00000000 */  nop
/* 11B888 802B2278 46804020 */  cvt.s.w $f0, $f8
/* 11B88C 802B227C 4600503C */  c.lt.s $f10, $f0
/* 11B890 802B2280 00000000 */  nop
/* 11B894 802B2284 45020037 */  bc1fl .L802B2364
/* 11B898 802B2288 44801000 */   mtc1  $zero, $f2
/* 11B89C 802B228C 84640000 */  lh    $a0, ($v1)
/* 11B8A0 802B2290 2881000A */  slti  $at, $a0, 0xa
/* 11B8A4 802B2294 10200032 */  beqz  $at, .L802B2360
/* 11B8A8 802B2298 2881FFF7 */   slti  $at, $a0, -9
/* 11B8AC 802B229C 14200030 */  bnez  $at, .L802B2360
/* 11B8B0 802B22A0 27A40068 */   addiu $a0, $sp, 0x68
/* 11B8B4 802B22A4 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 11B8B8 802B22A8 44812000 */  mtc1  $at, $f4
/* 11B8BC 802B22AC 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 11B8C0 802B22B0 44813000 */  mtc1  $at, $f6
/* 11B8C4 802B22B4 46040001 */  sub.s $f0, $f0, $f4
/* 11B8C8 802B22B8 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 11B8CC 802B22BC 44815000 */  mtc1  $at, $f10
/* 11B8D0 802B22C0 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 11B8D4 802B22C4 46060203 */  div.s $f8, $f0, $f6
/* 11B8D8 802B22C8 44812000 */  mtc1  $at, $f4
/* 11B8DC 802B22CC C4420094 */  lwc1  $f2, 0x94($v0)
/* 11B8E0 802B22D0 3C013F40 */  li    $at, 0x3F400000 # 0.750000
/* 11B8E4 802B22D4 4604103C */  c.lt.s $f2, $f4
/* 11B8E8 802B22D8 00000000 */  nop
/* 11B8EC 802B22DC 45000005 */  bc1f  .L802B22F4
/* 11B8F0 802B22E0 460A4000 */   add.s $f0, $f8, $f10
/* 11B8F4 802B22E4 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 11B8F8 802B22E8 44816000 */  mtc1  $at, $f12
/* 11B8FC 802B22EC 10000008 */  b     .L802B2310
/* 11B900 802B22F0 44801000 */   mtc1  $zero, $f2
.L802B22F4:
/* 11B904 802B22F4 44813000 */  mtc1  $at, $f6
/* 11B908 802B22F8 3C014060 */  li    $at, 0x40600000 # 3.500000
/* 11B90C 802B22FC 44815000 */  mtc1  $at, $f10
/* 11B910 802B2300 46061202 */  mul.s $f8, $f2, $f6
/* 11B914 802B2304 460A4100 */  add.s $f4, $f8, $f10
/* 11B918 802B2308 46002300 */  add.s $f12, $f4, $f0
/* 11B91C 802B230C 44801000 */  mtc1  $zero, $f2
.L802B2310:
/* 11B920 802B2310 44060000 */  mfc1  $a2, $f0
/* 11B924 802B2314 44076000 */  mfc1  $a3, $f12
/* 11B928 802B2318 44051000 */  mfc1  $a1, $f2
/* 11B92C 802B231C 0C0AD4A7 */  jal   load_giant_egg
/* 11B930 802B2320 AFA20088 */   sw    $v0, 0x88($sp)
/* 11B934 802B2324 8FA20088 */  lw    $v0, 0x88($sp)
/* 11B938 802B2328 27A40068 */  addiu $a0, $sp, 0x68
/* 11B93C 802B232C 844E002E */  lh    $t6, 0x2e($v0)
/* 11B940 802B2330 844F00C0 */  lh    $t7, 0xc0($v0)
/* 11B944 802B2334 01CF2821 */  addu  $a1, $t6, $t7
/* 11B948 802B2338 0005C400 */  sll   $t8, $a1, 0x10
/* 11B94C 802B233C 0C0AD931 */  jal   func_802B64C4
/* 11B950 802B2340 00182C03 */   sra   $a1, $t8, 0x10
/* 11B954 802B2344 C7A60068 */  lwc1  $f6, 0x68($sp)
/* 11B958 802B2348 E6060024 */  swc1  $f6, 0x24($s0)
/* 11B95C 802B234C C7A8006C */  lwc1  $f8, 0x6c($sp)
/* 11B960 802B2350 E6080028 */  swc1  $f8, 0x28($s0)
/* 11B964 802B2354 C7AA0070 */  lwc1  $f10, 0x70($sp)
/* 11B968 802B2358 10000169 */  b     .L802B2900
/* 11B96C 802B235C E60A002C */   swc1  $f10, 0x2c($s0)
.L802B2360:
/* 11B970 802B2360 44801000 */  mtc1  $zero, $f2
.L802B2364:
/* 11B974 802B2364 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 11B978 802B2368 44812000 */  mtc1  $at, $f4
/* 11B97C 802B236C E6020024 */  swc1  $f2, 0x24($s0)
/* 11B980 802B2370 E602002C */  swc1  $f2, 0x2c($s0)
/* 11B984 802B2374 10000162 */  b     .L802B2900
/* 11B988 802B2378 E6040028 */   swc1  $f4, 0x28($s0)
glabel L802B237C
/* 11B98C 802B237C 86020004 */  lh    $v0, 4($s0)
/* 11B990 802B2380 3C0D8016 */  lui   $t5, %hi(D_8015F6F0) # $t5, 0x8016
/* 11B994 802B2384 10400008 */  beqz  $v0, .L802B23A8
/* 11B998 802B2388 2448FFFF */   addiu $t0, $v0, -1
/* 11B99C 802B238C A6080004 */  sh    $t0, 4($s0)
/* 11B9A0 802B2390 86090004 */  lh    $t1, 4($s0)
/* 11B9A4 802B2394 55200005 */  bnel  $t1, $zero, .L802B23AC
/* 11B9A8 802B2398 C6060018 */   lwc1  $f6, 0x18($s0)
/* 11B9AC 802B239C 860A0002 */  lh    $t2, 2($s0)
/* 11B9B0 802B23A0 314BEFFF */  andi  $t3, $t2, 0xefff
/* 11B9B4 802B23A4 A60B0002 */  sh    $t3, 2($s0)
.L802B23A8:
/* 11B9B8 802B23A8 C6060018 */  lwc1  $f6, 0x18($s0)
.L802B23AC:
/* 11B9BC 802B23AC C6080024 */  lwc1  $f8, 0x24($s0)
/* 11B9C0 802B23B0 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 11B9C4 802B23B4 C6000028 */  lwc1  $f0, 0x28($s0)
/* 11B9C8 802B23B8 46083280 */  add.s $f10, $f6, $f8
/* 11B9CC 802B23BC C606002C */  lwc1  $f6, 0x2c($s0)
/* 11B9D0 802B23C0 C6040020 */  lwc1  $f4, 0x20($s0)
/* 11B9D4 802B23C4 E60A0018 */  swc1  $f10, 0x18($s0)
/* 11B9D8 802B23C8 44815000 */  mtc1  $at, $f10
/* 11B9DC 802B23CC 46062200 */  add.s $f8, $f4, $f6
/* 11B9E0 802B23D0 3C01802C */  lui   $at, %hi(D_802B9EE4) # $at, 0x802c
/* 11B9E4 802B23D4 4600503C */  c.lt.s $f10, $f0
/* 11B9E8 802B23D8 E6080020 */  swc1  $f8, 0x20($s0)
/* 11B9EC 802B23DC 45020006 */  bc1fl .L802B23F8
/* 11B9F0 802B23E0 C608001C */   lwc1  $f8, 0x1c($s0)
/* 11B9F4 802B23E4 C4249EE4 */  lwc1  $f4, %lo(D_802B9EE4)($at)
/* 11B9F8 802B23E8 46040181 */  sub.s $f6, $f0, $f4
/* 11B9FC 802B23EC E6060028 */  swc1  $f6, 0x28($s0)
/* 11BA00 802B23F0 C6000028 */  lwc1  $f0, 0x28($s0)
/* 11BA04 802B23F4 C608001C */  lwc1  $f8, 0x1c($s0)
.L802B23F8:
/* 11BA08 802B23F8 3C0C8016 */  lui   $t4, %hi(D_8015F6F2) # $t4, 0x8016
/* 11BA0C 802B23FC C60C0020 */  lwc1  $f12, 0x20($s0)
/* 11BA10 802B2400 46004280 */  add.s $f10, $f8, $f0
/* 11BA14 802B2404 E60A001C */  swc1  $f10, 0x1c($s0)
/* 11BA18 802B2408 858CF6F2 */  lh    $t4, %lo(D_8015F6F2)($t4)
/* 11BA1C 802B240C 448C2000 */  mtc1  $t4, $f4
/* 11BA20 802B2410 00000000 */  nop
/* 11BA24 802B2414 468021A0 */  cvt.s.w $f6, $f4
/* 11BA28 802B2418 4606603C */  c.lt.s $f12, $f6
/* 11BA2C 802B241C 00000000 */  nop
/* 11BA30 802B2420 45010027 */  bc1t  .L802B24C0
/* 11BA34 802B2424 00000000 */   nop
/* 11BA38 802B2428 85ADF6F0 */  lh    $t5, %lo(D_8015F6F0)($t5)
/* 11BA3C 802B242C 3C0E8016 */  lui   $t6, %hi(D_8015F6EA) # $t6, 0x8016
/* 11BA40 802B2430 448D4000 */  mtc1  $t5, $f8
/* 11BA44 802B2434 00000000 */  nop
/* 11BA48 802B2438 468042A0 */  cvt.s.w $f10, $f8
/* 11BA4C 802B243C 460C503C */  c.lt.s $f10, $f12
/* 11BA50 802B2440 00000000 */  nop
/* 11BA54 802B2444 4501001E */  bc1t  .L802B24C0
/* 11BA58 802B2448 00000000 */   nop
/* 11BA5C 802B244C 85CEF6EA */  lh    $t6, %lo(D_8015F6EA)($t6)
/* 11BA60 802B2450 C6000018 */  lwc1  $f0, 0x18($s0)
/* 11BA64 802B2454 3C0F8016 */  lui   $t7, %hi(D_8015F6E8) # $t7, 0x8016
/* 11BA68 802B2458 448E2000 */  mtc1  $t6, $f4
/* 11BA6C 802B245C 00000000 */  nop
/* 11BA70 802B2460 468021A0 */  cvt.s.w $f6, $f4
/* 11BA74 802B2464 4606003C */  c.lt.s $f0, $f6
/* 11BA78 802B2468 00000000 */  nop
/* 11BA7C 802B246C 45010014 */  bc1t  .L802B24C0
/* 11BA80 802B2470 00000000 */   nop
/* 11BA84 802B2474 85EFF6E8 */  lh    $t7, %lo(D_8015F6E8)($t7)
/* 11BA88 802B2478 3C188016 */  lui   $t8, %hi(D_8015F6EE) # $t8, 0x8016
/* 11BA8C 802B247C 448F4000 */  mtc1  $t7, $f8
/* 11BA90 802B2480 00000000 */  nop
/* 11BA94 802B2484 468042A0 */  cvt.s.w $f10, $f8
/* 11BA98 802B2488 4600503C */  c.lt.s $f10, $f0
/* 11BA9C 802B248C 00000000 */  nop
/* 11BAA0 802B2490 4501000B */  bc1t  .L802B24C0
/* 11BAA4 802B2494 00000000 */   nop
/* 11BAA8 802B2498 8718F6EE */  lh    $t8, %lo(D_8015F6EE)($t8)
/* 11BAAC 802B249C C602001C */  lwc1  $f2, 0x1c($s0)
/* 11BAB0 802B24A0 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 11BAB4 802B24A4 44982000 */  mtc1  $t8, $f4
/* 11BAB8 802B24A8 00000000 */  nop
/* 11BABC 802B24AC 468021A0 */  cvt.s.w $f6, $f4
/* 11BAC0 802B24B0 4606103C */  c.lt.s $f2, $f6
/* 11BAC4 802B24B4 00000000 */  nop
/* 11BAC8 802B24B8 45020006 */  bc1fl .L802B24D4
/* 11BACC 802B24BC C608000C */   lwc1  $f8, 0xc($s0)
.L802B24C0:
/* 11BAD0 802B24C0 0C0A7F72 */  jal   func_8029FDC8
/* 11BAD4 802B24C4 02002025 */   move  $a0, $s0
/* 11BAD8 802B24C8 1000010E */  b     .L802B2904
/* 11BADC 802B24CC 8FBF0024 */   lw    $ra, 0x24($sp)
/* 11BAE0 802B24D0 C608000C */  lwc1  $f8, 0xc($s0)
.L802B24D4:
/* 11BAE4 802B24D4 44815000 */  mtc1  $at, $f10
/* 11BAE8 802B24D8 44060000 */  mfc1  $a2, $f0
/* 11BAEC 802B24DC 44071000 */  mfc1  $a3, $f2
/* 11BAF0 802B24E0 460A4100 */  add.s $f4, $f8, $f10
/* 11BAF4 802B24E4 E7AC0010 */  swc1  $f12, 0x10($sp)
/* 11BAF8 802B24E8 26040030 */  addiu $a0, $s0, 0x30
/* 11BAFC 802B24EC 44052000 */  mfc1  $a1, $f4
/* 11BB00 802B24F0 0C0AB772 */  jal   func_802ADDC8
/* 11BB04 802B24F4 00000000 */   nop
/* 11BB08 802B24F8 24190001 */  li    $t9, 1
/* 11BB0C 802B24FC 3328FFFF */  andi  $t0, $t9, 0xffff
/* 11BB10 802B2500 110000FF */  beqz  $t0, .L802B2900
/* 11BB14 802B2504 A6190034 */   sh    $t9, 0x34($s0)
/* 11BB18 802B2508 C6060044 */  lwc1  $f6, 0x44($s0)
/* 11BB1C 802B250C 44804000 */  mtc1  $zero, $f8
/* 11BB20 802B2510 00000000 */  nop
/* 11BB24 802B2514 4608303C */  c.lt.s $f6, $f8
/* 11BB28 802B2518 00000000 */  nop
/* 11BB2C 802B251C 450200F9 */  bc1fl .L802B2904
/* 11BB30 802B2520 8FBF0024 */   lw    $ra, 0x24($sp)
/* 11BB34 802B2524 C60A0060 */  lwc1  $f10, 0x60($s0)
/* 11BB38 802B2528 240B0004 */  li    $t3, 4
/* 11BB3C 802B252C 46005107 */  neg.s $f4, $f10
/* 11BB40 802B2530 E7A40074 */  swc1  $f4, 0x74($sp)
/* 11BB44 802B2534 C6060064 */  lwc1  $f6, 0x64($s0)
/* 11BB48 802B2538 46003207 */  neg.s $f8, $f6
/* 11BB4C 802B253C E7A80078 */  swc1  $f8, 0x78($sp)
/* 11BB50 802B2540 C60A0068 */  lwc1  $f10, 0x68($s0)
/* 11BB54 802B2544 C7A80074 */  lwc1  $f8, 0x74($sp)
/* 11BB58 802B2548 46005107 */  neg.s $f4, $f10
/* 11BB5C 802B254C E7A4007C */  swc1  $f4, 0x7c($sp)
/* 11BB60 802B2550 C6000044 */  lwc1  $f0, 0x44($s0)
/* 11BB64 802B2554 C6060018 */  lwc1  $f6, 0x18($s0)
/* 11BB68 802B2558 86090002 */  lh    $t1, 2($s0)
/* 11BB6C 802B255C 46004282 */  mul.s $f10, $f8, $f0
/* 11BB70 802B2560 C608001C */  lwc1  $f8, 0x1c($s0)
/* 11BB74 802B2564 312AEFFF */  andi  $t2, $t1, 0xefff
/* 11BB78 802B2568 460A3100 */  add.s $f4, $f6, $f10
/* 11BB7C 802B256C E6040018 */  swc1  $f4, 0x18($s0)
/* 11BB80 802B2570 C7A60078 */  lwc1  $f6, 0x78($sp)
/* 11BB84 802B2574 46003282 */  mul.s $f10, $f6, $f0
/* 11BB88 802B2578 C6060020 */  lwc1  $f6, 0x20($s0)
/* 11BB8C 802B257C 460A4100 */  add.s $f4, $f8, $f10
/* 11BB90 802B2580 E604001C */  swc1  $f4, 0x1c($s0)
/* 11BB94 802B2584 C7A8007C */  lwc1  $f8, 0x7c($sp)
/* 11BB98 802B2588 A60A0002 */  sh    $t2, 2($s0)
/* 11BB9C 802B258C A60B0006 */  sh    $t3, 6($s0)
/* 11BBA0 802B2590 46004282 */  mul.s $f10, $f8, $f0
/* 11BBA4 802B2594 460A3100 */  add.s $f4, $f6, $f10
/* 11BBA8 802B2598 100000D9 */  b     .L802B2900
/* 11BBAC 802B259C E6040020 */   swc1  $f4, 0x20($s0)
glabel L802B25A0
/* 11BBB0 802B25A0 44800000 */  mtc1  $zero, $f0
/* 11BBB4 802B25A4 3C01C0A0 */  li    $at, 0xC0A00000 # -5.000000
/* 11BBB8 802B25A8 44811000 */  mtc1  $at, $f2
/* 11BBBC 802B25AC E7A00068 */  swc1  $f0, 0x68($sp)
/* 11BBC0 802B25B0 E7A0006C */  swc1  $f0, 0x6c($sp)
/* 11BBC4 802B25B4 E7A20070 */  swc1  $f2, 0x70($sp)
/* 11BBC8 802B25B8 844D00C0 */  lh    $t5, 0xc0($v0)
/* 11BBCC 802B25BC 844C002E */  lh    $t4, 0x2e($v0)
/* 11BBD0 802B25C0 AFA20088 */  sw    $v0, 0x88($sp)
/* 11BBD4 802B25C4 27A40068 */  addiu $a0, $sp, 0x68
/* 11BBD8 802B25C8 018D2821 */  addu  $a1, $t4, $t5
/* 11BBDC 802B25CC 00057400 */  sll   $t6, $a1, 0x10
/* 11BBE0 802B25D0 0C0AD931 */  jal   func_802B64C4
/* 11BBE4 802B25D4 000E2C03 */   sra   $a1, $t6, 0x10
/* 11BBE8 802B25D8 8FA20088 */  lw    $v0, 0x88($sp)
/* 11BBEC 802B25DC C7A80068 */  lwc1  $f8, 0x68($sp)
/* 11BBF0 802B25E0 C7AA006C */  lwc1  $f10, 0x6c($sp)
/* 11BBF4 802B25E4 C4460014 */  lwc1  $f6, 0x14($v0)
/* 11BBF8 802B25E8 C4440018 */  lwc1  $f4, 0x18($v0)
/* 11BBFC 802B25EC 46064480 */  add.s $f18, $f8, $f6
/* 11BC00 802B25F0 C7A80070 */  lwc1  $f8, 0x70($sp)
/* 11BC04 802B25F4 C446001C */  lwc1  $f6, 0x1c($v0)
/* 11BC08 802B25F8 46045000 */  add.s $f0, $f10, $f4
/* 11BC0C 802B25FC 46064280 */  add.s $f10, $f8, $f6
/* 11BC10 802B2600 E7AA0034 */  swc1  $f10, 0x34($sp)
/* 11BC14 802B2604 C6040018 */  lwc1  $f4, 0x18($s0)
/* 11BC18 802B2608 C608001C */  lwc1  $f8, 0x1c($s0)
/* 11BC1C 802B260C C6060020 */  lwc1  $f6, 0x20($s0)
/* 11BC20 802B2610 46049081 */  sub.s $f2, $f18, $f4
/* 11BC24 802B2614 E7B2003C */  swc1  $f18, 0x3c($sp)
/* 11BC28 802B2618 E7A00038 */  swc1  $f0, 0x38($sp)
/* 11BC2C 802B261C 46080381 */  sub.s $f14, $f0, $f8
/* 11BC30 802B2620 46021102 */  mul.s $f4, $f2, $f2
/* 11BC34 802B2624 E7A20048 */  swc1  $f2, 0x48($sp)
/* 11BC38 802B2628 46065401 */  sub.s $f16, $f10, $f6
/* 11BC3C 802B262C 460E7202 */  mul.s $f8, $f14, $f14
/* 11BC40 802B2630 E7AE0044 */  swc1  $f14, 0x44($sp)
/* 11BC44 802B2634 46108182 */  mul.s $f6, $f16, $f16
/* 11BC48 802B2638 E7B00040 */  swc1  $f16, 0x40($sp)
/* 11BC4C 802B263C 46082280 */  add.s $f10, $f4, $f8
/* 11BC50 802B2640 0C033850 */  jal   sqrtf
/* 11BC54 802B2644 46065300 */   add.s $f12, $f10, $f6
/* 11BC58 802B2648 44802000 */  mtc1  $zero, $f4
/* 11BC5C 802B264C 8FA20088 */  lw    $v0, 0x88($sp)
/* 11BC60 802B2650 C7A20048 */  lwc1  $f2, 0x48($sp)
/* 11BC64 802B2654 46040032 */  c.eq.s $f0, $f4
/* 11BC68 802B2658 C7AE0044 */  lwc1  $f14, 0x44($sp)
/* 11BC6C 802B265C C7B00040 */  lwc1  $f16, 0x40($sp)
/* 11BC70 802B2660 C7B2003C */  lwc1  $f18, 0x3c($sp)
/* 11BC74 802B2664 4500000C */  bc1f  .L802B2698
/* 11BC78 802B2668 3C01802C */   lui   $at, %hi(D_802B9EE8) # $at, 0x802c
/* 11BC7C 802B266C C4209EE8 */  lwc1  $f0, %lo(D_802B9EE8)($at)
/* 11BC80 802B2670 C4480014 */  lwc1  $f8, 0x14($v0)
/* 11BC84 802B2674 46004280 */  add.s $f10, $f8, $f0
/* 11BC88 802B2678 E60A0018 */  swc1  $f10, 0x18($s0)
/* 11BC8C 802B267C C4460018 */  lwc1  $f6, 0x18($v0)
/* 11BC90 802B2680 46003100 */  add.s $f4, $f6, $f0
/* 11BC94 802B2684 E604001C */  swc1  $f4, 0x1c($s0)
/* 11BC98 802B2688 C448001C */  lwc1  $f8, 0x1c($v0)
/* 11BC9C 802B268C 46004280 */  add.s $f10, $f8, $f0
/* 11BCA0 802B2690 10000011 */  b     .L802B26D8
/* 11BCA4 802B2694 E60A0020 */   swc1  $f10, 0x20($s0)
.L802B2698:
/* 11BCA8 802B2698 46001083 */  div.s $f2, $f2, $f0
/* 11BCAC 802B269C C7A60068 */  lwc1  $f6, 0x68($sp)
/* 11BCB0 802B26A0 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 11BCB4 802B26A4 46007383 */  div.s $f14, $f14, $f0
/* 11BCB8 802B26A8 46029101 */  sub.s $f4, $f18, $f2
/* 11BCBC 802B26AC 46043200 */  add.s $f8, $f6, $f4
/* 11BCC0 802B26B0 44812000 */  mtc1  $at, $f4
/* 11BCC4 802B26B4 E6080018 */  swc1  $f8, 0x18($s0)
/* 11BCC8 802B26B8 C7AA0038 */  lwc1  $f10, 0x38($sp)
/* 11BCCC 802B26BC 46008403 */  div.s $f16, $f16, $f0
/* 11BCD0 802B26C0 460E5181 */  sub.s $f6, $f10, $f14
/* 11BCD4 802B26C4 46043201 */  sub.s $f8, $f6, $f4
/* 11BCD8 802B26C8 E608001C */  swc1  $f8, 0x1c($s0)
/* 11BCDC 802B26CC C7AA0034 */  lwc1  $f10, 0x34($sp)
/* 11BCE0 802B26D0 46105181 */  sub.s $f6, $f10, $f16
/* 11BCE4 802B26D4 E6060020 */  swc1  $f6, 0x20($s0)
.L802B26D8:
/* 11BCE8 802B26D8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 11BCEC 802B26DC 44814000 */  mtc1  $at, $f8
/* 11BCF0 802B26E0 C604000C */  lwc1  $f4, 0xc($s0)
/* 11BCF4 802B26E4 C6060020 */  lwc1  $f6, 0x20($s0)
/* 11BCF8 802B26E8 8E060018 */  lw    $a2, 0x18($s0)
/* 11BCFC 802B26EC 46082280 */  add.s $f10, $f4, $f8
/* 11BD00 802B26F0 8E07001C */  lw    $a3, 0x1c($s0)
/* 11BD04 802B26F4 26040030 */  addiu $a0, $s0, 0x30
/* 11BD08 802B26F8 E7A60010 */  swc1  $f6, 0x10($sp)
/* 11BD0C 802B26FC 44055000 */  mfc1  $a1, $f10
/* 11BD10 802B2700 0C0AB772 */  jal   func_802ADDC8
/* 11BD14 802B2704 00000000 */   nop
/* 11BD18 802B2708 0C0AD38C */  jal   func_802B4E30
/* 11BD1C 802B270C 02002025 */   move  $a0, $s0
/* 11BD20 802B2710 1000007C */  b     .L802B2904
/* 11BD24 802B2714 8FBF0024 */   lw    $ra, 0x24($sp)
glabel L802B2718
/* 11BD28 802B2718 86180012 */  lh    $t8, 0x12($s0)
/* 11BD2C 802B271C 3C088016 */  lui   $t0, %hi(D_8015F9B8) # $t0, 0x8016
/* 11BD30 802B2720 2508F9B8 */  addiu $t0, %lo(D_8015F9B8) # addiu $t0, $t0, -0x648
/* 11BD34 802B2724 0018C8C0 */  sll   $t9, $t8, 3
/* 11BD38 802B2728 0338C823 */  subu  $t9, $t9, $t8
/* 11BD3C 802B272C 0019C900 */  sll   $t9, $t9, 4
/* 11BD40 802B2730 03281021 */  addu  $v0, $t9, $t0
/* 11BD44 802B2734 C4440018 */  lwc1  $f4, 0x18($v0)
/* 11BD48 802B2738 C6080018 */  lwc1  $f8, 0x18($s0)
/* 11BD4C 802B273C C44A001C */  lwc1  $f10, 0x1c($v0)
/* 11BD50 802B2740 C606001C */  lwc1  $f6, 0x1c($s0)
/* 11BD54 802B2744 46082081 */  sub.s $f2, $f4, $f8
/* 11BD58 802B2748 C6080020 */  lwc1  $f8, 0x20($s0)
/* 11BD5C 802B274C C4440020 */  lwc1  $f4, 0x20($v0)
/* 11BD60 802B2750 46065381 */  sub.s $f14, $f10, $f6
/* 11BD64 802B2754 46021282 */  mul.s $f10, $f2, $f2
/* 11BD68 802B2758 E7A20048 */  swc1  $f2, 0x48($sp)
/* 11BD6C 802B275C 46082401 */  sub.s $f16, $f4, $f8
/* 11BD70 802B2760 460E7182 */  mul.s $f6, $f14, $f14
/* 11BD74 802B2764 E7AE0044 */  swc1  $f14, 0x44($sp)
/* 11BD78 802B2768 AFA20084 */  sw    $v0, 0x84($sp)
/* 11BD7C 802B276C 46108202 */  mul.s $f8, $f16, $f16
/* 11BD80 802B2770 E7B00040 */  swc1  $f16, 0x40($sp)
/* 11BD84 802B2774 46065100 */  add.s $f4, $f10, $f6
/* 11BD88 802B2778 0C033850 */  jal   sqrtf
/* 11BD8C 802B277C 46082300 */   add.s $f12, $f4, $f8
/* 11BD90 802B2780 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 11BD94 802B2784 44815000 */  mtc1  $at, $f10
/* 11BD98 802B2788 44803000 */  mtc1  $zero, $f6
/* 11BD9C 802B278C 8FA20084 */  lw    $v0, 0x84($sp)
/* 11BDA0 802B2790 460A0303 */  div.s $f12, $f0, $f10
/* 11BDA4 802B2794 C7A20048 */  lwc1  $f2, 0x48($sp)
/* 11BDA8 802B2798 C7AE0044 */  lwc1  $f14, 0x44($sp)
/* 11BDAC 802B279C C7B00040 */  lwc1  $f16, 0x40($sp)
/* 11BDB0 802B27A0 3C01802C */  lui   $at, %hi(D_802B9EEC) # $at, 0x802c
/* 11BDB4 802B27A4 460C3032 */  c.eq.s $f6, $f12
/* 11BDB8 802B27A8 00000000 */  nop
/* 11BDBC 802B27AC 4502000D */  bc1fl .L802B27E4
/* 11BDC0 802B27B0 460C1083 */   div.s $f2, $f2, $f12
/* 11BDC4 802B27B4 C4209EEC */  lwc1  $f0, %lo(D_802B9EEC)($at)
/* 11BDC8 802B27B8 C4440018 */  lwc1  $f4, 0x18($v0)
/* 11BDCC 802B27BC 46002200 */  add.s $f8, $f4, $f0
/* 11BDD0 802B27C0 E6080018 */  swc1  $f8, 0x18($s0)
/* 11BDD4 802B27C4 C44A001C */  lwc1  $f10, 0x1c($v0)
/* 11BDD8 802B27C8 46005180 */  add.s $f6, $f10, $f0
/* 11BDDC 802B27CC E606001C */  swc1  $f6, 0x1c($s0)
/* 11BDE0 802B27D0 C4440020 */  lwc1  $f4, 0x20($v0)
/* 11BDE4 802B27D4 46002200 */  add.s $f8, $f4, $f0
/* 11BDE8 802B27D8 10000010 */  b     .L802B281C
/* 11BDEC 802B27DC E6080020 */   swc1  $f8, 0x20($s0)
/* 11BDF0 802B27E0 460C1083 */  div.s $f2, $f2, $f12
.L802B27E4:
/* 11BDF4 802B27E4 C44A0018 */  lwc1  $f10, 0x18($v0)
/* 11BDF8 802B27E8 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 11BDFC 802B27EC 460C7383 */  div.s $f14, $f14, $f12
/* 11BE00 802B27F0 46025181 */  sub.s $f6, $f10, $f2
/* 11BE04 802B27F4 44815000 */  mtc1  $at, $f10
/* 11BE08 802B27F8 E6060018 */  swc1  $f6, 0x18($s0)
/* 11BE0C 802B27FC C444001C */  lwc1  $f4, 0x1c($v0)
/* 11BE10 802B2800 460C8403 */  div.s $f16, $f16, $f12
/* 11BE14 802B2804 460E2201 */  sub.s $f8, $f4, $f14
/* 11BE18 802B2808 460A4181 */  sub.s $f6, $f8, $f10
/* 11BE1C 802B280C E606001C */  swc1  $f6, 0x1c($s0)
/* 11BE20 802B2810 C4440020 */  lwc1  $f4, 0x20($v0)
/* 11BE24 802B2814 46102201 */  sub.s $f8, $f4, $f16
/* 11BE28 802B2818 E6080020 */  swc1  $f8, 0x20($s0)
.L802B281C:
/* 11BE2C 802B281C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 11BE30 802B2820 44813000 */  mtc1  $at, $f6
/* 11BE34 802B2824 C60A000C */  lwc1  $f10, 0xc($s0)
/* 11BE38 802B2828 C6080020 */  lwc1  $f8, 0x20($s0)
/* 11BE3C 802B282C 8E060018 */  lw    $a2, 0x18($s0)
/* 11BE40 802B2830 46065100 */  add.s $f4, $f10, $f6
/* 11BE44 802B2834 8E07001C */  lw    $a3, 0x1c($s0)
/* 11BE48 802B2838 26040030 */  addiu $a0, $s0, 0x30
/* 11BE4C 802B283C E7A80010 */  swc1  $f8, 0x10($sp)
/* 11BE50 802B2840 44052000 */  mfc1  $a1, $f4
/* 11BE54 802B2844 0C0AB772 */  jal   func_802ADDC8
/* 11BE58 802B2848 00000000 */   nop
/* 11BE5C 802B284C 0C0AD38C */  jal   func_802B4E30
/* 11BE60 802B2850 02002025 */   move  $a0, $s0
/* 11BE64 802B2854 1000002B */  b     .L802B2904
/* 11BE68 802B2858 8FBF0024 */   lw    $ra, 0x24($sp)
glabel L802B285C
/* 11BE6C 802B285C 3C01C0A0 */  li    $at, 0xC0A00000 # -5.000000
/* 11BE70 802B2860 44811000 */  mtc1  $at, $f2
/* 11BE74 802B2864 3C01802C */  lui   $at, %hi(D_802B9EF0) # $at, 0x802c
/* 11BE78 802B2868 C4269EF0 */  lwc1  $f6, %lo(D_802B9EF0)($at)
/* 11BE7C 802B286C C60A0028 */  lwc1  $f10, 0x28($s0)
/* 11BE80 802B2870 46065101 */  sub.s $f4, $f10, $f6
/* 11BE84 802B2874 E6040028 */  swc1  $f4, 0x28($s0)
/* 11BE88 802B2878 C6000028 */  lwc1  $f0, 0x28($s0)
/* 11BE8C 802B287C 4602003C */  c.lt.s $f0, $f2
/* 11BE90 802B2880 00000000 */  nop
/* 11BE94 802B2884 45020004 */  bc1fl .L802B2898
/* 11BE98 802B2888 860F0004 */   lh    $t7, 4($s0)
/* 11BE9C 802B288C E6020028 */  swc1  $f2, 0x28($s0)
/* 11BEA0 802B2890 C6000028 */  lwc1  $f0, 0x28($s0)
/* 11BEA4 802B2894 860F0004 */  lh    $t7, 4($s0)
.L802B2898:
/* 11BEA8 802B2898 C608001C */  lwc1  $f8, 0x1c($s0)
/* 11BEAC 802B289C 86090010 */  lh    $t1, 0x10($s0)
/* 11BEB0 802B28A0 25F8FFFF */  addiu $t8, $t7, -1
/* 11BEB4 802B28A4 860B0012 */  lh    $t3, 0x12($s0)
/* 11BEB8 802B28A8 860D0014 */  lh    $t5, 0x14($s0)
/* 11BEBC 802B28AC A6180004 */  sh    $t8, 4($s0)
/* 11BEC0 802B28B0 46004280 */  add.s $f10, $f8, $f0
/* 11BEC4 802B28B4 86190004 */  lh    $t9, 4($s0)
/* 11BEC8 802B28B8 252A016C */  addiu $t2, $t1, 0x16c
/* 11BECC 802B28BC 256CFA50 */  addiu $t4, $t3, -0x5b0
/* 11BED0 802B28C0 25AE038E */  addiu $t6, $t5, 0x38e
/* 11BED4 802B28C4 E60A001C */  swc1  $f10, 0x1c($s0)
/* 11BED8 802B28C8 A60A0010 */  sh    $t2, 0x10($s0)
/* 11BEDC 802B28CC A60C0012 */  sh    $t4, 0x12($s0)
/* 11BEE0 802B28D0 1720000B */  bnez  $t9, .L802B2900
/* 11BEE4 802B28D4 A60E0014 */   sh    $t6, 0x14($s0)
/* 11BEE8 802B28D8 0C0A7A15 */  jal   func_8029E854
/* 11BEEC 802B28DC 02002025 */   move  $a0, $s0
/* 11BEF0 802B28E0 10000008 */  b     .L802B2904
/* 11BEF4 802B28E4 8FBF0024 */   lw    $ra, 0x24($sp)
glabel L802B28E8
/* 11BEF8 802B28E8 86080002 */  lh    $t0, 2($s0)
/* 11BEFC 802B28EC 3509C000 */  ori   $t1, $t0, 0xc000
/* 11BF00 802B28F0 A6090002 */  sh    $t1, 2($s0)
/* 11BF04 802B28F4 860A0002 */  lh    $t2, 2($s0)
/* 11BF08 802B28F8 314BEFFF */  andi  $t3, $t2, 0xefff
/* 11BF0C 802B28FC A60B0002 */  sh    $t3, 2($s0)
.L802B2900:
/* 11BF10 802B2900 8FBF0024 */  lw    $ra, 0x24($sp)
.L802B2904:
/* 11BF14 802B2904 8FB00020 */  lw    $s0, 0x20($sp)
/* 11BF18 802B2908 27BD0090 */  addiu $sp, $sp, 0x90
/* 11BF1C 802B290C 03E00008 */  jr    $ra
/* 11BF20 802B2910 00000000 */   nop

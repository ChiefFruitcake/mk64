glabel func_800235AC
/* 0241AC 800235AC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0241B0 800235B0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0241B4 800235B4 AFB10018 */  sw    $s1, 0x18($sp)
/* 0241B8 800235B8 AFB00014 */  sw    $s0, 0x14($sp)
/* 0241BC 800235BC AFA50034 */  sw    $a1, 0x34($sp)
/* 0241C0 800235C0 948F0000 */  lhu   $t7, ($a0)
/* 0241C4 800235C4 00058E00 */  sll   $s1, $a1, 0x18
/* 0241C8 800235C8 00117603 */  sra   $t6, $s1, 0x18
/* 0241CC 800235CC 24010100 */  li    $at, 256
/* 0241D0 800235D0 31F80100 */  andi  $t8, $t7, 0x100
/* 0241D4 800235D4 01C08825 */  move  $s1, $t6
/* 0241D8 800235D8 17010018 */  bne   $t8, $at, .L8002363C
/* 0241DC 800235DC 00808025 */   move  $s0, $a0
/* 0241E0 800235E0 3C19800E */  lui   $t9, %hi(gPlayerThree) # $t9, 0x800e
/* 0241E4 800235E4 8F39C4E4 */  lw    $t9, %lo(gPlayerThree)($t9)
/* 0241E8 800235E8 000E2E00 */  sll   $a1, $t6, 0x18
/* 0241EC 800235EC 00054603 */  sra   $t0, $a1, 0x18
/* 0241F0 800235F0 14990012 */  bne   $a0, $t9, .L8002363C
/* 0241F4 800235F4 01002825 */   move  $a1, $t0
/* 0241F8 800235F8 3C073E99 */  lui   $a3, (0x3E99999A >> 16) # lui $a3, 0x3e99
/* 0241FC 800235FC 34E7999A */  ori   $a3, (0x3E99999A & 0xFFFF) # ori $a3, $a3, 0x999a
/* 024200 80023600 0C008BC5 */  jal   func_80022F14
/* 024204 80023604 3C06001C */   lui   $a2, 0x1c
/* 024208 80023608 00112E00 */  sll   $a1, $s1, 0x18
/* 02420C 8002360C 00054E03 */  sra   $t1, $a1, 0x18
/* 024210 80023610 3C073E99 */  lui   $a3, (0x3E99999A >> 16) # lui $a3, 0x3e99
/* 024214 80023614 34E7999A */  ori   $a3, (0x3E99999A & 0xFFFF) # ori $a3, $a3, 0x999a
/* 024218 80023618 01202825 */  move  $a1, $t1
/* 02421C 8002361C 02002025 */  move  $a0, $s0
/* 024220 80023620 0C008C0E */  jal   func_80023038
/* 024224 80023624 240600E0 */   li    $a2, 224
/* 024228 80023628 00115080 */  sll   $t2, $s1, 2
/* 02422C 8002362C 3C018016 */  lui   $at, %hi(D_80164B80) # 0x8016
/* 024230 80023630 002A0821 */  addu  $at, $at, $t2
/* 024234 80023634 10000169 */  b     .L80023BDC
/* 024238 80023638 AC204B80 */   sw    $zero, %lo(D_80164B80)($at) # 0x4b80
.L8002363C:
/* 02423C 8002363C 860200CA */  lh    $v0, 0xca($s0)
/* 024240 80023640 24040010 */  li    $a0, 16
/* 024244 80023644 24010004 */  li    $at, 4
/* 024248 80023648 30430010 */  andi  $v1, $v0, 0x10
/* 02424C 8002364C 14830014 */  bne   $a0, $v1, .L800236A0
/* 024250 80023650 304B0004 */   andi  $t3, $v0, 4
/* 024254 80023654 15610012 */  bne   $t3, $at, .L800236A0
/* 024258 80023658 00112E00 */   sll   $a1, $s1, 0x18
/* 02425C 8002365C 00056603 */  sra   $t4, $a1, 0x18
/* 024260 80023660 3C060064 */  lui   $a2, (0x00646464 >> 16) # lui $a2, 0x64
/* 024264 80023664 34C66464 */  ori   $a2, (0x00646464 & 0xFFFF) # ori $a2, $a2, 0x6464
/* 024268 80023668 01802825 */  move  $a1, $t4
/* 02426C 8002366C 02002025 */  move  $a0, $s0
/* 024270 80023670 0C008BC5 */  jal   func_80022F14
/* 024274 80023674 3C073F00 */   lui   $a3, 0x3f00
/* 024278 80023678 00112E00 */  sll   $a1, $s1, 0x18
/* 02427C 8002367C 00056E03 */  sra   $t5, $a1, 0x18
/* 024280 80023680 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* 024284 80023684 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* 024288 80023688 01A02825 */  move  $a1, $t5
/* 02428C 8002368C 02002025 */  move  $a0, $s0
/* 024290 80023690 0C008C0E */  jal   func_80023038
/* 024294 80023694 3C0600FF */   lui   $a2, 0xff
/* 024298 80023698 10000151 */  b     .L80023BE0
/* 02429C 8002369C 8FBF001C */   lw    $ra, 0x1c($sp)
.L800236A0:
/* 0242A0 800236A0 304E0004 */  andi  $t6, $v0, 4
/* 0242A4 800236A4 24010004 */  li    $at, 4
/* 0242A8 800236A8 15C10010 */  bne   $t6, $at, .L800236EC
/* 0242AC 800236AC 00112E00 */   sll   $a1, $s1, 0x18
/* 0242B0 800236B0 00057E03 */  sra   $t7, $a1, 0x18
/* 0242B4 800236B4 01E02825 */  move  $a1, $t7
/* 0242B8 800236B8 02002025 */  move  $a0, $s0
/* 0242BC 800236BC 00003025 */  move  $a2, $zero
/* 0242C0 800236C0 0C008BC5 */  jal   func_80022F14
/* 0242C4 800236C4 3C073F80 */   lui   $a3, 0x3f80
/* 0242C8 800236C8 00112E00 */  sll   $a1, $s1, 0x18
/* 0242CC 800236CC 0005C603 */  sra   $t8, $a1, 0x18
/* 0242D0 800236D0 03002825 */  move  $a1, $t8
/* 0242D4 800236D4 02002025 */  move  $a0, $s0
/* 0242D8 800236D8 00003025 */  move  $a2, $zero
/* 0242DC 800236DC 0C008C0E */  jal   func_80023038
/* 0242E0 800236E0 3C073F80 */   lui   $a3, 0x3f80
/* 0242E4 800236E4 1000013E */  b     .L80023BE0
/* 0242E8 800236E8 8FBF001C */   lw    $ra, 0x1c($sp)
.L800236EC:
/* 0242EC 800236EC 14830013 */  bne   $a0, $v1, .L8002373C
/* 0242F0 800236F0 30490020 */   andi  $t1, $v0, 0x20
/* 0242F4 800236F4 00112E00 */  sll   $a1, $s1, 0x18
/* 0242F8 800236F8 0005CE03 */  sra   $t9, $a1, 0x18
/* 0242FC 800236FC 3C060064 */  lui   $a2, (0x00646464 >> 16) # lui $a2, 0x64
/* 024300 80023700 34C66464 */  ori   $a2, (0x00646464 & 0xFFFF) # ori $a2, $a2, 0x6464
/* 024304 80023704 03202825 */  move  $a1, $t9
/* 024308 80023708 02002025 */  move  $a0, $s0
/* 02430C 8002370C 0C008BC5 */  jal   func_80022F14
/* 024310 80023710 3C073F00 */   lui   $a3, 0x3f00
/* 024314 80023714 00112E00 */  sll   $a1, $s1, 0x18
/* 024318 80023718 00054603 */  sra   $t0, $a1, 0x18
/* 02431C 8002371C 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* 024320 80023720 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* 024324 80023724 01002825 */  move  $a1, $t0
/* 024328 80023728 02002025 */  move  $a0, $s0
/* 02432C 8002372C 0C008C0E */  jal   func_80023038
/* 024330 80023730 3C0600FF */   lui   $a2, 0xff
/* 024334 80023734 1000012A */  b     .L80023BE0
/* 024338 80023738 8FBF001C */   lw    $ra, 0x1c($sp)
.L8002373C:
/* 02433C 8002373C 24010020 */  li    $at, 32
/* 024340 80023740 15210012 */  bne   $t1, $at, .L8002378C
/* 024344 80023744 02002025 */   move  $a0, $s0
/* 024348 80023748 00112E00 */  sll   $a1, $s1, 0x18
/* 02434C 8002374C 00055603 */  sra   $t2, $a1, 0x18
/* 024350 80023750 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* 024354 80023754 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* 024358 80023758 01402825 */  move  $a1, $t2
/* 02435C 8002375C 0C008BC5 */  jal   func_80022F14
/* 024360 80023760 00003025 */   move  $a2, $zero
/* 024364 80023764 00112E00 */  sll   $a1, $s1, 0x18
/* 024368 80023768 00055E03 */  sra   $t3, $a1, 0x18
/* 02436C 8002376C 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* 024370 80023770 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* 024374 80023774 01602825 */  move  $a1, $t3
/* 024378 80023778 02002025 */  move  $a0, $s0
/* 02437C 8002377C 0C008C0E */  jal   func_80023038
/* 024380 80023780 00003025 */   move  $a2, $zero
/* 024384 80023784 10000116 */  b     .L80023BE0
/* 024388 80023788 8FBF001C */   lw    $ra, 0x1c($sp)
.L8002378C:
/* 02438C 8002378C 8E0200BC */  lw    $v0, 0xbc($s0)
/* 024390 80023790 3C034000 */  lui   $v1, 0x4000
/* 024394 80023794 00436024 */  and   $t4, $v0, $v1
/* 024398 80023798 146C0055 */  bne   $v1, $t4, .L800238F0
/* 02439C 8002379C 304E0200 */   andi  $t6, $v0, 0x200
/* 0243A0 800237A0 860D00B0 */  lh    $t5, 0xb0($s0)
/* 0243A4 800237A4 3C0F8016 */  lui   $t7, %hi(D_80164B80) # $t7, 0x8016
/* 0243A8 800237A8 25EF4B80 */  addiu $t7, %lo(D_80164B80) # addiu $t7, $t7, 0x4b80
/* 0243AC 800237AC 29A10078 */  slti  $at, $t5, 0x78
/* 0243B0 800237B0 1020004F */  beqz  $at, .L800238F0
/* 0243B4 800237B4 00000000 */   nop
/* 0243B8 800237B8 00117080 */  sll   $t6, $s1, 2
/* 0243BC 800237BC 01CF1821 */  addu  $v1, $t6, $t7
/* 0243C0 800237C0 8C780000 */  lw    $t8, ($v1)
/* 0243C4 800237C4 27020005 */  addiu $v0, $t8, 5
/* 0243C8 800237C8 2841001E */  slti  $at, $v0, 0x1e
/* 0243CC 800237CC 14200003 */  bnez  $at, .L800237DC
/* 0243D0 800237D0 AC620000 */   sw    $v0, ($v1)
/* 0243D4 800237D4 AC600000 */  sw    $zero, ($v1)
/* 0243D8 800237D8 00001025 */  move  $v0, $zero
.L800237DC:
/* 0243DC 800237DC 04400016 */  bltz  $v0, .L80023838
/* 0243E0 800237E0 2841000B */   slti  $at, $v0, 0xb
/* 0243E4 800237E4 10200014 */  beqz  $at, .L80023838
/* 0243E8 800237E8 02002025 */   move  $a0, $s0
/* 0243EC 800237EC 00112E00 */  sll   $a1, $s1, 0x18
/* 0243F0 800237F0 00054603 */  sra   $t0, $a1, 0x18
/* 0243F4 800237F4 3C060080 */  lui   $a2, (0x00808080 >> 16) # lui $a2, 0x80
/* 0243F8 800237F8 3C073F4C */  lui   $a3, (0x3F4CCCCD >> 16) # lui $a3, 0x3f4c
/* 0243FC 800237FC 34E7CCCD */  ori   $a3, (0x3F4CCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* 024400 80023800 34C68080 */  ori   $a2, (0x00808080 & 0xFFFF) # ori $a2, $a2, 0x8080
/* 024404 80023804 01002825 */  move  $a1, $t0
/* 024408 80023808 0C008BC5 */  jal   func_80022F14
/* 02440C 8002380C AFA30024 */   sw    $v1, 0x24($sp)
/* 024410 80023810 00112E00 */  sll   $a1, $s1, 0x18
/* 024414 80023814 00054E03 */  sra   $t1, $a1, 0x18
/* 024418 80023818 3C073F4C */  lui   $a3, (0x3F4CCCCD >> 16) # lui $a3, 0x3f4c
/* 02441C 8002381C 34E7CCCD */  ori   $a3, (0x3F4CCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* 024420 80023820 01202825 */  move  $a1, $t1
/* 024424 80023824 02002025 */  move  $a0, $s0
/* 024428 80023828 0C008C0E */  jal   func_80023038
/* 02442C 8002382C 00003025 */   move  $a2, $zero
/* 024430 80023830 8FA30024 */  lw    $v1, 0x24($sp)
/* 024434 80023834 8C620000 */  lw    $v0, ($v1)
.L80023838:
/* 024438 80023838 2841000B */  slti  $at, $v0, 0xb
/* 02443C 8002383C 14200015 */  bnez  $at, .L80023894
/* 024440 80023840 28410015 */   slti  $at, $v0, 0x15
/* 024444 80023844 10200013 */  beqz  $at, .L80023894
/* 024448 80023848 02002025 */   move  $a0, $s0
/* 02444C 8002384C 00112E00 */  sll   $a1, $s1, 0x18
/* 024450 80023850 00055603 */  sra   $t2, $a1, 0x18
/* 024454 80023854 3C073F4C */  lui   $a3, (0x3F4CCCCD >> 16) # lui $a3, 0x3f4c
/* 024458 80023858 34E7CCCD */  ori   $a3, (0x3F4CCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* 02445C 8002385C 01402825 */  move  $a1, $t2
/* 024460 80023860 24060070 */  li    $a2, 112
/* 024464 80023864 0C008BC5 */  jal   func_80022F14
/* 024468 80023868 AFA30024 */   sw    $v1, 0x24($sp)
/* 02446C 8002386C 00112E00 */  sll   $a1, $s1, 0x18
/* 024470 80023870 00055E03 */  sra   $t3, $a1, 0x18
/* 024474 80023874 3C073F4C */  lui   $a3, (0x3F4CCCCD >> 16) # lui $a3, 0x3f4c
/* 024478 80023878 34E7CCCD */  ori   $a3, (0x3F4CCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* 02447C 8002387C 01602825 */  move  $a1, $t3
/* 024480 80023880 02002025 */  move  $a0, $s0
/* 024484 80023884 0C008C0E */  jal   func_80023038
/* 024488 80023888 00003025 */   move  $a2, $zero
/* 02448C 8002388C 8FA30024 */  lw    $v1, 0x24($sp)
/* 024490 80023890 8C620000 */  lw    $v0, ($v1)
.L80023894:
/* 024494 80023894 28410015 */  slti  $at, $v0, 0x15
/* 024498 80023898 142000D0 */  bnez  $at, .L80023BDC
/* 02449C 8002389C 2841001F */   slti  $at, $v0, 0x1f
/* 0244A0 800238A0 102000CE */  beqz  $at, .L80023BDC
/* 0244A4 800238A4 02002025 */   move  $a0, $s0
/* 0244A8 800238A8 00112E00 */  sll   $a1, $s1, 0x18
/* 0244AC 800238AC 00056603 */  sra   $t4, $a1, 0x18
/* 0244B0 800238B0 3C06008F */  lui   $a2, (0x008F8F00 >> 16) # lui $a2, 0x8f
/* 0244B4 800238B4 3C073F4C */  lui   $a3, (0x3F4CCCCD >> 16) # lui $a3, 0x3f4c
/* 0244B8 800238B8 34E7CCCD */  ori   $a3, (0x3F4CCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* 0244BC 800238BC 34C68F00 */  ori   $a2, (0x008F8F00 & 0xFFFF) # ori $a2, $a2, 0x8f00
/* 0244C0 800238C0 0C008BC5 */  jal   func_80022F14
/* 0244C4 800238C4 01802825 */   move  $a1, $t4
/* 0244C8 800238C8 00112E00 */  sll   $a1, $s1, 0x18
/* 0244CC 800238CC 00056E03 */  sra   $t5, $a1, 0x18
/* 0244D0 800238D0 3C073F4C */  lui   $a3, (0x3F4CCCCD >> 16) # lui $a3, 0x3f4c
/* 0244D4 800238D4 34E7CCCD */  ori   $a3, (0x3F4CCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* 0244D8 800238D8 01A02825 */  move  $a1, $t5
/* 0244DC 800238DC 02002025 */  move  $a0, $s0
/* 0244E0 800238E0 0C008C0E */  jal   func_80023038
/* 0244E4 800238E4 00003025 */   move  $a2, $zero
/* 0244E8 800238E8 100000BD */  b     .L80023BE0
/* 0244EC 800238EC 8FBF001C */   lw    $ra, 0x1c($sp)
.L800238F0:
/* 0244F0 800238F0 11C0007A */  beqz  $t6, .L80023ADC
/* 0244F4 800238F4 3C01800E */   lui   $at, %hi(gCourseTimer) # $at, 0x800e
/* 0244F8 800238F8 C424C598 */  lwc1  $f4, %lo(gCourseTimer)($at)
/* 0244FC 800238FC 00111080 */  sll   $v0, $s1, 2
/* 024500 80023900 3C198019 */  lui   $t9, %hi(D_8018D930) # 0x8019
/* 024504 80023904 4600218D */  trunc.w.s $f6, $f4
/* 024508 80023908 0322C821 */  addu  $t9, $t9, $v0
/* 02450C 8002390C 8F39D930 */  lw    $t9, %lo(D_8018D930)($t9) # -0x26d0
/* 024510 80023910 44183000 */  mfc1  $t8, $f6
/* 024514 80023914 00000000 */  nop
/* 024518 80023918 03191823 */  subu  $v1, $t8, $t9
/* 02451C 8002391C 28610009 */  slti  $at, $v1, 9
/* 024520 80023920 1020006E */  beqz  $at, .L80023ADC
/* 024524 80023924 28610007 */   slti  $at, $v1, 7
/* 024528 80023928 14200008 */  bnez  $at, .L8002394C
/* 02452C 8002392C 3C0B8016 */   lui   $t3, %hi(D_80164B80) # $t3, 0x8016
/* 024530 80023930 3C088016 */  lui   $t0, %hi(D_80164B80) # $t0, 0x8016
/* 024534 80023934 25084B80 */  addiu $t0, %lo(D_80164B80) # addiu $t0, $t0, 0x4b80
/* 024538 80023938 00481821 */  addu  $v1, $v0, $t0
/* 02453C 8002393C 8C690000 */  lw    $t1, ($v1)
/* 024540 80023940 252A000A */  addiu $t2, $t1, 0xa
/* 024544 80023944 10000006 */  b     .L80023960
/* 024548 80023948 AC6A0000 */   sw    $t2, ($v1)
.L8002394C:
/* 02454C 8002394C 256B4B80 */  addiu $t3, %lo(D_80164B80) # addiu $t3, $t3, 0x4b80
/* 024550 80023950 004B1821 */  addu  $v1, $v0, $t3
/* 024554 80023954 8C6C0000 */  lw    $t4, ($v1)
/* 024558 80023958 258D0005 */  addiu $t5, $t4, 5
/* 02455C 8002395C AC6D0000 */  sw    $t5, ($v1)
.L80023960:
/* 024560 80023960 8C620000 */  lw    $v0, ($v1)
/* 024564 80023964 28410028 */  slti  $at, $v0, 0x28
/* 024568 80023968 14200003 */  bnez  $at, .L80023978
/* 02456C 8002396C 00000000 */   nop
/* 024570 80023970 AC600000 */  sw    $zero, ($v1)
/* 024574 80023974 00001025 */  move  $v0, $zero
.L80023978:
/* 024578 80023978 04400015 */  bltz  $v0, .L800239D0
/* 02457C 8002397C 2841000B */   slti  $at, $v0, 0xb
/* 024580 80023980 10200013 */  beqz  $at, .L800239D0
/* 024584 80023984 02002025 */   move  $a0, $s0
/* 024588 80023988 00112E00 */  sll   $a1, $s1, 0x18
/* 02458C 8002398C 00057603 */  sra   $t6, $a1, 0x18
/* 024590 80023990 3C073F4C */  lui   $a3, (0x3F4CCCCD >> 16) # lui $a3, 0x3f4c
/* 024594 80023994 34E7CCCD */  ori   $a3, (0x3F4CCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* 024598 80023998 01C02825 */  move  $a1, $t6
/* 02459C 8002399C 24060070 */  li    $a2, 112
/* 0245A0 800239A0 0C008BC5 */  jal   func_80022F14
/* 0245A4 800239A4 AFA30024 */   sw    $v1, 0x24($sp)
/* 0245A8 800239A8 00112E00 */  sll   $a1, $s1, 0x18
/* 0245AC 800239AC 00057E03 */  sra   $t7, $a1, 0x18
/* 0245B0 800239B0 3C073F4C */  lui   $a3, (0x3F4CCCCD >> 16) # lui $a3, 0x3f4c
/* 0245B4 800239B4 34E7CCCD */  ori   $a3, (0x3F4CCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* 0245B8 800239B8 01E02825 */  move  $a1, $t7
/* 0245BC 800239BC 02002025 */  move  $a0, $s0
/* 0245C0 800239C0 0C008C0E */  jal   func_80023038
/* 0245C4 800239C4 00003025 */   move  $a2, $zero
/* 0245C8 800239C8 8FA30024 */  lw    $v1, 0x24($sp)
/* 0245CC 800239CC 8C620000 */  lw    $v0, ($v1)
.L800239D0:
/* 0245D0 800239D0 2841000B */  slti  $at, $v0, 0xb
/* 0245D4 800239D4 14200016 */  bnez  $at, .L80023A30
/* 0245D8 800239D8 28410015 */   slti  $at, $v0, 0x15
/* 0245DC 800239DC 10200014 */  beqz  $at, .L80023A30
/* 0245E0 800239E0 02002025 */   move  $a0, $s0
/* 0245E4 800239E4 00112E00 */  sll   $a1, $s1, 0x18
/* 0245E8 800239E8 0005C603 */  sra   $t8, $a1, 0x18
/* 0245EC 800239EC 3C060070 */  lui   $a2, (0x00707000 >> 16) # lui $a2, 0x70
/* 0245F0 800239F0 3C073F4C */  lui   $a3, (0x3F4CCCCD >> 16) # lui $a3, 0x3f4c
/* 0245F4 800239F4 34E7CCCD */  ori   $a3, (0x3F4CCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* 0245F8 800239F8 34C67000 */  ori   $a2, (0x00707000 & 0xFFFF) # ori $a2, $a2, 0x7000
/* 0245FC 800239FC 03002825 */  move  $a1, $t8
/* 024600 80023A00 0C008BC5 */  jal   func_80022F14
/* 024604 80023A04 AFA30024 */   sw    $v1, 0x24($sp)
/* 024608 80023A08 00112E00 */  sll   $a1, $s1, 0x18
/* 02460C 80023A0C 0005CE03 */  sra   $t9, $a1, 0x18
/* 024610 80023A10 3C073F4C */  lui   $a3, (0x3F4CCCCD >> 16) # lui $a3, 0x3f4c
/* 024614 80023A14 34E7CCCD */  ori   $a3, (0x3F4CCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* 024618 80023A18 03202825 */  move  $a1, $t9
/* 02461C 80023A1C 02002025 */  move  $a0, $s0
/* 024620 80023A20 0C008C0E */  jal   func_80023038
/* 024624 80023A24 00003025 */   move  $a2, $zero
/* 024628 80023A28 8FA30024 */  lw    $v1, 0x24($sp)
/* 02462C 80023A2C 8C620000 */  lw    $v0, ($v1)
.L80023A30:
/* 024630 80023A30 28410015 */  slti  $at, $v0, 0x15
/* 024634 80023A34 14200015 */  bnez  $at, .L80023A8C
/* 024638 80023A38 2841001F */   slti  $at, $v0, 0x1f
/* 02463C 80023A3C 10200013 */  beqz  $at, .L80023A8C
/* 024640 80023A40 02002025 */   move  $a0, $s0
/* 024644 80023A44 00112E00 */  sll   $a1, $s1, 0x18
/* 024648 80023A48 00054603 */  sra   $t0, $a1, 0x18
/* 02464C 80023A4C 3C073F4C */  lui   $a3, (0x3F4CCCCD >> 16) # lui $a3, 0x3f4c
/* 024650 80023A50 34E7CCCD */  ori   $a3, (0x3F4CCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* 024654 80023A54 01002825 */  move  $a1, $t0
/* 024658 80023A58 3C060070 */  lui   $a2, 0x70
/* 02465C 80023A5C 0C008BC5 */  jal   func_80022F14
/* 024660 80023A60 AFA30024 */   sw    $v1, 0x24($sp)
/* 024664 80023A64 00112E00 */  sll   $a1, $s1, 0x18
/* 024668 80023A68 00054E03 */  sra   $t1, $a1, 0x18
/* 02466C 80023A6C 3C073F4C */  lui   $a3, (0x3F4CCCCD >> 16) # lui $a3, 0x3f4c
/* 024670 80023A70 34E7CCCD */  ori   $a3, (0x3F4CCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* 024674 80023A74 01202825 */  move  $a1, $t1
/* 024678 80023A78 02002025 */  move  $a0, $s0
/* 02467C 80023A7C 0C008C0E */  jal   func_80023038
/* 024680 80023A80 00003025 */   move  $a2, $zero
/* 024684 80023A84 8FA30024 */  lw    $v1, 0x24($sp)
/* 024688 80023A88 8C620000 */  lw    $v0, ($v1)
.L80023A8C:
/* 02468C 80023A8C 2841001F */  slti  $at, $v0, 0x1f
/* 024690 80023A90 14200052 */  bnez  $at, .L80023BDC
/* 024694 80023A94 02002025 */   move  $a0, $s0
/* 024698 80023A98 00112E00 */  sll   $a1, $s1, 0x18
/* 02469C 80023A9C 00055603 */  sra   $t2, $a1, 0x18
/* 0246A0 80023AA0 3C073F4C */  lui   $a3, (0x3F4CCCCD >> 16) # lui $a3, 0x3f4c
/* 0246A4 80023AA4 34E7CCCD */  ori   $a3, (0x3F4CCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* 0246A8 80023AA8 01402825 */  move  $a1, $t2
/* 0246AC 80023AAC 0C008BC5 */  jal   func_80022F14
/* 0246B0 80023AB0 24067000 */   li    $a2, 28672
/* 0246B4 80023AB4 00112E00 */  sll   $a1, $s1, 0x18
/* 0246B8 80023AB8 00055E03 */  sra   $t3, $a1, 0x18
/* 0246BC 80023ABC 3C073F4C */  lui   $a3, (0x3F4CCCCD >> 16) # lui $a3, 0x3f4c
/* 0246C0 80023AC0 34E7CCCD */  ori   $a3, (0x3F4CCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* 0246C4 80023AC4 01602825 */  move  $a1, $t3
/* 0246C8 80023AC8 02002025 */  move  $a0, $s0
/* 0246CC 80023ACC 0C008C0E */  jal   func_80023038
/* 0246D0 80023AD0 00003025 */   move  $a2, $zero
/* 0246D4 80023AD4 10000042 */  b     .L80023BE0
/* 0246D8 80023AD8 8FBF001C */   lw    $ra, 0x1c($sp)
.L80023ADC:
/* 0246DC 80023ADC 00112E00 */  sll   $a1, $s1, 0x18
/* 0246E0 80023AE0 00056603 */  sra   $t4, $a1, 0x18
/* 0246E4 80023AE4 01802825 */  move  $a1, $t4
/* 0246E8 80023AE8 0C008C39 */  jal   func_800230E4
/* 0246EC 80023AEC 02002025 */   move  $a0, $s0
/* 0246F0 80023AF0 24030001 */  li    $v1, 1
/* 0246F4 80023AF4 5043003A */  beql  $v0, $v1, .L80023BE0
/* 0246F8 80023AF8 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0246FC 80023AFC 8E0201F4 */  lw    $v0, 0x1f4($s0)
/* 024700 80023B00 24010002 */  li    $at, 2
/* 024704 80023B04 02002025 */  move  $a0, $s0
/* 024708 80023B08 304D0001 */  andi  $t5, $v0, 1
/* 02470C 80023B0C 106D0009 */  beq   $v1, $t5, .L80023B34
/* 024710 80023B10 304E0002 */   andi  $t6, $v0, 2
/* 024714 80023B14 51C10008 */  beql  $t6, $at, .L80023B38
/* 024718 80023B18 00112E00 */   sll   $a1, $s1, 0x18
/* 02471C 80023B1C 8E0F01AC */  lw    $t7, 0x1ac($s0)
/* 024720 80023B20 24010003 */  li    $at, 3
/* 024724 80023B24 00112E00 */  sll   $a1, $s1, 0x18
/* 024728 80023B28 31F80003 */  andi  $t8, $t7, 3
/* 02472C 80023B2C 17010013 */  bne   $t8, $at, .L80023B7C
/* 024730 80023B30 00054E03 */   sra   $t1, $a1, 0x18
.L80023B34:
/* 024734 80023B34 00112E00 */  sll   $a1, $s1, 0x18
.L80023B38:
/* 024738 80023B38 0005CE03 */  sra   $t9, $a1, 0x18
/* 02473C 80023B3C 3C073E99 */  lui   $a3, (0x3E99999A >> 16) # lui $a3, 0x3e99
/* 024740 80023B40 34E7999A */  ori   $a3, (0x3E99999A & 0xFFFF) # ori $a3, $a3, 0x999a
/* 024744 80023B44 03202825 */  move  $a1, $t9
/* 024748 80023B48 0C008BC5 */  jal   func_80022F14
/* 02474C 80023B4C 00003025 */   move  $a2, $zero
/* 024750 80023B50 00112E00 */  sll   $a1, $s1, 0x18
/* 024754 80023B54 00054603 */  sra   $t0, $a1, 0x18
/* 024758 80023B58 3C06006F */  lui   $a2, (0x006F6F6F >> 16) # lui $a2, 0x6f
/* 02475C 80023B5C 3C073E99 */  lui   $a3, (0x3E99999A >> 16) # lui $a3, 0x3e99
/* 024760 80023B60 34E7999A */  ori   $a3, (0x3E99999A & 0xFFFF) # ori $a3, $a3, 0x999a
/* 024764 80023B64 34C66F6F */  ori   $a2, (0x006F6F6F & 0xFFFF) # ori $a2, $a2, 0x6f6f
/* 024768 80023B68 01002825 */  move  $a1, $t0
/* 02476C 80023B6C 0C008C0E */  jal   func_80023038
/* 024770 80023B70 02002025 */   move  $a0, $s0
/* 024774 80023B74 1000001A */  b     .L80023BE0
/* 024778 80023B78 8FBF001C */   lw    $ra, 0x1c($sp)
.L80023B7C:
/* 02477C 80023B7C 02002025 */  move  $a0, $s0
/* 024780 80023B80 0C008C76 */  jal   func_800231D8
/* 024784 80023B84 01202825 */   move  $a1, $t1
/* 024788 80023B88 860A00CA */  lh    $t2, 0xca($s0)
/* 02478C 80023B8C 24011000 */  li    $at, 4096
/* 024790 80023B90 02002025 */  move  $a0, $s0
/* 024794 80023B94 314B1000 */  andi  $t3, $t2, 0x1000
/* 024798 80023B98 15610010 */  bne   $t3, $at, .L80023BDC
/* 02479C 80023B9C 00112E00 */   sll   $a1, $s1, 0x18
/* 0247A0 80023BA0 00056603 */  sra   $t4, $a1, 0x18
/* 0247A4 80023BA4 3C073E99 */  lui   $a3, (0x3E99999A >> 16) # lui $a3, 0x3e99
/* 0247A8 80023BA8 34E7999A */  ori   $a3, (0x3E99999A & 0xFFFF) # ori $a3, $a3, 0x999a
/* 0247AC 80023BAC 01802825 */  move  $a1, $t4
/* 0247B0 80023BB0 0C008BC5 */  jal   func_80022F14
/* 0247B4 80023BB4 00003025 */   move  $a2, $zero
/* 0247B8 80023BB8 00112E00 */  sll   $a1, $s1, 0x18
/* 0247BC 80023BBC 00056E03 */  sra   $t5, $a1, 0x18
/* 0247C0 80023BC0 3C0600F0 */  lui   $a2, (0x00F0F0F0 >> 16) # lui $a2, 0xf0
/* 0247C4 80023BC4 3C073E99 */  lui   $a3, (0x3E99999A >> 16) # lui $a3, 0x3e99
/* 0247C8 80023BC8 34E7999A */  ori   $a3, (0x3E99999A & 0xFFFF) # ori $a3, $a3, 0x999a
/* 0247CC 80023BCC 34C6F0F0 */  ori   $a2, (0x00F0F0F0 & 0xFFFF) # ori $a2, $a2, 0xf0f0
/* 0247D0 80023BD0 01A02825 */  move  $a1, $t5
/* 0247D4 80023BD4 0C008C0E */  jal   func_80023038
/* 0247D8 80023BD8 02002025 */   move  $a0, $s0
.L80023BDC:
/* 0247DC 80023BDC 8FBF001C */  lw    $ra, 0x1c($sp)
.L80023BE0:
/* 0247E0 80023BE0 8FB00014 */  lw    $s0, 0x14($sp)
/* 0247E4 80023BE4 8FB10018 */  lw    $s1, 0x18($sp)
/* 0247E8 80023BE8 03E00008 */  jr    $ra
/* 0247EC 80023BEC 27BD0030 */   addiu $sp, $sp, 0x30


bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	48 83 ec 08          	sub    $0x8,%rsp
    1004:	48 8b 05 c5 3f 00 00 	mov    0x3fc5(%rip),%rax        # 4fd0 <__gmon_start__@Base>
    100b:	48 85 c0             	test   %rax,%rax
    100e:	74 02                	je     1012 <_init+0x12>
    1010:	ff d0                	call   *%rax
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <getenv@plt-0x10>:
    1020:	ff 35 ca 3f 00 00    	push   0x3fca(%rip)        # 4ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 3f 00 00    	jmp    *0x3fcc(%rip)        # 4ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <getenv@plt>:
    1030:	ff 25 ca 3f 00 00    	jmp    *0x3fca(%rip)        # 5000 <getenv@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <__errno_location@plt>:
    1040:	ff 25 c2 3f 00 00    	jmp    *0x3fc2(%rip)        # 5008 <__errno_location@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <strcpy@plt>:
    1050:	ff 25 ba 3f 00 00    	jmp    *0x3fba(%rip)        # 5010 <strcpy@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <puts@plt>:
    1060:	ff 25 b2 3f 00 00    	jmp    *0x3fb2(%rip)        # 5018 <puts@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <write@plt>:
    1070:	ff 25 aa 3f 00 00    	jmp    *0x3faa(%rip)        # 5020 <write@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <strlen@plt>:
    1080:	ff 25 a2 3f 00 00    	jmp    *0x3fa2(%rip)        # 5028 <strlen@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001090 <printf@plt>:
    1090:	ff 25 9a 3f 00 00    	jmp    *0x3f9a(%rip)        # 5030 <printf@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	push   $0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010a0 <alarm@plt>:
    10a0:	ff 25 92 3f 00 00    	jmp    *0x3f92(%rip)        # 5038 <alarm@GLIBC_2.2.5>
    10a6:	68 07 00 00 00       	push   $0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010b0 <close@plt>:
    10b0:	ff 25 8a 3f 00 00    	jmp    *0x3f8a(%rip)        # 5040 <close@GLIBC_2.2.5>
    10b6:	68 08 00 00 00       	push   $0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010c0 <read@plt>:
    10c0:	ff 25 82 3f 00 00    	jmp    *0x3f82(%rip)        # 5048 <read@GLIBC_2.2.5>
    10c6:	68 09 00 00 00       	push   $0x9
    10cb:	e9 50 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010d0 <fgets@plt>:
    10d0:	ff 25 7a 3f 00 00    	jmp    *0x3f7a(%rip)        # 5050 <fgets@GLIBC_2.2.5>
    10d6:	68 0a 00 00 00       	push   $0xa
    10db:	e9 40 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010e0 <strcmp@plt>:
    10e0:	ff 25 72 3f 00 00    	jmp    *0x3f72(%rip)        # 5058 <strcmp@GLIBC_2.2.5>
    10e6:	68 0b 00 00 00       	push   $0xb
    10eb:	e9 30 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010f0 <signal@plt>:
    10f0:	ff 25 6a 3f 00 00    	jmp    *0x3f6a(%rip)        # 5060 <signal@GLIBC_2.2.5>
    10f6:	68 0c 00 00 00       	push   $0xc
    10fb:	e9 20 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001100 <gethostbyname@plt>:
    1100:	ff 25 62 3f 00 00    	jmp    *0x3f62(%rip)        # 5068 <gethostbyname@GLIBC_2.2.5>
    1106:	68 0d 00 00 00       	push   $0xd
    110b:	e9 10 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001110 <fprintf@plt>:
    1110:	ff 25 5a 3f 00 00    	jmp    *0x3f5a(%rip)        # 5070 <fprintf@GLIBC_2.2.5>
    1116:	68 0e 00 00 00       	push   $0xe
    111b:	e9 00 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001120 <strtol@plt>:
    1120:	ff 25 52 3f 00 00    	jmp    *0x3f52(%rip)        # 5078 <strtol@GLIBC_2.2.5>
    1126:	68 0f 00 00 00       	push   $0xf
    112b:	e9 f0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001130 <fflush@plt>:
    1130:	ff 25 4a 3f 00 00    	jmp    *0x3f4a(%rip)        # 5080 <fflush@GLIBC_2.2.5>
    1136:	68 10 00 00 00       	push   $0x10
    113b:	e9 e0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001140 <__isoc99_sscanf@plt>:
    1140:	ff 25 42 3f 00 00    	jmp    *0x3f42(%rip)        # 5088 <__isoc99_sscanf@GLIBC_2.7>
    1146:	68 11 00 00 00       	push   $0x11
    114b:	e9 d0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001150 <memmove@plt>:
    1150:	ff 25 3a 3f 00 00    	jmp    *0x3f3a(%rip)        # 5090 <memmove@GLIBC_2.2.5>
    1156:	68 12 00 00 00       	push   $0x12
    115b:	e9 c0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001160 <fopen@plt>:
    1160:	ff 25 32 3f 00 00    	jmp    *0x3f32(%rip)        # 5098 <fopen@GLIBC_2.2.5>
    1166:	68 13 00 00 00       	push   $0x13
    116b:	e9 b0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001170 <sprintf@plt>:
    1170:	ff 25 2a 3f 00 00    	jmp    *0x3f2a(%rip)        # 50a0 <sprintf@GLIBC_2.2.5>
    1176:	68 14 00 00 00       	push   $0x14
    117b:	e9 a0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001180 <exit@plt>:
    1180:	ff 25 22 3f 00 00    	jmp    *0x3f22(%rip)        # 50a8 <exit@GLIBC_2.2.5>
    1186:	68 15 00 00 00       	push   $0x15
    118b:	e9 90 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001190 <connect@plt>:
    1190:	ff 25 1a 3f 00 00    	jmp    *0x3f1a(%rip)        # 50b0 <connect@GLIBC_2.2.5>
    1196:	68 16 00 00 00       	push   $0x16
    119b:	e9 80 fe ff ff       	jmp    1020 <_init+0x20>

00000000000011a0 <sleep@plt>:
    11a0:	ff 25 12 3f 00 00    	jmp    *0x3f12(%rip)        # 50b8 <sleep@GLIBC_2.2.5>
    11a6:	68 17 00 00 00       	push   $0x17
    11ab:	e9 70 fe ff ff       	jmp    1020 <_init+0x20>

00000000000011b0 <__ctype_b_loc@plt>:
    11b0:	ff 25 0a 3f 00 00    	jmp    *0x3f0a(%rip)        # 50c0 <__ctype_b_loc@GLIBC_2.3>
    11b6:	68 18 00 00 00       	push   $0x18
    11bb:	e9 60 fe ff ff       	jmp    1020 <_init+0x20>

00000000000011c0 <socket@plt>:
    11c0:	ff 25 02 3f 00 00    	jmp    *0x3f02(%rip)        # 50c8 <socket@GLIBC_2.2.5>
    11c6:	68 19 00 00 00       	push   $0x19
    11cb:	e9 50 fe ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

00000000000011d0 <__cxa_finalize@plt>:
    11d0:	ff 25 0a 3e 00 00    	jmp    *0x3e0a(%rip)        # 4fe0 <__cxa_finalize@GLIBC_2.2.5>
    11d6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000011e0 <_start>:
    11e0:	31 ed                	xor    %ebp,%ebp
    11e2:	49 89 d1             	mov    %rdx,%r9
    11e5:	5e                   	pop    %rsi
    11e6:	48 89 e2             	mov    %rsp,%rdx
    11e9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    11ed:	50                   	push   %rax
    11ee:	54                   	push   %rsp
    11ef:	45 31 c0             	xor    %r8d,%r8d
    11f2:	31 c9                	xor    %ecx,%ecx
    11f4:	48 8d 3d ce 00 00 00 	lea    0xce(%rip),%rdi        # 12c9 <main>
    11fb:	ff 15 bf 3d 00 00    	call   *0x3dbf(%rip)        # 4fc0 <__libc_start_main@GLIBC_2.34>
    1201:	f4                   	hlt
    1202:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1209:	00 00 00 
    120c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001210 <deregister_tm_clones>:
    1210:	48 8d 3d 29 45 00 00 	lea    0x4529(%rip),%rdi        # 5740 <stdout@GLIBC_2.2.5>
    1217:	48 8d 05 22 45 00 00 	lea    0x4522(%rip),%rax        # 5740 <stdout@GLIBC_2.2.5>
    121e:	48 39 f8             	cmp    %rdi,%rax
    1221:	74 15                	je     1238 <deregister_tm_clones+0x28>
    1223:	48 8b 05 9e 3d 00 00 	mov    0x3d9e(%rip),%rax        # 4fc8 <_ITM_deregisterTMCloneTable@Base>
    122a:	48 85 c0             	test   %rax,%rax
    122d:	74 09                	je     1238 <deregister_tm_clones+0x28>
    122f:	ff e0                	jmp    *%rax
    1231:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1238:	c3                   	ret
    1239:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001240 <register_tm_clones>:
    1240:	48 8d 3d f9 44 00 00 	lea    0x44f9(%rip),%rdi        # 5740 <stdout@GLIBC_2.2.5>
    1247:	48 8d 35 f2 44 00 00 	lea    0x44f2(%rip),%rsi        # 5740 <stdout@GLIBC_2.2.5>
    124e:	48 29 fe             	sub    %rdi,%rsi
    1251:	48 89 f0             	mov    %rsi,%rax
    1254:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1258:	48 c1 f8 03          	sar    $0x3,%rax
    125c:	48 01 c6             	add    %rax,%rsi
    125f:	48 d1 fe             	sar    %rsi
    1262:	74 14                	je     1278 <register_tm_clones+0x38>
    1264:	48 8b 05 6d 3d 00 00 	mov    0x3d6d(%rip),%rax        # 4fd8 <_ITM_registerTMCloneTable@Base>
    126b:	48 85 c0             	test   %rax,%rax
    126e:	74 08                	je     1278 <register_tm_clones+0x38>
    1270:	ff e0                	jmp    *%rax
    1272:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1278:	c3                   	ret
    1279:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001280 <__do_global_dtors_aux>:
    1280:	f3 0f 1e fa          	endbr64
    1284:	80 3d dd 44 00 00 00 	cmpb   $0x0,0x44dd(%rip)        # 5768 <completed.0>
    128b:	75 2b                	jne    12b8 <__do_global_dtors_aux+0x38>
    128d:	55                   	push   %rbp
    128e:	48 83 3d 4a 3d 00 00 	cmpq   $0x0,0x3d4a(%rip)        # 4fe0 <__cxa_finalize@GLIBC_2.2.5>
    1295:	00 
    1296:	48 89 e5             	mov    %rsp,%rbp
    1299:	74 0c                	je     12a7 <__do_global_dtors_aux+0x27>
    129b:	48 8b 3d 46 3e 00 00 	mov    0x3e46(%rip),%rdi        # 50e8 <__dso_handle>
    12a2:	e8 29 ff ff ff       	call   11d0 <__cxa_finalize@plt>
    12a7:	e8 64 ff ff ff       	call   1210 <deregister_tm_clones>
    12ac:	c6 05 b5 44 00 00 01 	movb   $0x1,0x44b5(%rip)        # 5768 <completed.0>
    12b3:	5d                   	pop    %rbp
    12b4:	c3                   	ret
    12b5:	0f 1f 00             	nopl   (%rax)
    12b8:	c3                   	ret
    12b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012c0 <frame_dummy>:
    12c0:	f3 0f 1e fa          	endbr64
    12c4:	e9 77 ff ff ff       	jmp    1240 <register_tm_clones>

00000000000012c9 <main>:
    12c9:	53                   	push   %rbx
    12ca:	83 ff 01             	cmp    $0x1,%edi
    12cd:	0f 84 f8 00 00 00    	je     13cb <main+0x102>
    12d3:	48 89 f3             	mov    %rsi,%rbx
    12d6:	83 ff 02             	cmp    $0x2,%edi
    12d9:	0f 85 1c 01 00 00    	jne    13fb <main+0x132>
    12df:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    12e3:	48 8d 35 1a 1d 00 00 	lea    0x1d1a(%rip),%rsi        # 3004 <_IO_stdin_used+0x4>
    12ea:	e8 71 fe ff ff       	call   1160 <fopen@plt>
    12ef:	48 89 05 7a 44 00 00 	mov    %rax,0x447a(%rip)        # 5770 <infile>
    12f6:	48 85 c0             	test   %rax,%rax
    12f9:	0f 84 df 00 00 00    	je     13de <main+0x115>
    12ff:	e8 b1 05 00 00       	call   18b5 <initialize_bomb>
    1304:	48 8d 3d 7d 1d 00 00 	lea    0x1d7d(%rip),%rdi        # 3088 <_IO_stdin_used+0x88>
    130b:	e8 50 fd ff ff       	call   1060 <puts@plt>
    1310:	48 8d 3d b1 1d 00 00 	lea    0x1db1(%rip),%rdi        # 30c8 <_IO_stdin_used+0xc8>
    1317:	e8 44 fd ff ff       	call   1060 <puts@plt>
    131c:	e8 9f 06 00 00       	call   19c0 <read_line>
    1321:	48 89 c7             	mov    %rax,%rdi
    1324:	e8 f0 00 00 00       	call   1419 <phase_1>
    1329:	e8 c6 07 00 00       	call   1af4 <phase_defused>
    132e:	48 8d 3d c3 1d 00 00 	lea    0x1dc3(%rip),%rdi        # 30f8 <_IO_stdin_used+0xf8>
    1335:	e8 26 fd ff ff       	call   1060 <puts@plt>
    133a:	e8 81 06 00 00       	call   19c0 <read_line>
    133f:	48 89 c7             	mov    %rax,%rdi
    1342:	e8 f2 00 00 00       	call   1439 <phase_2>
    1347:	e8 a8 07 00 00       	call   1af4 <phase_defused>
    134c:	48 8d 3d ea 1c 00 00 	lea    0x1cea(%rip),%rdi        # 303d <_IO_stdin_used+0x3d>
    1353:	e8 08 fd ff ff       	call   1060 <puts@plt>
    1358:	e8 63 06 00 00       	call   19c0 <read_line>
    135d:	48 89 c7             	mov    %rax,%rdi
    1360:	e8 1d 01 00 00       	call   1482 <phase_3>
    1365:	e8 8a 07 00 00       	call   1af4 <phase_defused>
    136a:	48 8d 3d ea 1c 00 00 	lea    0x1cea(%rip),%rdi        # 305b <_IO_stdin_used+0x5b>
    1371:	e8 ea fc ff ff       	call   1060 <puts@plt>
    1376:	e8 45 06 00 00       	call   19c0 <read_line>
    137b:	48 89 c7             	mov    %rax,%rdi
    137e:	e8 d6 01 00 00       	call   1559 <phase_4>
    1383:	e8 6c 07 00 00       	call   1af4 <phase_defused>
    1388:	48 8d 3d 99 1d 00 00 	lea    0x1d99(%rip),%rdi        # 3128 <_IO_stdin_used+0x128>
    138f:	e8 cc fc ff ff       	call   1060 <puts@plt>
    1394:	e8 27 06 00 00       	call   19c0 <read_line>
    1399:	48 89 c7             	mov    %rax,%rdi
    139c:	e8 11 02 00 00       	call   15b2 <phase_5>
    13a1:	e8 4e 07 00 00       	call   1af4 <phase_defused>
    13a6:	48 8d 3d bd 1c 00 00 	lea    0x1cbd(%rip),%rdi        # 306a <_IO_stdin_used+0x6a>
    13ad:	e8 ae fc ff ff       	call   1060 <puts@plt>
    13b2:	e8 09 06 00 00       	call   19c0 <read_line>
    13b7:	48 89 c7             	mov    %rax,%rdi
    13ba:	e8 58 02 00 00       	call   1617 <phase_6>
    13bf:	e8 30 07 00 00       	call   1af4 <phase_defused>
    13c4:	b8 00 00 00 00       	mov    $0x0,%eax
    13c9:	5b                   	pop    %rbx
    13ca:	c3                   	ret
    13cb:	48 8b 05 7e 43 00 00 	mov    0x437e(%rip),%rax        # 5750 <stdin@GLIBC_2.2.5>
    13d2:	48 89 05 97 43 00 00 	mov    %rax,0x4397(%rip)        # 5770 <infile>
    13d9:	e9 21 ff ff ff       	jmp    12ff <main+0x36>
    13de:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    13e2:	48 8b 33             	mov    (%rbx),%rsi
    13e5:	48 8d 3d 1a 1c 00 00 	lea    0x1c1a(%rip),%rdi        # 3006 <_IO_stdin_used+0x6>
    13ec:	e8 9f fc ff ff       	call   1090 <printf@plt>
    13f1:	bf 08 00 00 00       	mov    $0x8,%edi
    13f6:	e8 85 fd ff ff       	call   1180 <exit@plt>
    13fb:	48 8b 36             	mov    (%rsi),%rsi
    13fe:	48 8d 3d 1e 1c 00 00 	lea    0x1c1e(%rip),%rdi        # 3023 <_IO_stdin_used+0x23>
    1405:	b8 00 00 00 00       	mov    $0x0,%eax
    140a:	e8 81 fc ff ff       	call   1090 <printf@plt>
    140f:	bf 08 00 00 00       	mov    $0x8,%edi
    1414:	e8 67 fd ff ff       	call   1180 <exit@plt>

0000000000001419 <phase_1>:
    1419:	48 83 ec 08          	sub    $0x8,%rsp
    141d:	48 8d 35 28 1d 00 00 	lea    0x1d28(%rip),%rsi        # 314c <_IO_stdin_used+0x14c>
    1424:	e8 30 04 00 00       	call   1859 <strings_not_equal>
    1429:	85 c0                	test   %eax,%eax
    142b:	75 05                	jne    1432 <phase_1+0x19>
    142d:	48 83 c4 08          	add    $0x8,%rsp
    1431:	c3                   	ret
    1432:	e8 22 05 00 00       	call   1959 <explode_bomb>
    1437:	eb f4                	jmp    142d <phase_1+0x14>

0000000000001439 <phase_2>:
    1439:	55                   	push   %rbp
    143a:	53                   	push   %rbx
    143b:	48 83 ec 28          	sub    $0x28,%rsp
    143f:	48 89 e6             	mov    %rsp,%rsi
    1442:	e8 38 05 00 00       	call   197f <read_six_numbers>
    1447:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    144b:	78 0a                	js     1457 <phase_2+0x1e>
    144d:	48 89 e5             	mov    %rsp,%rbp
    1450:	bb 01 00 00 00       	mov    $0x1,%ebx
    1455:	eb 13                	jmp    146a <phase_2+0x31>
    1457:	e8 fd 04 00 00       	call   1959 <explode_bomb>
    145c:	eb ef                	jmp    144d <phase_2+0x14>
    145e:	83 c3 01             	add    $0x1,%ebx
    1461:	48 83 c5 04          	add    $0x4,%rbp
    1465:	83 fb 06             	cmp    $0x6,%ebx
    1468:	74 11                	je     147b <phase_2+0x42>
    146a:	89 d8                	mov    %ebx,%eax
    146c:	03 45 00             	add    0x0(%rbp),%eax
    146f:	39 45 04             	cmp    %eax,0x4(%rbp)
    1472:	74 ea                	je     145e <phase_2+0x25>
    1474:	e8 e0 04 00 00       	call   1959 <explode_bomb>
    1479:	eb e3                	jmp    145e <phase_2+0x25>
    147b:	48 83 c4 28          	add    $0x28,%rsp
    147f:	5b                   	pop    %rbx
    1480:	5d                   	pop    %rbp
    1481:	c3                   	ret

0000000000001482 <phase_3>:
    1482:	48 83 ec 18          	sub    $0x18,%rsp
    1486:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    148b:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    1490:	48 8d 35 40 1e 00 00 	lea    0x1e40(%rip),%rsi        # 32d7 <array.0+0x147>
    1497:	b8 00 00 00 00       	mov    $0x0,%eax
    149c:	e8 9f fc ff ff       	call   1140 <__isoc99_sscanf@plt>
    14a1:	83 f8 01             	cmp    $0x1,%eax
    14a4:	7e 1b                	jle    14c1 <phase_3+0x3f>
    14a6:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%rsp)
    14ab:	77 55                	ja     1502 <phase_3+0x80>
    14ad:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    14b1:	48 8d 15 b8 1c 00 00 	lea    0x1cb8(%rip),%rdx        # 3170 <_IO_stdin_used+0x170>
    14b8:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    14bc:	48 01 d0             	add    %rdx,%rax
    14bf:	ff e0                	jmp    *%rax
    14c1:	e8 93 04 00 00       	call   1959 <explode_bomb>
    14c6:	eb de                	jmp    14a6 <phase_3+0x24>
    14c8:	b8 7d 03 00 00       	mov    $0x37d,%eax
    14cd:	39 44 24 08          	cmp    %eax,0x8(%rsp)
    14d1:	75 42                	jne    1515 <phase_3+0x93>
    14d3:	48 83 c4 18          	add    $0x18,%rsp
    14d7:	c3                   	ret
    14d8:	b8 48 03 00 00       	mov    $0x348,%eax
    14dd:	eb ee                	jmp    14cd <phase_3+0x4b>
    14df:	b8 0d 02 00 00       	mov    $0x20d,%eax
    14e4:	eb e7                	jmp    14cd <phase_3+0x4b>
    14e6:	b8 bb 03 00 00       	mov    $0x3bb,%eax
    14eb:	eb e0                	jmp    14cd <phase_3+0x4b>
    14ed:	b8 b4 02 00 00       	mov    $0x2b4,%eax
    14f2:	eb d9                	jmp    14cd <phase_3+0x4b>
    14f4:	b8 90 02 00 00       	mov    $0x290,%eax
    14f9:	eb d2                	jmp    14cd <phase_3+0x4b>
    14fb:	b8 9a 03 00 00       	mov    $0x39a,%eax
    1500:	eb cb                	jmp    14cd <phase_3+0x4b>
    1502:	e8 52 04 00 00       	call   1959 <explode_bomb>
    1507:	b8 00 00 00 00       	mov    $0x0,%eax
    150c:	eb bf                	jmp    14cd <phase_3+0x4b>
    150e:	b8 cf 02 00 00       	mov    $0x2cf,%eax
    1513:	eb b8                	jmp    14cd <phase_3+0x4b>
    1515:	e8 3f 04 00 00       	call   1959 <explode_bomb>
    151a:	eb b7                	jmp    14d3 <phase_3+0x51>

000000000000151c <func4>:
    151c:	48 83 ec 08          	sub    $0x8,%rsp
    1520:	89 d0                	mov    %edx,%eax
    1522:	29 f0                	sub    %esi,%eax
    1524:	89 c1                	mov    %eax,%ecx
    1526:	c1 e9 1f             	shr    $0x1f,%ecx
    1529:	01 c1                	add    %eax,%ecx
    152b:	d1 f9                	sar    %ecx
    152d:	01 f1                	add    %esi,%ecx
    152f:	39 f9                	cmp    %edi,%ecx
    1531:	7f 0c                	jg     153f <func4+0x23>
    1533:	b8 00 00 00 00       	mov    $0x0,%eax
    1538:	7c 11                	jl     154b <func4+0x2f>
    153a:	48 83 c4 08          	add    $0x8,%rsp
    153e:	c3                   	ret
    153f:	8d 51 ff             	lea    -0x1(%rcx),%edx
    1542:	e8 d5 ff ff ff       	call   151c <func4>
    1547:	01 c0                	add    %eax,%eax
    1549:	eb ef                	jmp    153a <func4+0x1e>
    154b:	8d 71 01             	lea    0x1(%rcx),%esi
    154e:	e8 c9 ff ff ff       	call   151c <func4>
    1553:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    1557:	eb e1                	jmp    153a <func4+0x1e>

0000000000001559 <phase_4>:
    1559:	48 83 ec 18          	sub    $0x18,%rsp
    155d:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    1562:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    1567:	48 8d 35 69 1d 00 00 	lea    0x1d69(%rip),%rsi        # 32d7 <array.0+0x147>
    156e:	b8 00 00 00 00       	mov    $0x0,%eax
    1573:	e8 c8 fb ff ff       	call   1140 <__isoc99_sscanf@plt>
    1578:	83 f8 02             	cmp    $0x2,%eax
    157b:	75 07                	jne    1584 <phase_4+0x2b>
    157d:	83 7c 24 0c 0e       	cmpl   $0xe,0xc(%rsp)
    1582:	76 05                	jbe    1589 <phase_4+0x30>
    1584:	e8 d0 03 00 00       	call   1959 <explode_bomb>
    1589:	ba 0e 00 00 00       	mov    $0xe,%edx
    158e:	be 00 00 00 00       	mov    $0x0,%esi
    1593:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
    1597:	e8 80 ff ff ff       	call   151c <func4>
    159c:	83 f8 02             	cmp    $0x2,%eax
    159f:	75 07                	jne    15a8 <phase_4+0x4f>
    15a1:	83 7c 24 08 02       	cmpl   $0x2,0x8(%rsp)
    15a6:	74 05                	je     15ad <phase_4+0x54>
    15a8:	e8 ac 03 00 00       	call   1959 <explode_bomb>
    15ad:	48 83 c4 18          	add    $0x18,%rsp
    15b1:	c3                   	ret

00000000000015b2 <phase_5>:
    15b2:	53                   	push   %rbx
    15b3:	48 83 ec 10          	sub    $0x10,%rsp
    15b7:	48 89 fb             	mov    %rdi,%rbx
    15ba:	e8 7d 02 00 00       	call   183c <string_length>
    15bf:	83 f8 06             	cmp    $0x6,%eax
    15c2:	75 45                	jne    1609 <phase_5+0x57>
    15c4:	b8 00 00 00 00       	mov    $0x0,%eax
    15c9:	48 8d 0d c0 1b 00 00 	lea    0x1bc0(%rip),%rcx        # 3190 <array.0>
    15d0:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    15d4:	83 e2 0f             	and    $0xf,%edx
    15d7:	0f b6 14 11          	movzbl (%rcx,%rdx,1),%edx
    15db:	88 54 04 09          	mov    %dl,0x9(%rsp,%rax,1)
    15df:	48 83 c0 01          	add    $0x1,%rax
    15e3:	48 83 f8 06          	cmp    $0x6,%rax
    15e7:	75 e7                	jne    15d0 <phase_5+0x1e>
    15e9:	c6 44 24 0f 00       	movb   $0x0,0xf(%rsp)
    15ee:	48 8d 7c 24 09       	lea    0x9(%rsp),%rdi
    15f3:	48 8d 35 66 1b 00 00 	lea    0x1b66(%rip),%rsi        # 3160 <_IO_stdin_used+0x160>
    15fa:	e8 5a 02 00 00       	call   1859 <strings_not_equal>
    15ff:	85 c0                	test   %eax,%eax
    1601:	75 0d                	jne    1610 <phase_5+0x5e>
    1603:	48 83 c4 10          	add    $0x10,%rsp
    1607:	5b                   	pop    %rbx
    1608:	c3                   	ret
    1609:	e8 4b 03 00 00       	call   1959 <explode_bomb>
    160e:	eb b4                	jmp    15c4 <phase_5+0x12>
    1610:	e8 44 03 00 00       	call   1959 <explode_bomb>
    1615:	eb ec                	jmp    1603 <phase_5+0x51>

0000000000001617 <phase_6>:
    1617:	41 56                	push   %r14
    1619:	41 55                	push   %r13
    161b:	41 54                	push   %r12
    161d:	55                   	push   %rbp
    161e:	53                   	push   %rbx
    161f:	48 83 ec 50          	sub    $0x50,%rsp
    1623:	4c 8d 74 24 30       	lea    0x30(%rsp),%r14
    1628:	4c 89 f6             	mov    %r14,%rsi
    162b:	e8 4f 03 00 00       	call   197f <read_six_numbers>
    1630:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1636:	4d 89 f4             	mov    %r14,%r12
    1639:	e9 ad 00 00 00       	jmp    16eb <phase_6+0xd4>
    163e:	e8 16 03 00 00       	call   1959 <explode_bomb>
    1643:	41 83 fd 05          	cmp    $0x5,%r13d
    1647:	0f 8e b6 00 00 00    	jle    1703 <phase_6+0xec>
    164d:	be 00 00 00 00       	mov    $0x0,%esi
    1652:	8b 4c b4 30          	mov    0x30(%rsp,%rsi,4),%ecx
    1656:	b8 01 00 00 00       	mov    $0x1,%eax
    165b:	48 8d 15 8e 3c 00 00 	lea    0x3c8e(%rip),%rdx        # 52f0 <node1>
    1662:	83 f9 01             	cmp    $0x1,%ecx
    1665:	7e 0b                	jle    1672 <phase_6+0x5b>
    1667:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    166b:	83 c0 01             	add    $0x1,%eax
    166e:	39 c8                	cmp    %ecx,%eax
    1670:	75 f5                	jne    1667 <phase_6+0x50>
    1672:	48 89 14 f4          	mov    %rdx,(%rsp,%rsi,8)
    1676:	48 83 c6 01          	add    $0x1,%rsi
    167a:	48 83 fe 06          	cmp    $0x6,%rsi
    167e:	75 d2                	jne    1652 <phase_6+0x3b>
    1680:	48 8b 1c 24          	mov    (%rsp),%rbx
    1684:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    1689:	48 89 43 08          	mov    %rax,0x8(%rbx)
    168d:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
    1692:	48 89 50 08          	mov    %rdx,0x8(%rax)
    1696:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    169b:	48 89 42 08          	mov    %rax,0x8(%rdx)
    169f:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
    16a4:	48 89 50 08          	mov    %rdx,0x8(%rax)
    16a8:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    16ad:	48 89 42 08          	mov    %rax,0x8(%rdx)
    16b1:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    16b8:	00 
    16b9:	bd 05 00 00 00       	mov    $0x5,%ebp
    16be:	eb 51                	jmp    1711 <phase_6+0xfa>
    16c0:	48 83 c3 01          	add    $0x1,%rbx
    16c4:	83 fb 05             	cmp    $0x5,%ebx
    16c7:	7f 10                	jg     16d9 <phase_6+0xc2>
    16c9:	41 8b 04 9c          	mov    (%r12,%rbx,4),%eax
    16cd:	39 45 00             	cmp    %eax,0x0(%rbp)
    16d0:	75 ee                	jne    16c0 <phase_6+0xa9>
    16d2:	e8 82 02 00 00       	call   1959 <explode_bomb>
    16d7:	eb e7                	jmp    16c0 <phase_6+0xa9>
    16d9:	49 83 c6 04          	add    $0x4,%r14
    16dd:	49 83 c5 01          	add    $0x1,%r13
    16e1:	49 83 fd 07          	cmp    $0x7,%r13
    16e5:	0f 84 62 ff ff ff    	je     164d <phase_6+0x36>
    16eb:	4c 89 f5             	mov    %r14,%rbp
    16ee:	41 8b 06             	mov    (%r14),%eax
    16f1:	83 e8 01             	sub    $0x1,%eax
    16f4:	83 f8 05             	cmp    $0x5,%eax
    16f7:	0f 87 41 ff ff ff    	ja     163e <phase_6+0x27>
    16fd:	41 83 fd 05          	cmp    $0x5,%r13d
    1701:	7f d6                	jg     16d9 <phase_6+0xc2>
    1703:	4c 89 eb             	mov    %r13,%rbx
    1706:	eb c1                	jmp    16c9 <phase_6+0xb2>
    1708:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    170c:	83 ed 01             	sub    $0x1,%ebp
    170f:	74 11                	je     1722 <phase_6+0x10b>
    1711:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1715:	8b 00                	mov    (%rax),%eax
    1717:	39 03                	cmp    %eax,(%rbx)
    1719:	7d ed                	jge    1708 <phase_6+0xf1>
    171b:	e8 39 02 00 00       	call   1959 <explode_bomb>
    1720:	eb e6                	jmp    1708 <phase_6+0xf1>
    1722:	48 83 c4 50          	add    $0x50,%rsp
    1726:	5b                   	pop    %rbx
    1727:	5d                   	pop    %rbp
    1728:	41 5c                	pop    %r12
    172a:	41 5d                	pop    %r13
    172c:	41 5e                	pop    %r14
    172e:	c3                   	ret

000000000000172f <fun7>:
    172f:	48 85 ff             	test   %rdi,%rdi
    1732:	74 32                	je     1766 <fun7+0x37>
    1734:	48 83 ec 08          	sub    $0x8,%rsp
    1738:	8b 17                	mov    (%rdi),%edx
    173a:	39 f2                	cmp    %esi,%edx
    173c:	7f 0c                	jg     174a <fun7+0x1b>
    173e:	b8 00 00 00 00       	mov    $0x0,%eax
    1743:	75 12                	jne    1757 <fun7+0x28>
    1745:	48 83 c4 08          	add    $0x8,%rsp
    1749:	c3                   	ret
    174a:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    174e:	e8 dc ff ff ff       	call   172f <fun7>
    1753:	01 c0                	add    %eax,%eax
    1755:	eb ee                	jmp    1745 <fun7+0x16>
    1757:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    175b:	e8 cf ff ff ff       	call   172f <fun7>
    1760:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    1764:	eb df                	jmp    1745 <fun7+0x16>
    1766:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    176b:	c3                   	ret

000000000000176c <secret_phase>:
    176c:	53                   	push   %rbx
    176d:	e8 4e 02 00 00       	call   19c0 <read_line>
    1772:	48 89 c7             	mov    %rax,%rdi
    1775:	ba 0a 00 00 00       	mov    $0xa,%edx
    177a:	be 00 00 00 00       	mov    $0x0,%esi
    177f:	e8 9c f9 ff ff       	call   1120 <strtol@plt>
    1784:	89 c3                	mov    %eax,%ebx
    1786:	83 e8 01             	sub    $0x1,%eax
    1789:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    178e:	77 25                	ja     17b5 <secret_phase+0x49>
    1790:	89 de                	mov    %ebx,%esi
    1792:	48 8d 3d 77 3a 00 00 	lea    0x3a77(%rip),%rdi        # 5210 <n1>
    1799:	e8 91 ff ff ff       	call   172f <fun7>
    179e:	85 c0                	test   %eax,%eax
    17a0:	75 1a                	jne    17bc <secret_phase+0x50>
    17a2:	48 8d 3d f7 19 00 00 	lea    0x19f7(%rip),%rdi        # 31a0 <array.0+0x10>
    17a9:	e8 b2 f8 ff ff       	call   1060 <puts@plt>
    17ae:	e8 41 03 00 00       	call   1af4 <phase_defused>
    17b3:	5b                   	pop    %rbx
    17b4:	c3                   	ret
    17b5:	e8 9f 01 00 00       	call   1959 <explode_bomb>
    17ba:	eb d4                	jmp    1790 <secret_phase+0x24>
    17bc:	e8 98 01 00 00       	call   1959 <explode_bomb>
    17c1:	eb df                	jmp    17a2 <secret_phase+0x36>

00000000000017c3 <sig_handler>:
    17c3:	48 83 ec 08          	sub    $0x8,%rsp
    17c7:	48 8d 3d fa 19 00 00 	lea    0x19fa(%rip),%rdi        # 31c8 <array.0+0x38>
    17ce:	e8 8d f8 ff ff       	call   1060 <puts@plt>
    17d3:	bf 03 00 00 00       	mov    $0x3,%edi
    17d8:	e8 c3 f9 ff ff       	call   11a0 <sleep@plt>
    17dd:	48 8d 3d a6 1a 00 00 	lea    0x1aa6(%rip),%rdi        # 328a <array.0+0xfa>
    17e4:	b8 00 00 00 00       	mov    $0x0,%eax
    17e9:	e8 a2 f8 ff ff       	call   1090 <printf@plt>
    17ee:	48 8b 3d 4b 3f 00 00 	mov    0x3f4b(%rip),%rdi        # 5740 <stdout@GLIBC_2.2.5>
    17f5:	e8 36 f9 ff ff       	call   1130 <fflush@plt>
    17fa:	bf 01 00 00 00       	mov    $0x1,%edi
    17ff:	e8 9c f9 ff ff       	call   11a0 <sleep@plt>
    1804:	48 8d 3d 87 1a 00 00 	lea    0x1a87(%rip),%rdi        # 3292 <array.0+0x102>
    180b:	e8 50 f8 ff ff       	call   1060 <puts@plt>
    1810:	bf 10 00 00 00       	mov    $0x10,%edi
    1815:	e8 66 f9 ff ff       	call   1180 <exit@plt>

000000000000181a <invalid_phase>:
    181a:	48 83 ec 08          	sub    $0x8,%rsp
    181e:	48 89 fe             	mov    %rdi,%rsi
    1821:	48 8d 3d 72 1a 00 00 	lea    0x1a72(%rip),%rdi        # 329a <array.0+0x10a>
    1828:	b8 00 00 00 00       	mov    $0x0,%eax
    182d:	e8 5e f8 ff ff       	call   1090 <printf@plt>
    1832:	bf 08 00 00 00       	mov    $0x8,%edi
    1837:	e8 44 f9 ff ff       	call   1180 <exit@plt>

000000000000183c <string_length>:
    183c:	80 3f 00             	cmpb   $0x0,(%rdi)
    183f:	74 12                	je     1853 <string_length+0x17>
    1841:	b8 00 00 00 00       	mov    $0x0,%eax
    1846:	48 83 c7 01          	add    $0x1,%rdi
    184a:	83 c0 01             	add    $0x1,%eax
    184d:	80 3f 00             	cmpb   $0x0,(%rdi)
    1850:	75 f4                	jne    1846 <string_length+0xa>
    1852:	c3                   	ret
    1853:	b8 00 00 00 00       	mov    $0x0,%eax
    1858:	c3                   	ret

0000000000001859 <strings_not_equal>:
    1859:	41 54                	push   %r12
    185b:	55                   	push   %rbp
    185c:	53                   	push   %rbx
    185d:	48 89 fb             	mov    %rdi,%rbx
    1860:	48 89 f5             	mov    %rsi,%rbp
    1863:	e8 d4 ff ff ff       	call   183c <string_length>
    1868:	41 89 c4             	mov    %eax,%r12d
    186b:	48 89 ef             	mov    %rbp,%rdi
    186e:	e8 c9 ff ff ff       	call   183c <string_length>
    1873:	89 c2                	mov    %eax,%edx
    1875:	b8 01 00 00 00       	mov    $0x1,%eax
    187a:	41 39 d4             	cmp    %edx,%r12d
    187d:	75 31                	jne    18b0 <strings_not_equal+0x57>
    187f:	0f b6 13             	movzbl (%rbx),%edx
    1882:	84 d2                	test   %dl,%dl
    1884:	74 1e                	je     18a4 <strings_not_equal+0x4b>
    1886:	b8 00 00 00 00       	mov    $0x0,%eax
    188b:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    188f:	75 1a                	jne    18ab <strings_not_equal+0x52>
    1891:	48 83 c0 01          	add    $0x1,%rax
    1895:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    1899:	84 d2                	test   %dl,%dl
    189b:	75 ee                	jne    188b <strings_not_equal+0x32>
    189d:	b8 00 00 00 00       	mov    $0x0,%eax
    18a2:	eb 0c                	jmp    18b0 <strings_not_equal+0x57>
    18a4:	b8 00 00 00 00       	mov    $0x0,%eax
    18a9:	eb 05                	jmp    18b0 <strings_not_equal+0x57>
    18ab:	b8 01 00 00 00       	mov    $0x1,%eax
    18b0:	5b                   	pop    %rbx
    18b1:	5d                   	pop    %rbp
    18b2:	41 5c                	pop    %r12
    18b4:	c3                   	ret

00000000000018b5 <initialize_bomb>:
    18b5:	48 83 ec 08          	sub    $0x8,%rsp
    18b9:	48 8d 35 03 ff ff ff 	lea    -0xfd(%rip),%rsi        # 17c3 <sig_handler>
    18c0:	bf 02 00 00 00       	mov    $0x2,%edi
    18c5:	e8 26 f8 ff ff       	call   10f0 <signal@plt>
    18ca:	48 83 c4 08          	add    $0x8,%rsp
    18ce:	c3                   	ret

00000000000018cf <initialize_bomb_solve>:
    18cf:	c3                   	ret

00000000000018d0 <blank_line>:
    18d0:	55                   	push   %rbp
    18d1:	53                   	push   %rbx
    18d2:	48 83 ec 08          	sub    $0x8,%rsp
    18d6:	48 89 fd             	mov    %rdi,%rbp
    18d9:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    18dd:	84 db                	test   %bl,%bl
    18df:	74 1e                	je     18ff <blank_line+0x2f>
    18e1:	e8 ca f8 ff ff       	call   11b0 <__ctype_b_loc@plt>
    18e6:	48 83 c5 01          	add    $0x1,%rbp
    18ea:	48 0f be db          	movsbq %bl,%rbx
    18ee:	48 8b 00             	mov    (%rax),%rax
    18f1:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    18f6:	75 e1                	jne    18d9 <blank_line+0x9>
    18f8:	b8 00 00 00 00       	mov    $0x0,%eax
    18fd:	eb 05                	jmp    1904 <blank_line+0x34>
    18ff:	b8 01 00 00 00       	mov    $0x1,%eax
    1904:	48 83 c4 08          	add    $0x8,%rsp
    1908:	5b                   	pop    %rbx
    1909:	5d                   	pop    %rbp
    190a:	c3                   	ret

000000000000190b <skip>:
    190b:	55                   	push   %rbp
    190c:	53                   	push   %rbx
    190d:	48 83 ec 08          	sub    $0x8,%rsp
    1911:	48 8d 2d c8 3e 00 00 	lea    0x3ec8(%rip),%rbp        # 57e0 <input_strings>
    1918:	48 63 05 b1 3e 00 00 	movslq 0x3eb1(%rip),%rax        # 57d0 <num_input_strings>
    191f:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    1923:	48 c1 e7 04          	shl    $0x4,%rdi
    1927:	48 01 ef             	add    %rbp,%rdi
    192a:	48 8b 15 3f 3e 00 00 	mov    0x3e3f(%rip),%rdx        # 5770 <infile>
    1931:	be 50 00 00 00       	mov    $0x50,%esi
    1936:	e8 95 f7 ff ff       	call   10d0 <fgets@plt>
    193b:	48 89 c3             	mov    %rax,%rbx
    193e:	48 85 c0             	test   %rax,%rax
    1941:	74 0c                	je     194f <skip+0x44>
    1943:	48 89 c7             	mov    %rax,%rdi
    1946:	e8 85 ff ff ff       	call   18d0 <blank_line>
    194b:	85 c0                	test   %eax,%eax
    194d:	75 c9                	jne    1918 <skip+0xd>
    194f:	48 89 d8             	mov    %rbx,%rax
    1952:	48 83 c4 08          	add    $0x8,%rsp
    1956:	5b                   	pop    %rbx
    1957:	5d                   	pop    %rbp
    1958:	c3                   	ret

0000000000001959 <explode_bomb>:
    1959:	48 83 ec 08          	sub    $0x8,%rsp
    195d:	48 8d 3d 47 19 00 00 	lea    0x1947(%rip),%rdi        # 32ab <array.0+0x11b>
    1964:	e8 f7 f6 ff ff       	call   1060 <puts@plt>
    1969:	48 8d 3d 44 19 00 00 	lea    0x1944(%rip),%rdi        # 32b4 <array.0+0x124>
    1970:	e8 eb f6 ff ff       	call   1060 <puts@plt>
    1975:	bf 08 00 00 00       	mov    $0x8,%edi
    197a:	e8 01 f8 ff ff       	call   1180 <exit@plt>

000000000000197f <read_six_numbers>:
    197f:	48 83 ec 08          	sub    $0x8,%rsp
    1983:	48 89 f2             	mov    %rsi,%rdx
    1986:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    198a:	48 8d 46 14          	lea    0x14(%rsi),%rax
    198e:	50                   	push   %rax
    198f:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1993:	50                   	push   %rax
    1994:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1998:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    199c:	48 8d 35 28 19 00 00 	lea    0x1928(%rip),%rsi        # 32cb <array.0+0x13b>
    19a3:	b8 00 00 00 00       	mov    $0x0,%eax
    19a8:	e8 93 f7 ff ff       	call   1140 <__isoc99_sscanf@plt>
    19ad:	48 83 c4 10          	add    $0x10,%rsp
    19b1:	83 f8 05             	cmp    $0x5,%eax
    19b4:	7e 05                	jle    19bb <read_six_numbers+0x3c>
    19b6:	48 83 c4 08          	add    $0x8,%rsp
    19ba:	c3                   	ret
    19bb:	e8 99 ff ff ff       	call   1959 <explode_bomb>

00000000000019c0 <read_line>:
    19c0:	55                   	push   %rbp
    19c1:	53                   	push   %rbx
    19c2:	48 83 ec 08          	sub    $0x8,%rsp
    19c6:	b8 00 00 00 00       	mov    $0x0,%eax
    19cb:	e8 3b ff ff ff       	call   190b <skip>
    19d0:	48 85 c0             	test   %rax,%rax
    19d3:	74 5d                	je     1a32 <read_line+0x72>
    19d5:	8b 2d f5 3d 00 00    	mov    0x3df5(%rip),%ebp        # 57d0 <num_input_strings>
    19db:	48 63 c5             	movslq %ebp,%rax
    19de:	48 8d 1c 80          	lea    (%rax,%rax,4),%rbx
    19e2:	48 c1 e3 04          	shl    $0x4,%rbx
    19e6:	48 8d 05 f3 3d 00 00 	lea    0x3df3(%rip),%rax        # 57e0 <input_strings>
    19ed:	48 01 c3             	add    %rax,%rbx
    19f0:	48 89 df             	mov    %rbx,%rdi
    19f3:	e8 88 f6 ff ff       	call   1080 <strlen@plt>
    19f8:	83 f8 4e             	cmp    $0x4e,%eax
    19fb:	0f 8f a9 00 00 00    	jg     1aaa <read_line+0xea>
    1a01:	83 e8 01             	sub    $0x1,%eax
    1a04:	48 98                	cltq
    1a06:	48 63 d5             	movslq %ebp,%rdx
    1a09:	48 8d 0c 92          	lea    (%rdx,%rdx,4),%rcx
    1a0d:	48 c1 e1 04          	shl    $0x4,%rcx
    1a11:	48 8d 15 c8 3d 00 00 	lea    0x3dc8(%rip),%rdx        # 57e0 <input_strings>
    1a18:	48 01 ca             	add    %rcx,%rdx
    1a1b:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    1a1f:	83 c5 01             	add    $0x1,%ebp
    1a22:	89 2d a8 3d 00 00    	mov    %ebp,0x3da8(%rip)        # 57d0 <num_input_strings>
    1a28:	48 89 d8             	mov    %rbx,%rax
    1a2b:	48 83 c4 08          	add    $0x8,%rsp
    1a2f:	5b                   	pop    %rbx
    1a30:	5d                   	pop    %rbp
    1a31:	c3                   	ret
    1a32:	48 8b 05 17 3d 00 00 	mov    0x3d17(%rip),%rax        # 5750 <stdin@GLIBC_2.2.5>
    1a39:	48 39 05 30 3d 00 00 	cmp    %rax,0x3d30(%rip)        # 5770 <infile>
    1a40:	74 1b                	je     1a5d <read_line+0x9d>
    1a42:	48 8d 3d b2 18 00 00 	lea    0x18b2(%rip),%rdi        # 32fb <array.0+0x16b>
    1a49:	e8 e2 f5 ff ff       	call   1030 <getenv@plt>
    1a4e:	48 85 c0             	test   %rax,%rax
    1a51:	74 20                	je     1a73 <read_line+0xb3>
    1a53:	bf 00 00 00 00       	mov    $0x0,%edi
    1a58:	e8 23 f7 ff ff       	call   1180 <exit@plt>
    1a5d:	48 8d 3d 79 18 00 00 	lea    0x1879(%rip),%rdi        # 32dd <array.0+0x14d>
    1a64:	e8 f7 f5 ff ff       	call   1060 <puts@plt>
    1a69:	bf 08 00 00 00       	mov    $0x8,%edi
    1a6e:	e8 0d f7 ff ff       	call   1180 <exit@plt>
    1a73:	48 8b 05 d6 3c 00 00 	mov    0x3cd6(%rip),%rax        # 5750 <stdin@GLIBC_2.2.5>
    1a7a:	48 89 05 ef 3c 00 00 	mov    %rax,0x3cef(%rip)        # 5770 <infile>
    1a81:	b8 00 00 00 00       	mov    $0x0,%eax
    1a86:	e8 80 fe ff ff       	call   190b <skip>
    1a8b:	48 85 c0             	test   %rax,%rax
    1a8e:	0f 85 41 ff ff ff    	jne    19d5 <read_line+0x15>
    1a94:	48 8d 3d 42 18 00 00 	lea    0x1842(%rip),%rdi        # 32dd <array.0+0x14d>
    1a9b:	e8 c0 f5 ff ff       	call   1060 <puts@plt>
    1aa0:	bf 00 00 00 00       	mov    $0x0,%edi
    1aa5:	e8 d6 f6 ff ff       	call   1180 <exit@plt>
    1aaa:	48 8d 3d 55 18 00 00 	lea    0x1855(%rip),%rdi        # 3306 <array.0+0x176>
    1ab1:	e8 aa f5 ff ff       	call   1060 <puts@plt>
    1ab6:	8b 05 14 3d 00 00    	mov    0x3d14(%rip),%eax        # 57d0 <num_input_strings>
    1abc:	8d 50 01             	lea    0x1(%rax),%edx
    1abf:	89 15 0b 3d 00 00    	mov    %edx,0x3d0b(%rip)        # 57d0 <num_input_strings>
    1ac5:	48 98                	cltq
    1ac7:	48 6b c0 50          	imul   $0x50,%rax,%rax
    1acb:	48 8d 15 0e 3d 00 00 	lea    0x3d0e(%rip),%rdx        # 57e0 <input_strings>
    1ad2:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1ad9:	75 6e 63 
    1adc:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1ae3:	2a 2a 00 
    1ae6:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1aea:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1aef:	e8 65 fe ff ff       	call   1959 <explode_bomb>

0000000000001af4 <phase_defused>:
    1af4:	83 3d d5 3c 00 00 06 	cmpl   $0x6,0x3cd5(%rip)        # 57d0 <num_input_strings>
    1afb:	74 01                	je     1afe <phase_defused+0xa>
    1afd:	c3                   	ret
    1afe:	48 83 ec 68          	sub    $0x68,%rsp
    1b02:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    1b07:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    1b0c:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1b11:	48 8d 35 09 18 00 00 	lea    0x1809(%rip),%rsi        # 3321 <array.0+0x191>
    1b18:	48 8d 3d b1 3d 00 00 	lea    0x3db1(%rip),%rdi        # 58d0 <input_strings+0xf0>
    1b1f:	b8 00 00 00 00       	mov    $0x0,%eax
    1b24:	e8 17 f6 ff ff       	call   1140 <__isoc99_sscanf@plt>
    1b29:	83 f8 03             	cmp    $0x3,%eax
    1b2c:	74 11                	je     1b3f <phase_defused+0x4b>
    1b2e:	48 8d 3d 2b 17 00 00 	lea    0x172b(%rip),%rdi        # 3260 <array.0+0xd0>
    1b35:	e8 26 f5 ff ff       	call   1060 <puts@plt>
    1b3a:	48 83 c4 68          	add    $0x68,%rsp
    1b3e:	c3                   	ret
    1b3f:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1b44:	48 8d 35 df 17 00 00 	lea    0x17df(%rip),%rsi        # 332a <array.0+0x19a>
    1b4b:	e8 09 fd ff ff       	call   1859 <strings_not_equal>
    1b50:	85 c0                	test   %eax,%eax
    1b52:	75 da                	jne    1b2e <phase_defused+0x3a>
    1b54:	48 8d 3d a5 16 00 00 	lea    0x16a5(%rip),%rdi        # 3200 <array.0+0x70>
    1b5b:	e8 00 f5 ff ff       	call   1060 <puts@plt>
    1b60:	48 8d 3d c1 16 00 00 	lea    0x16c1(%rip),%rdi        # 3228 <array.0+0x98>
    1b67:	e8 f4 f4 ff ff       	call   1060 <puts@plt>
    1b6c:	b8 00 00 00 00       	mov    $0x0,%eax
    1b71:	e8 f6 fb ff ff       	call   176c <secret_phase>
    1b76:	eb b6                	jmp    1b2e <phase_defused+0x3a>

0000000000001b78 <sigalrm_handler>:
    1b78:	48 83 ec 08          	sub    $0x8,%rsp
    1b7c:	ba 00 00 00 00       	mov    $0x0,%edx
    1b81:	48 8d 35 10 18 00 00 	lea    0x1810(%rip),%rsi        # 3398 <array.0+0x208>
    1b88:	48 8b 3d d1 3b 00 00 	mov    0x3bd1(%rip),%rdi        # 5760 <stderr@GLIBC_2.2.5>
    1b8f:	b8 00 00 00 00       	mov    $0x0,%eax
    1b94:	e8 77 f5 ff ff       	call   1110 <fprintf@plt>
    1b99:	bf 01 00 00 00       	mov    $0x1,%edi
    1b9e:	e8 dd f5 ff ff       	call   1180 <exit@plt>

0000000000001ba3 <rio_readlineb>:
    1ba3:	41 56                	push   %r14
    1ba5:	41 55                	push   %r13
    1ba7:	41 54                	push   %r12
    1ba9:	55                   	push   %rbp
    1baa:	53                   	push   %rbx
    1bab:	49 89 f4             	mov    %rsi,%r12
    1bae:	48 83 fa 01          	cmp    $0x1,%rdx
    1bb2:	0f 86 90 00 00 00    	jbe    1c48 <rio_readlineb+0xa5>
    1bb8:	48 89 fb             	mov    %rdi,%rbx
    1bbb:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    1bc0:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1bc6:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    1bca:	eb 54                	jmp    1c20 <rio_readlineb+0x7d>
    1bcc:	e8 6f f4 ff ff       	call   1040 <__errno_location@plt>
    1bd1:	83 38 04             	cmpl   $0x4,(%rax)
    1bd4:	75 53                	jne    1c29 <rio_readlineb+0x86>
    1bd6:	8b 3b                	mov    (%rbx),%edi
    1bd8:	ba 00 20 00 00       	mov    $0x2000,%edx
    1bdd:	48 89 ee             	mov    %rbp,%rsi
    1be0:	e8 db f4 ff ff       	call   10c0 <read@plt>
    1be5:	89 c2                	mov    %eax,%edx
    1be7:	89 43 04             	mov    %eax,0x4(%rbx)
    1bea:	85 c0                	test   %eax,%eax
    1bec:	78 de                	js     1bcc <rio_readlineb+0x29>
    1bee:	74 42                	je     1c32 <rio_readlineb+0x8f>
    1bf0:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    1bf4:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1bf8:	0f b6 08             	movzbl (%rax),%ecx
    1bfb:	48 83 c0 01          	add    $0x1,%rax
    1bff:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1c03:	83 ea 01             	sub    $0x1,%edx
    1c06:	89 53 04             	mov    %edx,0x4(%rbx)
    1c09:	49 83 c4 01          	add    $0x1,%r12
    1c0d:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    1c12:	80 f9 0a             	cmp    $0xa,%cl
    1c15:	74 3c                	je     1c53 <rio_readlineb+0xb0>
    1c17:	41 83 c5 01          	add    $0x1,%r13d
    1c1b:	4d 39 f4             	cmp    %r14,%r12
    1c1e:	74 30                	je     1c50 <rio_readlineb+0xad>
    1c20:	8b 53 04             	mov    0x4(%rbx),%edx
    1c23:	85 d2                	test   %edx,%edx
    1c25:	7e af                	jle    1bd6 <rio_readlineb+0x33>
    1c27:	eb cb                	jmp    1bf4 <rio_readlineb+0x51>
    1c29:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1c30:	eb 05                	jmp    1c37 <rio_readlineb+0x94>
    1c32:	b8 00 00 00 00       	mov    $0x0,%eax
    1c37:	85 c0                	test   %eax,%eax
    1c39:	75 29                	jne    1c64 <rio_readlineb+0xc1>
    1c3b:	b8 00 00 00 00       	mov    $0x0,%eax
    1c40:	41 83 fd 01          	cmp    $0x1,%r13d
    1c44:	75 0d                	jne    1c53 <rio_readlineb+0xb0>
    1c46:	eb 13                	jmp    1c5b <rio_readlineb+0xb8>
    1c48:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1c4e:	eb 03                	jmp    1c53 <rio_readlineb+0xb0>
    1c50:	4d 89 f4             	mov    %r14,%r12
    1c53:	41 c6 04 24 00       	movb   $0x0,(%r12)
    1c58:	49 63 c5             	movslq %r13d,%rax
    1c5b:	5b                   	pop    %rbx
    1c5c:	5d                   	pop    %rbp
    1c5d:	41 5c                	pop    %r12
    1c5f:	41 5d                	pop    %r13
    1c61:	41 5e                	pop    %r14
    1c63:	c3                   	ret
    1c64:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1c6b:	eb ee                	jmp    1c5b <rio_readlineb+0xb8>

0000000000001c6d <submitr>:
    1c6d:	41 57                	push   %r15
    1c6f:	41 56                	push   %r14
    1c71:	41 55                	push   %r13
    1c73:	41 54                	push   %r12
    1c75:	55                   	push   %rbp
    1c76:	53                   	push   %rbx
    1c77:	48 81 ec 68 a0 00 00 	sub    $0xa068,%rsp
    1c7e:	48 89 fd             	mov    %rdi,%rbp
    1c81:	41 89 f5             	mov    %esi,%r13d
    1c84:	48 89 14 24          	mov    %rdx,(%rsp)
    1c88:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    1c8d:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    1c92:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
    1c97:	48 8b 9c 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbx
    1c9e:	00 
    1c9f:	4c 8b bc 24 a8 a0 00 	mov    0xa0a8(%rsp),%r15
    1ca6:	00 
    1ca7:	c7 84 24 3c 20 00 00 	movl   $0x0,0x203c(%rsp)
    1cae:	00 00 00 00 
    1cb2:	ba 00 00 00 00       	mov    $0x0,%edx
    1cb7:	be 01 00 00 00       	mov    $0x1,%esi
    1cbc:	bf 02 00 00 00       	mov    $0x2,%edi
    1cc1:	e8 fa f4 ff ff       	call   11c0 <socket@plt>
    1cc6:	85 c0                	test   %eax,%eax
    1cc8:	0f 88 13 01 00 00    	js     1de1 <submitr+0x174>
    1cce:	41 89 c4             	mov    %eax,%r12d
    1cd1:	48 89 ef             	mov    %rbp,%rdi
    1cd4:	e8 27 f4 ff ff       	call   1100 <gethostbyname@plt>
    1cd9:	48 85 c0             	test   %rax,%rax
    1cdc:	0f 84 4e 01 00 00    	je     1e30 <submitr+0x1c3>
    1ce2:	48 8d ac 24 50 a0 00 	lea    0xa050(%rsp),%rbp
    1ce9:	00 
    1cea:	48 c7 84 24 52 a0 00 	movq   $0x0,0xa052(%rsp)
    1cf1:	00 00 00 00 00 
    1cf6:	48 c7 84 24 58 a0 00 	movq   $0x0,0xa058(%rsp)
    1cfd:	00 00 00 00 00 
    1d02:	66 c7 84 24 50 a0 00 	movw   $0x2,0xa050(%rsp)
    1d09:	00 02 00 
    1d0c:	48 63 50 14          	movslq 0x14(%rax),%rdx
    1d10:	48 8b 40 18          	mov    0x18(%rax),%rax
    1d14:	48 8b 30             	mov    (%rax),%rsi
    1d17:	48 8d bc 24 54 a0 00 	lea    0xa054(%rsp),%rdi
    1d1e:	00 
    1d1f:	e8 2c f4 ff ff       	call   1150 <memmove@plt>
    1d24:	66 41 c1 c5 08       	rol    $0x8,%r13w
    1d29:	66 44 89 ac 24 52 a0 	mov    %r13w,0xa052(%rsp)
    1d30:	00 00 
    1d32:	ba 10 00 00 00       	mov    $0x10,%edx
    1d37:	48 89 ee             	mov    %rbp,%rsi
    1d3a:	44 89 e7             	mov    %r12d,%edi
    1d3d:	e8 4e f4 ff ff       	call   1190 <connect@plt>
    1d42:	85 c0                	test   %eax,%eax
    1d44:	0f 88 4b 01 00 00    	js     1e95 <submitr+0x228>
    1d4a:	48 89 df             	mov    %rbx,%rdi
    1d4d:	e8 2e f3 ff ff       	call   1080 <strlen@plt>
    1d52:	48 89 c5             	mov    %rax,%rbp
    1d55:	48 8b 3c 24          	mov    (%rsp),%rdi
    1d59:	e8 22 f3 ff ff       	call   1080 <strlen@plt>
    1d5e:	49 89 c6             	mov    %rax,%r14
    1d61:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    1d66:	e8 15 f3 ff ff       	call   1080 <strlen@plt>
    1d6b:	49 89 c5             	mov    %rax,%r13
    1d6e:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    1d73:	e8 08 f3 ff ff       	call   1080 <strlen@plt>
    1d78:	48 89 c2             	mov    %rax,%rdx
    1d7b:	4b 8d 84 2e 80 00 00 	lea    0x80(%r14,%r13,1),%rax
    1d82:	00 
    1d83:	48 01 d0             	add    %rdx,%rax
    1d86:	48 8d 54 6d 00       	lea    0x0(%rbp,%rbp,2),%rdx
    1d8b:	48 01 d0             	add    %rdx,%rax
    1d8e:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    1d94:	0f 87 52 01 00 00    	ja     1eec <submitr+0x27f>
    1d9a:	48 8d 94 24 40 40 00 	lea    0x4040(%rsp),%rdx
    1da1:	00 
    1da2:	b9 00 04 00 00       	mov    $0x400,%ecx
    1da7:	b8 00 00 00 00       	mov    $0x0,%eax
    1dac:	48 89 d7             	mov    %rdx,%rdi
    1daf:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    1db2:	48 89 df             	mov    %rbx,%rdi
    1db5:	e8 c6 f2 ff ff       	call   1080 <strlen@plt>
    1dba:	85 c0                	test   %eax,%eax
    1dbc:	0f 84 1f 02 00 00    	je     1fe1 <submitr+0x374>
    1dc2:	8d 40 ff             	lea    -0x1(%rax),%eax
    1dc5:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
    1dca:	48 8d ac 24 40 40 00 	lea    0x4040(%rsp),%rbp
    1dd1:	00 
    1dd2:	49 be d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r14
    1dd9:	00 20 00 
    1ddc:	e9 94 01 00 00       	jmp    1f75 <submitr+0x308>
    1de1:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    1de8:	3a 20 43 
    1deb:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    1df2:	20 75 6e 
    1df5:	49 89 07             	mov    %rax,(%r15)
    1df8:	49 89 57 08          	mov    %rdx,0x8(%r15)
    1dfc:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    1e03:	74 6f 20 
    1e06:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    1e0d:	65 20 73 
    1e10:	49 89 47 10          	mov    %rax,0x10(%r15)
    1e14:	49 89 57 18          	mov    %rdx,0x18(%r15)
    1e18:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
    1e1f:	65 74 00 
    1e22:	49 89 47 1e          	mov    %rax,0x1e(%r15)
    1e26:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1e2b:	e9 b6 04 00 00       	jmp    22e6 <submitr+0x679>
    1e30:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    1e37:	3a 20 44 
    1e3a:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    1e41:	20 75 6e 
    1e44:	49 89 07             	mov    %rax,(%r15)
    1e47:	49 89 57 08          	mov    %rdx,0x8(%r15)
    1e4b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    1e52:	74 6f 20 
    1e55:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    1e5c:	76 65 20 
    1e5f:	49 89 47 10          	mov    %rax,0x10(%r15)
    1e63:	49 89 57 18          	mov    %rdx,0x18(%r15)
    1e67:	48 b8 20 73 65 72 76 	movabs $0x2072657672657320,%rax
    1e6e:	65 72 20 
    1e71:	48 ba 61 64 64 72 65 	movabs $0x73736572646461,%rdx
    1e78:	73 73 00 
    1e7b:	49 89 47 1f          	mov    %rax,0x1f(%r15)
    1e7f:	49 89 57 27          	mov    %rdx,0x27(%r15)
    1e83:	44 89 e7             	mov    %r12d,%edi
    1e86:	e8 25 f2 ff ff       	call   10b0 <close@plt>
    1e8b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1e90:	e9 51 04 00 00       	jmp    22e6 <submitr+0x679>
    1e95:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    1e9c:	3a 20 55 
    1e9f:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    1ea6:	20 74 6f 
    1ea9:	49 89 07             	mov    %rax,(%r15)
    1eac:	49 89 57 08          	mov    %rdx,0x8(%r15)
    1eb0:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    1eb7:	65 63 74 
    1eba:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    1ec1:	68 65 20 
    1ec4:	49 89 47 10          	mov    %rax,0x10(%r15)
    1ec8:	49 89 57 18          	mov    %rdx,0x18(%r15)
    1ecc:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    1ed3:	65 72 00 
    1ed6:	49 89 47 1f          	mov    %rax,0x1f(%r15)
    1eda:	44 89 e7             	mov    %r12d,%edi
    1edd:	e8 ce f1 ff ff       	call   10b0 <close@plt>
    1ee2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1ee7:	e9 fa 03 00 00       	jmp    22e6 <submitr+0x679>
    1eec:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    1ef3:	3a 20 52 
    1ef6:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    1efd:	20 73 74 
    1f00:	49 89 07             	mov    %rax,(%r15)
    1f03:	49 89 57 08          	mov    %rdx,0x8(%r15)
    1f07:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    1f0e:	74 6f 6f 
    1f11:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    1f18:	65 2e 20 
    1f1b:	49 89 47 10          	mov    %rax,0x10(%r15)
    1f1f:	49 89 57 18          	mov    %rdx,0x18(%r15)
    1f23:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    1f2a:	61 73 65 
    1f2d:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    1f34:	49 54 52 
    1f37:	49 89 47 20          	mov    %rax,0x20(%r15)
    1f3b:	49 89 57 28          	mov    %rdx,0x28(%r15)
    1f3f:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    1f46:	55 46 00 
    1f49:	49 89 47 30          	mov    %rax,0x30(%r15)
    1f4d:	44 89 e7             	mov    %r12d,%edi
    1f50:	e8 5b f1 ff ff       	call   10b0 <close@plt>
    1f55:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1f5a:	e9 87 03 00 00       	jmp    22e6 <submitr+0x679>
    1f5f:	49 0f a3 c6          	bt     %rax,%r14
    1f63:	73 1a                	jae    1f7f <submitr+0x312>
    1f65:	88 55 00             	mov    %dl,0x0(%rbp)
    1f68:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    1f6c:	48 83 c3 01          	add    $0x1,%rbx
    1f70:	49 39 dd             	cmp    %rbx,%r13
    1f73:	74 6c                	je     1fe1 <submitr+0x374>
    1f75:	0f b6 13             	movzbl (%rbx),%edx
    1f78:	8d 42 d6             	lea    -0x2a(%rdx),%eax
    1f7b:	3c 35                	cmp    $0x35,%al
    1f7d:	76 e0                	jbe    1f5f <submitr+0x2f2>
    1f7f:	89 d0                	mov    %edx,%eax
    1f81:	83 e0 df             	and    $0xffffffdf,%eax
    1f84:	83 e8 41             	sub    $0x41,%eax
    1f87:	3c 19                	cmp    $0x19,%al
    1f89:	76 da                	jbe    1f65 <submitr+0x2f8>
    1f8b:	80 fa 20             	cmp    $0x20,%dl
    1f8e:	74 47                	je     1fd7 <submitr+0x36a>
    1f90:	8d 42 e0             	lea    -0x20(%rdx),%eax
    1f93:	3c 5f                	cmp    $0x5f,%al
    1f95:	76 09                	jbe    1fa0 <submitr+0x333>
    1f97:	80 fa 09             	cmp    $0x9,%dl
    1f9a:	0f 85 cb 03 00 00    	jne    236b <submitr+0x6fe>
    1fa0:	0f b6 d2             	movzbl %dl,%edx
    1fa3:	48 8d 7c 24 28       	lea    0x28(%rsp),%rdi
    1fa8:	48 8d 35 bf 14 00 00 	lea    0x14bf(%rip),%rsi        # 346e <array.0+0x2de>
    1faf:	b8 00 00 00 00       	mov    $0x0,%eax
    1fb4:	e8 b7 f1 ff ff       	call   1170 <sprintf@plt>
    1fb9:	0f b6 44 24 28       	movzbl 0x28(%rsp),%eax
    1fbe:	88 45 00             	mov    %al,0x0(%rbp)
    1fc1:	0f b6 44 24 29       	movzbl 0x29(%rsp),%eax
    1fc6:	88 45 01             	mov    %al,0x1(%rbp)
    1fc9:	0f b6 44 24 2a       	movzbl 0x2a(%rsp),%eax
    1fce:	88 45 02             	mov    %al,0x2(%rbp)
    1fd1:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    1fd5:	eb 95                	jmp    1f6c <submitr+0x2ff>
    1fd7:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    1fdb:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    1fdf:	eb 8b                	jmp    1f6c <submitr+0x2ff>
    1fe1:	48 8d 9c 24 40 60 00 	lea    0x6040(%rsp),%rbx
    1fe8:	00 
    1fe9:	48 83 ec 08          	sub    $0x8,%rsp
    1fed:	48 8d 84 24 48 40 00 	lea    0x4048(%rsp),%rax
    1ff4:	00 
    1ff5:	50                   	push   %rax
    1ff6:	4c 8b 4c 24 20       	mov    0x20(%rsp),%r9
    1ffb:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    2000:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    2005:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
    200a:	48 8d 35 af 13 00 00 	lea    0x13af(%rip),%rsi        # 33c0 <array.0+0x230>
    2011:	48 89 df             	mov    %rbx,%rdi
    2014:	b8 00 00 00 00       	mov    $0x0,%eax
    2019:	e8 52 f1 ff ff       	call   1170 <sprintf@plt>
    201e:	48 89 df             	mov    %rbx,%rdi
    2021:	e8 5a f0 ff ff       	call   1080 <strlen@plt>
    2026:	48 89 c3             	mov    %rax,%rbx
    2029:	48 83 c4 10          	add    $0x10,%rsp
    202d:	48 85 c0             	test   %rax,%rax
    2030:	74 3e                	je     2070 <submitr+0x403>
    2032:	48 8d ac 24 40 60 00 	lea    0x6040(%rsp),%rbp
    2039:	00 
    203a:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    2040:	eb 08                	jmp    204a <submitr+0x3dd>
    2042:	48 01 c5             	add    %rax,%rbp
    2045:	48 29 c3             	sub    %rax,%rbx
    2048:	74 26                	je     2070 <submitr+0x403>
    204a:	48 89 da             	mov    %rbx,%rdx
    204d:	48 89 ee             	mov    %rbp,%rsi
    2050:	44 89 e7             	mov    %r12d,%edi
    2053:	e8 18 f0 ff ff       	call   1070 <write@plt>
    2058:	48 85 c0             	test   %rax,%rax
    205b:	7f e5                	jg     2042 <submitr+0x3d5>
    205d:	e8 de ef ff ff       	call   1040 <__errno_location@plt>
    2062:	83 38 04             	cmpl   $0x4,(%rax)
    2065:	0f 85 34 01 00 00    	jne    219f <submitr+0x532>
    206b:	4c 89 e8             	mov    %r13,%rax
    206e:	eb d2                	jmp    2042 <submitr+0x3d5>
    2070:	44 89 a4 24 40 80 00 	mov    %r12d,0x8040(%rsp)
    2077:	00 
    2078:	c7 84 24 44 80 00 00 	movl   $0x0,0x8044(%rsp)
    207f:	00 00 00 00 
    2083:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
    208a:	00 
    208b:	48 8d 84 24 50 80 00 	lea    0x8050(%rsp),%rax
    2092:	00 
    2093:	48 89 84 24 48 80 00 	mov    %rax,0x8048(%rsp)
    209a:	00 
    209b:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    20a2:	00 
    20a3:	ba 00 20 00 00       	mov    $0x2000,%edx
    20a8:	e8 f6 fa ff ff       	call   1ba3 <rio_readlineb>
    20ad:	48 85 c0             	test   %rax,%rax
    20b0:	0f 8e 4e 01 00 00    	jle    2204 <submitr+0x597>
    20b6:	48 8d 8c 24 3c 20 00 	lea    0x203c(%rsp),%rcx
    20bd:	00 
    20be:	48 8d 94 24 40 20 00 	lea    0x2040(%rsp),%rdx
    20c5:	00 
    20c6:	48 8d bc 24 40 60 00 	lea    0x6040(%rsp),%rdi
    20cd:	00 
    20ce:	4c 8d 44 24 30       	lea    0x30(%rsp),%r8
    20d3:	48 8d 35 9b 13 00 00 	lea    0x139b(%rip),%rsi        # 3475 <array.0+0x2e5>
    20da:	b8 00 00 00 00       	mov    $0x0,%eax
    20df:	e8 5c f0 ff ff       	call   1140 <__isoc99_sscanf@plt>
    20e4:	8b 94 24 3c 20 00 00 	mov    0x203c(%rsp),%edx
    20eb:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
    20f1:	0f 85 7d 01 00 00    	jne    2274 <submitr+0x607>
    20f7:	48 8d 1d 88 13 00 00 	lea    0x1388(%rip),%rbx        # 3486 <array.0+0x2f6>
    20fe:	48 8d bc 24 40 60 00 	lea    0x6040(%rsp),%rdi
    2105:	00 
    2106:	48 89 de             	mov    %rbx,%rsi
    2109:	e8 d2 ef ff ff       	call   10e0 <strcmp@plt>
    210e:	85 c0                	test   %eax,%eax
    2110:	0f 84 86 01 00 00    	je     229c <submitr+0x62f>
    2116:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    211d:	00 
    211e:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
    2125:	00 
    2126:	ba 00 20 00 00       	mov    $0x2000,%edx
    212b:	e8 73 fa ff ff       	call   1ba3 <rio_readlineb>
    2130:	48 85 c0             	test   %rax,%rax
    2133:	7f c9                	jg     20fe <submitr+0x491>
    2135:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    213c:	3a 20 43 
    213f:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2146:	20 75 6e 
    2149:	49 89 07             	mov    %rax,(%r15)
    214c:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2150:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2157:	74 6f 20 
    215a:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    2161:	68 65 61 
    2164:	49 89 47 10          	mov    %rax,0x10(%r15)
    2168:	49 89 57 18          	mov    %rdx,0x18(%r15)
    216c:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    2173:	66 72 6f 
    2176:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    217d:	76 65 72 
    2180:	49 89 47 20          	mov    %rax,0x20(%r15)
    2184:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2188:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    218d:	44 89 e7             	mov    %r12d,%edi
    2190:	e8 1b ef ff ff       	call   10b0 <close@plt>
    2195:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    219a:	e9 47 01 00 00       	jmp    22e6 <submitr+0x679>
    219f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    21a6:	3a 20 43 
    21a9:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    21b0:	20 75 6e 
    21b3:	49 89 07             	mov    %rax,(%r15)
    21b6:	49 89 57 08          	mov    %rdx,0x8(%r15)
    21ba:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    21c1:	74 6f 20 
    21c4:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    21cb:	20 74 6f 
    21ce:	49 89 47 10          	mov    %rax,0x10(%r15)
    21d2:	49 89 57 18          	mov    %rdx,0x18(%r15)
    21d6:	48 b8 65 20 74 6f 20 	movabs $0x656874206f742065,%rax
    21dd:	74 68 65 
    21e0:	48 ba 20 73 65 72 76 	movabs $0x72657672657320,%rdx
    21e7:	65 72 00 
    21ea:	49 89 47 1c          	mov    %rax,0x1c(%r15)
    21ee:	49 89 57 24          	mov    %rdx,0x24(%r15)
    21f2:	44 89 e7             	mov    %r12d,%edi
    21f5:	e8 b6 ee ff ff       	call   10b0 <close@plt>
    21fa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    21ff:	e9 e2 00 00 00       	jmp    22e6 <submitr+0x679>
    2204:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    220b:	3a 20 43 
    220e:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2215:	20 75 6e 
    2218:	49 89 07             	mov    %rax,(%r15)
    221b:	49 89 57 08          	mov    %rdx,0x8(%r15)
    221f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2226:	74 6f 20 
    2229:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2230:	66 69 72 
    2233:	49 89 47 10          	mov    %rax,0x10(%r15)
    2237:	49 89 57 18          	mov    %rdx,0x18(%r15)
    223b:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2242:	61 64 65 
    2245:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    224c:	6d 20 73 
    224f:	49 89 47 20          	mov    %rax,0x20(%r15)
    2253:	49 89 57 28          	mov    %rdx,0x28(%r15)
    2257:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    225e:	65 72 00 
    2261:	49 89 47 2e          	mov    %rax,0x2e(%r15)
    2265:	44 89 e7             	mov    %r12d,%edi
    2268:	e8 43 ee ff ff       	call   10b0 <close@plt>
    226d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2272:	eb 72                	jmp    22e6 <submitr+0x679>
    2274:	48 8d 4c 24 30       	lea    0x30(%rsp),%rcx
    2279:	48 8d 35 98 11 00 00 	lea    0x1198(%rip),%rsi        # 3418 <array.0+0x288>
    2280:	4c 89 ff             	mov    %r15,%rdi
    2283:	b8 00 00 00 00       	mov    $0x0,%eax
    2288:	e8 e3 ee ff ff       	call   1170 <sprintf@plt>
    228d:	44 89 e7             	mov    %r12d,%edi
    2290:	e8 1b ee ff ff       	call   10b0 <close@plt>
    2295:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    229a:	eb 4a                	jmp    22e6 <submitr+0x679>
    229c:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    22a3:	00 
    22a4:	48 8d bc 24 40 80 00 	lea    0x8040(%rsp),%rdi
    22ab:	00 
    22ac:	ba 00 20 00 00       	mov    $0x2000,%edx
    22b1:	e8 ed f8 ff ff       	call   1ba3 <rio_readlineb>
    22b6:	48 85 c0             	test   %rax,%rax
    22b9:	7e 3d                	jle    22f8 <submitr+0x68b>
    22bb:	48 8d b4 24 40 60 00 	lea    0x6040(%rsp),%rsi
    22c2:	00 
    22c3:	4c 89 ff             	mov    %r15,%rdi
    22c6:	e8 85 ed ff ff       	call   1050 <strcpy@plt>
    22cb:	44 89 e7             	mov    %r12d,%edi
    22ce:	e8 dd ed ff ff       	call   10b0 <close@plt>
    22d3:	48 8d 35 af 11 00 00 	lea    0x11af(%rip),%rsi        # 3489 <array.0+0x2f9>
    22da:	4c 89 ff             	mov    %r15,%rdi
    22dd:	e8 fe ed ff ff       	call   10e0 <strcmp@plt>
    22e2:	f7 d8                	neg    %eax
    22e4:	19 c0                	sbb    %eax,%eax
    22e6:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    22ed:	5b                   	pop    %rbx
    22ee:	5d                   	pop    %rbp
    22ef:	41 5c                	pop    %r12
    22f1:	41 5d                	pop    %r13
    22f3:	41 5e                	pop    %r14
    22f5:	41 5f                	pop    %r15
    22f7:	c3                   	ret
    22f8:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    22ff:	3a 20 43 
    2302:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2309:	20 75 6e 
    230c:	49 89 07             	mov    %rax,(%r15)
    230f:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2313:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    231a:	74 6f 20 
    231d:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2324:	73 74 61 
    2327:	49 89 47 10          	mov    %rax,0x10(%r15)
    232b:	49 89 57 18          	mov    %rdx,0x18(%r15)
    232f:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    2336:	65 73 73 
    2339:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    2340:	72 6f 6d 
    2343:	49 89 47 20          	mov    %rax,0x20(%r15)
    2347:	49 89 57 28          	mov    %rdx,0x28(%r15)
    234b:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    2352:	65 72 00 
    2355:	49 89 47 30          	mov    %rax,0x30(%r15)
    2359:	44 89 e7             	mov    %r12d,%edi
    235c:	e8 4f ed ff ff       	call   10b0 <close@plt>
    2361:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2366:	e9 7b ff ff ff       	jmp    22e6 <submitr+0x679>
    236b:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    2372:	3a 20 52 
    2375:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    237c:	20 73 74 
    237f:	49 89 07             	mov    %rax,(%r15)
    2382:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2386:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    238d:	63 6f 6e 
    2390:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2397:	20 61 6e 
    239a:	49 89 47 10          	mov    %rax,0x10(%r15)
    239e:	49 89 57 18          	mov    %rdx,0x18(%r15)
    23a2:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    23a9:	67 61 6c 
    23ac:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    23b3:	6e 70 72 
    23b6:	49 89 47 20          	mov    %rax,0x20(%r15)
    23ba:	49 89 57 28          	mov    %rdx,0x28(%r15)
    23be:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    23c5:	6c 65 20 
    23c8:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    23cf:	63 74 65 
    23d2:	49 89 47 30          	mov    %rax,0x30(%r15)
    23d6:	49 89 57 38          	mov    %rdx,0x38(%r15)
    23da:	41 c7 47 3f 65 72 2e 	movl   $0x2e7265,0x3f(%r15)
    23e1:	00 
    23e2:	44 89 e7             	mov    %r12d,%edi
    23e5:	e8 c6 ec ff ff       	call   10b0 <close@plt>
    23ea:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    23ef:	e9 f2 fe ff ff       	jmp    22e6 <submitr+0x679>

00000000000023f4 <init_timeout>:
    23f4:	85 ff                	test   %edi,%edi
    23f6:	75 01                	jne    23f9 <init_timeout+0x5>
    23f8:	c3                   	ret
    23f9:	53                   	push   %rbx
    23fa:	89 fb                	mov    %edi,%ebx
    23fc:	48 8d 35 75 f7 ff ff 	lea    -0x88b(%rip),%rsi        # 1b78 <sigalrm_handler>
    2403:	bf 0e 00 00 00       	mov    $0xe,%edi
    2408:	e8 e3 ec ff ff       	call   10f0 <signal@plt>
    240d:	85 db                	test   %ebx,%ebx
    240f:	b8 00 00 00 00       	mov    $0x0,%eax
    2414:	0f 49 c3             	cmovns %ebx,%eax
    2417:	89 c7                	mov    %eax,%edi
    2419:	e8 82 ec ff ff       	call   10a0 <alarm@plt>
    241e:	5b                   	pop    %rbx
    241f:	c3                   	ret

0000000000002420 <init_driver>:
    2420:	41 54                	push   %r12
    2422:	55                   	push   %rbp
    2423:	53                   	push   %rbx
    2424:	48 83 ec 10          	sub    $0x10,%rsp
    2428:	48 89 fd             	mov    %rdi,%rbp
    242b:	be 01 00 00 00       	mov    $0x1,%esi
    2430:	bf 0d 00 00 00       	mov    $0xd,%edi
    2435:	e8 b6 ec ff ff       	call   10f0 <signal@plt>
    243a:	be 01 00 00 00       	mov    $0x1,%esi
    243f:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2444:	e8 a7 ec ff ff       	call   10f0 <signal@plt>
    2449:	be 01 00 00 00       	mov    $0x1,%esi
    244e:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2453:	e8 98 ec ff ff       	call   10f0 <signal@plt>
    2458:	ba 00 00 00 00       	mov    $0x0,%edx
    245d:	be 01 00 00 00       	mov    $0x1,%esi
    2462:	bf 02 00 00 00       	mov    $0x2,%edi
    2467:	e8 54 ed ff ff       	call   11c0 <socket@plt>
    246c:	85 c0                	test   %eax,%eax
    246e:	0f 88 84 00 00 00    	js     24f8 <init_driver+0xd8>
    2474:	89 c3                	mov    %eax,%ebx
    2476:	48 8d 3d 0f 10 00 00 	lea    0x100f(%rip),%rdi        # 348c <array.0+0x2fc>
    247d:	e8 7e ec ff ff       	call   1100 <gethostbyname@plt>
    2482:	48 85 c0             	test   %rax,%rax
    2485:	0f 84 ba 00 00 00    	je     2545 <init_driver+0x125>
    248b:	49 89 e4             	mov    %rsp,%r12
    248e:	48 c7 44 24 02 00 00 	movq   $0x0,0x2(%rsp)
    2495:	00 00 
    2497:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    249e:	00 00 
    24a0:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    24a6:	48 63 50 14          	movslq 0x14(%rax),%rdx
    24aa:	48 8b 40 18          	mov    0x18(%rax),%rax
    24ae:	48 8b 30             	mov    (%rax),%rsi
    24b1:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    24b6:	e8 95 ec ff ff       	call   1150 <memmove@plt>
    24bb:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
    24c2:	ba 10 00 00 00       	mov    $0x10,%edx
    24c7:	4c 89 e6             	mov    %r12,%rsi
    24ca:	89 df                	mov    %ebx,%edi
    24cc:	e8 bf ec ff ff       	call   1190 <connect@plt>
    24d1:	85 c0                	test   %eax,%eax
    24d3:	0f 88 d1 00 00 00    	js     25aa <init_driver+0x18a>
    24d9:	89 df                	mov    %ebx,%edi
    24db:	e8 d0 eb ff ff       	call   10b0 <close@plt>
    24e0:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    24e6:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    24ea:	b8 00 00 00 00       	mov    $0x0,%eax
    24ef:	48 83 c4 10          	add    $0x10,%rsp
    24f3:	5b                   	pop    %rbx
    24f4:	5d                   	pop    %rbp
    24f5:	41 5c                	pop    %r12
    24f7:	c3                   	ret
    24f8:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    24ff:	3a 20 43 
    2502:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2509:	20 75 6e 
    250c:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2510:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2514:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    251b:	74 6f 20 
    251e:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    2525:	65 20 73 
    2528:	48 89 45 10          	mov    %rax,0x10(%rbp)
    252c:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2530:	48 b8 20 73 6f 63 6b 	movabs $0x74656b636f7320,%rax
    2537:	65 74 00 
    253a:	48 89 45 1e          	mov    %rax,0x1e(%rbp)
    253e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2543:	eb aa                	jmp    24ef <init_driver+0xcf>
    2545:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    254c:	3a 20 44 
    254f:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    2556:	20 75 6e 
    2559:	48 89 45 00          	mov    %rax,0x0(%rbp)
    255d:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    2561:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2568:	74 6f 20 
    256b:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    2572:	76 65 20 
    2575:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2579:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    257d:	48 b8 20 73 65 72 76 	movabs $0x2072657672657320,%rax
    2584:	65 72 20 
    2587:	48 ba 61 64 64 72 65 	movabs $0x73736572646461,%rdx
    258e:	73 73 00 
    2591:	48 89 45 1f          	mov    %rax,0x1f(%rbp)
    2595:	48 89 55 27          	mov    %rdx,0x27(%rbp)
    2599:	89 df                	mov    %ebx,%edi
    259b:	e8 10 eb ff ff       	call   10b0 <close@plt>
    25a0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25a5:	e9 45 ff ff ff       	jmp    24ef <init_driver+0xcf>
    25aa:	48 8d 15 db 0e 00 00 	lea    0xedb(%rip),%rdx        # 348c <array.0+0x2fc>
    25b1:	48 8d 35 90 0e 00 00 	lea    0xe90(%rip),%rsi        # 3448 <array.0+0x2b8>
    25b8:	48 89 ef             	mov    %rbp,%rdi
    25bb:	b8 00 00 00 00       	mov    $0x0,%eax
    25c0:	e8 ab eb ff ff       	call   1170 <sprintf@plt>
    25c5:	89 df                	mov    %ebx,%edi
    25c7:	e8 e4 ea ff ff       	call   10b0 <close@plt>
    25cc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25d1:	e9 19 ff ff ff       	jmp    24ef <init_driver+0xcf>

00000000000025d6 <driver_post>:
    25d6:	53                   	push   %rbx
    25d7:	4c 89 c3             	mov    %r8,%rbx
    25da:	85 c9                	test   %ecx,%ecx
    25dc:	75 17                	jne    25f5 <driver_post+0x1f>
    25de:	48 85 ff             	test   %rdi,%rdi
    25e1:	74 05                	je     25e8 <driver_post+0x12>
    25e3:	80 3f 00             	cmpb   $0x0,(%rdi)
    25e6:	75 31                	jne    2619 <driver_post+0x43>
    25e8:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    25ed:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    25f1:	89 c8                	mov    %ecx,%eax
    25f3:	5b                   	pop    %rbx
    25f4:	c3                   	ret
    25f5:	48 89 d6             	mov    %rdx,%rsi
    25f8:	48 8d 3d a5 0e 00 00 	lea    0xea5(%rip),%rdi        # 34a4 <array.0+0x314>
    25ff:	b8 00 00 00 00       	mov    $0x0,%eax
    2604:	e8 87 ea ff ff       	call   1090 <printf@plt>
    2609:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    260e:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2612:	b8 00 00 00 00       	mov    $0x0,%eax
    2617:	eb da                	jmp    25f3 <driver_post+0x1d>
    2619:	41 50                	push   %r8
    261b:	52                   	push   %rdx
    261c:	4c 8d 0d 98 0e 00 00 	lea    0xe98(%rip),%r9        # 34bb <array.0+0x32b>
    2623:	49 89 f0             	mov    %rsi,%r8
    2626:	48 89 f9             	mov    %rdi,%rcx
    2629:	48 8d 15 93 0e 00 00 	lea    0xe93(%rip),%rdx        # 34c3 <array.0+0x333>
    2630:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
    2635:	48 8d 3d 50 0e 00 00 	lea    0xe50(%rip),%rdi        # 348c <array.0+0x2fc>
    263c:	e8 2c f6 ff ff       	call   1c6d <submitr>
    2641:	48 83 c4 10          	add    $0x10,%rsp
    2645:	eb ac                	jmp    25f3 <driver_post+0x1d>

Disassembly of section .fini:

0000000000002648 <_fini>:
    2648:	48 83 ec 08          	sub    $0x8,%rsp
    264c:	48 83 c4 08          	add    $0x8,%rsp
    2650:	c3                   	ret

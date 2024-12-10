Dump of assembler code for function test:
   0x0000000000401968 <+0>:     sub    $0x8,%rsp
   0x000000000040196c <+4>:     mov    $0x0,%eax
   0x0000000000401971 <+9>:     callq  0x4017a8 <getbuf>
   0x0000000000401976 <+14>:    mov    %eax,%edx
   0x0000000000401978 <+16>:    mov    $0x403188,%esi
   0x000000000040197d <+21>:    mov    $0x1,%edi
   0x0000000000401982 <+26>:    mov    $0x0,%eax
   0x0000000000401987 <+31>:    callq  0x400df0 <__printf_chk@plt>
   0x000000000040198c <+36>:    add    $0x8,%rsp
   0x0000000000401990 <+40>:    retq   
End of assembler dump.

Dump of assembler code for function getbuf:
   0x00000000004017a8 <+0>:     sub    $0x28,%rsp
   0x00000000004017ac <+4>:     mov    %rsp,%rdi
   0x00000000004017af <+7>:     callq  0x401a40 <Gets>
   0x00000000004017b4 <+12>:    mov    $0x1,%eax
   0x00000000004017b9 <+17>:    add    $0x28,%rsp
   0x00000000004017bd <+21>:    retq   
End of assembler dump.

Dump of assembler code for function touch1:
   0x00000000004017c0 <+0>:     sub    $0x8,%rsp
   0x00000000004017c4 <+4>:     movl   $0x1,0x202d0e(%rip)        # 0x6044dc <vlevel>
   0x00000000004017ce <+14>:    mov    $0x4030c5,%edi
   0x00000000004017d3 <+19>:    callq  0x400cc0 <puts@plt>
   0x00000000004017d8 <+24>:    mov    $0x1,%edi
   0x00000000004017dd <+29>:    callq  0x401c8d <validate>
   0x00000000004017e2 <+34>:    mov    $0x0,%edi
   0x00000000004017e7 <+39>:    callq  0x400e40 <exit@plt>
End of assembler dump.

Dump of assembler code for function touch2:
   0x00000000004017ec <+0>:     sub    $0x8,%rsp
   0x00000000004017f0 <+4>:     mov    %edi,%edx
   0x00000000004017f2 <+6>:     movl   $0x2,0x202ce0(%rip)        # 0x6044dc <vlevel>
   0x00000000004017fc <+16>:    cmp    0x202ce2(%rip),%edi        # 0x6044e4 <cookie>
   0x0000000000401802 <+22>:    jne    0x401824 <touch2+56>
   0x0000000000401804 <+24>:    mov    $0x4030e8,%esi
   0x0000000000401809 <+29>:    mov    $0x1,%edi
   0x000000000040180e <+34>:    mov    $0x0,%eax
   0x0000000000401813 <+39>:    callq  0x400df0 <__printf_chk@plt>
   0x0000000000401818 <+44>:    mov    $0x2,%edi
   0x000000000040181d <+49>:    callq  0x401c8d <validate>
   0x0000000000401822 <+54>:    jmp    0x401842 <touch2+86>
   0x0000000000401824 <+56>:    mov    $0x403110,%esi
   0x0000000000401829 <+61>:    mov    $0x1,%edi
   0x000000000040182e <+66>:    mov    $0x0,%eax
   0x0000000000401833 <+71>:    callq  0x400df0 <__printf_chk@plt>
   0x0000000000401838 <+76>:    mov    $0x2,%edi
   0x000000000040183d <+81>:    callq  0x401d4f <fail>
   0x0000000000401842 <+86>:    mov    $0x0,%edi
   0x0000000000401847 <+91>:    callq  0x400e40 <exit@plt>
End of assembler dump.

Dump of assembler code for function touch3:
   0x00000000004018fa <+0>:     push   %rbx
   0x00000000004018fb <+1>:     mov    %rdi,%rbx
   0x00000000004018fe <+4>:     movl   $0x3,0x202bd4(%rip)        # 0x6044dc <vlevel>
   0x0000000000401908 <+14>:    mov    %rdi,%rsi
   0x000000000040190b <+17>:    mov    0x202bd3(%rip),%edi        # 0x6044e4 <cookie>
   0x0000000000401911 <+23>:    callq  0x40184c <hexmatch>
   0x0000000000401916 <+28>:    test   %eax,%eax
   0x0000000000401918 <+30>:    je     0x40193d <touch3+67>
   0x000000000040191a <+32>:    mov    %rbx,%rdx
   0x000000000040191d <+35>:    mov    $0x403138,%esi
   0x0000000000401922 <+40>:    mov    $0x1,%edi
   0x0000000000401927 <+45>:    mov    $0x0,%eax
   0x000000000040192c <+50>:    callq  0x400df0 <__printf_chk@plt>
   0x0000000000401931 <+55>:    mov    $0x3,%edi
   0x0000000000401936 <+60>:    callq  0x401c8d <validate>
   0x000000000040193b <+65>:    jmp    0x40195e <touch3+100>
   0x000000000040193d <+67>:    mov    %rbx,%rdx
   0x0000000000401940 <+70>:    mov    $0x403160,%esi
   0x0000000000401945 <+75>:    mov    $0x1,%edi
   0x000000000040194a <+80>:    mov    $0x0,%eax
   0x000000000040194f <+85>:    callq  0x400df0 <__printf_chk@plt>
   0x0000000000401954 <+90>:    mov    $0x3,%edi
   0x0000000000401959 <+95>:    callq  0x401d4f <fail>
   0x000000000040195e <+100>:   mov    $0x0,%edi
   0x0000000000401963 <+105>:   callq  0x400e40 <exit@plt>
End of assembler dump.

Dump of assembler code for function getval_142:
   0x000000000040199a <+0>:     mov    $0x909078fb,%eax
   0x000000000040199f <+5>:     retq   
End of assembler dump.

Dump of assembler code for function addval_273:
   0x00000000004019a0 <+0>:     lea    -0x3c3876b8(%rdi),%eax
   0x00000000004019a6 <+6>:     retq   
End of assembler dump.

Dump of assembler code for function addval_219:
   0x00000000004019a7 <+0>:     lea    -0x6fa78caf(%rdi),%eax
   0x00000000004019ad <+6>:     retq   
End of assembler dump.

Dump of assembler code for function setval_237:
   0x00000000004019ae <+0>:     movl   $0xc7c78948,(%rdi)
   0x00000000004019b4 <+6>:     retq   
End of assembler dump.

Dump of assembler code for function setval_424:
   0x00000000004019b5 <+0>:     movl   $0x9258c254,(%rdi)
   0x00000000004019bb <+6>:     retq   
End of assembler dump.

Dump of assembler code for function setval_470:
   0x00000000004019bc <+0>:     movl   $0xc78d4863,(%rdi)
   0x00000000004019c2 <+6>:     retq   
End of assembler dump.

Dump of assembler code for function setval_426:
   0x00000000004019c3 <+0>:     movl   $0x90c78948,(%rdi)
   0x00000000004019c9 <+6>:     retq   
End of assembler dump.

Dump of assembler code for function getval_280:
   0x00000000004019ca <+0>:     mov    $0xc3905829,%eax
   0x00000000004019cf <+5>:     retq   
End of assembler dump.

Dump of assembler code for function add_xy:
   0x00000000004019d6 <+0>:     lea    (%rdi,%rsi,1),%rax
   0x00000000004019da <+4>:     retq   
End of assembler dump.

Dump of assembler code for function getval_481:
   0x00000000004019db <+0>:     mov    $0x90c2895c,%eax
   0x00000000004019e0 <+5>:     retq   
End of assembler dump.

Dump of assembler code for function setval_296:
   0x00000000004019e1 <+0>:     movl   $0x9090d199,(%rdi)
   0x00000000004019e7 <+6>:     retq   
End of assembler dump.

Dump of assembler code for function addval_113:
   0x00000000004019e8 <+0>:     lea    -0x36873177(%rdi),%eax
   0x00000000004019ee <+6>:     retq   
End of assembler dump.

Dump of assembler code for function addval_490:
   0x00000000004019ef <+0>:     lea    -0x24df2e73(%rdi),%eax
   0x00000000004019f5 <+6>:     retq   
End of assembler dump.

Dump of assembler code for function getval_226:
   0x00000000004019f6 <+0>:     mov    $0xc048d189,%eax
   0x00000000004019fb <+5>:     retq   
End of assembler dump.

Dump of assembler code for function setval_384:
   0x00000000004019fc <+0>:     movl   $0xc084d181,(%rdi)
   0x0000000000401a02 <+6>:     retq   
End of assembler dump.

Dump of assembler code for function addval_190:
   0x0000000000401a03 <+0>:     lea    -0x1f76b7bf(%rdi),%eax
   0x0000000000401a09 <+6>:     retq   
End of assembler dump.

Dump of assembler code for function setval_276:
   0x0000000000401a0a <+0>:     movl   $0xc908c288,(%rdi)
   0x0000000000401a10 <+6>:     retq   
End of assembler dump.

Dump of assembler code for function addval_436:
   0x0000000000401a11 <+0>:     lea    -0x6f6f3177(%rdi),%eax
   0x0000000000401a17 <+6>:     retq   
End of assembler dump.

Dump of assembler code for function getval_345:
   0x0000000000401a18 <+0>:     mov    $0xc1e08948,%eax
   0x0000000000401a1d <+5>:     retq   
End of assembler dump.

Dump of assembler code for function addval_479:
   0x0000000000401a1e <+0>:     lea    -0x36ff3d77(%rdi),%eax
   0x0000000000401a24 <+6>:     retq   
End of assembler dump.

Dump of assembler code for function addval_187:
   0x0000000000401a25 <+0>:     lea    -0x3fc73177(%rdi),%eax
   0x0000000000401a2b <+6>:     retq   
End of assembler dump.

Dump of assembler code for function setval_248:
   0x0000000000401a2c <+0>:     movl   $0xdb08ce81,(%rdi)
   0x0000000000401a32 <+6>:     retq   
End of assembler dump.

Dump of assembler code for function getval_159:
   0x0000000000401a33 <+0>:     mov    $0xc938d189,%eax
   0x0000000000401a38 <+5>:     retq   
End of assembler dump.

Dump of assembler code for function addval_110:
   0x0000000000401a39 <+0>:     lea    -0x3c1f7638(%rdi),%eax
   0x0000000000401a3f <+6>:     retq   
End of assembler dump.

Dump of assembler code for function addval_487:
   0x0000000000401a40 <+0>:     lea    -0x3f7b3d77(%rdi),%eax
   0x0000000000401a46 <+6>:     retq   
End of assembler dump.

Dump of assembler code for function addval_201:
   0x0000000000401a47 <+0>:     lea    -0x381f76b8(%rdi),%eax
   0x0000000000401a4d <+6>:     retq   
End of assembler dump.

Dump of assembler code for function getval_272:
   0x0000000000401a4e <+0>:     mov    $0xd208d199,%eax
   0x0000000000401a53 <+5>:     retq   
End of assembler dump.

Dump of assembler code for function getval_155:
   0x0000000000401a54 <+0>:     mov    $0xc9c4c289,%eax
   0x0000000000401a59 <+5>:     retq   
End of assembler dump.

Dump of assembler code for function setval_299:
   0x0000000000401a5a <+0>:     movl   $0x91e08948,(%rdi)
   0x0000000000401a60 <+6>:     retq   
End of assembler dump.

Dump of assembler code for function addval_404:
   0x0000000000401a61 <+0>:     lea    -0x3c6d3177(%rdi),%eax
   0x0000000000401a67 <+6>:     retq   
End of assembler dump.

Dump of assembler code for function getval_311:
   0x0000000000401a68 <+0>:     mov    $0xdb08d189,%eax
   0x0000000000401a6d <+5>:     retq   
End of assembler dump.

Dump of assembler code for function setval_167:
   0x0000000000401a6e <+0>:     movl   $0xc391d189,(%rdi)
   0x0000000000401a74 <+6>:     retq   
End of assembler dump.

Dump of assembler code for function setval_328:
   0x0000000000401a75 <+0>:     movl   $0xd238c281,(%rdi)
   0x0000000000401a7b <+6>:     retq   
End of assembler dump.

Dump of assembler code for function setval_450:
   0x0000000000401a7c <+0>:     movl   $0xc908ce09,(%rdi)
   0x0000000000401a82 <+6>:     retq   
End of assembler dump.

Dump of assembler code for function addval_358:
   0x0000000000401a83 <+0>:     lea    -0x6f1f76f8(%rdi),%eax
   0x0000000000401a89 <+6>:     retq   
End of assembler dump.

Dump of assembler code for function addval_124:
   0x0000000000401a8a <+0>:     lea    0x3cc7c289(%rdi),%eax
   0x0000000000401a90 <+6>:     retq   
End of assembler dump.

Dump of assembler code for function getval_169:
   0x0000000000401a91 <+0>:     mov    $0xc020ce88,%eax
   0x0000000000401a96 <+5>:     retq   
End of assembler dump.

Dump of assembler code for function setval_181:
   0x0000000000401a97 <+0>:     movl   $0xc2e08948,(%rdi)
   0x0000000000401a9d <+6>:     retq   
End of assembler dump.

Dump of assembler code for function addval_184:
   0x0000000000401a9e <+0>:     lea    -0x2d9f3d77(%rdi),%eax
   0x0000000000401aa4 <+6>:     retq   
End of assembler dump.

Dump of assembler code for function getval_472:
   0x0000000000401aa5 <+0>:     mov    $0xd220ce8d,%eax
   0x0000000000401aaa <+5>:     retq   
End of assembler dump.

Dump of assembler code for function setval_350:
   0x0000000000401aab <+0>:     movl   $0x90e08948,(%rdi)
   0x0000000000401ab1 <+6>:     retq   
End of assembler dump.
//
//  fromChristianToBinary.swift
//  WheniOSmeetsAssembly
//
//  Created by Juan Manuel Moreno on 18/10/24.
//

#ifdef __arm64__

    .global _perform
    .align 4

_perform:
    .cfi_startproc
    sub     sp, sp, #16
    .cfi_def_cfa_offset 16
    dup         v0.2d, x0
    cnt         v0.16b, v0.16b
    fmov        x0, v0.d[1]
    cset        w8, vs
    str         x0, [sp, #8]
    str         w8, [sp, #4]
    b.vs        LBB1_2
    ldr         x0, [sp, #8]
    add         sp, sp, #16
    ret
LBB1_2:
    brk     #0x1
    .cfi_endproc

#endif

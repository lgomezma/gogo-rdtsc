#include "textflag.h"

// func StartTime() uint64
TEXT ·StartTime(SB),NOSPLIT, $0-8
    CPUID
    RDTSC
    SHLQ $32, DX
    ADD DX, AX
    MOVQ AX, ret+0(FP)
    RET

// func EndTime() uint64
TEXT ·EndTime(SB),NOSPLIT, $0-8
    BYTE $0x0F
    BYTE $0x01
    BYTE $0xF9
    SHLQ $32, DX
    ADDQ DX, AX
    MOVQ AX, ret+0(FP)
    RET



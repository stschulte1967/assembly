@ P = Q + R + S
@ Q = 2, R = 4, S = 5

        .equ    P,  0
        .equ    Q,  4
        .equ    R,  8
        .equ    S, 12

        .global main
main:
        ADRL    R4, Vals
        LDR     R1, [R4, #Q]
        LDR     R2, [R4, #R]
        LDR     R3, [R4, #S]

        ADD     R0, R1, R2
        ADD     R0, R0, R3

        MOV     R7, #1
        SVC     0


Vals:   .space  4
        .word   2
        .word   4
        .word   5
        .align

        .end

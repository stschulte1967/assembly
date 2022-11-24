@ P = Q + R + S
@ Q = 2, R = 4, S = 5

P:      .space  4   @ Reserve 4 words in memory
Q:      .word   2   @ create a variable Q with value 2
R:      .word   4   @ create a variable R with value 4
S:      .word   5   @ create a variable S with value 5

        .global main

main:

        LDR R1, Q
        LDR R2, R
        LDR R3, S

        ADD R0, R1, R2
        ADD R0, R0, R3

        MOV R7, #1
        SVC 0
        .end


START:
    LOADI R1, 0x0 ;initial memory address
    LOADI R2, 0x9 ;counter to decrement each loop, runs 9 times
    LOADI R3, 0x5 ;constant to be multiplied by
    LOADI R4, 0x1;;register to shift by, adds 1 each loop
    LOADI R5, 0x1; constant to subtract

LOOP:
    SHFT R3, R3, R4
    STORE R3, [R1 + 0x0]
    ADDI R1, R1, 0x1
    SUB R2, R2, R5
    BEQ END
    B LOOP

END:
    HALT
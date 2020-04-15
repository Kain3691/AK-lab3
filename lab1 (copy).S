.global lab1
.syntax unified
#define A #11
#define B #1
#define C #3
lab2:
    push {lr}
    // calculate
    mov r0, A
    mov r1, B
    sub r2, r0, r1
    cmp r2, #0
    it ge
    addge r2, r1, r0

    mov r3, C
    sdiv r2, r3
    pop {pc}

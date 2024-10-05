    .section .data
    .section .text
    .global __main
    .type __main, %function

__main:
    MOV r0, #1        // r0 = result
    MOV r1, #5        // r1 = n
    MOV r2, #1        // r2 = i = 1

loop:
    CMP r2, r1        // Compare i and n
    BGT stop          // If i > n, branch to stop

    MUL r0, r0, r2    // result *= i
    ADD r2, r2, #1    // i++

    B loop            // Repeat loop

stop:
    B stop            // Infinite loop (for debugging)

    // Optionally return r0, or handle termination here

    .end
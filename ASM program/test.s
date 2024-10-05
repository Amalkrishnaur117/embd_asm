    AREA factorial, CODE, READONLY
    EXPORT __main
    ENTRY

__main PROC
    MOV R0, #1      ; Result (factorial)
    MOV R1, #5      ; Number to calculate factorial of
    MOV R2, #1      ; Loop counter

loop
    CMP R2, R1      ; Compare counter with the number
    BGT stop        ; If counter > number, exit loop
    MULS R0, R2, R0 ; R0 = R0 * R2 (calculate factorial)
    ADD R2, R2, #1  ; Increment counter
    B loop          ; Repeat loop

stop
    B stop          ; Infinite loop (can replace with return or exit code)

ENDP
END

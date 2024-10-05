	AREA countDigits, CODE, READONLY
	EXPORT __main
    ENTRY
__main PROC

    LDR r0, =123456      ; Load the integer number into r0
    MOV r1, #0           ; Initialize count to 0
    MOV r2, #10          ; Set r2 to 10

loop
    CBZ r0, stop         ; If r0 is 0, stop
    SDIV r0, r0, r2      ; Divide r0 by 10
    ADD r1, r1, #1       ; Increment count
    B loop               ; Loop again

stop
    B stop               ; Infinite loop to stop

    ENDP
    END
	AREA parity, CODE, READONLY
	EXPORT __main
    ENTRY
__main PROC

    MOVS r0, #11         ; number to be checked
    MOVS r1, #0          ; parity

loop
    CBZ r0, stop         ; branch to stop if zero
    CMP r1, #0           ; compare parity with 0
    MOVEQ r1, #1         ; if r1 == 0, set it to 1
    MOVNE r1, #0         ; if r1 != 0, clear it
    SUBS r2, r0, #1      ; r2 = r0 - 1
    ANDS r0, r0, r2      ; r0 = r0 & (r0 - 1)
    B loop               ; loop again

stop
    B stop               ; infinite loop to stop

    ENDP	
    END

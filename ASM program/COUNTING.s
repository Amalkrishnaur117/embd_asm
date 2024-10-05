    AREA Count_Ones, CODE, READONLY
    EXPORT __main
    ALIGN
	ENTRY

__main PROC 
	LDR r0,=0xAAAAAAAA
	MOV r1,r0,LSR #31

loop 
    MOVS r0, r0, LSL #2  ; Logical shift left by 1 to process the next bit
    ; Check if r0 is zero
	ADC r1,r1,r0,LSR #31; Compare r0 with 0
    BNE loop             ; If not zero, repeat the loop

stop 
    B stop               ; Infinite loop to stop execution

ENDP 
END

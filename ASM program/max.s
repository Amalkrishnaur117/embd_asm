    AREA myData, DATA 
    ALIGN 
array DCD -1, 5, 3, 8, 10, 23, 6, 5, 2, -10  ; Use valid integers
size DCD 10 

    AREA findMax, CODE 
    EXPORT __main 
    ALIGN 
    ENTRY 

__main PROC 
    ; Identify the array size 
    LDR r3, =size          ; Load address of size
    LDR r3, [r3]          ; Load the array size (10)
    SUB r3, r3, #1        ; Adjust size for zero-based index
    
    ; Initialize max value and location 
    LDR r4, =array        ; Load address of array
    LDR r0, [r4]          ; Load first element of the array into r0 (max value)
    MOV r1, #0            ; Initialize r1 (location of max) to 0

    ; Loop over the array 
    MOV r2, #1            ; Initialize loop index i to 1 (start from the second element)
loop
    CMP r2, r3            ; Compare i with size
    BGE stop              ; Stop if i > size

    LDR r5, [r4, r2, LSL #2] ; Load array[i] into r5
    CMP r5, r0            ; Compare array[i] with current max
    MOVGT r0, r5          ; Update max value if array[i] > max
    MOVGT r1, r2          ; Update location of max if new max found

    ADD r2, r2, #1        ; Increment index i
    B loop                ; Repeat the loop

stop
    B stop                ; Infinite loop to stop execution

ENDP 
END

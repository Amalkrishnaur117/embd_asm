AREA factorial, CODE, READONLY
EXPORT _main  
ENTRY
_main PROC
MOV r0, #1 ; re = result
MOV rl, #5 , rl = n
MOV r2, #1 ; r2 = i = 1
loop CMP r2, rl ; compare i and n J
BGT stop 
MULS r0, r2, r0 ; result *= i
ADD r2, r2, #1 ; i++
B loop
stop B stop
ENDP
END 
include emu8086.inc
.model small
.stack 100h
.data


 fib db 1000 dup(?)
 a dw 0
 b dw 1
 
 
.code
main proc 
    
    mov ax, @data
    mov ds, ax
    
    mov cx, 6
    
    mov si, 2
    
    mov fib[0], 0
    mov fib[1], 1
    
    step:
        mov di, b
        mov bl, fib[di]        
        mov di, a
        add bl, fib[di]
        mov fib[si], bl
        inc b        
        inc si        
        inc a       
        loop step
     
    mov ah, 1
    int 21h
    
    printn
    
    
    mov bl, al
    sub bl, 30h

    mov si, bx
   
    
    mov bl, fib[si]
    add bl, 30h
    mov ah, 2
    mov dl, bl
    int 21h
   
        main endp
end main

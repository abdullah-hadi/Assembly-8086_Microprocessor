include emu8086.inc
.model small
.stack 100h
.data
.code 
main proc
    mov cx, 0h
    mov ah, 1
    int 21h
    mov bl, al
    
    mov cl, bl
    sub cl, 48
    printn
    
    mov ah, 1
    int 21h
    mov bh, al
    sub bh, 48
    
    
    
    printn
    
    
    cmp bh, 1h
    JE ascending
    
    step1:
        mov bh, cl
        add bh, 48
        mov dl, bh
        mov ah, 2
        
        int 21h
        print " "
        loop step1  
        jmp next
    
     ascending:
        step:
            mov dl, al
            mov ah, 2
            int 21h
            inc al
            print " "
            loop step
    
    next:
        main endp

end main

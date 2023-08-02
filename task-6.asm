include emu8086.inc
.model small
.stack 100h
.data 
    
    arr db 1000 dup(?)
    
.code 
main proc
    mov ax, @data
    mov ds, ax
    
    
    mov cx, 0h
    mov ah, 1
    int 21h
    mov bl, al
    
    mov cl, bl
    sub cl, 48
    
    mov si, 0
    printn
    
    step:
        mov ah, 1
        int 21h
        mov arr[si], al
        inc si
        print " "
        loop step
        
        
        
     mov bh, 0h
     
     mov si, 0
     
     mov cl, bl
     sub cl, 48
     
     loop1:
        cmp bh, arr[si]
        jae incre
        
        mov bh, arr[si]
        
        
        
        incre:
            inc si
            loop loop1
            
     output:
      
      printn
      mov dl, bh
      mov ah, 2
      int 21h
    
    exit:
        main endp

end main
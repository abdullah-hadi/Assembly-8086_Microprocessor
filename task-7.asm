include emu8086.inc

.model small
.stack 100h
.data
    a dw ?
    arr db 1000 dup(?)
    
.code

main proc
    MOV ax, @data
    MOV ds, ax
    
    MOV ah, 1
    int 21h
    mov bl, al
    mov a, bx
    mov cx, a
    sub cx, 30h
    
    
    mov si, 0
    printn
    
    step:
       mov ah, 1
       int 21h
       mov arr[si], al
       sub arr[si], 30h
       inc si
       print " "
       loop step
       
    printn
    
    mov cx, a
    sub cx, 30h
    mov si, 00
    
    sort:
    cmp cx, si
    jz NEXT
    
    mov al, arr[si]
    mov bl, arr[si+1]
    cmp al, bl
    ja excng
    inc si
    jmp sort
    
    excng:
    mov arr[si], bl
    mov arr[si+1], al
    inc si
    jmp Sort
    
    NEXT:
    mov si, 00
    dec cx
    cmp cx, 0
    jnz Sort
    
    
    mov cx,a 
    sub cx, 30h
    mov si, 1
    
    step1:
    add arr[si], 30h
    mov dl, arr[si]
    mov ah, 2
    int 21h
    inc si
    print " "
    loop step1
     
    main endp                 
     
end main
            
       
      
        
include emu8086.inc

.model small
.stack 100h
.data

x db ?
.code
main proc 
    mov ax,@data
    mov ds,ax
    
    
    
    
    mov ah,1
    int 21h
    print " "
    add x,al
    sub x,30h
    int 21h
    print " " 
    add x,al
    sub x,30h
    int 21h 
    print " " 
    add x,al
    sub x,30h
    add x,30h 
    printn
    
    
    mov ah,2
    mov dl,x
    int 21h
    
    
    
    
    
    
    main endp
        
        
        
 end main
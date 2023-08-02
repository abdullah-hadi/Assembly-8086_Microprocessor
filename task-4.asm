include emu8086.inc

.model small
.stack 100h
.data

x db ?
y db ?
.code
main proc 
    mov ax,@data
    mov ds,ax
    
    
    
   mov ah,1
   int 21h
   print " "
   mov bh,al
   sub bh,30h
   int 21h 
   printn
   mov bl,al
   sub bl,30h 
   int 21h
   
   mov cl,al 
   sub cl,30h
   printn
   
   CMP cl,1h
   JNE next 
   
    mov ah,2
    add bl,bh 
    add bl,30h
    
    mov dl,bl
    
    int 21h
   
   
    
   JMP end 
    next:
    mov ah,2
    
    sub bh,bl 
    add bh,30h
    
    
    mov dl,bh
    int 21h
   end: 
     
      
      
      
    main endp
        
        
        
 end main
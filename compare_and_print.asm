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
   mov x,al
   int 21h  
   printn
   mov y,al
   
   mov bh,y
   mov bl,x
   CMP bl,bh
   JA next 
   JE eq 
   mov ah,2
    mov dl,y
    int 21h
    
   
   
    
   JMP end 
    next:
    mov ah,2
    mov dl,x
    int 21h
   end: 
     JMP end2
      eq:
      print "same" 
      end2:
      
      
      
    main endp
        
        
        
 end main

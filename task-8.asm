include emu8086.inc

.model small
.stack 100h
.data
 
  dup1 db 100 dup(0h)
  
  a db ? 
  b dw ? 
  c db ?
  temp db ?
  
  arr db 1000 dup(?)  
  
  
.code

 main proc 
    
    mov ax, @data
    mov ds, ax
    
    mov cx,0
    mov si,0 
    
    mov ah,1
    int 21h
    
    mov c,al
    sub c,48
    mov cl,c
    
    
    
     
    printn
    
    step:
          
    mov ah,1
    int 21h
    mov arr[si],al    
    
    mov bl,al
    mov bh,0
    mov di,bx  
    
    
    sub di,48 
    
    inc dup1[di]
    
    inc si  
    
    print " "
    
    loop step
    
    mov cl,10
    mov si,0
    
    
    printn
    
    mov b,0 
    
    step1:   
     
    mov a,0     
    mov bl,dup1[si]
    add bl,48 
    
    
    cmp bl,50 
    
    jae max
    jmp incre
    
    max:  
    
        mov bx,si 
        add bl,48 
        mov ah,2
        mov dl,bl
        int 21h
        inc a
        inc b
       
    
    incre:
        inc si
     
        cmp a,0
    
        ja next
        jmp end
                
        next:
            print " "
            
        end:  
    
    loop step1    
    cmp b,0
    ja fn
    
    print "No duplicate"
    
    
    fn:
    
    
 main endp  
 
end main
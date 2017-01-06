data segment
    hello db "hello","$"
   
data ends
     
code segment
start:
    assume cs:code, ds: data   
    mov ax, data
    mov ds, ax 
    ;ввод символа
    mov ah, 07
    int 21h 
    ;символ в число
    sub al, 30h
    mov cl, al
   
    mloop: mov ah, 9
    lea dx, hello
    int 21h
    loop mloop
    ;DOS функция выхода из программы
    mov ax, 4c00h
    int 21h
code ends
end start

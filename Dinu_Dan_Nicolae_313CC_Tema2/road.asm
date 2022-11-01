%include "../include/io.mac"

struc point
    .x: resw 1
    .y: resw 1
endstruc

section .text
    global road
    extern printf

road:
    ;; DO NOT MODIFY
    push ebp
    mov ebp, esp
    pusha

    mov eax, [ebp + 8]      ; points
    mov ecx, [ebp + 12]     ; len
    mov ebx, [ebp + 16]     ; distances
    ;; DO NOT MODIFY
   
    ;; Your code starts here

mov edx, 0 ;;index

mov ecx, [ebp + 12]
mov eax, 4
mul ecx ;;make 4*size
mov ecx, eax
mov eax, [ebp + 8]
;sub ecx,4
mov [ebp - 4], ecx

while:
    mov ecx, [ebp - 4]

    cmp edx, ecx
    jle if1
    jmp end

if1:
    mov ecx, 0
    mov cx, word[eax + edx] 

    cmp cx, word[eax + edx + 4]
    je op1
    jne op2

op1:
    mov ecx, 0
    mov ebx, 0
    mov bx,word[eax + edx + 2]
    mov cx,word[eax + edx + 6] ;;take elements

    cmp ecx, ebx
    jl negative1
    jmp pozitive1

negative1:
    sub ebx, ecx
    mov [ebp - 8], ebx
    mov ebx,[ebp + 16]
    mov ecx, [ebp - 8]
    mov dword[ebx + edx],ecx ;;store distance
    add edx, 4

    jmp while

pozitive1:
    sub ecx,ebx
    mov ebx,[ebp + 16]
    mov dword[ebx + edx],ecx ;;store distance
    add edx, 4 ;;inc_contor

    jmp while

op2:
    mov ecx, 0
    mov ebx, 0
    mov bx,word[eax + edx]
    mov cx,word[eax + edx + 4] ;;take elements

    cmp ecx, ebx 
    jl negative2
    jmp pozitive2

negative2:
    sub ebx, ecx
    mov [ebp - 8], ebx
    mov ebx,[ebp + 16]
    mov ecx, [ebp - 8]
    mov dword[ebx + edx],ecx ;;store distance
    add edx, 4

    jmp while

pozitive2:
    sub ecx,ebx
    mov ebx,[ebp + 16]
    mov dword[ebx + edx],ecx ;;store distance
    add edx, 4 ;;inc_contor
    
    jmp while

end:


    ;; Your code ends here
    
    ;; DO NOT MODIFY
    popa
    leave
    ret
    ;; DO NOT MODIFY
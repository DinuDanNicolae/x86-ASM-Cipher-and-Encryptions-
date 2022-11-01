%include "../include/io.mac"

section .text
    global is_square
    extern printf

is_square:
    ;; DO NOT MODIFY
    push ebp
    mov ebp, esp
    pusha

    mov ebx, [ebp + 8]      ; dist
    mov eax, [ebp + 12]     ; nr
    mov ecx, [ebp + 16]     ; sq
    ;; DO NOT MODIFY
   
    ;; Your code starts here

mov edx, 0 ;;index

mov eax,4
mov ecx,[ebp + 12]
imul eax, ecx
mov edi, eax
PRINTF32 `%d\n\x0`,edi
mov edx, 0 ;;index
mov eax,[ebp + 12]
mov ecx,[ebp + 16]


label:
    cmp edx, edi
    jl take_element
    jmp done

take_element:
    mov eax, 0
    mov ebx, [ebp + 8]
    mov eax, [ebx + edx]
    mov ebx, 1 ;;count
    mov ecx, 0 ;;sqrt

    cmp eax, 0
    je create1
    jmp square

square: ;;find sqrt
    sub eax, ebx
    inc ebx
    inc ebx
    inc ecx
    mov esi, ecx

    cmp eax, 0
    js operatii
    jnz square

operatii: 
    mov ecx, [ebp + 16]
    mov eax, 0
    mov ebx, [ebp + 8]
    mov eax, esi
    imul eax,eax ;;make sqrt^2

    cmp eax, [ebx + edx] ;;verificare patrat perfect
    je create1
    jne create0

create1: ;;add 1 in array
    mov ecx, [ebp + 16]
    mov dword[ecx + edx], 1
    add edx, 4

    jmp label

create0: ;;add 0 in array
    mov ecx, [ebp + 16]
    mov dword[ecx + edx], 0
    add edx, 4
    
    jmp label



done:

    ;; Your code ends here
    
    ;; DO NOT MODIFY
    popa
    leave
    ret
    ;; DO NOT MODIFY
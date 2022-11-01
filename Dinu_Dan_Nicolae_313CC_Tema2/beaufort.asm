%include "../include/io.mac"

section .text
    global beaufort
    extern printf

; void beaufort(int len_plain, char *plain, int len_key, char *key, char tabula_recta[26][26], char *enc) ;
beaufort:
    ;; DO NOT MODIFY
    push ebp
    mov ebp, esp
    pusha

    mov eax, [ebp + 8]  ; len_plain
    mov ebx, [ebp + 12] ; plain (address of first element in string)
    mov ecx, [ebp + 16] ; len_key
    mov edx, [ebp + 20] ; key (address of first element in matrix)
    mov edi, [ebp + 24] ; tabula_recta
    mov esi, [ebp + 28] ; enc
    ;; DO NOT MODIFY
    ;; TODO: Implement spiral encryption
    ;; FREESTYLE STARTS HERE

mov dword[ebp - 4], 0
mov edi, 0

label: 
    cmp edi, ecx
    je continue
    jl form_enc

form_enc:
    mov eax, 0
    mov al, byte[edx + edi] ;;key(i)
    
    mov ecx, 0
    mov esi, 0
    mov esi, [ebp - 4]
    mov cl, byte[ebx + esi] ;;plain(i)
    mov esi, [ebp + 28]

    cmp eax, ecx ;;key plain
    jge create1 ;;key > plain
    jl create2 ;;key < plain
    

create1:
    sub eax, ecx
    add eax, 65 ;;enc_element
    mov edx, 0
    mov edx, [ebp - 4]
    mov byte[esi + edx], al
    mov eax, [ebp + 8]
    mov edx, [ebp + 20]
    add edi, 1
    add dword[ebp - 4], 1
    mov ecx, [ebp + 16]

    cmp [ebp - 4], eax
    jl label
    jmp done

create2:
    sub eax, ecx
    add eax, 91 ;;enc_element
    mov edx, 0
    mov edx, [ebp - 4]
    mov byte[esi + edx], al
    mov eax, [ebp + 8]
    mov edx, [ebp + 20]
    add edi, 1
    add dword[ebp - 4], 1
    mov ecx, [ebp + 16]

    cmp [ebp - 4], eax
    jl label
    jmp done

continue:
    cmp [ebp - 4], eax
    jg done
    mov edi, 0
    jmp form_enc

done: 

    

    ;; FREESTYLE ENDS HERE
    ;; DO NOT MODIFY
    popa
    leave
    ret
    ;; DO NOT MODIFY

%include "../include/io.mac"

section .text
    global simple
    extern printf

simple:
    ;; DO NOT MODIFY
    push    ebp
    mov     ebp, esp
    pusha

    mov     ecx, [ebp + 8]  ; len
    mov     esi, [ebp + 12] ; plain
    mov     edi, [ebp + 16] ; enc_string
    mov     edx, [ebp + 20] ; step

    ;; DO NOT MODIFY
   
    ;; Your code starts here

mov eax, 0

jmp label

label:
    mov ebx, 0
    mov bl, byte [esi + eax] 

    cmp eax, ecx 
    jl operatii
    jge end

operatii:
    add bl, dl ;;enc_element
    
    cmp ebx, 90 ;;verificam daca e inca in alfabet
    jg enc_last_letter
    jle enc_letter
    
enc_letter:
    mov byte[edi + eax], bl
    add eax, 1

    jmp label

enc_last_letter:
    sub bl, 91
    add bl, 65 ;;enc_element
    mov byte[edi + eax], bl
    add eax, 1

    jmp label

end:



    

    ;; Your code ends here
    
    ;; DO NOT MODIFY

    popa
    leave
    ret
    
    ;; DO NOT MODIFY

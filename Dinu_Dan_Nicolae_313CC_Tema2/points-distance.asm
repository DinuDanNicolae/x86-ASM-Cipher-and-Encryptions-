%include "../include/io.mac"

struc point
    .x: resw 1
    .y: resw 1
endstruc

section .text
    global points_distance
    extern printf

points_distance:
    ;; DO NOT MODIFY
    
    push ebp
    mov ebp, esp
    pusha

    mov ebx, [ebp + 8]      ; points
    mov eax, [ebp + 12]     ; distance
    ;; DO NOT MODIFY
   
    ;; Your code starts here
 

label:
    mov ecx, 0
    mov cx, word[ebx]

    cmp cx, word[ebx + 4] ;;comp coordonatele
    je distance_1 
    jne distance2

distance_1: ;;distanta va fi diferenta coordonatelor
    mov ecx, 0
    mov edx, 0
    mov cx, [ebx + 6]
    mov dx, [ebx + 2]
    sub cx, dx
    mov dword[eax], ecx
    jmp end

distance2:
    mov ecx, 0
    mov edx, 0
    mov cx, [ebx + 4]
    mov dx, word[ebx]
    sub cx, dx
    mov dword[eax], ecx
    
end:

    ;; Your code ends here
    
    ;; DO NOT MODIFY
    popa
    leave
    ret

    ;; DO NOT MODIFY
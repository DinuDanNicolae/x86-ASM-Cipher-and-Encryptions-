%include "../include/io.mac"

section .data
    i dd 0
    j dd 0
    N dd 0
    n_copy dd 0
    cont dd 0
    another_N dd 0

section .text
    global spiral
    extern printf

; void spiral(int N, char *plain, int key[N][N], char *enc_string);
spiral:
    ;; DO NOT MODIFY
    push ebp
    mov ebp, esp
    pusha

    mov eax, [ebp + 8]  ; N (size of key line)
    mov ebx, [ebp + 12] ; plain (address of first element in string)
    mov ecx, [ebp + 16] ; key (address of first element in matrix)
    mov edx, [ebp + 20] ; enc_string (address of first element in string)
    ;; DO NOT MODIFY
    ;; TODO: Implement spiral encryption
    ;; FREESTYLE STARTS HERE

mov dword[i], 0
mov dword[j], 0
mov dword[cont], 0
mov esi, 0

mov dword[another_N],eax
mov dword[N], eax
mov dword[n_copy], eax


big_while: ;;(i+1)/2 <= n
    mov eax, 0
    mov eax, dword[i]
    add eax,1
    imul eax, 2
    cmp eax, dword[N]
    jle cond_while1
    jmp shift

cond_while1: ;;j < n-1+i
    mov eax, dword[n_copy]
    sub eax, 1
    sub eax, dword[i]

    cmp dword[j], eax
    jl  while1
    jmp cond_while2

while1: ;;prima linie
    mov esi, 0
    mov eax, dword[cont]
    mov esi, [ebx + eax] ;;take_element

    mov eax, 0
    mov eax, dword[i]
    imul eax, dword[N]
    add eax, dword[j]
    mov edi, [ecx + 4*eax] ;;take_element

    add esi, edi
    mov edi, dword[cont]
    mov [edx + edi], esi ;;enc_element


    add dword[j],1 ;;inc_cont
    add dword[cont],1

    jmp cond_while1 

cond_while2: ;;i < j
    mov eax, dword[i]

    cmp eax, dword[j]
    jl while2
    jmp cond_while3

while2: ;;ultima coloana
    mov esi, 0
    mov eax, dword[cont]
    mov esi, [ebx + eax]

    mov eax, 0
    mov eax, dword[i]
    imul eax, dword[N]
    add eax, dword[j]
    mov edi, [ecx + 4*eax]

    add esi, edi
    mov edi, dword[cont]
    mov [edx + edi], esi

    add dword[cont],1
    add dword[i],1

    jmp cond_while2

cond_while3: ;;j > n-1-i
    mov eax, dword[n_copy]
    sub eax, 1
    sub eax, dword[i]

    cmp dword[j], eax
    jg while3
    jmp cond_while4

while3: ;;ultima linie
    mov esi, 0
    mov eax, dword[cont]
    mov esi, [ebx + eax] ;;din plain

    mov eax, 0
    mov eax, dword[i]
    imul eax, dword[N]
    add eax, dword[j]
    mov edi, [ecx + 4*eax]

    add esi, edi
    mov edi, dword[cont]
    mov [edx + edi], esi

    add dword[cont],1
    sub dword[j], 1

    jmp cond_while3

cond_while4: ;;i > j
    mov eax, dword[i]

    cmp eax, dword[j]
    jg while4
    jmp increment

while4: ;;prima coloana
    mov esi, 0
    mov eax, dword[cont]
    mov esi, [ebx + eax] 

    mov eax, 0
    mov eax, dword[i]
    imul eax, dword[N]
    add eax, dword[j]
    mov edi, [ecx + 4*eax]

    add esi, edi
    mov edi, dword[cont]
    mov [edx + edi], esi

    add dword[cont],1
    sub dword[i],1

    jmp cond_while4

increment:
    add dword[i],1
    add dword[j],1
    jmp big_while

shift: ;;n % 2 == 0
    mov eax, 0
    mov eax, N
    AND dword[eax], 01H ;;verificare N impar
    jz done
    jmp odd

odd: ;;criptare element din mijloc
    mov eax, 0
    mov esi, 0
    mov eax, dword[cont]
    mov esi, [ebx + eax] 

    mov eax, 0
    mov eax, dword[another_N]
    imul eax, dword[another_N]
    sar eax, 1 ;;elementul din mijloc e la (N^2)/2
    mov edi, [ecx + 4*eax]

    add esi, edi
    mov edi, dword[cont]
    mov [edx + edi], esi

    jmp done


done:






    ;; FREESTYLE ENDS HERE
    ;; DO NOT MODIFY
    popa
    leave
    ret
    ;; DO NOT MODIFY

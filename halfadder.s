.intel_syntax noprefix
.global halfadder
halfadder:
    push rbp
    mov rbp,rsp
    sub rsp, 256

    mov BYTE PTR [rbp + rdi - 256], 0
    mov BYTE PTR [rbp + rsi - 256], 1
    mov al, BYTE PTR [rbp + rdi - 256]
    movzb rax, al

    mov BYTE PTR [rbp + rax - 256], 0
    mov BYTE PTR [rbp - 256], 1
    mov al, BYTE PTR [rbp + rax - 256]
    movzb rax, al

    mov BYTE PTR [rbp - 2], 0
    mov BYTE PTR [rbp - 1], dil
    mov dil, BYTE PTR [rbp + rsi - 2]
    mov BYTE PTR [rdx], dil

    mov rsp, rbp
    pop rbp
    ret

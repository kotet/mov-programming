.intel_syntax noprefix
.global and
and:
    push rbp
    mov rbp,rsp
    sub rsp, 2

    mov BYTE PTR [rbp - 2], 0
    mov BYTE PTR [rbp - 1], dil
    mov al, BYTE PTR [rbp + rsi - 2]
    movzb rax, al

    mov rsp, rbp
    pop rbp
    ret

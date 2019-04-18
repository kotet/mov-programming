.intel_syntax noprefix
.global equal
equal:
    push rbp
    mov rbp,rsp
    sub rsp, 256

    mov BYTE PTR [rbp + rdi - 256], 0
    mov BYTE PTR [rbp + rsi - 256], 1
    mov al, BYTE PTR [rbp + rdi - 256]
    movzb rax, al

    mov rsp, rbp
    pop rbp
    ret

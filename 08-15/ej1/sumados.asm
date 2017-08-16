section .data

global sumados
section .text
	sumados:
	mov rax, rdi;
	add rax, rsi;
	ret;
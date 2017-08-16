section .data
	msg: DB 'En 10 me voy... 9', 10
	largo EQU $ - msg

global _start
section .text
	_start:
	mov di, 10
	.ciclo:
	mov rax, 4
	mov rbx, 1
	mov rcx, msg
	mov rdx, largo
	int 0x80
	dec byte [msg + largo - 2]
	dec di
	;cmp di, 0
	jne .ciclo
	mov rax, 1
	mov rbx, 0
	int 0x80
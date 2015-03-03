default	rel

section		.text
			global _ft_putchar
_ft_putchar:
		push	rdi
		push	rsi
		push	rdx
		mov		[char], rdi
		mov		rax, 0x2000004
		lea		rsi, [char]
		mov		rdi, 1
		mov		rdx, 1
		syscall
		pop		rdx
		pop		rsi
		pop		rdi
		ret

section		.data
char:		db	0, 0

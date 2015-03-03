extern	_malloc
extern	_ft_bzero
default	rel

section		.text
			global _ft_strnew
_ft_strnew:
		push	r10
		push	r11
		cmp		rdi, 0
		je		zero
		inc		rdi
		mov		r11, rdi
		push	r11
		call	_malloc
		pop		r11
		cmp		rax, 0
		je		zero
		mov		rdi, rax
		mov		r10, rax
		mov		rsi, r11
		call	_ft_bzero
		mov		rax, r10
		pop		r11
		pop		r10
		ret
zero:
		mov		rax, 0
		pop		r11
		pop		r10
		ret

extern	_ft_strlen
extern	_ft_memcpy
default	rel

section		.text
			global _ft_strcpy
_ft_strcpy:
		push	r11
		mov		r11, rdi
		mov		rdi, rsi
		call	_ft_strlen
		inc		rax
		mov		rdx, rax
		mov		rdi, r11
		call	_ft_memcpy
		pop		r11
		ret

default	rel

section		.text
			global	_ft_memcpy
_ft_memcpy:
		mov		rcx, rdx
		mov 	rax, rdi
		cld
		rep		movsb
		ret

default	rel

section		.text
			global	_ft_memset
_ft_memset:
		mov		r10, rdi
		mov		rcx, rdx
		xor		rax, rax
		mov		al, sil
		cld
		rep 	stosb
		mov 	rax, r10
		ret

default	rel

section		.text
			global	_ft_memset
_ft_memset:
		push	r10
		mov		r10, rdi
		mov		rcx, rdx
		xor		rax, rax
		mov		al, sil
		cld
		rep 	stosb
		mov 	rax, r10
		pop		r10
		ret

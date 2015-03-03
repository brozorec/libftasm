default	rel
extern	_ft_strlen
extern	_ft_memcpy
extern	_malloc

section		.text
			global	_ft_strdup
_ft_strdup:
		push	r8
		xor		rax, rax
		cmp		rdi, 0
		je		done
		mov		r8, rdi
		call	_ft_strlen
		mov		rcx, rax
		inc		rcx
		push	rcx
		push	r8
		mov		rdi, rcx
		call	_malloc
		pop		r8
		pop		rcx
		mov		rdi, rax
		mov		rsi, r8
		mov		rdx, rcx
		call	_ft_memcpy
		jmp		done

done:
		pop		r8
		ret

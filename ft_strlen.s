default	rel

section		.text
			global	_ft_strlen
_ft_strlen:
		xor		rax, rax
		cmp		rdi, 0
		je		done
		mov		rcx, 0xffffffffffffffff
		cld
		repne	scasb
		mov		r10, 0xfffffffffffffffe
		sub		r10, rcx
		mov		rax, r10
		jmp		done
done:
		ret

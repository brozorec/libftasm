default	rel

section		.text
			global _ft_putstr
_ft_putstr:
		push	r10
		cmp		rdi, 0
		je		done
		jmp		put

put:
		cmp		byte [rdi], 0x00
		je		done
		mov		r10, rdi
		push	rdi
		mov		rax, 0x2000004
		mov		rdi, 1
		mov		rsi, r10
		mov		rdx, 1
		syscall
		pop		rdi
		inc		rdi
		jmp		put

done:
		pop		r10
		ret

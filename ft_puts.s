default	rel

section		.text
			global _ft_puts
_ft_puts:
		cmp		rdi, 0
		je		put_null
put:
		cmp		byte [rdi], 0x00
		je		put_newline
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

put_newline:
		push	rdi
		mov		rax, 0x2000004
		mov		rdi, 1
		lea		rsi, [newline]
		mov		rdx, 1
		syscall
		pop		rdi
		jmp		done

put_null:
		push	rdi
		mov		rax, 0x2000004
		mov		rdi, 1
		lea		rsi, [null_str]
		mov		rdx, 6
		syscall
		pop		rdi
		jmp		put_newline

done:
		mov		rax, 1
		ret

section		.data
	newline		db		10
	null_str	db		"(null)", 0


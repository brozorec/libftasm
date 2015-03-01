default	rel
extern	_ft_strlen
extern	_ft_memcpy
extern	_malloc
extern 	_puts

section		.text
			global	_ft_strdup
_ft_strdup:
		xor		rax, rax
		cmp		rdi, 0
		je		done
		mov		r10, rdi
		call	_ft_strlen
		call	_puts
		mov		r11, rax
		inc		r11
		mov		rdi, r11
		call	_malloc
		mov		rdi, rax
		mov		rsi, r10
		mov		rdx, r11
		call	_ft_memcpy
		jmp		done

done:
		ret

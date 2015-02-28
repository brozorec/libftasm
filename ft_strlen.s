default	rel

section		.text
			global	_ft_strlen
_ft_strlen:
		xor		rax, rax
		cmp		rdi, 0
		je		done
		jmp		count

count:
		cmp		byte [rdi], 0
		je		done
		inc		rax
		inc		rdi
		jmp		count

done:
		ret

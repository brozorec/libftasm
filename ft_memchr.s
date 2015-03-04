default	rel

section		.text
			global _ft_memchr
_ft_memchr:
		cmp		rdx, 0
		je		done_not_found
		cmp		byte [rdi], sil
		je		done
		;cmp		byte [rdi], 0
		;je		done_not_found
		inc		rdi
		dec		rdx
		jmp		_ft_memchr
done:
		mov		rax, rdi
		ret

done_not_found:
		mov		rax, 0
		ret

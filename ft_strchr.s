default	rel

section		.text
			global _ft_strchr
_ft_strchr:
		cmp		byte [rdi], sil
		je		done
		cmp		byte [rdi], 0
		je		done_not_found
		inc		rdi
		jmp		_ft_strchr
done:
		mov		rax, rdi
		ret

done_not_found:
		mov		rax, 0
		ret

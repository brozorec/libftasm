default	rel

section		.text
			global _ft_strcat
_ft_strcat:
		push	r10
		mov		rax, rdi
		cmp		byte [rdi], 0x00
		je		cat_s2
		jmp		go_to_the_end_of_s1

go_to_the_end_of_s1:
		cmp		byte [rdi], 0x00
		je		cat_s2
		inc		rdi
		jmp		go_to_the_end_of_s1

cat_s2:
		mov		r10b, byte [rsi]
		mov		byte [rdi], r10b
		cmp		byte [rsi], 0x00
		je 		done
		inc		rsi
		inc		rdi
		jmp		cat_s2

done:
		pop		r10
		ret

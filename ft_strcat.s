default	rel

section		.text
			global _ft_strcat
_ft_strcat:
		push	rbx
		mov		rax, rdi
		cmp		byte [rdi], 0x00
		je		cat_s2
		jmp		go_to_the_end_of_s1

go_to_the_end_of_s1:
		inc		rdi
		cmp		byte [rdi], 0x00
		je		cat_s2
		jmp		go_to_the_end_of_s1

cat_s2:
		cmp		byte [rsi], 0x00
		je 		done
		mov		rbx, [rsi]
		mov		[rdi], rbx
		inc		rsi
		inc		rdi
		jmp		cat_s2

done:
		inc		rdi
		mov		byte [rdi], 0x00
		pop		rbx
		ret

default rel

section 	.text
			global _ft_bzero
_ft_bzero:
		jmp		whileloop
whileloop:
		cmp		rsi, 0
		je		done
		jne		putzero

putzero:
		cmp		byte [rdi], 0x00
		je 		done
		mov		byte [rdi], 0
		inc 	rdi
		dec		rsi
		jmp		short whileloop
done:
		ret


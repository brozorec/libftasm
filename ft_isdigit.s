default rel

section		.text
		global _ft_isdigit
_ft_isdigit:
		cmp		rdi, 48
		jb		not_digit
		cmp		rdi, 57
		ja		not_digit
		mov		rax, 0x01
		jmp		done
not_digit:
		mov		rax, 0x00
		jmp		done
done:
		ret

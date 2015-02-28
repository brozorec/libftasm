default rel

section		.text
		global _ft_isascii
_ft_isascii:
		cmp		rdi, 0
		jb		not_ascii
		cmp		rdi, 127
		ja		not_ascii
		mov		rax, 0x01
		jmp		done
not_ascii:
		mov		rax, 0x00
		jmp		done
done:
		ret

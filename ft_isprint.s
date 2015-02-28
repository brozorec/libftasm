default rel

section		.text
		global _ft_isprint
_ft_isprint:
		cmp		rdi, 32
		jb		not_print
		cmp		rdi, 126
		ja		not_print
		mov		rax, 0x01
		jmp		done
not_print:
		mov		rax, 0x00
		jmp		done
done:
		ret

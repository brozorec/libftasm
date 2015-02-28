default rel

section		.text
		global _ft_toupper
_ft_toupper:
		cmp		rdi, 97
		jb		unchanged
		cmp		rdi, 122
		ja		unchanged
		sub		rdi, 32
		mov		rax, rdi
		jmp		done
unchanged:
		mov		rax, rdi
		jmp		done
done:
		ret

default rel

section		.text
		global _ft_tolower
_ft_tolower:
		cmp		rdi, 65
		jb		unchanged
		cmp		rdi, 90
		ja		unchanged
		add		rdi, 32
		mov		rax, rdi
		jmp		done
unchanged:
		mov		rax, rdi
		jmp		done
done:
		ret

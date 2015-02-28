default rel

section		.text
			global _ft_isalpha
_ft_isalpha:
		cmp		rdi, 65
		jb		not_alpha
		cmp		rdi, 90
		jbe		is_alpha
		cmp		rdi, 97
		jb		not_alpha
		cmp		rdi, 122
		ja		not_alpha
		jmp		is_alpha
not_alpha:
		mov		rax, 0x00
		jmp		done
is_alpha:
		mov		rax, 0x01
		jmp		done
done:
		ret

%define	buff_size	2096
default	rel

section		.text
			global	_ft_cat
_ft_cat:
		mov		rax, 0x2000003
		lea		rsi, [buff]
		mov		rdx, buff_size
		syscall
		mov		rdx, rax
		cmp		rdx, 0
		jle		done
		push	rdi
		mov		rax, 0x2000004
		mov		rdi, 1
		syscall
		pop		rdi
		jmp		_ft_cat

done:
		ret

section		.bss
buff:	resb	buff_size + 1

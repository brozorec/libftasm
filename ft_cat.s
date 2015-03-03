%define	buff_size	2096
default	rel
extern _ft_isalnum

section		.text
			global	_ft_cat
_ft_cat:
		xor		rax, rax
		push	rdi
		mov		rax, 0x2000003
		lea		rsi, [buff]
		mov		rdx, buff_size
		syscall
		pop		rdi
		cmp		byte [buff], 9
		jle		error
		cmp		rax, 0
		jle		done
		push	rdi
		push	rsi
		mov		rdx, rax
		mov		rax, 0x2000004
		mov		rdi, 1
		lea		rsi, [buff]
		syscall
		pop		rsi
		pop		rdi
		jmp		_ft_cat

error:
		mov		rdx, 35
		mov		rax, 0x2000004
		mov		rdi, 2
		lea		rsi, [message]
		syscall
		ret
done:
		ret

section		.bss
buff:	resb	buff_size + 1

section		.text
message	db		"ft_cat: No such file or directory", 10, 0


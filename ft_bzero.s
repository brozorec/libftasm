
%include "asm_io.inc"

segment 	.data	

segment 	.bss

segment 	.text
			global ft_bzero
ft_bzero:
		push	ebp
		mov		ebp, esp
		push	ebx
		push	ecx

		lea		eax, [ebp + 8]
		mov		ecx, [ebp + 12]

		cmp		ecx, 0
		je 		done
		jne		whileloop
whileloop:
		cmp		ecx, 0
		je		done
		jne		putzero

putzero:
		;dump_regs 1
		mov		byte [eax], 0
		dump_mem 2, eax, 1
		inc 	eax
		dec		ecx
		jmp		short whileloop
done:
		;mov		eax, 0
		pop		ecx
		pop		ebx
		pop		ebp
		ret
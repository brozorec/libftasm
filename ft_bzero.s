
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

		mov		ebx, [ebp + 8]
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
		dump_mem 1, ebx, 1
		mov		byte [ebx], 0
		inc 	ebx
		dec		ecx
		jmp		short whileloop
done:
		pop		ecx
		pop		ebx
		pop		ebp
		ret
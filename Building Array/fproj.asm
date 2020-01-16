%include "simple_io.inc"

global asm_main
extern rperm

section .data
	line1s8: db "..+------+", 10,0
	line1s7: db "..+-----+.", 10,0
	line1s6: db "...+----+.", 10,0
	line1s5: db "...+---+..", 10,0
	line1s4: db "....+--+..", 10,0
	line1s3: db "....+-+...", 10,0
	line1s2: db ".....++...", 10,0
	line1s1: db ".....+....", 10,0

	linese: db "          ", 10,0
	lines8: db "  +------+", 10,0
	lines7: db "  +-----+ ", 10,0
	lines6: db "   +----+ ", 10,0
	lines5: db "   +---+  ", 10,0
	lines4: db "    +--+  ", 10,0
	lines3: db "    +-+   ", 10,0
	lines2: db "     ++   ", 10,0

	linem8: db "  +      +", 10,0
	linem7: db "  +     + ", 10,0
	linem6: db "   +    + ", 10,0
	linem5: db "   +   +  ", 10,0
	linem4: db "    +  +  ", 10,0
	linem3: db "    + +   ", 10,0

	linebf: db "     ", 10,0
	lineaf: db "    ", 10,0

	swapline: 		db "if you want to swap, enter a,b", 10,0
	endline: 		db "if you want to end, enter 0: ", 10,0
	swapinline: 	db "swappin box ", 10,0
	withline: 		db " with a box ", 10,0
	a1: db "first coordinate not 1..8",10,0
	a2: db "comma not there",10,0
	a3: db "seconod coordinate not 1..8",10,0

	array: dq 1,2,3,4,5,6,7,8

section .bss

section .text

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

display:
	cmp		r10, 9
	je		Level8
	cmp		r10, 8
	je		Level7
	cmp		r10, 7
	je		Level6
	cmp		r10, 6
	je		Level5
	cmp		r10, 5
	je		Level4
	cmp		r10, 4
	je		Level3
	cmp		r10, 3
	je		Level2
	cmp		r10, 2
	je 		Level1
	cmp		r10, 1
	je		Level0

	Level8:
		cmp rax, 8
		je 	print_level8
		jmp print_empty

	Level7:
		cmp rax, 8
		je 	print_levelm8
		cmp rax, 7
		je 	print_level7
		jmp print_empty

	Level6:
		cmp rax, 8
		je 	print_levelm8
		cmp rax, 7
		je 	print_levelm7
		cmp rax, 6
		je 	print_level6
		jmp print_empty

	Level5:
		cmp rax, 8
		je 	print_levelm8
		cmp rax, 7
		je 	print_levelm7
		cmp rax, 6
		je 	print_levelm6
		cmp rax, 5
		je 	print_level5
		jmp print_empty
	
	Level4:
		cmp rax, 8
		je 	print_levelm8
		cmp rax, 7
		je 	print_levelm7
		cmp rax, 6
		je 	print_levelm6
		cmp rax, 5
		je 	print_levelm5
		cmp rax, 4
		je 	print_level4
		jmp print_empty

	Level3:
		cmp rax, 8
		je 	print_levelm8
		cmp rax, 7
		je 	print_levelm7
		cmp rax, 6
		je 	print_levelm6
		cmp rax, 5
		je 	print_levelm5
		cmp rax, 4
		je 	print_levelm4
		cmp rax, 3
		je 	print_level3
		jmp print_empty

	Level2:
		cmp rax, 8
		je 	print_levelm8
		cmp rax, 7
		je 	print_levelm7
		cmp rax, 6
		je 	print_levelm6
		cmp rax, 5
		je 	print_levelm5
		cmp rax, 4
		je 	print_levelm4
		cmp rax, 3
		je 	print_levelm3
		cmp rax, 2
		je 	print_level2
		jmp print_empty

	Level1:
		cmp rax, 8
		je 	print_level18
		cmp rax, 7
		je 	print_level17
		cmp rax, 6
		je 	print_level16
		cmp rax, 5
		je 	print_level15
		cmp rax, 4
		je 	print_level14
		cmp rax, 3
		je 	print_level13
		cmp rax, 2
		je 	print_level12
		cmp rax, 1
		je 	print_level11

		print_level8:
		mov rax, lines8
		call print_string
		jmp ARRAYLOOP

		print_level7:
		mov rax, lines7
		call print_string
		jmp ARRAYLOOP

		print_level6:
		mov rax, lines6
		call print_string
		jmp ARRAYLOOP

		print_level5:
		mov rax, lines5
		call print_string
		jmp ARRAYLOOP

		print_level4:
		mov rax, lines4
		call print_string
		jmp ARRAYLOOP

		print_level3:
		mov rax, lines3
		call print_string
		jmp ARRAYLOOP

		print_level2:
		mov rax, lines2
		call print_string
		jmp ARRAYLOOP

		print_level18:
		mov rax, line1s8
		call print_string
		jmp ARRAYLOOP

		print_level17:
		mov rax, line1s7
		call print_string
		jmp ARRAYLOOP

		print_level16:
		mov rax, line1s6
		call print_string
		jmp ARRAYLOOP

		print_level15:
		mov rax, line1s5
		call print_string
		jmp ARRAYLOOP

		print_level14:
		mov rax, line1s4
		call print_string
		jmp ARRAYLOOP

		print_level13:
		mov rax, line1s3
		call print_string
		jmp ARRAYLOOP

		print_level12:
		mov rax, line1s2
		call print_string
		jmp ARRAYLOOP
		
		print_level11:
		mov rax, line1s1
		call print_string
		jmp ARRAYLOOP

		print_levelm8:
		mov rax, linem8
		call print_string
		jmp ARRAYLOOP

		print_levelm7:
		mov rax, linem7
		call print_string
		jmp ARRAYLOOP

		print_levelm6:
		mov rax, linem6
		call print_string
		jmp ARRAYLOOP

		print_levelm5:
		mov rax, linem5
		call print_string
		jmp ARRAYLOOP

		print_levelm4:
		mov rax, linem4
		call print_string
		jmp ARRAYLOOP

		print_levelm3:
		mov rax, linem3
		call print_string
		jmp ARRAYLOOP

		print_empty:
		mov rax, linese
		call print_string
		jmp ARRAYLOOP

	Level0:
		mov rbx, rax
		mov rax, linebf
		call print_string
		mov rax, rbx
		call print_int
		mov rax, lineaf
		call print_string

asm_main:	
	enter	0,0
	saveregs

	mov	rdi, array     ;1st param for rperm
	mov	rsi, qword 8   ;2nd param for rperm
	;; now the array 'array' is randomly initialzed
	call rperm
	call display

	prompt:
		mov     rax, swapline
		call    print_string
		mov     rax, endline
		call    print_string
		jmp 	read

	;; arguments from input is checked with length
	;; argument a checked with 0
	;; argument a in range
	;; argument is checked with
	read:
		call    read_char
		cmp     al, '0'
		je      asm_main_end
		cmp     al, '1'
		jb      error1
		cmp     al, '8'
		ja      error1

		mov     r12, 0
		mov     r12b, al
		sub     r12b, '0'

		call    read_char
		cmp     al, ','
		jne     error2

		call    read_char
		cmp     al, '1'
		jb      error3
		cmp     al, '8'
		ja      error3

		mov     r13, 0
		mov     r13b, al
		sub     r13b, '0'

		mov     r14, array
			LOOP1:
				cmp     [r14], r12
				je      LOOP2
				add     r14, 8
				jmp     LOOP1

			LOOP2:
				mov     r15, array

			LOOP3:
				cmp     [r15], r13
				je      LOOP4
				add     r15, 8
				jmp     LOOP3

			LOOP4:
				mov 	rax, swapinline
				call 	print_string
				mov		rax, r13
				call	print_int
				mov 	rax, withline
				call	print_string
				mov     [r14], r13
				mov     [r15], r12
				mov 	r10, dword 9
				jmp 	DISPLAYLOOP

			DISPLAYLOOP:
				cmp 	r10, '0'
				je 		prompt
				mov 	rcx, dword 0
				jmp 	ARRAYLOOP
					ARRAYLOOP:
					mov 	rax, [array+rcx]
					call 	display
					add		rcx, 8
					cmp		rcx, '56'
					ja		DISPLAYDEC
					je		ARRAYLOOP
					jb 		ARRAYLOOP

			DISPLAYDEC:
				call	print_nl
				dec		r10
				jmp		DISPLAYLOOP
				
asm_main_end:
	restoregs
	leave
	ret


error1:
	call    print_nl
	mov     rax, a1
	call    print_string
	; empty input buffer
	L1:
			cmp     al, 10
			je      L2
			call    read_char
			jmp     L1
	L2:
			jmp     prompt

error2:
	call    print_nl
	mov     rax, a2
	call    print_string
	; empty input buffer
	jmp     L1

error3:
	call    print_nl
	mov     rax, a3
	call    print_string
	; empty input buffer
	jmp     L1

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

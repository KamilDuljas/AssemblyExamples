; hello world x64

SECTION .rodata
	hello: 		db 'Hello world!',10
	helloLen:	equ $-hello
; Code
SECTION .TEXT
	GLOBAL _start

_start:

	mov rax,1		; 'write' system call = 1
	mov rdi,1		; fd 1 = STDOUT
	mov rsi,hello		; string
	mov rdx,helloLen	; length
	syscall			; syscall kernel

	;Terminate program

	mov rax, 60		; 'exit' system call = 60
	mov rdi, 5		; exit code
	syscall			; syscall kernel

; hello world

SECTION .DATA
	hello: 		db 'Hello world!',10
	helloLen:	equ $-hello
; Code
SECTION .TEXT
	GLOBAL _start

_start:
	mov eax,4		; 'write' system call = 4
	mov ebx,1		; fd 1 = STDOUT
	mov ecx,hello		; string
	mov edx,helloLen	; length



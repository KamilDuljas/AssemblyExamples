all: hello_world.o
	ld -m elf_i386 hello_world.o -o hello_world
hello_world.o: hello_world.asm
	nasm -f elf hello_world.asm -o hello_world.o

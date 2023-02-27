all: hello_world hello_world_x64

hello_world_x64: hello_world_x64.o
	ld hello_world_x64.o -o hello_world_x64

hello_world: hello_world.o
	ld -m elf_i386 hello_world.o -o hello_world

hello_world.o: hello_world.asm
	nasm -f elf hello_world.asm -o hello_world.o

hello_world_x64.o: hello_world_x64.asm
	nasm -f elf64 hello_world_x64.asm -o hello_world_x64.o
clean:
	rm hello_world hello_world_x64 *.o

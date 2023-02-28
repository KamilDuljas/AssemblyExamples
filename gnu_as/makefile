all: hello_world

hello_world: hello_world.o
	ld hello_world.o -o hello_world

hello_world.o: hello_world.s
	as hello_world.s -o hello_world.o

clean:
	rm *.o hello_world

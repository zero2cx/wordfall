CC=gcc
CFLAGS=-Wall
LDFLAGS=-framework SDL -framework SDL_image -framework SDL_ttf -framework SDL_mixer -framework Cocoa

OBJECTS=main.o SDLMain.o load.o render.o state.o intro-state.o intro-transition-state.o title-state.o title-transition-state.o

all: main

main:
	$(CC) $(CFLAGS) -c main.c SDLMain.m load.c render.c state.c intro-state.c intro-transition-state.c title-state.c title-transition-state.c
	$(CC) $(CFLAGS) $(LDFLAGS) $(OBJECTS) -o word-fall

clean:
	rm -rf $(OBJECTS)

install:
	cp word-fall /usr/local/bin
.DEFAULT_GOAL := all

SHELL := /bin/bash

.PHONY: all
all:
	sdcc -mpic14 -p12f629 --use-non-free main.c

.PHONY: clean
clean:
	$(RM) main.asm main.cod main.hex main.lst main.o

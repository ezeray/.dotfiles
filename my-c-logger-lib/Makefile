TARGET = bin/logger_test
SRC = $(wildcard src/*.c)
OBJ = $(patsubst src/%.c, obj/%.o, $(SRC))

build: clean default

run: clean default
	# $(TARGET)

default: $(TARGET)


clean:
	rm -f obj/*
	rm -f bin/*

$(TARGET): $(OBJ)
	gcc -o $@ $?

$(OBJ): obj/%.o: src/%.c
	gcc -c $< -o $@ -Iinclude

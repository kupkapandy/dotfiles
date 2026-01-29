CC = g++
CCFLAGS  = -std=c++17 -O2 -Wall -Wextra -Wshadow -Wconversion -Wfloat-equal
CCFLAGS += -Wcast-align -pedantic -Wno-sign-conversion -Wno-unused-result
CCFLAGS += -Wshift-overflow=2 -Wlogical-op

SRC = main.cpp
BIN = .compiled
OUTPUT = .output

all: main

main: clear
	$(CC) -o $(BIN) $(CCFLAGS) $(SRC) && \
	(./$(BIN) | tee $(OUTPUT); printf "\nreturn: %d\n" $${PIPESTATUS[0]})

clear:
	rm -rf $(BIN)

clean:
	rm -rf $(BIN) $(OUTPUT)

.PHONY: all clean

# Compiler
CC = clang++
CFLAGS = -Wall -std=c++17

# Directories
SRCDIR_UTILS = ./utils
SRCDIR_SERVER = ./server
SRCFILES = $(wildcard $(SRCDIR_UTILS)/*.cpp $(SRCDIR_UTILS)/*.c $(SRCDIR_SERVER)/*.cpp $(SRCDIR_SERVER)/*.c main.cpp)

# Output
TARGET = http

# Build
all: $(TARGET)

$(TARGET): $(SRCFILES)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRCFILES)

# Clean
clean:
	rm -f $(TARGET)

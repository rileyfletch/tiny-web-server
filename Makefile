CC = clang++
CFLAGS = -Wall -std=c++17

TARGET = http

all: $(TARGET)

$(TARGET): main.cpp
	$(CC) $(CFLAGS) -o $(TARGET) main.cpp
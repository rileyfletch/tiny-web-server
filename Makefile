CC = clang++
CFLAGS = -Wall -std=c++17

TARGET = serv

all: $(TARGET)

$(TARGET): main.cpp
	$(CC) $(CFLAGS) -o $(TARGET) http/main.cpp http/server.cpp

clean:
	rm serv
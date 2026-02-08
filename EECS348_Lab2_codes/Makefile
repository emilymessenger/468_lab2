CC = gcc
CFLAGS = -Wall -Wextra -std=c11
TARGET = checkNumbers
SRC = main.c isEven.c isOdd.c

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o $(TARGET)

clean:
	rm -f $(TARGET)

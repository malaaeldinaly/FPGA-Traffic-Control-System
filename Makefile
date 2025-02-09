CC = gcc
CFLAGS = -Iinclude
SRC = src/main.c src/traffic_light_controller.c
OBJ = $(SRC:.c=.o)
EXEC = traffic_light_controller

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(EXEC)

.PHONY: all clean
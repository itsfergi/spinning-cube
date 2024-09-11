CC = gcc
FLAGS = -Wall -O3  -lm --fast-math

cube:
	$(CC) $(FLAGS) -o cube spinning-cube.c


clean:
	rm -f cube

CC = gcc

C_FILES += helloworld.c

C_OBJS = $(C_FILES:.c=.o)

EXE = helloworld



all: $(EXE)
	$(CC) helloworld.c -o helloworld.out
	
$(EXE): $(C_OBJS)
	$(CC) -o "$@" $^ 
	
%.o : %.c
	gcc -c "$<"
	
clean:
	rm -rf $(EXE) $(C_OBJS)

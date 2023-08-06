default: writer.c
	gcc writer.c -o writer


clean: writer
	rm -f writer


CROSS_COMPILE: writer.c
	aarch64-none-linux-gnu-gcc writer.c -o writer

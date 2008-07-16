lab1.hex: lab1.c
	sdcc -mpic16 -p18f2455 -pstack-model=large lab1.c

.PHONY: clean

clean:
	rm -f *.hex
	rm -f *.asm
	rm -f *.lst
	rm -f *.o
	rm -f *.cod
	rm -f *~

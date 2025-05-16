nasm -f elf32 -g -F dwarf -o asciiPrint.o asciiPrint.asm

ld -m elf_i386 -o myProgram asciiPrint.o

./asciiPrint

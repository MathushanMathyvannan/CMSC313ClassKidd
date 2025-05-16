Mathushan Mathyvannan

CMSC 313 - Section 2 Mon/Wen 10-11:15 AM

HW#11 Print out data in ascii hex

Hex to ASCII Conversion and Print - 32-bit

Assemble with: nasm -f elf32 -g -F dwarf -o asciiPrint.o asciiPrint.asm

Link with: ld -m elf_i386 -o asciiPrint asciiPrint.o

Run with: ./asciiPrint

File discription:
This program converts a list of bytes from memory from hex pairs to ASCII hex. The program uses the AH and AL registers to convert the values and then saves them in a buffer, which is later printed out using the Linux write syscall. For example, data that was originally stored as 0x83 in hex will be converted to 0x38 for 8 and 0x33 for 3, then printed as “83”. I use a subordinate call (like a function) to convert a binary nibble into its corresponding ASCII hex character. Also, this program prints a space between each hex pair and a new line after printing out all the data values. There are 8 hex pairs so a for loop is used to add each pair into the output buffer. It is written in 32-bit x86 Assembly.

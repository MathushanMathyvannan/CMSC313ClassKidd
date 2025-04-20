AUTHORING: Mathushan Mathyvannan CMSC313 Spring 2025 Mon/Wen 10-11:15 AM

PURPOSE OF SOFTWARE: The purpose of this software is to solve matrix math problems. It should be able to do scalar multiplication, matrix multiplication, matrix addition, and matrix transposing.

FILES: The matrixCPP.h and matrixCPP.cpp files are the code in C++, while matrixC.h and matrixC.cpp are the code in C. The mytest.cpp and mytest.c run the practice equation given in the assignment.

BUILD INSTRUCTIONS: 
For C++: g++ -o testercpp mytestCPP.cpp matrixCPP.cpp
For C: gcc -std=c99 -m32 -O0 matrixC.c mytestC.c -o testerc

TESTING METHODOLOGY: 
For C++: ./testercpp
For C: ./testerc

ADDITIONAL INFORMATION: I was having problems with my VS Code and compiler, which has led to very few comments and not perfect code but it works. Also, I have a mac so I couldn't test the x86 but it should work.

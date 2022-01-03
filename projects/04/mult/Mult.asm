// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

	// set sum and i
	// NOTE: sum variable is not needed normally, but in this case
	// it is because the test script assumes you do the computation
	// outside of RAM[2]
	@sum
	M=0
	@i
	M=0

(LOOP)
	// loop condition
	@i
	D=M
	@1
	D=D-M
	@FINISH
	D;JEQ

	// loop code
	@0
	D=M
	@sum
	M=D+M

	//i++
	@i
	M=M+1

	@LOOP
	0;JMP
	
(FINISH)
	@sum
	D=M
	@2
	M=D
	@END
	0;JMP

(END)
	// terminate
	@END
	0;JMP

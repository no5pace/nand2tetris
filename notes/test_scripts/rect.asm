// draw a filled (RAM[0]*16)xRAM[1] rectangle in the upper left corner of the screen
// NOTE: I must have been smoking something while writing this, so I'll make a better one.  Gonna keep this here though.

	// declare variables x, y, i, j, yMod (SCREEN is built in)
	@0
	D=M
	@x
	M=D

	@1
	D=M
	@y
	M=D
	
	@i
	M=0
	@j
	M=0
	@yMod
	M=0

	// loopY condition
(LOOPY)
	@i
	D=M
	@y
	D=D-M
	@END
	D;JEQ

	// loopY code
	// loopX condition
(LOOPX)
	@j
	D=M
	@x
	D=D-M
	@LOOPYCODE
	D;JEQ

	// loopX code
	@yMod
	D=M
	@j
	D=D+M
	@SCREEN
	A=D+A
	M=-1

	//j++
	@j
	M=M+1

	@LOOPX
	0;JMP

(LOOPYCODE)
	//i++ and j=0
	@32
	D=A
	@yMod
	M=D+M
	@i
	M=M+1
	@j
	M=0

	@LOOPY
	0;JMP


	// terminate
(END)
	@END
	0;JMP

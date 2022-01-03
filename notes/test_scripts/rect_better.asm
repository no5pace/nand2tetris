// draw a filled 16xRAM[0] rectangle in the upper left corner of the screen

	// declare variables y, i, yMod (SCREEN is built in)
	@0
	D=M
	@y
	M=D
	
	@i
	M=0

	@yMod
	M=0

	// loop condition
(LOOP)
	@i
	D=M
	@y
	D=D-M
	@END
	D;JEQ

	// loop code
	@yMod
	D=M
	@SCREEN
	A=D+A
	M=-1

	//i++
	@32
	D=A
	@yMod
	M=D+M
	@i
	M=M+1

	@LOOP
	0;JMP

	// terminate
(END)
	@END
	0;JMP

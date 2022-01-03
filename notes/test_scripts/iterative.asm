// compute 1+2+3+...+n

	// declare variables n, i, and sum
	@0
	D=M
	@n
	M=D
	@i
	M=1
	@sum
	M=1

	// loop condition
(LOOP)
	@n
	D=M
	@i
	D=D-M
	@END
	D;JEQ

	// loop code
	@i
	D=M
	M=D+1
	D=D+1
	@sum
	M=D+M

	@LOOP
	0;JMP

	// terminate
(END)
	@END
	0;JMP

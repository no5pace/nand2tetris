// Add the numbers in RAM[0] and RAM[1] and put the result in RAM[2]

	// Set D to the value of RAM[0]
	@0
	D=M

	// Add the value of RAM[1] to D
	@1
	D=D+M

	// Set the value of RAM[2] to D
	@2
	M=D
	
	// safely terminate execution
	@6
	0;JMP

// Flip the values of RAM[0] and RAM[1]

	// temp=RAM[0]
	@0
	D=M
	@temp
	M=D

	// RAM[0]=RAM[1]
	@1
	D=M
	@0
	M=D

	// RAM[1]=temp
	@temp
	D=M
	@1
	M=D

	// terminate safely
	@12
	0;JMP


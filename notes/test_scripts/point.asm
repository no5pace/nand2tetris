//	for (i=0; i<n; i++) {
//		arr[i] = -1
//	}

	// arr = 100; n = 10, i = 0
	@0
	D=M
	@arr
	M=D
	
	@1
	D=M
	@n
	M=D

	@i
	M=0

	// loop condition
(LOOP)
	@i
	D=M
	@n
	D=D-M
	@END
	D;JEQ

	//loop code; RAM[arr+i] = -1
	@arr
	D=M
	@i
	A=D+M
	M=-1

	// i++
	@i
	M=M+1

	@LOOP
	0;JMP

	// terminate
(END)
	@END
	0;JMP

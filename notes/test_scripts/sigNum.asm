//	if RAM[0]>0 then
//		RAM[1]=1
//	else
//		RAM[1]=0
	
	// put RAM[0] into D
	@0
	D=M

	// if RAM[0]>0, jump to instruction 8
	@8
	D;JGT

	// set RAM[1] to 0 
	@1
	M=0
	// safely terminate
	@10
	0;JMP

	// set RAM[1] to 1
	@1
	M=1

	// safely terminate
	@10
	0;JMP

// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

	@8192
	D=A
	@n
	M=D

	@i
	M=0
	

(LISTEN)
	// reset i
	@i
	M=0

	// probe @KBD and put the output into the D Register
	@KBD
	D=M

	// if KBD==0 goto CLEAR
	@CLEAR
	D;JEQ
	// if KBD!==0 goto FILL
	@FILL
	0;JMP

(CLEAR)
(CLEAR_LOOP)
	// loop condition
	@i
	D=M
	@n
	D=D-M
	@LISTEN
	D;JEQ

	// loop code
	@SCREEN
	D=A
	@i
	D=D+M
	A=D
	M=0

	// i++
	@i
	M=M+1

	@CLEAR_LOOP
	0;JMP


(FILL)
(FILL_LOOP)
	// loop condition
	@i
	D=M
	@n
	D=D-M
	@LISTEN
	D;JEQ

	// loop code
	@SCREEN
	D=A
	@i
	D=D+M
	A=D
	M=-1

	// i++
	@i
	M=M+1

	@FILL_LOOP
	0;JMP
	

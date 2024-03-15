// Owner: Dhanvin Prajapati

// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// Assumes that R0 >= 0, R1 >= 0, and R0 * R1 < 32768.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)


@R2
M=0 //Initialize R2 = 0

@i
M=0 //Initialize i = 0, i = iteration number


(LOOP)
@R0
D=M //D = R0
@i
D=D-M //D = R0-i

@END
D; JLE //Jump to END if D=0

@R1
D=M //Set D=R1

@R2
M=M+D //R2 = R2+R1

@i
M=M+1 //Increment iteration number

@LOOP
0; JMP //Jump to LOOP


(END)
@END
0; JMP
// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

@sum // set memory for temp temp store to 0
M=0	

@R0  // load R0 to D it will be used as counter 
D=M

@R2  // reset R2 to 0 in case there will be no iterations
M=0	
	
@END   // maybe R0 was 0, lets finish then
D;JEQ

@i	// set i to be counter
M=D-1	
		
(LOOP)

@i	// iteration, counter - 1
M=M-1

@R1	// load R1
D=M

@sum    // add R1 to sum
M=M+D		

@i      // load counter
D=M	
	
@LOOP   // counter and loop if not zero
D;JGE

@sum    // load sum to D
D=M	
	
@R2     // store result to R2
M=D	

(END)
@END
0;JMP


    	

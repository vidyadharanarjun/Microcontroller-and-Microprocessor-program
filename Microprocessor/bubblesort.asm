	   LXI H,2500
	   MOV C,M
	   DCR C

PASS:	   LXI H,2501
	   MOV B,C

LOOP:	   MOV A,M
	
	   CMP M
	
	   INX H
	   DCR B
	   MOV D,M
	   MOV M,A
	   DCX H
	   MOV M,D
	   INX H
	   DCR B
	   JNZ LOOP
	   DCR C
	   JNZ LOOP
	   HLT

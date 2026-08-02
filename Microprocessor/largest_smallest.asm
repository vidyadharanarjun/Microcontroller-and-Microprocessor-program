	   LXI H,3000
	   MOV C,M
	   INX H
	   MOV A,M
	   MOV B,A
	   MOV D,A
	   DCR C

LOOP:	   INX H
	   MOV A,M
	   CMP B
	   JC CHECK_SMALL
	   MOV B,A

CHECK_SMALL:	   MOV A,M
	   CMP D
	   JNC NEXT
	   MOV D,A

NEXT:	   DCR C
	   JNZ LOOP
	   MOV A,B
	   STA 3050
	   MOV A,D
	   STA 3051
	   HLT

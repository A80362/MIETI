CSEG	AT	0H
JMP MAIN
CSEG	AT	30H

MAIN:
	MOV		R0,#0B2H
	MOV		R1,#0C2H
	MOV		R3,#0A4H
	MOV		R4,#0FDH  
	MOV		R5,#0AAH
	MOV		R6,#0F1H
	MOV 	DPH,R0
	MOV		DPL,R1
	MOV		A,R3
	MOVX	@DPTR,A
	//INC 	DPTR
	MOV 	DPH,R5
	MOV		DPL,R6
	MOV		A,R4
	MOVX	@DPTR,A

END

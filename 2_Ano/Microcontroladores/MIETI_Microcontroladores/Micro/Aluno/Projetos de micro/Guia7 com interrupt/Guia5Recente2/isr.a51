	NAME ISR
	PUBLIC ISR
	ISRCODE SEGMENT CODE 
	RSEG ISRCODE
	JMP ISR
	
	EXTRN DATA (TRINCO)

ISR:
	CLR TR1
	MOV TH1,#HIGH(-50000)
	MOV TL1,#LOW(-50000)
	SETB TR1
	CJNE R4,#0,CONTINUA
	CJNE R5,#0,CONTINUA2
	MOV TRINCO,#0
	CLR TR1
	JMP FIMISR
CONTINUA:
	DEC R4
	JMP FIMISR
CONTINUA2:	
	DEC R5
	JMP FIMISR
FIMISR:
	RET
	END
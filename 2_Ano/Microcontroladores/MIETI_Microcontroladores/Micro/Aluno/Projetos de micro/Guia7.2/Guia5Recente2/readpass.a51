	NAME READPASS
	PUBLIC INICIOPASS
	PASSCODE SEGMENT CODE 
	RSEG PASSCODE
	JMP INICIOPASS
	
	EXTRN CODE (INICIOREAD)
	EXTRN CODE (INICIOPASS1)
	
	
INICIOPASS:
	MOV R2,#4
	MOV A,R0
	MOV R1,A
INICIO:
	USING 0
	PUSH AR2
	USING 0
	PUSH AR1
	LCALL INICIOREAD
	POP AR1
	POP AR2
	CJNE R0,#11,CONTINUA
	MOV R6,#1
	LCALL INICIOPASS1
	MOV R0,#0
	JMP FIM
CONTINUA:
	MOV A,R0
	MOV @R1,A
	INC R1
	DJNZ R2,INICIO
	MOV R0,#1
FIM:
	
	RET
	END
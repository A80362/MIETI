

CSEG 	AT 	0H
JMP MAIN
CSEG  	AT 	30H

MAIN:	SETB	0E5H
		MOV 	DPTR,#ARMAZENAR
		MOV 	R0,#0H
		MOV 	R1,#20
		MOV		R2,#0H
		MOV		R3,#0FFH
		
CONTAR:	MOV		A, R0
		MOVC 	A,@A+DPTR
		MOV 	R2,A	
		INC 	R0;PROXIMO NUMERO
		JNB		Acc.0,PAR  ;VERIFICAR SE � PAR
		DJNZ	 R1, CONTAR
		JMP 	$
		
PAR:	MOV		A,R2
		CLR     C
		SUBB	A,R3
		JC		GUARDAR
		JMP		CONTAR
		
GUARDAR:
		MOV		A,R2
		MOV		R3,A
		DJNZ 	R1, CONTAR
		JMP 	$
		
	CSEG 	AT	440H	
ARMAZENAR:
	DB 3H,6H,8H,4H,9H,9H,9H,1H,9H,2H,9H,9H,9H,9H,9H,9H,9H,9H,9H,9H,9H;
END
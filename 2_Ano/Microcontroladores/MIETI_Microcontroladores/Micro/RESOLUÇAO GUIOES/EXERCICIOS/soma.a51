
CSEG AT 0H
	
JMP MAIN

MAIN:
	
	MOV R7,#51H
	MOV R6,#50H
	MOV R5,#61H
	MOV R4,#60H

	MOV A,R7    
    ADD A,R5     
    MOV R3,A 
	
	MOV A,R6    
    ADDC A,R4 // POR CAUSA DO CARRY   
    MOV R2,A  
END

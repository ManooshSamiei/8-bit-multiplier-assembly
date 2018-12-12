.include "m32def.inc"
.ORG 0
LDI R16,0x00
OUT DDRA,R16
OUT DDRB,R16
LDI R16,0xff
OUT DDRC,R16
OUT DDRD,R16



main:
     IN  R20,PINA 
     LDI R17,0x00
	 LDI R18,0x00  
	 LDI R22,0x00  
	  
multiply:CP  R17,R20
BREQ loop
IN  R19,PINB
ADD R18,R19
BRCS carry
continue:
INC R17
RJMP multiply

carry:
INC R22
RJMP continue


loop:
OUT  PORTC,R18
OUT  PORTD,R22

RJMP main






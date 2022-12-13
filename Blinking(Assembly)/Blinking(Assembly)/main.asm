;
; Blinking(Assembly).asm
;

	SBI DDRB,0; set bit 0 of DDRB & configure PB0 as an output
START:SBI PORTB,0;set bit 0 of PORTB & turn on LED
	CALL DELAY; call DELAY subroutine 
	CBI PORTB,0;clear bit 0 of PORTB & turn off LED
	CALL DELAY; call DELAY subroutine
	JMP START ; jump to START

DELAY: LDI R16, 41 ; load 41 to R16
LOOP1: LDI R17, 255; load 255 to R17
LOOP2: LDI R18, 255 ; load 255 to R18
LOOP3: DEC R18 ; decrement R18 by 1

	BRNE LOOP3 ; branch to LOOP3 if result is not 0
	DEC R17 ; decrement R17 by 1
	BRNE LOOP2 ; branch to LOOP2 if result is not 0
	DEC R16 ; decrement R16 by 1
	BRNE LOOP1 ; branch to LOOP1 if result is not 0
	RET ; return to calling point


; Created: 12/8/2022 2:47:16 PM
; Author : minol
;









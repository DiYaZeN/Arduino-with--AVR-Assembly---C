/*
 * Blinking (C).cpp
 *
 * Created: 12/13/2022 9:58:28 AM
 * Author : minol
 */ 

#include <avr/io.h> //1 include I0 definitions
#define F_CPU 16000000UL // define CPU clock speed for delay.h
#include <util/delay.h> // include definition of _delay ms( )


int main(void)
{
    /* Replace with your application code */
 
		DDRB = 0b00000001 ;// 11 set bit 0 of DDRB & configure PB0 as an output
		while(1)
		{
			PORTB = PORTB | 0b00000001; // set bit 0 of PORTE and turn on LED without affecting other bits
			_delay_ms(200); //11 wait for 200ms
			PORTB = PORTB & 0b00000000; // clear bit 0 of PORTE and turn off LED without affecting other bits
			_delay_ms(200); //11 wait for 200ms
		}
			return 0;

   
}


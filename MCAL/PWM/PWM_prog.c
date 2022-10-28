#include"../../UTIL/STD_TYPES.h"
#include "../../UTIL/BIT_MATH.h"
#include "../TIMER/TIMER_reg.h"
#include "PWM_interface.h"



void PWM0_VoidInit(void){
	/* Configuring timer2 registers
	 * to fast PWM mode
	 *  */
		SET_BIT(TCCR2,TCCR2_WGM20);
		SET_BIT(TCCR2,TCCR2_WGM21);
	/* inverted PWM mode
	 * Set OC2 on compare match, clear OC2 at overflow
	 * when timerCount = OCR2
	 * */
		SET_BIT(TCCR2,TCCR2_COM20);
		SET_BIT(TCCR2,TCCR2_COM21);
	/* no prescale
	 * and start timer2*/
		SET_BIT(TCCR2,TCCR2_CS20);
}


void PWM0_VoidSetDutyCycle(uint8 Copy_u8DutyCycle){
	// OCR0 holds the on time of the cycle
	OCR2 = 255 - ((float32)Copy_u8DutyCycle / 100.0f) * 255.0f;
}


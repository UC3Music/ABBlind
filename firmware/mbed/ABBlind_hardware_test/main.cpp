/**********************************************************
 * ABBlind test
 **********************************************************
 *
 * Program to test that all the hardware works correctly
 * 
 **********************************************************
 * Author: David Estévez Fernández (DEF)
 * License: GPLv3
 * 
 * A UC3Music project! Check out our website: 
 *         http://uc3music.github.io/
 */
#include "mbed.h"
#include "PinDetect.h"


//-- Peripherals definition
DigitalOut LED_01[] = {P1_24, P1_17}; 
DigitalOut LED_02[] = {P1_27, P1_25}; 
DigitalOut LED_03[] = {P0_9, P0_2};
DigitalOut AUDIO_SWITCH(P0_14);
PinDetect PUSH_BUTTON(P0_17, PullUp);

//-- Other constant definitions
static const uint8_t COLOR1 = 0;
static const uint8_t COLOR2 = 1;


//-- Other definitions
volatile uint8_t state = 0;

void start_sequence(uint16_t ms = 200)
{
  DigitalOut* leds[] = {&LED_01[0], &LED_02[0],
                        &LED_03[0], &LED_01[1], 
                        &LED_02[1], &LED_03[1]};
                    
  for (uint8_t i = 0; i < 6; i++)
  {
    for (uint8_t j = 0; j < 6; j++)
    {
      i == j ? *leds[j] = 1 : *leds[j] = 0;
    }
    wait_ms(ms);
  }
}

void button_pressed()
{
  state = (state+1) % 4;
}


int main() {
    
    //-- Setup button
    PUSH_BUTTON.attach_asserted(&button_pressed);
    PUSH_BUTTON.setSampleFrequency();
    
    //- Setup audio switch
    AUDIO_SWITCH = 0;
    
    start_sequence();
    start_sequence();
  
    while(1) {
     if (state == 0)
      {
        LED_01[0] = 0;
        LED_02[0] = 0;
        LED_03[0] = 0;
        LED_01[1] = 0;
        LED_02[1] = 0;
        LED_03[1] = 0;
        AUDIO_SWITCH = 0;
      }
      else if (state == 1)
      {
        LED_01[0] = 1;
        LED_02[0] = 1;
        LED_03[0] = 1;
        LED_01[1] = 0;
        LED_02[1] = 0;
        LED_03[1] = 0;
        AUDIO_SWITCH = 1;
      }
      else if (state == 2)
      {
        LED_01[0] = 0;
        LED_02[0] = 0;
        LED_03[0] = 0;
        LED_01[1] = 1;
        LED_02[1] = 1;
        LED_03[1] = 1;
        AUDIO_SWITCH = 0;
      }
      else if (state == 3)
      {
        LED_01[0] = 1;
        LED_02[0] = 1;
        LED_03[0] = 1;
        LED_01[1] = 1;
        LED_02[1] = 1;
        LED_03[1] = 1;
        AUDIO_SWITCH = 1;
      }
    
      wait_ms(500);
    }
}

/**********************************************************
 * ABBlind
 **********************************************************
 *
 * ABBlind Firmware 
 *
 * How to use:
 *   - Long press: toggles mode:
 *        * Setup mode: red light means channel A in the
 *               output, blue light means channel B in the
 *               output, short press toggles channel.
 *        * Blind mode: each press makes a random channel
 *               to be at the output, after 3 presses it
 *               shows the heard sequence of channels.
 * 
 **********************************************************
 * Author: David Estévez Fernández (DEF)
 * License: GPLv3
 * 
 * A UC3Music project! Check out our website: 
 *         http://uc3music.github.io/
 */
 
#include "mbed.h"
#include "OneButton.h"

//#define DEBUG
#ifdef DEBUG
#include "USBSerial.h"
 USBSerial pc;//--Debug
#endif

//-- Peripherals definition
DigitalOut LED_01[] = {P1_24, P1_17}; 
DigitalOut LED_02[] = {P1_27, P1_25}; 
DigitalOut LED_03[] = {P0_9, P0_2};
DigitalOut AUDIO_SWITCH(P0_14);
OneButton PUSH_BUTTON(P0_17, 0); //-- 0 means pullup resistor
AnalogIn noise(P0_11);

//-- Other constant definitions
static const uint8_t COLOR1 = 0;
static const uint8_t COLOR2 = 1;
enum State { SetupA, SetupB, Rand1, Rand2, Rand3, RandShow};


//-- Other definitions
volatile State state = SetupA;
volatile State next_state = state;
volatile uint8_t state_changed = 1;
volatile uint8_t mode_changed = 1;
uint8_t output_log[] = {0,0,0};

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

uint8_t random()
{
    #ifdef DEBUG
    pc.printf("%d\n", noise.read_u16()==0x0);
    #endif
    return noise.read_u16()==0x0;    
}
    
void button_pressed()
{
  if (!mode_changed)
  {
      if (state==SetupA)
            next_state = SetupB;
      else if (state==SetupB)
            next_state = SetupA;
      else if (state==Rand1)
            next_state = Rand2;
      else if (state==Rand2)
            next_state = Rand3;
      else if (state==Rand3)
            next_state = RandShow;
      else if (state==RandShow)
            next_state = Rand1;
      state_changed = 1;
  }
}

void long_press()
{
    if (state==SetupA || state==SetupB)
    {
        //-- Go to Random mode
        next_state = Rand1;
    }
    else
    {
        //-- Go to Setup mode
        next_state = SetupA;
    }
    state_changed = 1;
    mode_changed = 1;
}


int main() {
    
    //-- Setup button
    PUSH_BUTTON.attachClick(&button_pressed);
    PUSH_BUTTON.attachDuringLongPress(&long_press);
    
    //- Setup audio switch
    AUDIO_SWITCH = 0;
    
    start_sequence();
    start_sequence();
  
    while(1) {
     if (state_changed)
     {
         state = next_state;
         
         if (state == SetupA)
          {
            LED_01[COLOR1] = 1;
            LED_02[COLOR1] = 1;
            LED_03[COLOR1] = 1;
            LED_01[COLOR2] = 0;
            LED_02[COLOR2] = 0;
            LED_03[COLOR2] = 0;
            AUDIO_SWITCH = 0;
          }
          else if (state == SetupB)
          {
            LED_01[COLOR1] = 0;
            LED_02[COLOR1] = 0;
            LED_03[COLOR1] = 0;
            LED_01[COLOR2] = 1;
            LED_02[COLOR2] = 1;
            LED_03[COLOR2] = 1;
            AUDIO_SWITCH = 1;
          }
          else if (state == Rand1)
          {
            LED_01[COLOR1] = 1;
            LED_02[COLOR1] = 0;
            LED_03[COLOR1] = 0;
            LED_01[COLOR2] = 1;
            LED_02[COLOR2] = 0;
            LED_03[COLOR2] = 0;
            
            output_log[0] = random();
            AUDIO_SWITCH = output_log[0];
          }
          else if (state == Rand2)
          {
            LED_01[COLOR1] = 1;
            LED_02[COLOR1] = 1;
            LED_03[COLOR1] = 0;
            LED_01[COLOR2] = 1;
            LED_02[COLOR2] = 1;
            LED_03[COLOR2] = 0;
  
            output_log[1] = random();
            AUDIO_SWITCH = output_log[1];
          }
          else if (state == Rand3)
          {
            LED_01[COLOR1] = 1;
            LED_02[COLOR1] = 1;
            LED_03[COLOR1] = 1;
            LED_01[COLOR2] = 1;
            LED_02[COLOR2] = 1;
            LED_03[COLOR2] = 1;
            
            //-- Ensure each channel is played at least once
            if (output_log[0]==output_log[1]) 
                output_log[2]=!output_log[0];
            else
                output_log[2] = random();
            AUDIO_SWITCH = output_log[2];
          }
          else if (state == RandShow)
          {
            if (output_log[0])
            { 
                LED_01[COLOR1] = 1;
                LED_01[COLOR2] = 0;
            }
            else
            {
                LED_01[COLOR1] = 0;
                LED_01[COLOR2] = 1;
            }

            if (output_log[1])
            { 
                LED_02[COLOR1] = 1;
                LED_02[COLOR2] = 0;
            }
            else
            {
                LED_02[COLOR1] = 0;
                LED_02[COLOR2] = 1;
            }
            
            if (output_log[2])
            { 
                LED_03[COLOR1] = 1;
                LED_03[COLOR2] = 0;
            }
            else
            {
                LED_03[COLOR1] = 0;
                LED_03[COLOR2] = 1;
            }
            
            AUDIO_SWITCH = 0;
          }
        state_changed = 0;
        mode_changed = 0;
        }
    
      PUSH_BUTTON.tick();
    }
}

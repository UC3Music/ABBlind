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


//-- Hardware definitions
static const uint8_t LED_01[2] =  {5,  3};
static const uint8_t LED_02[2] =  {9,  6};
static const uint8_t LED_03[2] = {11, 10};

static const uint8_t PUSH_BUTTON = 2;

//-- Other constant definitions
static const uint8_t COLOR1 = 0;
static const uint8_t COLOR2 = 1;


//-- Other definitions
volatile uint8_t state = 0;

void start_sequence(uint16_t ms = 200)
{
  uint8_t leds[] = {LED_01[0], LED_02[0],
                    LED_03[0], LED_01[1], 
                    LED_02[1], LED_03[1]};

  for (uint8_t i = 0; i < 6; i++)
  {
    for (uint8_t j = 0; j < 6; j++)
    {
      i == j ? digitalWrite(leds[j], HIGH) : digitalWrite(leds[j], LOW);
    }
    delay(ms);
  }
}
    
void button_pressed()
{
  state = (state+1) % 4;
}

void setup() 
{
  //-- Setup LEDs
  for (uint8_t i = 0; i < 2; i++)
  {
    pinMode(LED_01[i], OUTPUT);
    pinMode(LED_02[i], OUTPUT);
    pinMode(LED_03[i], OUTPUT);
  }

  //-- Setup button
  pinMode(PUSH_BUTTON, INPUT_PULLUP);
  attachInterrupt(digitalPinToInterrupt(PUSH_BUTTON), button_pressed, RISING);

  start_sequence();
  start_sequence();
}

void loop() 
{
  if (state == 0)
  {
    digitalWrite(LED_01[0], LOW);
    digitalWrite(LED_02[0], LOW);
    digitalWrite(LED_03[0], LOW);
    digitalWrite(LED_01[1], LOW);
    digitalWrite(LED_02[1], LOW);
    digitalWrite(LED_03[1], LOW);
  }
  else if (state == 1)
  {
    digitalWrite(LED_01[0], HIGH);
    digitalWrite(LED_02[0], HIGH);
    digitalWrite(LED_03[0], HIGH);
    digitalWrite(LED_01[1], LOW);
    digitalWrite(LED_02[1], LOW);
    digitalWrite(LED_03[1], LOW);
  }
  else if (state == 2)
  {
    digitalWrite(LED_01[0], LOW);
    digitalWrite(LED_02[0], LOW);
    digitalWrite(LED_03[0], LOW);
    digitalWrite(LED_01[1], HIGH);
    digitalWrite(LED_02[1], HIGH);
    digitalWrite(LED_03[1], HIGH);
  }
  else if (state == 3)
  {
    digitalWrite(LED_01[0], HIGH);
    digitalWrite(LED_02[0], HIGH);
    digitalWrite(LED_03[0], HIGH);
    digitalWrite(LED_01[1], HIGH);
    digitalWrite(LED_02[1], HIGH);
    digitalWrite(LED_03[1], HIGH);
  }

  delay(500);

}




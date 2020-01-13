#include "Wire.h"
#include "DigiKeyboard.h"

/*
    define undefined arrow key codes
    https://www.usb.org/sites/default/files/documents/hut1_12v2.pdf
*/
#define KEY_ARROW_UP    0x52
#define KEY_ARROW_DOWN  0x51
#define KEY_ARROW_RIGHT 0x4F

/* debug pin with external pull-down resistor */
int debug_pin = 1;
int debug_state; // debug mode is active HIGH

/* delay between two input readings */
int debounce_time = 170;

/* I/O expander state variables */
byte inputs_A = 1;
byte inputs_B = 1;

void setup()
{

  Wire.begin(); // wake up I2C bus

  DigiKeyboard.delay(50); // initialize keyboard transmission

  pinMode(debug_pin, INPUT); // initialize debug pin as input

}

void loop()
{

  /*
     this is generally not necessary but with some older systems
     it seems to prevent missing the first character after a delay
  */
  DigiKeyboard.sendKeyStroke(0);

  /* READ debug pin */
  debug_state = digitalRead(debug_pin);

  /* READ GPIO-A */
  Wire.beginTransmission(0x20);
  Wire.write(0x12);             // set MCP23017 memory pointer to GPIO-A address
  Wire.endTransmission();
  Wire.requestFrom(0x20, 1);    // request one byte of data from MCP20317
  inputs_A = Wire.read();       // store the incoming byte

  /* READ GPIO-B */
  Wire.beginTransmission(0x20);
  Wire.write(0x13);             // set MCP23017 memory pointer to GPIO-B address
  Wire.endTransmission();
  Wire.requestFrom(0x20, 1);    // request one byte of data from MCP20317
  inputs_B = Wire.read();       // store the incoming byte

  /*
      Poll Button States
  */

  /* SCORE EVENT */
  if (inputs_B == 0b10111111)
  {
    if (not debug_state)
    {
      // [Ctrl+S]
      DigiKeyboard.sendKeyStroke(KEY_S, MOD_CONTROL_LEFT);
      DigiKeyboard.delay(debounce_time);
    }
    else
    {
      DigiKeyboard.print("# SCORE EVENT [Ctrl+S]");
      DigiKeyboard.print("\n");
      DigiKeyboard.delay(debounce_time);
    }
  }

  /* GET TIMES */
  if (inputs_B == 0b11011111)
  {
    if (not debug_state)
    {
      // [F3]
      DigiKeyboard.sendKeyStroke(KEY_F3);
      DigiKeyboard.delay(debounce_time);
    }
    else
    {
      DigiKeyboard.print("# GET TIMES [F3]");
      DigiKeyboard.print("\n");
      DigiKeyboard.delay(debounce_time);
    }
  }

  /* PREV HEAT */
  if (inputs_B == 0b11101111)
  {
    if (not debug_state)
    {
      // [F4]
      DigiKeyboard.sendKeyStroke(KEY_F4);
      DigiKeyboard.delay(debounce_time);
    }
    else
    {
      DigiKeyboard.print("# PREV HEAT [F4]");
      DigiKeyboard.print("\n");
      DigiKeyboard.delay(debounce_time);
    }
  }

  /* NEXT HEAT */
  if (inputs_B == 0b11111101)
  {
    if (not debug_state)
    {
      // [F5]
      DigiKeyboard.sendKeyStroke(KEY_F5);
      DigiKeyboard.delay(debounce_time);
    }
    else
    {
      DigiKeyboard.print("# NEXT HEAT [F5]");
      DigiKeyboard.print("\n");
      DigiKeyboard.delay(debounce_time);
    }
  }

  /* PREV EVENT */
  if (inputs_B == 0b11111011)
  {
    if (not debug_state)
    {
      // [Ctrl+F4]
      DigiKeyboard.sendKeyStroke(KEY_F4, MOD_CONTROL_LEFT);
      DigiKeyboard.delay(debounce_time);
    }
    else
    {
      DigiKeyboard.print("# PREV EVENT [Ctrl+F4]");
      DigiKeyboard.print("\n");
      DigiKeyboard.delay(debounce_time);
    }
  }

  /* NEXT EVENT */
  if (inputs_B == 0b11110111)
  {
    if (not debug_state)
    {
      // [Ctrl+F5]
      DigiKeyboard.sendKeyStroke(KEY_F5, MOD_CONTROL_LEFT);
      DigiKeyboard.delay(debounce_time);
    }
    else
    {
      DigiKeyboard.print("# NEXT EVENT [Ctrl+F5]");
      DigiKeyboard.print("\n");
      DigiKeyboard.delay(debounce_time);
    }
  }

  /* UP */
  if (inputs_A == 0b11011111)
  {
    if (not debug_state)
    {
      // [Up]
      DigiKeyboard.sendKeyStroke(KEY_ARROW_UP);
      DigiKeyboard.delay(debounce_time);
    }
    else
    {
      DigiKeyboard.print("# UP");
      DigiKeyboard.print("\n");
      DigiKeyboard.delay(debounce_time);
    }
  }

  /* DOWN */
  if (inputs_A == 0b10111111)
  {
    if (not debug_state)
    {
      // [Down]
      DigiKeyboard.sendKeyStroke(KEY_ARROW_DOWN);
      DigiKeyboard.delay(debounce_time);
    }
    else
    {
      DigiKeyboard.print("# DOWN");
      DigiKeyboard.print("\n");
      DigiKeyboard.delay(debounce_time);
    }
  }

  /* LEFT */
  if (inputs_B == 0b11111110)
  {
    if (not debug_state)
    {
      // [Left]
      DigiKeyboard.sendKeyStroke(KEY_ARROW_LEFT);
      DigiKeyboard.delay(debounce_time);
    }
    else
    {
      DigiKeyboard.print("# LEFT");
      DigiKeyboard.print("\n");
      DigiKeyboard.delay(debounce_time);
    }
  }

  /* RIGHT */
  if (inputs_A == 0b11101111)
  {
    if (not debug_state)
    {
      // [Right]
      DigiKeyboard.sendKeyStroke(KEY_ARROW_RIGHT);
      DigiKeyboard.delay(debounce_time);
    }
    else
    {
      DigiKeyboard.print("# RIGHT");
      DigiKeyboard.print("\n");
      DigiKeyboard.delay(debounce_time);
    }
  }

  /* ACCEPT */
  if (inputs_A == 0b01111111)
  {
    if (not debug_state)
    {
      // [<-] (pause 30ms) [Enter]
      DigiKeyboard.sendKeyStroke(KEY_ARROW_LEFT);
      DigiKeyboard.delay(30);
      DigiKeyboard.sendKeyStroke(KEY_ENTER);
      DigiKeyboard.delay(debounce_time);
    }
    else
    {
      DigiKeyboard.print("# ACCEPT [<-] [Enter]");
      DigiKeyboard.print("\n");
      DigiKeyboard.delay(debounce_time);
    }
  }

  /* ENTER */
  if (inputs_A == 0b11110111)
  {
    if (not debug_state)
    {
      // [Enter]
      DigiKeyboard.sendKeyStroke(KEY_ENTER);
      DigiKeyboard.delay(debounce_time);
    }
    else
    {
      DigiKeyboard.print("# ENTER");
      DigiKeyboard.print("\n");
      DigiKeyboard.delay(debounce_time);
    }
  }

  /* CLOSE */
  if (inputs_A == 0b11111011)
  {
    if (not debug_state)
    {
      // [Alt+F4]
      DigiKeyboard.sendKeyStroke(KEY_F4, MOD_ALT_LEFT);
      DigiKeyboard.delay(debounce_time);
    }
    else
    {
      DigiKeyboard.print("# CLOSE [Alt+F4]");
      DigiKeyboard.print("\n");
      DigiKeyboard.delay(debounce_time);
    }
  }

}

#define DEBUG
//********************************
// Include Libraries
//********************************
#include <stdarg.h>

//********************************
// Serial Communication Variables
//********************************
boolean serial_received = false;

// Functions
void p(char *fmt, ... ){ //http://playground.arduino.cc/Main/Printf
        char buf[128]; // resulting string limited to 128 chars
        va_list args;
        va_start (args, fmt );
        vsnprintf(buf, 128, fmt, args);
        va_end (args);
        Serial.print(buf);
}

void setup() {
  Serial.begin(9600);
  pinMode(A0, INPUT);  
}

void loop() {
  
  //**********************************  
  // Read the input on analog pin 0:
  //**********************************  
  int adc_value = analogRead(A0);  
  
  //**********************************
  // Serial output          // this part is based on oscilloscope.h, from Sofian Audry
  //**********************************
  // Can't be written only as Serial.write(adc_value) because the ADC has a 10-bit resolution and we are sending 8 bits at a time
  // Will be on code only if not in debug mode
  #ifndef DEBUG 
  Serial.write(0xff);             // send init byte
  Serial.write(1);                // send channel
  Serial.write(adc_value >> 8); 
  Serial.write(adc_value);  
  #endif

  //**********************************
  // ASCII output
  //**********************************
  // Print the values to the serial terminal for debugging purposes in the serial monitor
  // Will be on code only in debug
  #ifdef DEBUG
  p("Debug Mode\n");  
  #endif
  
  delay(1000);
}


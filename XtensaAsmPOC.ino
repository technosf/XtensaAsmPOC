/*
  Proof of concept call to Xtensa ASM file
  Running on ESP32
*/

#include "test-asm.h"   // ASM header

uint8_t in1 = 0x11;   // Dummy values identiable in a core dump
uint8_t in2 = 0x22;
uint32_t out;



void setup()
{
  Serial.begin(115200);
  Serial.printf("\n\nCalling the ASM C header with values\n\tIn1: %#010x \tIn2: %#010x \tOut: %#010x\n\n", in1, in2, out );
  out = asmtest( in1, &in2 );
  Serial.println("Call Complete.");
  Serial.printf("\tIn1: %#010x \tIn2: %#010x \tOut: %#010x\n\n", in1, in2, out);
}

void loop()
{
}

/*
  Proof of concept call to Xtensa ASM file
  Running on ESP32
*/

#include "test-asm.h"   // ASM header

uint8_t in1 = 0x2F;   // Dummy value identiable in a core dump
uint8_t in2 = 0x1F;
uint32_t out;

void setup()
{
  Serial.begin(115200);
  Serial.printf("\n\nCalling the ASM C header with values %#010x and %#010x\n\n", in1, in2);

  out = asmtest( in1, in2 );

  Serial.printf("Call Complete.\nIn1: %#010x \tIn2: %#010x \tOut: %#010x\n\n", in1, in2, out );
}

void loop()
{
}

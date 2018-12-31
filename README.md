# Xtensa ASM Proof Of Concept
Xtensa Asm from Arduino Core Proof Of Concept

Proof of concept using Arduino core for ESP32 ASM where the ASM resides ina ".S" file and there is no C inline asm. 
Questions regarding how and where input/output parameters and data structures are loaded. 
Using the test C->ASM external call definition:
uint32_t asmtest( uint8_t inputone, uint8_t inputtwo );
1. Where do the input params go?
1. How do  get the output param?
1. What restrictions are there on changing the values input parameters?
1. Can any of these parameters be predefiend in the C or a linker defintion file?

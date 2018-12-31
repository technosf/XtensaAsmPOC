# Xtensa ASM Proof Of Concept
Xtensa Asm from Arduino Core Proof Of Concept

POC using Arduino core for ESP32 ASM where the ASM resides in a ".S" file and there is no C inline asm. 
Exploring how and where input/output parameters and data structures are loaded. 
The test fixture is the C->ASM external call definition:
````
uint8_t asmtest( uint8_t inputone, uint8_t * outputtwo );
````

## Output
>Calling the ASM C header with values
>	In1: 0x00000011 	In2: 0x00000022 	Out: 0000000000
>
>Call Complete.
>	In1: 0000000000 	In2: 0x00000011 	Out: 0x000000ff

## Findings
1. Input params are loaded into the registers
1. inputone i getting clobbered - why? Making it a const in the sketch fixes... but?
1. Pointers as i/o vectors looks like it's a better way to go than passing the values poss?

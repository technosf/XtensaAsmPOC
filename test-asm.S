/*
 * The ASM test code to test
 * 
 * Called via a CALLX from C++/.ino
 * Input params are in a2-a7
 * 
 * Copies value in a2 to address in a3 via a10
 * Return is in a2
 */

// Use defines to reference registers
#define out a2
#define in1 a2
#define p_in2 a3
#define swap a4
 
  .text                   # Code section
  .align                  # Align the byte boundaries - needed?
  .global asmtest         # Make the symbol available to C++ for call
  .type   asmtest,@function
asmtest:
  entry a1,    32         # Create a window for execution
  movi  swap,  0xdd       # Copy 0xdd to swap immediate
  mov   swap,  in1        # Copy swap to in1
  s8i   swap,  p_in2, 0   # Copy the swap value to the address in p_in2
  movi  out,   0xff       # Move the return value to a2
  retw                    # Return from the windowed call
      

    

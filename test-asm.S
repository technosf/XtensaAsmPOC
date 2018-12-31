/*
 * The ASM test code to test
 * 
 * Called via a CALLX from C++/.ino
 * Input params are in a2-a7
 * 
 * Copies value in a2 to address in a3 via a10
 * Return is in a2
 */
  .text               # Code section
  .align              # Align the byte boundaries - needed?
  .global asmtest     # Make the symbol available to C++ for call
asmtest:
  entry a1,   8       # Create a window for execution
  mov   a10,  a2      # Copy a2 value to a10 
  s32i  a10,  a3, 0   # Copy the a10 value to the address in a3
  movi  a2,   0xff    # Move the return value to a2
  retw                # Return from the windowed call
 


    

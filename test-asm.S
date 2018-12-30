/*
 * The ASM test code to test
 */

  .data

//  .global inputone    // Test creating a reference to an input param
//inputone:   
//  .int    
//  .set addrinputone, inputone   // Create a symbol for the address of the global
//
//  .global inputtwo    // Test creating a reference to an input param
//inputtwo:   
//  .int    
//  .set addrinputtwo, inputtwo   // Create a symbol for the address of the global

  .text  
  .align
  .global asmtest
asmtest:
    mov  a14,  a10
    mov  a15,  a11
    movi  a10,   0xAA             // Move a test value in a10

    
//    movi  a11,   0xBB             // Move a test value in a11
//    ill
//    movi  a13,  addrinputtwo    // Load the address of input two into a13
//    l8ui  a10,  a13,  0         // Load the value at the address in a13 into a10

    

/*
 * Header defining as C call to implement in ASM
 * 
 * inputone should be copied to outputtwo, and a value returned from the call
 */
extern "C" 
{
  uint8_t asmtest( uint8_t inputone, uint8_t * outputtwo );
}

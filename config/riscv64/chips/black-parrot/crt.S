# See LICENSE for license details.

#include "encoding.h"

#if __riscv_xlen == 64
# define LREG ld
# define SREG sd
# define REGBYTES 8
#else
# define LREG lw
# define SREG sw
# define REGBYTES 4
#endif

  .section ".text.init"
  .globl _start
_start:

  # allocate ~128KB of stack
  auipc sp, 0x20
  
 # initialize global pointer
  .option push
  .option norelax
    la gp, __global_pointer$
  .option pop


  # jump to benchmark
  j _init

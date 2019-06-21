#include <stdlib.h>
#include <machine/bsg_newlib_fs.h>

extern int putchar(int c);

void bsg_newlib_init(void) {
  if(bsg_newlib_fs_init() < 0) {
    exit(-1);
  }
}

void bsg_newlib_exit(int exit_status) {
  exit(exit_status);
}

void bsg_newlib_sendchar(char ch) {
  putchar((int)ch);
}

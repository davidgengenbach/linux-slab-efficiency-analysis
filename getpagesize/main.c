#include <unistd.h>
#include <stdio.h>

int main(int argc, char* argv[]) {
  printf("%d\n", getpagesize());
  return 0;
}

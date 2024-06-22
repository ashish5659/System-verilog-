// ///////////////////Hello world c code////////////
#include <stdio.h>
#include <stdlib.h>

extern "C" void c_method() {

  printf("     Hello World...!\n");

}

/////////////////////DPI call////////////////////
module dpi_tb;

  import "DPI-C" function void c_method();
  
  initial
  begin
    $display("Before calling C Method");
    c_method();
    $display("After calling C Method");
  end
  
endmodule

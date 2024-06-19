class first;
  rand bit wr;
  rand bit rd;
  constraint cntrl{
    wr dist {0 := 30, 1 := 70};
    rd dist {0 :/ 30, 1 :/ 70};
  }
endclass

module tb;
  first f;
  //integer i;
  initial begin 
    f = new();
    for(int i = 0; i<=10; i++) begin
      f.randomize();
    $display("value of rd:%0d and wr:%0d", f.rd, f.wr);
  end
  end
  
endmodule

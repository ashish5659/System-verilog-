module tb;
  event a1;
  event a2;
  initial begin
    -> a1;
    -> a2;
  end
  initial begin
    //@(a)                     // nothing will happen
    wait(a1.triggered);
    $display("event value of a1:%0d");
    wait(a2.triggered);
    $display("event value of a2");
  end
endmodule

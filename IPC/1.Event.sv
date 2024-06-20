module tb;
  event a;
  initial begin 
    #10;
    -> a;
  end
  initial begin
   // @(a);
    wait (a.triggered);
    $display("Received event at: %0d", $time);
  end
endmodule

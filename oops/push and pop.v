module queue_tb();
  string a1[$] = {"rat", "mouse", "lion", "dog"};
  
  initial begin
    $display("a1: %p", a1);
    // insert animal
    a1.insert(2, "deer");
    $display("a1 after inserting value:%p",a1);
    //push
    a1.push_back("deer");
    $display("new a1 %p", a1);
    
    //pop
    
    $display("after pop %p", a1.pop_front);
  end 
  endmodule

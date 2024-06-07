module dynamic_array;
  int a[];
  initial begin
    $display("size of array is %d", a.size());
    //insert 4 value
  a = new[4];
    $display("size of array is %d", a.size());
    //insert array of 4
    a = {1,2,3,4};
    for(int i=0;i<4;i++)begin
      $display("a[%d]=",i,a[i]);
     // insert array of 10
      a= {1,2,3,4,5,6,7,8,9,10};
      for(int i=0; i<10 ;i++) begin
        $display ("a[%d]",i, a[i]);
       //delete all values
        a.delete();
        $display ("a[%d]",i, a[i]);
        
      end
    end
  end
endmodule

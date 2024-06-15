class first;
  int data;
endclass
    
module tb;
   first f1;
   first p1;
  initial begin
        f1 = new();//constructor
        f1.data = 24;
        p1 = new f1;  //copying of data of f1 to p1
        $display("value of data:%0d", p1.data);
        p1.data = 545;
        $display("value of data:%0d", f1.data);
      end 
    endmodule
        

module tb;
  task swap (input bit[1:0]a,input bit[1:0]b);
    bit[1:0] temp;
    
    temp=a;
    a=b;
    b=temp;
    $display("swapped value of a:%0d and b%0d",a,b);
  endtask
  
  bit[1:0] a;
  bit[1:0] b;
  initial begin
    a=1;
    b=2;
    $display("swapped value of a:%0d and b%0d",a,b);
  end 
  
endmodule

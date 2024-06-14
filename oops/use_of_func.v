module tb;
  function bit[4:0]add(input [3:0] a, b);
    return a+b;
    end function
      
      bit[4:0]result =0;
    initial begin
      result = add(4'b1010, 4'b1000);
      $display("value of addition:%0d", result);
    end 
      endmodule

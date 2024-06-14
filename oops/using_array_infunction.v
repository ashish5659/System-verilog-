module tb;
  
  bit[3:0] res[16];
  
  function automatic void init_arr (ref bit [3:0] a[16]);
    for (int i=0; i <= 15; i++)begin
      a[i] = 1;
    end 
  endfunction
  
  initial begin
    init_arr(res);
    for (int i=0; i <= 15; i++) begin
       $display("res[0%d]:%d",i,res[i]);
     end
  end
endmodule
   

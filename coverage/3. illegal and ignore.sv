module eg();
  bit [3:0] a;
  
  covergroup cg;
    
    option.per_instance = 1;
    A : coverpoint a {
      //ignore_bins ib = {10,11,12,13}                    /////////// when we dont want error in simulator use ignore
      illegal_bins ilb = {10,11,12,13};                      ////////////  want error in si,ulator use illegal
    }
    
  endgroup: cg
  
  initial begin: B1
    cg c = new();
    repeat (50) begin : B2
      a = $urandom();
      c.sample();
    end: B2
  end:B1;
  
  initial begin: B3
    #500;
    $stop();
  end: B3
endmodule: eg
    
    

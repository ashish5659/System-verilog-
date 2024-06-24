module eg();
  bit [7:0] x;
  bit [1:0] y;

  covergroup cg;
    option.per_instance = 1;
    X: coverpoint x; 
    Y: coverpoint y;
  endgroup: cg

  initial begin: B1
    cg c = new();

    repeat (15) begin: B2
      {x, y} = $urandom();
      c.sample();
    end: B2
  end: B1


endmodule: eg
//////////////////////////////////////////////////////////////////
################################################################3
rundo file 
vsim +access+r;
run -all;
acdb save;
acdb report -db  fcover.acdb -txt -o cov.txt -verbose  
exec cat cov.txt;
exit 

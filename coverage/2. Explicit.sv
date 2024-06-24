module eg();
  bit[2:0] a;
  
  covergroup cg;
    
    option.per_instance = 1;
    A : coverpoint a {
      bins  b0 = {0};
      bins  b1 = {1};
      bins  b2 = {2};
      bins  b3 = {3};
      bins  b4 = {4};
      bins  b5 = {5};
      bins  b6 = {6};
      bins  b7 = {7};
      
				
			
    //  { bins b[] = { [0:7] };		// vector/array of bins i.e same result as above i.e b[0] ... b[7]
					
				 //bins b[] = { [0:$] };		// $ means last possible value i.e 7 & same result as above i.e b[0] ... b[7]
						
				 //bins b[] = { [$:7] };		// $ means least possible value i.e 0 to 7 & same result as above i.e b[0] ... b[7]

				 //bins b = {0,1,2,3,4,5,6,7};	// scalar bin i.e single bin for the entire range 
				 //bins b = { [0:7] };			// scalar bin i.e single bin for the entire range 
				 //bins b = { [0:$] };			// scalar bin i.e single bin for the entire range
          
          
				 //bins b = { [$:7] };			// scalar bin i.e single bin for the entire range 

				  }	
						 
	 
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
    
    

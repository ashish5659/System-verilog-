module enum_operation;
  typedef enum {pass, fail, operation} status;
  
// string for testing
  string str1 = "mango";
  string str2 = "orange";
  initial
    begin
//Display initial string
      $display("initial string: str1=%s, str2=%s", str1, str2);
      
//compare
      status comparison_result;
      if(str1 == str2)
        comparison_result = pass;
      else
        comparison_result = fail;
      $display("comparison result: %s", (comparison_result == pass) ? "pass" : "fail");      
   
      
    end 
endmodule
  

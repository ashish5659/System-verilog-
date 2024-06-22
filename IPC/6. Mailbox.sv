class generator;
  int data = 10;
  mailbox mbx;
  
  task run();
    mbx.put(data);
    $display("Generator data send: %0d", data);
  endtask 
endclass
    
class driver;
  int datac = 20;
  mailbox mbx;
  
  task run();
    mbx.get(datac);
    $display("Driver data received: %0d", datac);
  endtask
endclass

module tb;
  generator gen;
  driver drv;
  mailbox mbx;
  initial begin 
    gen = new();
    drv = new();
    mbx = new();
    // here .mbx is same driver as it in generator 
    gen.mbx = mbx;
    // here .mbx is same driver as it in driver class
    drv.mbx = mbx;
    
    gen.run();
    drv.run();
  end
endmodule
    
  
             
  
      

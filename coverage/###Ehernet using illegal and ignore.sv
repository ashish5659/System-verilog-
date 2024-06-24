class ethernet;
  
  rand bit[15:0] SA; 
  rand bit[15:0] DA; 
  bit [31:0] data; 
  bit [31:0] crc; 
  
  //  0x000 to 0xFFF
  constraint sa_illegal_range {
    SA inside {[16'h0000:16'h0FFF]};
  }
  
  //  0x111 to 0x51F
  constraint da_ignore_range {
    DA inside {[16'h111:16'h51F]} == 0;
  }

  function void display();
    $display("SA : %0h DA : %0h data : %0h crc : %0h", SA, DA, data, crc);
  endfunction
  
endclass

class producer;
  
  ethernet e1;
  mailbox #(ethernet) mbx;
  event next;
  
  function new(mailbox #(ethernet) mbx);
    e1 = new();
    this.mbx = mbx;
  endfunction
  
  task run();
    forever begin
      assert(e1.randomize()) else $error("Randomization Failed");
      $display("Data Produced in Producer");
      e1.display();
      mbx.put(e1);
      @(next);
    end
  endtask
  
endclass
class consumer;
  
  ethernet e1;
  mailbox #(ethernet) mbx;
  event next;
  
  function new(mailbox #(ethernet) mbx);
    this.mbx = mbx;
  endfunction
  
  task run();
    forever begin
      mbx.get(e1);
      $display("Data Received in Consumer");
      e1.display();
      $display("------------------------------------------------");
      ->next;
      #5;
    end
  endtask
  
endclass
module tb();
  
  mailbox #(ethernet) mbx;
  producer p1;
  consumer c1;
  
  initial begin
    mbx = new();
    p1 = new(mbx);
    c1 = new(mbx);
    p1.next = c1.next;
    
    fork
      p1.run();
      c1.run();
    join_none
    
    #1000;
    $finish;
  end
  
endmodule

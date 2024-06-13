class Address;
  int house_no;
  string locality;
  string state;
  int pincode;
  string country;
  
  //constructor
  function new(int house_no, string locality, string state, int pincode, string country);
    this.house_no = house_no;
    this.locality = locality;
    this.state = state;
    this.pincode = pincode;
    this.country = country;
  endfunction
  // set()
   function void set(int house_no, string locality, string state, int pincode, string country);
    this.house_no = house_no;
    this.locality = locality;
    this.state = state;
    this.pincode = pincode;
    this.country = country;
  endfunction
 // get()
  
  function string getaddress();
    return {"house_no: ", this.house_no, " locality: ", this.locality, " state: ", this.state, " pincode: ", this.pincode, " country: ", this.country};
  endfunction
    
    
    function void print();
      $display("house no:%0d" , this.house_no);
      $display("locality:%s", this.locality);
      $display("state:%s", this.state);
      $display("pincode:%0d" , this.pincode);
      $display("country:%s" , this.country);
     
    endfunction
    endclass
    

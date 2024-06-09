module struct_example;
  typedef struct
  {
    string name;    
    int roll_no;    
    int year;       
    string address; 
    int pincode;  
} 
student;

    initial begin
        student.name = "Ashish";
        student.roll_no = 101;
        student.year = 4;
        student.address = "123 Main St";
        student.pincode = 12345;

        $display("Student Information:");
        $display("Name: %s", student.name);
        $display("Roll No: %d", student.roll_no);
        $display("Year: %d", student.year);
        $display("Address: %s", student.address);
        $display("Pincode: %d", student.pincode);
    end
endmodule

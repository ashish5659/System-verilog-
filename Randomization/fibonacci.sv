class Fibonacci;
  rand int unsigned intArray[]; // dynamic array

  constraint fibonacci_cnstr {
    intArray.size() inside {[2:11]}; // array size between 2 and 11

    intArray[0] == 0;  // first element is 0
    intArray[1] == 1;  // second element is 1

    foreach (intArray[i]) {
      if (i > 1) {
        intArray[i] == intArray[i-1] + intArray[i-2];
      }
    }
  }
endclass

        module tb_fibonacci;
  // Declare an instance of the Fibonacci class
  Fibonacci fib;

  initial begin
    // Create the Fibonacci class instance
    fib = new();

    // Randomize the instance
    if (fib.randomize()) begin
      $display("Randomization successful!");
      $display("Fibonacci sequence of size %0d:", fib.intArray.size());

      // Display the generated Fibonacci sequence
      foreach (fib.intArray[i]) begin
        $display("intArray[%0d] = %0d", i, fib.intArray[i]);
      end
    end else begin
      $display("Randomization failed!");
    end

    // Finish the simulation
    $finish;
  end
endmodule

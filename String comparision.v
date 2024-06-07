module string_comparison;

  string A = "Mango";
  string B = "Apple";

  initial begin
    if (A == B) begin
      $display("Strings are equal: A = %s, B = %s", A, B);
    end
    else begin
      $display("Strings are not equal: A = %s, B = %s", A, B);
    end
  end

endmodule

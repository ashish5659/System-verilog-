module logical_operation_pipeline(
  input logic [31:0] counter,
  output logic output
);
  logic [7:0] A,B,C,D;
  logic [7:0] E1,E2;
  logic [7:0] F1,F2,F3;
  
  always@(posedge clk) begin
    A <= counter[7:0];
    B <= counter[15:8];
    C <= counter[23:16];
    D <= counter[31:24];
  end
  //calc E
  always@(posedge clk) begin
    E1 <= A|(B&C);
  end
  //calc E2
   always@(posedge clk) begin
     E2 <= E1;
   end
  //cal f
   always@(posedge clk) begin
     F1 <= B & C;
     F2 <= A|D;
   end
  
  always@(posedge clk) begin
    F3 <= F1 ^ F2;
  end
  
  assign output = (E2 == F3) ? 1 : 0;
  
endmodule  

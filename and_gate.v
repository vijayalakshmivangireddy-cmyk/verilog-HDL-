`timescale 1ns/1ps

// AND Gate - RTL Model
// Tool: EDA Playground / Icarus Verilog
// Author: Vangireddy Vijayalakshmi

module and_gate(
  
  input wire a,b, // Inputs
  output wire c   // Output
);
  assign c= a&b;   // Continuous assignment
  
endmodule 


`timescale 1ns/1ps

// Testbench for AND Gate
// Tool: EDA Playground / Icarus Verilog
// Author: Vangireddy Vijayalakshmi

module and_gate_tb;
  
  reg a,b;    // Inputs to DUT
  wire c;     // Output from DUT
  
  // Instantiate DUT
  and_gate dut(
    .a(a),
    .b(b),
    .c(c)
  );
  initial 
    begin
      $dumpfile("and_gate.vcd");
      $dumpvars(1,and_gate_tb);
      $monitor("time = %0t  a=%b b=%b c=%b",$time,a,b,c);
      
      // Apply all input combinations
          a=0; b=0;
      #10 a=0; b=1;
      #10 a=1; b=0;
      #10 a=1; b=1;
      #10 $finish;
    end
endmodule
      
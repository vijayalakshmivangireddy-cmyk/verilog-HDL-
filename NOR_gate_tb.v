`timescale 1ns/1ps

// Testbench for NOR Gate
// Tool: EDA Playground / Icarus Verilog
// Author: Vangireddy Vijayalakshmi

module nor_gate_tb;
  
  reg a,b;    // Inputs to DUT
  wire c;     // Output from DUT
  
  // Instantiate DUT
  nor_gate dut(
    .a(a),
    .b(b),
    .c(c)
  );
  initial 
    begin
      $dumpfile("nor_gate.vcd");
      $dumpvars(1,nor_gate_tb);
      $monitor("time = %0t  a=%b b=%b c=%b",$time,a,b,c);
      
      // Apply all input combinations
          a=0; b=0;
      #10 a=0; b=1;
      #10 a=1; b=0;
      #10 a=1; b=1;
      #10 $finish;
    end
endmodule
      
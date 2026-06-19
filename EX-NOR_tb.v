`timescale 1ns/1ps

// Testbench for EX_NOR Gate
// Tool: EDA Playground / Icarus Verilog
// Author: Vangireddy Vijayalakshmi

module EX_NOR_tb;
  
  reg a,b;    // Inputs to DUT
  wire c;     // Output from DUT
  
  // Instantiate DUT
  EX_NOR dut(
    .a(a),
    .b(b),
    .c(c)
  );
  initial 
    begin
      $dumpfile("EX_NOR.vcd");
      $dumpvars(1,EX_NOR_tb);
      $monitor("time = %0t  a=%b b=%b c=%b",$time,a,b,c);
      
      // Apply all input combinations
          a=0; b=0;
      #10 a=0; b=1;
      #10 a=1; b=0;
      #10 a=1; b=1;
      #10 $finish;
    end
endmodule
      
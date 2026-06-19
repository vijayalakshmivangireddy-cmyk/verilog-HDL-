`timescale 1ns/1ps

// NOR Gate - RTL Model
// Tool: EDA Playground / Icarus Verilog
// Author: Vangireddy Vijayalakshmi

module nor_gate(
  
  input wire a,b, // Inputs
  output wire c   // Output
);
  assign c= ~(a|b);   // Continuous assignment
  
endmodule 

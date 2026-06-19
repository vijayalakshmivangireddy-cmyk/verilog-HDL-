`timescale 1ns/1ps

// NAND Gate - RTL Model
// Tool: EDA Playground / Icarus Verilog
// Author: Vangireddy Vijayalakshmi

module nand_gate(
  
  input wire a,b, // Inputs
  output wire c   // Output
);
  assign c= ~(a&b);   // Continuous assignment
  
endmodule 

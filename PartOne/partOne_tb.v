`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:37:42 01/25/2023
// Design Name:   partOne
// Module Name:   C:/Users/fereshteh/FPGA/project/partOne_tb.v
// Project Name:  project
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: partOne
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module partOne_tb;

	// Inputs
	reg [7:0] x;

	// Outputs
	wire [7:0] y;

	// Instantiate the Unit Under Test (UUT)
	partOne uut (
		.x(x), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		x = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		x = 8'b10101011;

	end
      
endmodule


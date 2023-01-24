`timescale 1ns / 1ps

module partThree_tb;

	// Inputs
	reg [7:0] x;

	// Outputs
	wire [7:0] y;

	// Instantiate the Unit Under Test (UUT)
	partThree uut (
		.x(x), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		x = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		x = 8'b10101000;
        
		// Add stimulus here

	end
      
endmodule


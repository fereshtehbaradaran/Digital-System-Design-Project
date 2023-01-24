`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:22:18 01/25/2023 
// Design Name: 
// Module Name:    partOne 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module partOne(
    input [7:0] x,
    output reg [7:0] y
    );
	 
	 reg [7:0] LUT [255:0];
	 initial $readmemb("LUTValues.mem", LUT, 0 , 255);

	 always @(*) begin
		y <= LUT[x];
	 end

endmodule

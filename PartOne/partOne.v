`timescale 1ns / 1ps

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

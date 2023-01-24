`timescale 1ns / 1ps

module partTwo(
    input [7:0] x,
    output reg [7:0] y
    );
	 
	 reg [7:0] LUT [255:0];
	 initial $readmemb("LUTValues.mem");
	 
	 
	 reg [7:0] LUTPart2 [63:0];
	 integer i = 0;
	 initial begin
		for(i = 0; i < 64; i = i + 1)
			LUTPart2[i] <= LUT[4 * i];
	 end
	 
	 
	 reg [5:0] x1; //6 bit
	 reg [5:0] x2;
	 reg [1:0] xLSB;  // 2 bit (256 / 64 = 4 = 2 ^ 2)
	 
	 
	 reg [7:0] y1;
	 reg [7:0] y2;
	 reg [7:0] yDiff;
	 reg [7:0] tmp;
	 
	 
	 always @ (*) begin
		x1 <= x[7:2];
		x2 <= (x[7:2] + 1);
		xLSB <= x[1:0];
		
		y1 <= LUTPart2[x1];
		y2 <= LUTPart2[x2];
		yDiff <= (y2 - y1);
		
		tmp <= (xLSB * yDiff) >> 2 ; //== devide by 4 (2 ^ (n - p))
		
		y <= tmp + y1;
	 
	 end


endmodule

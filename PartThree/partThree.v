`timescale 1ns / 1ps

module partThree(
    input [7:0] x,
    output reg [7:0] y
    );
	 
	 reg [7:0] LUT [63:0];
	 initial $readmemb("LUTValues.mem", LUT, 0 , 63);
	 
	 
	 reg [5:0] x1;
	 reg [5:0] x2;
	 reg [5:0] x3;
	 reg [1:0] xLSB;
	 reg [5:0] xLSB2; //xLSB ^ 2
	 
	 
	 reg [7:0] y1;
	 reg [7:0] y2;
	 reg [7:0] y3;
	 reg [7:0] y3_y1_diff;
	 reg [7:0] yDiff;
	 
	 
	 reg [7:0] tmp1;
	 reg [7:0] tmp2;
	 
	 
	 always @ (*) begin
		x1 <= (x[7:2] - 1);
		x2 <= (x[7:2]);
		x3 <= (x[7:2] + 1);
		xLSB <= x[1:0];
		xLSB2 <= xLSB * xLSB;
		
		
		y1 <= LUTPart3[x1];
		y2 <= LUTPart3[x2];
		y3 <= LUTPart3[x3];
		 
		y3_y1_diff <= (y3 - y1);
		yDiff <= (y1 - (y2 << 1) + y3);
		
		
		tmp1 <= (xLSB * y3_y1_diff) >> 3;
		tmp2 <= (xLSB2 * yDiff) >> 5;
		
		y <= y2 + tmp1 + tmp2;
	 
	 end
	 

endmodule

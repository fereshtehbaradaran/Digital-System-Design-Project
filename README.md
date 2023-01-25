# Digital-System-Design-Project

For smooth functions, LUT-based methods can be made more memory-efficient, if they are combined with interpolation. The project purpose was to implement
interpolation using the quadratic method.

function worked on: **y = x <sup>2</sup> - x <sup>3</sup>** ,0 < x < 1 (8-bit input and output)

## Part One
In order to implement y = f(x) over a finite domain, we can pre-calculate and store the values of y over the entire domain of x in a memory. The values of x can next be used as the address bus of the memory during runtime. 256 values of f(x) calculated (using python code) and stored in LUT.

## Part Two
LUT-based methods can be made more memory-efficient, if they are combined with linear interpolation. if one uses the P MBS bits of x (P < N) for addressing a 2<sup>p</sup> points LUT, the N-P LSB bits of x could be used for linear interpolating between two successive samples of the P-point LUT.

![Alt text](/PartTwo/Formula.png)

## Part Three
LUT-based methods can be made more memory-efficient and more accurate using quadratic interpolation:
![Alt text](/PartThree/Formula.png)

## Compare accuracy:
Part One **>** part Three **>** part Two

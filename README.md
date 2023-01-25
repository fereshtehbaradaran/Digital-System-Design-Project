# Digital-System-Design-Project

## OVERVIEW
The project purpose is to implement interpolation using the quadratic method.

## Part One
In order to implement y = f(x) over a finite domain, we can pre-calculate and store the values of y over the entire domain of x in a memory. The values of x can next be used as the address bus of the memory during runtime. 256 values of f(x) calculated (using python) and stored in LUT.

## Part Two
LUT-based methods can be made more memory-efficient, if they are combined with linear interpolation. if one uses the P MBS bits of x (P < N) for addressing a 2^p points LUT, the N-P LSB bits of x could be used for linear interpolating between two successive samples of the P-point LUT.

## Part Three
LUT-based methods can be made more memory-efficient and more accurate using quartic interpolation:

Compare accuracy:
Part One > part Three > part Two

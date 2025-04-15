Keep Talking and Nobody's FPGA Explodes

Our Test Cases
Manual testing 


Flip the switches from IO_DIP switch  0 and 1 to store MSB 16 bits of a,  then press button 0 to store this value.
Flip the switches again to store the LSB 16 BITS OF a, then press button 1 to store this value 
Flip the switches again to store the MSB 16 bits of  b, then press button 2 to sore this value
Flip the switches again to store the LSB 16 bits of b, then press button 3 to store
Flip the switches on the IO_DIP 2 to set ALUFN value , then press 4 to store
The output will be shown. 

Automatic testing

Press button 1 to start the first row of auto code test
Then press button 0 to move on to the next on and repeat 
To indicate error, before moving on, switch io_dip[2] the first bit to 1
This will cause the output to be wrong and the 2nd led and led will light up

How our test cases are implemented 
We have roma where we store the values for a, romb where we have the values of b , romalufn where we have the alufn values and the romoutputexpected. The alu_manual_tester has a auto mode that takes a and b and the alufn to be carried out and matches it with the expected output.
Example test cases 
Normal arithmetic operations 
ADD
At 0 , (25+15 = 40)
SUB
At 2, (45-30 = 15)
MUL
At 5,(14 x 9 = 126)
Edge cases
Underflow
At 3, A=MIN_VALUE, B=1, output=MAX_VALUE
Overflow
At 1, A=MAX_VALUE (+ve), B=1, output=MIN_VALUE
Zero multiplication
At 6, A=37, B=0, output=0
Special value operation 
AND/OR with 0
At 10, AND: with ones, A=118, B=MAX_VALUE, output=118
At 11, OR: with zeroes, A=89, B=0, output=89
Shift operation 
SHL/SHR/SRA with zero, max and boundary shifts
17, SHL: zero shift, A=250, B=0, output=250
20, SHR: zero shift, A=120, B=0, output=120
22, SRA: shift right with sign extension, A=0xA0000000, B=4, output=0xFA000000
Comparison operations 
CMPEQ/CMPLT/CMPLE with true/false conditions 
23, CMPEQ: true, A=9, B=9, output=1
25, CMPLT: true, A=11, B=12, output=1
29,CMPLE: false, A=60, B=5, output=0

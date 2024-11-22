# 7-Segment-Display-Decoder
This project is a Verilog module designed to display hexadecimal numbers on two 7-segment displays, including logic to handle values greater than 9.

1.  Input:
SW (4-bit): The input value to be displayed, representing an unsigned integer (0 to 15).

2.  Outputs:
- HEX0 (7-bit): Displays the digit for the units place.
- HEX1 (7-bit): Displays the digit for the tens place (only 0 or 1).

3.  Main Functions:
- Check the value of SW:
    * If greater than 9, calculate A = SW - 10 and display 1 on HEX1.
    * If SW ≤ 9, display the original value on HEX0.
- Encode each segment of the 7-segment display to light up specific LEDs based on the binary input.

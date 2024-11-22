# 7-Segment-Display-Decoder
This project is a Verilog module designed to display hexadecimal numbers on two 7-segment displays, including logic to handle values greater than 9.

1.  Input:
SW (4-bit): The input value to be displayed, representing an unsigned integer (0 to 15).

2.  Outputs:
- HEX0 (7-bit): Displays the digit for the units place.
- HEX1 (7-bit): Displays the digit for the tens place (only 0 or 1).
